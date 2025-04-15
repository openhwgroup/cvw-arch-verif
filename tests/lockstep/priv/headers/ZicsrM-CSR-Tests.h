
// Testing CSR 0x0
	csrr x28, 0x0	// Read CSR
	li x13, -1
	csrrw x25, 0x0, x13	// Write all 1s to CSR
	csrrw x25, 0x0, x0	// Write all 0s to CSR
	csrrs x25, 0x0, x13	// Set all CSR bits
	csrrc x25, 0x0, x13	// Clear all CSR bits
	csrrw x25, 0x0, x28	// Restore CSR

// Testing CSR 0x1
	csrr x29, 0x1	// Read CSR
	li x14, -1
	csrrw x2, 0x1, x14	// Write all 1s to CSR
	csrrw x2, 0x1, x0	// Write all 0s to CSR
	csrrs x2, 0x1, x14	// Set all CSR bits
	csrrc x2, 0x1, x14	// Clear all CSR bits
	csrrw x2, 0x1, x29	// Restore CSR

// Testing CSR 0x2
	csrr x9, 0x2	// Read CSR
	li x31, -1
	csrrw x17, 0x2, x31	// Write all 1s to CSR
	csrrw x17, 0x2, x0	// Write all 0s to CSR
	csrrs x17, 0x2, x31	// Set all CSR bits
	csrrc x17, 0x2, x31	// Clear all CSR bits
	csrrw x17, 0x2, x9	// Restore CSR

// Testing CSR 0x3
	csrr x16, 0x3	// Read CSR
	li x13, -1
	csrrw x30, 0x3, x13	// Write all 1s to CSR
	csrrw x30, 0x3, x0	// Write all 0s to CSR
	csrrs x30, 0x3, x13	// Set all CSR bits
	csrrc x30, 0x3, x13	// Clear all CSR bits
	csrrw x30, 0x3, x16	// Restore CSR

// Testing CSR 0x4
	csrr x26, 0x4	// Read CSR
	li x27, -1
	csrrw x10, 0x4, x27	// Write all 1s to CSR
	csrrw x10, 0x4, x0	// Write all 0s to CSR
	csrrs x10, 0x4, x27	// Set all CSR bits
	csrrc x10, 0x4, x27	// Clear all CSR bits
	csrrw x10, 0x4, x26	// Restore CSR

// Testing CSR 0x5
	csrr x31, 0x5	// Read CSR
	li x16, -1
	csrrw x12, 0x5, x16	// Write all 1s to CSR
	csrrw x12, 0x5, x0	// Write all 0s to CSR
	csrrs x12, 0x5, x16	// Set all CSR bits
	csrrc x12, 0x5, x16	// Clear all CSR bits
	csrrw x12, 0x5, x31	// Restore CSR

// Testing CSR 0x6
	csrr x19, 0x6	// Read CSR
	li x29, -1
	csrrw x30, 0x6, x29	// Write all 1s to CSR
	csrrw x30, 0x6, x0	// Write all 0s to CSR
	csrrs x30, 0x6, x29	// Set all CSR bits
	csrrc x30, 0x6, x29	// Clear all CSR bits
	csrrw x30, 0x6, x19	// Restore CSR

// Testing CSR 0x7
	csrr x7, 0x7	// Read CSR
	li x17, -1
	csrrw x5, 0x7, x17	// Write all 1s to CSR
	csrrw x5, 0x7, x0	// Write all 0s to CSR
	csrrs x5, 0x7, x17	// Set all CSR bits
	csrrc x5, 0x7, x17	// Clear all CSR bits
	csrrw x5, 0x7, x7	// Restore CSR

// Testing CSR 0x8
	csrr x10, 0x8	// Read CSR
	li x5, -1
	csrrw x25, 0x8, x5	// Write all 1s to CSR
	csrrw x25, 0x8, x0	// Write all 0s to CSR
	csrrs x25, 0x8, x5	// Set all CSR bits
	csrrc x25, 0x8, x5	// Clear all CSR bits
	csrrw x25, 0x8, x10	// Restore CSR

// Testing CSR 0x9
	csrr x4, 0x9	// Read CSR
	li x20, -1
	csrrw x26, 0x9, x20	// Write all 1s to CSR
	csrrw x26, 0x9, x0	// Write all 0s to CSR
	csrrs x26, 0x9, x20	// Set all CSR bits
	csrrc x26, 0x9, x20	// Clear all CSR bits
	csrrw x26, 0x9, x4	// Restore CSR

// Testing CSR 0xa
	csrr x9, 0xa	// Read CSR
	li x30, -1
	csrrw x18, 0xa, x30	// Write all 1s to CSR
	csrrw x18, 0xa, x0	// Write all 0s to CSR
	csrrs x18, 0xa, x30	// Set all CSR bits
	csrrc x18, 0xa, x30	// Clear all CSR bits
	csrrw x18, 0xa, x9	// Restore CSR

// Testing CSR 0xb
	csrr x23, 0xb	// Read CSR
	li x26, -1
	csrrw x20, 0xb, x26	// Write all 1s to CSR
	csrrw x20, 0xb, x0	// Write all 0s to CSR
	csrrs x20, 0xb, x26	// Set all CSR bits
	csrrc x20, 0xb, x26	// Clear all CSR bits
	csrrw x20, 0xb, x23	// Restore CSR

// Testing CSR 0xc
	csrr x29, 0xc	// Read CSR
	li x5, -1
	csrrw x10, 0xc, x5	// Write all 1s to CSR
	csrrw x10, 0xc, x0	// Write all 0s to CSR
	csrrs x10, 0xc, x5	// Set all CSR bits
	csrrc x10, 0xc, x5	// Clear all CSR bits
	csrrw x10, 0xc, x29	// Restore CSR

// Testing CSR 0xd
	csrr x4, 0xd	// Read CSR
	li x24, -1
	csrrw x3, 0xd, x24	// Write all 1s to CSR
	csrrw x3, 0xd, x0	// Write all 0s to CSR
	csrrs x3, 0xd, x24	// Set all CSR bits
	csrrc x3, 0xd, x24	// Clear all CSR bits
	csrrw x3, 0xd, x4	// Restore CSR

// Testing CSR 0xe
	csrr x29, 0xe	// Read CSR
	li x28, -1
	csrrw x22, 0xe, x28	// Write all 1s to CSR
	csrrw x22, 0xe, x0	// Write all 0s to CSR
	csrrs x22, 0xe, x28	// Set all CSR bits
	csrrc x22, 0xe, x28	// Clear all CSR bits
	csrrw x22, 0xe, x29	// Restore CSR

// Testing CSR 0xf
	csrr x11, 0xf	// Read CSR
	li x16, -1
	csrrw x18, 0xf, x16	// Write all 1s to CSR
	csrrw x18, 0xf, x0	// Write all 0s to CSR
	csrrs x18, 0xf, x16	// Set all CSR bits
	csrrc x18, 0xf, x16	// Clear all CSR bits
	csrrw x18, 0xf, x11	// Restore CSR

// Testing CSR 0x10
	csrr x4, 0x10	// Read CSR
	li x12, -1
	csrrw x14, 0x10, x12	// Write all 1s to CSR
	csrrw x14, 0x10, x0	// Write all 0s to CSR
	csrrs x14, 0x10, x12	// Set all CSR bits
	csrrc x14, 0x10, x12	// Clear all CSR bits
	csrrw x14, 0x10, x4	// Restore CSR

// Testing CSR 0x11
	csrr x11, 0x11	// Read CSR
	li x20, -1
	csrrw x21, 0x11, x20	// Write all 1s to CSR
	csrrw x21, 0x11, x0	// Write all 0s to CSR
	csrrs x21, 0x11, x20	// Set all CSR bits
	csrrc x21, 0x11, x20	// Clear all CSR bits
	csrrw x21, 0x11, x11	// Restore CSR

// Testing CSR 0x12
	csrr x30, 0x12	// Read CSR
	li x7, -1
	csrrw x31, 0x12, x7	// Write all 1s to CSR
	csrrw x31, 0x12, x0	// Write all 0s to CSR
	csrrs x31, 0x12, x7	// Set all CSR bits
	csrrc x31, 0x12, x7	// Clear all CSR bits
	csrrw x31, 0x12, x30	// Restore CSR

// Testing CSR 0x13
	csrr x18, 0x13	// Read CSR
	li x16, -1
	csrrw x15, 0x13, x16	// Write all 1s to CSR
	csrrw x15, 0x13, x0	// Write all 0s to CSR
	csrrs x15, 0x13, x16	// Set all CSR bits
	csrrc x15, 0x13, x16	// Clear all CSR bits
	csrrw x15, 0x13, x18	// Restore CSR

// Testing CSR 0x14
	csrr x28, 0x14	// Read CSR
	li x17, -1
	csrrw x9, 0x14, x17	// Write all 1s to CSR
	csrrw x9, 0x14, x0	// Write all 0s to CSR
	csrrs x9, 0x14, x17	// Set all CSR bits
	csrrc x9, 0x14, x17	// Clear all CSR bits
	csrrw x9, 0x14, x28	// Restore CSR

// Testing CSR 0x15
	csrr x2, 0x15	// Read CSR
	li x26, -1
	csrrw x30, 0x15, x26	// Write all 1s to CSR
	csrrw x30, 0x15, x0	// Write all 0s to CSR
	csrrs x30, 0x15, x26	// Set all CSR bits
	csrrc x30, 0x15, x26	// Clear all CSR bits
	csrrw x30, 0x15, x2	// Restore CSR

// Testing CSR 0x16
	csrr x18, 0x16	// Read CSR
	li x30, -1
	csrrw x1, 0x16, x30	// Write all 1s to CSR
	csrrw x1, 0x16, x0	// Write all 0s to CSR
	csrrs x1, 0x16, x30	// Set all CSR bits
	csrrc x1, 0x16, x30	// Clear all CSR bits
	csrrw x1, 0x16, x18	// Restore CSR

// Testing CSR 0x17
	csrr x3, 0x17	// Read CSR
	li x24, -1
	csrrw x27, 0x17, x24	// Write all 1s to CSR
	csrrw x27, 0x17, x0	// Write all 0s to CSR
	csrrs x27, 0x17, x24	// Set all CSR bits
	csrrc x27, 0x17, x24	// Clear all CSR bits
	csrrw x27, 0x17, x3	// Restore CSR

// Testing CSR 0x18
	csrr x13, 0x18	// Read CSR
	li x23, -1
	csrrw x27, 0x18, x23	// Write all 1s to CSR
	csrrw x27, 0x18, x0	// Write all 0s to CSR
	csrrs x27, 0x18, x23	// Set all CSR bits
	csrrc x27, 0x18, x23	// Clear all CSR bits
	csrrw x27, 0x18, x13	// Restore CSR

// Testing CSR 0x19
	csrr x26, 0x19	// Read CSR
	li x22, -1
	csrrw x21, 0x19, x22	// Write all 1s to CSR
	csrrw x21, 0x19, x0	// Write all 0s to CSR
	csrrs x21, 0x19, x22	// Set all CSR bits
	csrrc x21, 0x19, x22	// Clear all CSR bits
	csrrw x21, 0x19, x26	// Restore CSR

// Testing CSR 0x1a
	csrr x1, 0x1a	// Read CSR
	li x20, -1
	csrrw x16, 0x1a, x20	// Write all 1s to CSR
	csrrw x16, 0x1a, x0	// Write all 0s to CSR
	csrrs x16, 0x1a, x20	// Set all CSR bits
	csrrc x16, 0x1a, x20	// Clear all CSR bits
	csrrw x16, 0x1a, x1	// Restore CSR

// Testing CSR 0x1b
	csrr x27, 0x1b	// Read CSR
	li x28, -1
	csrrw x11, 0x1b, x28	// Write all 1s to CSR
	csrrw x11, 0x1b, x0	// Write all 0s to CSR
	csrrs x11, 0x1b, x28	// Set all CSR bits
	csrrc x11, 0x1b, x28	// Clear all CSR bits
	csrrw x11, 0x1b, x27	// Restore CSR

// Testing CSR 0x1c
	csrr x8, 0x1c	// Read CSR
	li x24, -1
	csrrw x11, 0x1c, x24	// Write all 1s to CSR
	csrrw x11, 0x1c, x0	// Write all 0s to CSR
	csrrs x11, 0x1c, x24	// Set all CSR bits
	csrrc x11, 0x1c, x24	// Clear all CSR bits
	csrrw x11, 0x1c, x8	// Restore CSR

// Testing CSR 0x1d
	csrr x23, 0x1d	// Read CSR
	li x28, -1
	csrrw x3, 0x1d, x28	// Write all 1s to CSR
	csrrw x3, 0x1d, x0	// Write all 0s to CSR
	csrrs x3, 0x1d, x28	// Set all CSR bits
	csrrc x3, 0x1d, x28	// Clear all CSR bits
	csrrw x3, 0x1d, x23	// Restore CSR

// Testing CSR 0x1e
	csrr x7, 0x1e	// Read CSR
	li x30, -1
	csrrw x19, 0x1e, x30	// Write all 1s to CSR
	csrrw x19, 0x1e, x0	// Write all 0s to CSR
	csrrs x19, 0x1e, x30	// Set all CSR bits
	csrrc x19, 0x1e, x30	// Clear all CSR bits
	csrrw x19, 0x1e, x7	// Restore CSR

// Testing CSR 0x1f
	csrr x8, 0x1f	// Read CSR
	li x31, -1
	csrrw x26, 0x1f, x31	// Write all 1s to CSR
	csrrw x26, 0x1f, x0	// Write all 0s to CSR
	csrrs x26, 0x1f, x31	// Set all CSR bits
	csrrc x26, 0x1f, x31	// Clear all CSR bits
	csrrw x26, 0x1f, x8	// Restore CSR

// Testing CSR 0x20
	csrr x5, 0x20	// Read CSR
	li x26, -1
	csrrw x18, 0x20, x26	// Write all 1s to CSR
	csrrw x18, 0x20, x0	// Write all 0s to CSR
	csrrs x18, 0x20, x26	// Set all CSR bits
	csrrc x18, 0x20, x26	// Clear all CSR bits
	csrrw x18, 0x20, x5	// Restore CSR

// Testing CSR 0x21
	csrr x15, 0x21	// Read CSR
	li x3, -1
	csrrw x11, 0x21, x3	// Write all 1s to CSR
	csrrw x11, 0x21, x0	// Write all 0s to CSR
	csrrs x11, 0x21, x3	// Set all CSR bits
	csrrc x11, 0x21, x3	// Clear all CSR bits
	csrrw x11, 0x21, x15	// Restore CSR

// Testing CSR 0x22
	csrr x29, 0x22	// Read CSR
	li x17, -1
	csrrw x30, 0x22, x17	// Write all 1s to CSR
	csrrw x30, 0x22, x0	// Write all 0s to CSR
	csrrs x30, 0x22, x17	// Set all CSR bits
	csrrc x30, 0x22, x17	// Clear all CSR bits
	csrrw x30, 0x22, x29	// Restore CSR

// Testing CSR 0x23
	csrr x16, 0x23	// Read CSR
	li x4, -1
	csrrw x10, 0x23, x4	// Write all 1s to CSR
	csrrw x10, 0x23, x0	// Write all 0s to CSR
	csrrs x10, 0x23, x4	// Set all CSR bits
	csrrc x10, 0x23, x4	// Clear all CSR bits
	csrrw x10, 0x23, x16	// Restore CSR

// Testing CSR 0x24
	csrr x18, 0x24	// Read CSR
	li x10, -1
	csrrw x23, 0x24, x10	// Write all 1s to CSR
	csrrw x23, 0x24, x0	// Write all 0s to CSR
	csrrs x23, 0x24, x10	// Set all CSR bits
	csrrc x23, 0x24, x10	// Clear all CSR bits
	csrrw x23, 0x24, x18	// Restore CSR

// Testing CSR 0x25
	csrr x4, 0x25	// Read CSR
	li x18, -1
	csrrw x11, 0x25, x18	// Write all 1s to CSR
	csrrw x11, 0x25, x0	// Write all 0s to CSR
	csrrs x11, 0x25, x18	// Set all CSR bits
	csrrc x11, 0x25, x18	// Clear all CSR bits
	csrrw x11, 0x25, x4	// Restore CSR

// Testing CSR 0x26
	csrr x27, 0x26	// Read CSR
	li x30, -1
	csrrw x18, 0x26, x30	// Write all 1s to CSR
	csrrw x18, 0x26, x0	// Write all 0s to CSR
	csrrs x18, 0x26, x30	// Set all CSR bits
	csrrc x18, 0x26, x30	// Clear all CSR bits
	csrrw x18, 0x26, x27	// Restore CSR

// Testing CSR 0x27
	csrr x7, 0x27	// Read CSR
	li x31, -1
	csrrw x26, 0x27, x31	// Write all 1s to CSR
	csrrw x26, 0x27, x0	// Write all 0s to CSR
	csrrs x26, 0x27, x31	// Set all CSR bits
	csrrc x26, 0x27, x31	// Clear all CSR bits
	csrrw x26, 0x27, x7	// Restore CSR

// Testing CSR 0x28
	csrr x20, 0x28	// Read CSR
	li x18, -1
	csrrw x19, 0x28, x18	// Write all 1s to CSR
	csrrw x19, 0x28, x0	// Write all 0s to CSR
	csrrs x19, 0x28, x18	// Set all CSR bits
	csrrc x19, 0x28, x18	// Clear all CSR bits
	csrrw x19, 0x28, x20	// Restore CSR

// Testing CSR 0x29
	csrr x10, 0x29	// Read CSR
	li x15, -1
	csrrw x3, 0x29, x15	// Write all 1s to CSR
	csrrw x3, 0x29, x0	// Write all 0s to CSR
	csrrs x3, 0x29, x15	// Set all CSR bits
	csrrc x3, 0x29, x15	// Clear all CSR bits
	csrrw x3, 0x29, x10	// Restore CSR

// Testing CSR 0x2a
	csrr x20, 0x2a	// Read CSR
	li x26, -1
	csrrw x13, 0x2a, x26	// Write all 1s to CSR
	csrrw x13, 0x2a, x0	// Write all 0s to CSR
	csrrs x13, 0x2a, x26	// Set all CSR bits
	csrrc x13, 0x2a, x26	// Clear all CSR bits
	csrrw x13, 0x2a, x20	// Restore CSR

// Testing CSR 0x2b
	csrr x11, 0x2b	// Read CSR
	li x19, -1
	csrrw x8, 0x2b, x19	// Write all 1s to CSR
	csrrw x8, 0x2b, x0	// Write all 0s to CSR
	csrrs x8, 0x2b, x19	// Set all CSR bits
	csrrc x8, 0x2b, x19	// Clear all CSR bits
	csrrw x8, 0x2b, x11	// Restore CSR

// Testing CSR 0x2c
	csrr x10, 0x2c	// Read CSR
	li x6, -1
	csrrw x7, 0x2c, x6	// Write all 1s to CSR
	csrrw x7, 0x2c, x0	// Write all 0s to CSR
	csrrs x7, 0x2c, x6	// Set all CSR bits
	csrrc x7, 0x2c, x6	// Clear all CSR bits
	csrrw x7, 0x2c, x10	// Restore CSR

// Testing CSR 0x2d
	csrr x27, 0x2d	// Read CSR
	li x6, -1
	csrrw x2, 0x2d, x6	// Write all 1s to CSR
	csrrw x2, 0x2d, x0	// Write all 0s to CSR
	csrrs x2, 0x2d, x6	// Set all CSR bits
	csrrc x2, 0x2d, x6	// Clear all CSR bits
	csrrw x2, 0x2d, x27	// Restore CSR

// Testing CSR 0x2e
	csrr x20, 0x2e	// Read CSR
	li x22, -1
	csrrw x9, 0x2e, x22	// Write all 1s to CSR
	csrrw x9, 0x2e, x0	// Write all 0s to CSR
	csrrs x9, 0x2e, x22	// Set all CSR bits
	csrrc x9, 0x2e, x22	// Clear all CSR bits
	csrrw x9, 0x2e, x20	// Restore CSR

// Testing CSR 0x2f
	csrr x16, 0x2f	// Read CSR
	li x3, -1
	csrrw x22, 0x2f, x3	// Write all 1s to CSR
	csrrw x22, 0x2f, x0	// Write all 0s to CSR
	csrrs x22, 0x2f, x3	// Set all CSR bits
	csrrc x22, 0x2f, x3	// Clear all CSR bits
	csrrw x22, 0x2f, x16	// Restore CSR

// Testing CSR 0x30
	csrr x25, 0x30	// Read CSR
	li x5, -1
	csrrw x29, 0x30, x5	// Write all 1s to CSR
	csrrw x29, 0x30, x0	// Write all 0s to CSR
	csrrs x29, 0x30, x5	// Set all CSR bits
	csrrc x29, 0x30, x5	// Clear all CSR bits
	csrrw x29, 0x30, x25	// Restore CSR

// Testing CSR 0x31
	csrr x5, 0x31	// Read CSR
	li x30, -1
	csrrw x2, 0x31, x30	// Write all 1s to CSR
	csrrw x2, 0x31, x0	// Write all 0s to CSR
	csrrs x2, 0x31, x30	// Set all CSR bits
	csrrc x2, 0x31, x30	// Clear all CSR bits
	csrrw x2, 0x31, x5	// Restore CSR

// Testing CSR 0x32
	csrr x27, 0x32	// Read CSR
	li x3, -1
	csrrw x29, 0x32, x3	// Write all 1s to CSR
	csrrw x29, 0x32, x0	// Write all 0s to CSR
	csrrs x29, 0x32, x3	// Set all CSR bits
	csrrc x29, 0x32, x3	// Clear all CSR bits
	csrrw x29, 0x32, x27	// Restore CSR

// Testing CSR 0x33
	csrr x23, 0x33	// Read CSR
	li x30, -1
	csrrw x27, 0x33, x30	// Write all 1s to CSR
	csrrw x27, 0x33, x0	// Write all 0s to CSR
	csrrs x27, 0x33, x30	// Set all CSR bits
	csrrc x27, 0x33, x30	// Clear all CSR bits
	csrrw x27, 0x33, x23	// Restore CSR

// Testing CSR 0x34
	csrr x18, 0x34	// Read CSR
	li x22, -1
	csrrw x13, 0x34, x22	// Write all 1s to CSR
	csrrw x13, 0x34, x0	// Write all 0s to CSR
	csrrs x13, 0x34, x22	// Set all CSR bits
	csrrc x13, 0x34, x22	// Clear all CSR bits
	csrrw x13, 0x34, x18	// Restore CSR

// Testing CSR 0x35
	csrr x27, 0x35	// Read CSR
	li x23, -1
	csrrw x17, 0x35, x23	// Write all 1s to CSR
	csrrw x17, 0x35, x0	// Write all 0s to CSR
	csrrs x17, 0x35, x23	// Set all CSR bits
	csrrc x17, 0x35, x23	// Clear all CSR bits
	csrrw x17, 0x35, x27	// Restore CSR

// Testing CSR 0x36
	csrr x9, 0x36	// Read CSR
	li x17, -1
	csrrw x26, 0x36, x17	// Write all 1s to CSR
	csrrw x26, 0x36, x0	// Write all 0s to CSR
	csrrs x26, 0x36, x17	// Set all CSR bits
	csrrc x26, 0x36, x17	// Clear all CSR bits
	csrrw x26, 0x36, x9	// Restore CSR

// Testing CSR 0x37
	csrr x8, 0x37	// Read CSR
	li x28, -1
	csrrw x7, 0x37, x28	// Write all 1s to CSR
	csrrw x7, 0x37, x0	// Write all 0s to CSR
	csrrs x7, 0x37, x28	// Set all CSR bits
	csrrc x7, 0x37, x28	// Clear all CSR bits
	csrrw x7, 0x37, x8	// Restore CSR

// Testing CSR 0x38
	csrr x29, 0x38	// Read CSR
	li x22, -1
	csrrw x19, 0x38, x22	// Write all 1s to CSR
	csrrw x19, 0x38, x0	// Write all 0s to CSR
	csrrs x19, 0x38, x22	// Set all CSR bits
	csrrc x19, 0x38, x22	// Clear all CSR bits
	csrrw x19, 0x38, x29	// Restore CSR

// Testing CSR 0x39
	csrr x27, 0x39	// Read CSR
	li x31, -1
	csrrw x14, 0x39, x31	// Write all 1s to CSR
	csrrw x14, 0x39, x0	// Write all 0s to CSR
	csrrs x14, 0x39, x31	// Set all CSR bits
	csrrc x14, 0x39, x31	// Clear all CSR bits
	csrrw x14, 0x39, x27	// Restore CSR

// Testing CSR 0x3a
	csrr x19, 0x3a	// Read CSR
	li x9, -1
	csrrw x15, 0x3a, x9	// Write all 1s to CSR
	csrrw x15, 0x3a, x0	// Write all 0s to CSR
	csrrs x15, 0x3a, x9	// Set all CSR bits
	csrrc x15, 0x3a, x9	// Clear all CSR bits
	csrrw x15, 0x3a, x19	// Restore CSR

// Testing CSR 0x3b
	csrr x16, 0x3b	// Read CSR
	li x22, -1
	csrrw x21, 0x3b, x22	// Write all 1s to CSR
	csrrw x21, 0x3b, x0	// Write all 0s to CSR
	csrrs x21, 0x3b, x22	// Set all CSR bits
	csrrc x21, 0x3b, x22	// Clear all CSR bits
	csrrw x21, 0x3b, x16	// Restore CSR

// Testing CSR 0x3c
	csrr x23, 0x3c	// Read CSR
	li x30, -1
	csrrw x26, 0x3c, x30	// Write all 1s to CSR
	csrrw x26, 0x3c, x0	// Write all 0s to CSR
	csrrs x26, 0x3c, x30	// Set all CSR bits
	csrrc x26, 0x3c, x30	// Clear all CSR bits
	csrrw x26, 0x3c, x23	// Restore CSR

// Testing CSR 0x3d
	csrr x12, 0x3d	// Read CSR
	li x3, -1
	csrrw x11, 0x3d, x3	// Write all 1s to CSR
	csrrw x11, 0x3d, x0	// Write all 0s to CSR
	csrrs x11, 0x3d, x3	// Set all CSR bits
	csrrc x11, 0x3d, x3	// Clear all CSR bits
	csrrw x11, 0x3d, x12	// Restore CSR

// Testing CSR 0x3e
	csrr x20, 0x3e	// Read CSR
	li x4, -1
	csrrw x16, 0x3e, x4	// Write all 1s to CSR
	csrrw x16, 0x3e, x0	// Write all 0s to CSR
	csrrs x16, 0x3e, x4	// Set all CSR bits
	csrrc x16, 0x3e, x4	// Clear all CSR bits
	csrrw x16, 0x3e, x20	// Restore CSR

// Testing CSR 0x3f
	csrr x19, 0x3f	// Read CSR
	li x21, -1
	csrrw x11, 0x3f, x21	// Write all 1s to CSR
	csrrw x11, 0x3f, x0	// Write all 0s to CSR
	csrrs x11, 0x3f, x21	// Set all CSR bits
	csrrc x11, 0x3f, x21	// Clear all CSR bits
	csrrw x11, 0x3f, x19	// Restore CSR

// Testing CSR 0x40
	csrr x28, 0x40	// Read CSR
	li x7, -1
	csrrw x8, 0x40, x7	// Write all 1s to CSR
	csrrw x8, 0x40, x0	// Write all 0s to CSR
	csrrs x8, 0x40, x7	// Set all CSR bits
	csrrc x8, 0x40, x7	// Clear all CSR bits
	csrrw x8, 0x40, x28	// Restore CSR

// Testing CSR 0x41
	csrr x1, 0x41	// Read CSR
	li x24, -1
	csrrw x9, 0x41, x24	// Write all 1s to CSR
	csrrw x9, 0x41, x0	// Write all 0s to CSR
	csrrs x9, 0x41, x24	// Set all CSR bits
	csrrc x9, 0x41, x24	// Clear all CSR bits
	csrrw x9, 0x41, x1	// Restore CSR

// Testing CSR 0x42
	csrr x4, 0x42	// Read CSR
	li x23, -1
	csrrw x8, 0x42, x23	// Write all 1s to CSR
	csrrw x8, 0x42, x0	// Write all 0s to CSR
	csrrs x8, 0x42, x23	// Set all CSR bits
	csrrc x8, 0x42, x23	// Clear all CSR bits
	csrrw x8, 0x42, x4	// Restore CSR

// Testing CSR 0x43
	csrr x12, 0x43	// Read CSR
	li x26, -1
	csrrw x6, 0x43, x26	// Write all 1s to CSR
	csrrw x6, 0x43, x0	// Write all 0s to CSR
	csrrs x6, 0x43, x26	// Set all CSR bits
	csrrc x6, 0x43, x26	// Clear all CSR bits
	csrrw x6, 0x43, x12	// Restore CSR

// Testing CSR 0x44
	csrr x11, 0x44	// Read CSR
	li x14, -1
	csrrw x27, 0x44, x14	// Write all 1s to CSR
	csrrw x27, 0x44, x0	// Write all 0s to CSR
	csrrs x27, 0x44, x14	// Set all CSR bits
	csrrc x27, 0x44, x14	// Clear all CSR bits
	csrrw x27, 0x44, x11	// Restore CSR

// Testing CSR 0x45
	csrr x2, 0x45	// Read CSR
	li x4, -1
	csrrw x26, 0x45, x4	// Write all 1s to CSR
	csrrw x26, 0x45, x0	// Write all 0s to CSR
	csrrs x26, 0x45, x4	// Set all CSR bits
	csrrc x26, 0x45, x4	// Clear all CSR bits
	csrrw x26, 0x45, x2	// Restore CSR

// Testing CSR 0x46
	csrr x5, 0x46	// Read CSR
	li x28, -1
	csrrw x23, 0x46, x28	// Write all 1s to CSR
	csrrw x23, 0x46, x0	// Write all 0s to CSR
	csrrs x23, 0x46, x28	// Set all CSR bits
	csrrc x23, 0x46, x28	// Clear all CSR bits
	csrrw x23, 0x46, x5	// Restore CSR

// Testing CSR 0x47
	csrr x8, 0x47	// Read CSR
	li x2, -1
	csrrw x27, 0x47, x2	// Write all 1s to CSR
	csrrw x27, 0x47, x0	// Write all 0s to CSR
	csrrs x27, 0x47, x2	// Set all CSR bits
	csrrc x27, 0x47, x2	// Clear all CSR bits
	csrrw x27, 0x47, x8	// Restore CSR

// Testing CSR 0x48
	csrr x19, 0x48	// Read CSR
	li x21, -1
	csrrw x30, 0x48, x21	// Write all 1s to CSR
	csrrw x30, 0x48, x0	// Write all 0s to CSR
	csrrs x30, 0x48, x21	// Set all CSR bits
	csrrc x30, 0x48, x21	// Clear all CSR bits
	csrrw x30, 0x48, x19	// Restore CSR

// Testing CSR 0x49
	csrr x30, 0x49	// Read CSR
	li x18, -1
	csrrw x20, 0x49, x18	// Write all 1s to CSR
	csrrw x20, 0x49, x0	// Write all 0s to CSR
	csrrs x20, 0x49, x18	// Set all CSR bits
	csrrc x20, 0x49, x18	// Clear all CSR bits
	csrrw x20, 0x49, x30	// Restore CSR

// Testing CSR 0x4a
	csrr x22, 0x4a	// Read CSR
	li x3, -1
	csrrw x1, 0x4a, x3	// Write all 1s to CSR
	csrrw x1, 0x4a, x0	// Write all 0s to CSR
	csrrs x1, 0x4a, x3	// Set all CSR bits
	csrrc x1, 0x4a, x3	// Clear all CSR bits
	csrrw x1, 0x4a, x22	// Restore CSR

// Testing CSR 0x4b
	csrr x4, 0x4b	// Read CSR
	li x21, -1
	csrrw x7, 0x4b, x21	// Write all 1s to CSR
	csrrw x7, 0x4b, x0	// Write all 0s to CSR
	csrrs x7, 0x4b, x21	// Set all CSR bits
	csrrc x7, 0x4b, x21	// Clear all CSR bits
	csrrw x7, 0x4b, x4	// Restore CSR

// Testing CSR 0x4c
	csrr x20, 0x4c	// Read CSR
	li x27, -1
	csrrw x19, 0x4c, x27	// Write all 1s to CSR
	csrrw x19, 0x4c, x0	// Write all 0s to CSR
	csrrs x19, 0x4c, x27	// Set all CSR bits
	csrrc x19, 0x4c, x27	// Clear all CSR bits
	csrrw x19, 0x4c, x20	// Restore CSR

// Testing CSR 0x4d
	csrr x4, 0x4d	// Read CSR
	li x13, -1
	csrrw x3, 0x4d, x13	// Write all 1s to CSR
	csrrw x3, 0x4d, x0	// Write all 0s to CSR
	csrrs x3, 0x4d, x13	// Set all CSR bits
	csrrc x3, 0x4d, x13	// Clear all CSR bits
	csrrw x3, 0x4d, x4	// Restore CSR

// Testing CSR 0x4e
	csrr x12, 0x4e	// Read CSR
	li x27, -1
	csrrw x4, 0x4e, x27	// Write all 1s to CSR
	csrrw x4, 0x4e, x0	// Write all 0s to CSR
	csrrs x4, 0x4e, x27	// Set all CSR bits
	csrrc x4, 0x4e, x27	// Clear all CSR bits
	csrrw x4, 0x4e, x12	// Restore CSR

// Testing CSR 0x4f
	csrr x2, 0x4f	// Read CSR
	li x20, -1
	csrrw x1, 0x4f, x20	// Write all 1s to CSR
	csrrw x1, 0x4f, x0	// Write all 0s to CSR
	csrrs x1, 0x4f, x20	// Set all CSR bits
	csrrc x1, 0x4f, x20	// Clear all CSR bits
	csrrw x1, 0x4f, x2	// Restore CSR

// Testing CSR 0x50
	csrr x7, 0x50	// Read CSR
	li x31, -1
	csrrw x6, 0x50, x31	// Write all 1s to CSR
	csrrw x6, 0x50, x0	// Write all 0s to CSR
	csrrs x6, 0x50, x31	// Set all CSR bits
	csrrc x6, 0x50, x31	// Clear all CSR bits
	csrrw x6, 0x50, x7	// Restore CSR

// Testing CSR 0x51
	csrr x23, 0x51	// Read CSR
	li x4, -1
	csrrw x16, 0x51, x4	// Write all 1s to CSR
	csrrw x16, 0x51, x0	// Write all 0s to CSR
	csrrs x16, 0x51, x4	// Set all CSR bits
	csrrc x16, 0x51, x4	// Clear all CSR bits
	csrrw x16, 0x51, x23	// Restore CSR

// Testing CSR 0x52
	csrr x7, 0x52	// Read CSR
	li x24, -1
	csrrw x26, 0x52, x24	// Write all 1s to CSR
	csrrw x26, 0x52, x0	// Write all 0s to CSR
	csrrs x26, 0x52, x24	// Set all CSR bits
	csrrc x26, 0x52, x24	// Clear all CSR bits
	csrrw x26, 0x52, x7	// Restore CSR

// Testing CSR 0x53
	csrr x2, 0x53	// Read CSR
	li x30, -1
	csrrw x22, 0x53, x30	// Write all 1s to CSR
	csrrw x22, 0x53, x0	// Write all 0s to CSR
	csrrs x22, 0x53, x30	// Set all CSR bits
	csrrc x22, 0x53, x30	// Clear all CSR bits
	csrrw x22, 0x53, x2	// Restore CSR

// Testing CSR 0x54
	csrr x1, 0x54	// Read CSR
	li x18, -1
	csrrw x14, 0x54, x18	// Write all 1s to CSR
	csrrw x14, 0x54, x0	// Write all 0s to CSR
	csrrs x14, 0x54, x18	// Set all CSR bits
	csrrc x14, 0x54, x18	// Clear all CSR bits
	csrrw x14, 0x54, x1	// Restore CSR

// Testing CSR 0x55
	csrr x20, 0x55	// Read CSR
	li x4, -1
	csrrw x27, 0x55, x4	// Write all 1s to CSR
	csrrw x27, 0x55, x0	// Write all 0s to CSR
	csrrs x27, 0x55, x4	// Set all CSR bits
	csrrc x27, 0x55, x4	// Clear all CSR bits
	csrrw x27, 0x55, x20	// Restore CSR

// Testing CSR 0x56
	csrr x9, 0x56	// Read CSR
	li x3, -1
	csrrw x8, 0x56, x3	// Write all 1s to CSR
	csrrw x8, 0x56, x0	// Write all 0s to CSR
	csrrs x8, 0x56, x3	// Set all CSR bits
	csrrc x8, 0x56, x3	// Clear all CSR bits
	csrrw x8, 0x56, x9	// Restore CSR

// Testing CSR 0x57
	csrr x3, 0x57	// Read CSR
	li x21, -1
	csrrw x10, 0x57, x21	// Write all 1s to CSR
	csrrw x10, 0x57, x0	// Write all 0s to CSR
	csrrs x10, 0x57, x21	// Set all CSR bits
	csrrc x10, 0x57, x21	// Clear all CSR bits
	csrrw x10, 0x57, x3	// Restore CSR

// Testing CSR 0x58
	csrr x12, 0x58	// Read CSR
	li x14, -1
	csrrw x6, 0x58, x14	// Write all 1s to CSR
	csrrw x6, 0x58, x0	// Write all 0s to CSR
	csrrs x6, 0x58, x14	// Set all CSR bits
	csrrc x6, 0x58, x14	// Clear all CSR bits
	csrrw x6, 0x58, x12	// Restore CSR

// Testing CSR 0x59
	csrr x2, 0x59	// Read CSR
	li x17, -1
	csrrw x15, 0x59, x17	// Write all 1s to CSR
	csrrw x15, 0x59, x0	// Write all 0s to CSR
	csrrs x15, 0x59, x17	// Set all CSR bits
	csrrc x15, 0x59, x17	// Clear all CSR bits
	csrrw x15, 0x59, x2	// Restore CSR

// Testing CSR 0x5a
	csrr x2, 0x5a	// Read CSR
	li x20, -1
	csrrw x4, 0x5a, x20	// Write all 1s to CSR
	csrrw x4, 0x5a, x0	// Write all 0s to CSR
	csrrs x4, 0x5a, x20	// Set all CSR bits
	csrrc x4, 0x5a, x20	// Clear all CSR bits
	csrrw x4, 0x5a, x2	// Restore CSR

// Testing CSR 0x5b
	csrr x23, 0x5b	// Read CSR
	li x13, -1
	csrrw x7, 0x5b, x13	// Write all 1s to CSR
	csrrw x7, 0x5b, x0	// Write all 0s to CSR
	csrrs x7, 0x5b, x13	// Set all CSR bits
	csrrc x7, 0x5b, x13	// Clear all CSR bits
	csrrw x7, 0x5b, x23	// Restore CSR

// Testing CSR 0x5c
	csrr x9, 0x5c	// Read CSR
	li x12, -1
	csrrw x29, 0x5c, x12	// Write all 1s to CSR
	csrrw x29, 0x5c, x0	// Write all 0s to CSR
	csrrs x29, 0x5c, x12	// Set all CSR bits
	csrrc x29, 0x5c, x12	// Clear all CSR bits
	csrrw x29, 0x5c, x9	// Restore CSR

// Testing CSR 0x5d
	csrr x24, 0x5d	// Read CSR
	li x16, -1
	csrrw x27, 0x5d, x16	// Write all 1s to CSR
	csrrw x27, 0x5d, x0	// Write all 0s to CSR
	csrrs x27, 0x5d, x16	// Set all CSR bits
	csrrc x27, 0x5d, x16	// Clear all CSR bits
	csrrw x27, 0x5d, x24	// Restore CSR

// Testing CSR 0x5e
	csrr x29, 0x5e	// Read CSR
	li x30, -1
	csrrw x19, 0x5e, x30	// Write all 1s to CSR
	csrrw x19, 0x5e, x0	// Write all 0s to CSR
	csrrs x19, 0x5e, x30	// Set all CSR bits
	csrrc x19, 0x5e, x30	// Clear all CSR bits
	csrrw x19, 0x5e, x29	// Restore CSR

// Testing CSR 0x5f
	csrr x6, 0x5f	// Read CSR
	li x23, -1
	csrrw x22, 0x5f, x23	// Write all 1s to CSR
	csrrw x22, 0x5f, x0	// Write all 0s to CSR
	csrrs x22, 0x5f, x23	// Set all CSR bits
	csrrc x22, 0x5f, x23	// Clear all CSR bits
	csrrw x22, 0x5f, x6	// Restore CSR

// Testing CSR 0x60
	csrr x7, 0x60	// Read CSR
	li x31, -1
	csrrw x25, 0x60, x31	// Write all 1s to CSR
	csrrw x25, 0x60, x0	// Write all 0s to CSR
	csrrs x25, 0x60, x31	// Set all CSR bits
	csrrc x25, 0x60, x31	// Clear all CSR bits
	csrrw x25, 0x60, x7	// Restore CSR

// Testing CSR 0x61
	csrr x2, 0x61	// Read CSR
	li x26, -1
	csrrw x22, 0x61, x26	// Write all 1s to CSR
	csrrw x22, 0x61, x0	// Write all 0s to CSR
	csrrs x22, 0x61, x26	// Set all CSR bits
	csrrc x22, 0x61, x26	// Clear all CSR bits
	csrrw x22, 0x61, x2	// Restore CSR

// Testing CSR 0x62
	csrr x6, 0x62	// Read CSR
	li x28, -1
	csrrw x11, 0x62, x28	// Write all 1s to CSR
	csrrw x11, 0x62, x0	// Write all 0s to CSR
	csrrs x11, 0x62, x28	// Set all CSR bits
	csrrc x11, 0x62, x28	// Clear all CSR bits
	csrrw x11, 0x62, x6	// Restore CSR

// Testing CSR 0x63
	csrr x17, 0x63	// Read CSR
	li x9, -1
	csrrw x4, 0x63, x9	// Write all 1s to CSR
	csrrw x4, 0x63, x0	// Write all 0s to CSR
	csrrs x4, 0x63, x9	// Set all CSR bits
	csrrc x4, 0x63, x9	// Clear all CSR bits
	csrrw x4, 0x63, x17	// Restore CSR

// Testing CSR 0x64
	csrr x20, 0x64	// Read CSR
	li x30, -1
	csrrw x15, 0x64, x30	// Write all 1s to CSR
	csrrw x15, 0x64, x0	// Write all 0s to CSR
	csrrs x15, 0x64, x30	// Set all CSR bits
	csrrc x15, 0x64, x30	// Clear all CSR bits
	csrrw x15, 0x64, x20	// Restore CSR

// Testing CSR 0x65
	csrr x22, 0x65	// Read CSR
	li x6, -1
	csrrw x1, 0x65, x6	// Write all 1s to CSR
	csrrw x1, 0x65, x0	// Write all 0s to CSR
	csrrs x1, 0x65, x6	// Set all CSR bits
	csrrc x1, 0x65, x6	// Clear all CSR bits
	csrrw x1, 0x65, x22	// Restore CSR

// Testing CSR 0x66
	csrr x16, 0x66	// Read CSR
	li x22, -1
	csrrw x14, 0x66, x22	// Write all 1s to CSR
	csrrw x14, 0x66, x0	// Write all 0s to CSR
	csrrs x14, 0x66, x22	// Set all CSR bits
	csrrc x14, 0x66, x22	// Clear all CSR bits
	csrrw x14, 0x66, x16	// Restore CSR

// Testing CSR 0x67
	csrr x29, 0x67	// Read CSR
	li x19, -1
	csrrw x28, 0x67, x19	// Write all 1s to CSR
	csrrw x28, 0x67, x0	// Write all 0s to CSR
	csrrs x28, 0x67, x19	// Set all CSR bits
	csrrc x28, 0x67, x19	// Clear all CSR bits
	csrrw x28, 0x67, x29	// Restore CSR

// Testing CSR 0x68
	csrr x17, 0x68	// Read CSR
	li x30, -1
	csrrw x10, 0x68, x30	// Write all 1s to CSR
	csrrw x10, 0x68, x0	// Write all 0s to CSR
	csrrs x10, 0x68, x30	// Set all CSR bits
	csrrc x10, 0x68, x30	// Clear all CSR bits
	csrrw x10, 0x68, x17	// Restore CSR

// Testing CSR 0x69
	csrr x21, 0x69	// Read CSR
	li x12, -1
	csrrw x13, 0x69, x12	// Write all 1s to CSR
	csrrw x13, 0x69, x0	// Write all 0s to CSR
	csrrs x13, 0x69, x12	// Set all CSR bits
	csrrc x13, 0x69, x12	// Clear all CSR bits
	csrrw x13, 0x69, x21	// Restore CSR

// Testing CSR 0x6a
	csrr x27, 0x6a	// Read CSR
	li x22, -1
	csrrw x9, 0x6a, x22	// Write all 1s to CSR
	csrrw x9, 0x6a, x0	// Write all 0s to CSR
	csrrs x9, 0x6a, x22	// Set all CSR bits
	csrrc x9, 0x6a, x22	// Clear all CSR bits
	csrrw x9, 0x6a, x27	// Restore CSR

// Testing CSR 0x6b
	csrr x5, 0x6b	// Read CSR
	li x18, -1
	csrrw x23, 0x6b, x18	// Write all 1s to CSR
	csrrw x23, 0x6b, x0	// Write all 0s to CSR
	csrrs x23, 0x6b, x18	// Set all CSR bits
	csrrc x23, 0x6b, x18	// Clear all CSR bits
	csrrw x23, 0x6b, x5	// Restore CSR

// Testing CSR 0x6c
	csrr x1, 0x6c	// Read CSR
	li x15, -1
	csrrw x24, 0x6c, x15	// Write all 1s to CSR
	csrrw x24, 0x6c, x0	// Write all 0s to CSR
	csrrs x24, 0x6c, x15	// Set all CSR bits
	csrrc x24, 0x6c, x15	// Clear all CSR bits
	csrrw x24, 0x6c, x1	// Restore CSR

// Testing CSR 0x6d
	csrr x3, 0x6d	// Read CSR
	li x11, -1
	csrrw x24, 0x6d, x11	// Write all 1s to CSR
	csrrw x24, 0x6d, x0	// Write all 0s to CSR
	csrrs x24, 0x6d, x11	// Set all CSR bits
	csrrc x24, 0x6d, x11	// Clear all CSR bits
	csrrw x24, 0x6d, x3	// Restore CSR

// Testing CSR 0x6e
	csrr x2, 0x6e	// Read CSR
	li x18, -1
	csrrw x9, 0x6e, x18	// Write all 1s to CSR
	csrrw x9, 0x6e, x0	// Write all 0s to CSR
	csrrs x9, 0x6e, x18	// Set all CSR bits
	csrrc x9, 0x6e, x18	// Clear all CSR bits
	csrrw x9, 0x6e, x2	// Restore CSR

// Testing CSR 0x6f
	csrr x5, 0x6f	// Read CSR
	li x8, -1
	csrrw x25, 0x6f, x8	// Write all 1s to CSR
	csrrw x25, 0x6f, x0	// Write all 0s to CSR
	csrrs x25, 0x6f, x8	// Set all CSR bits
	csrrc x25, 0x6f, x8	// Clear all CSR bits
	csrrw x25, 0x6f, x5	// Restore CSR

// Testing CSR 0x70
	csrr x31, 0x70	// Read CSR
	li x16, -1
	csrrw x12, 0x70, x16	// Write all 1s to CSR
	csrrw x12, 0x70, x0	// Write all 0s to CSR
	csrrs x12, 0x70, x16	// Set all CSR bits
	csrrc x12, 0x70, x16	// Clear all CSR bits
	csrrw x12, 0x70, x31	// Restore CSR

// Testing CSR 0x71
	csrr x20, 0x71	// Read CSR
	li x10, -1
	csrrw x22, 0x71, x10	// Write all 1s to CSR
	csrrw x22, 0x71, x0	// Write all 0s to CSR
	csrrs x22, 0x71, x10	// Set all CSR bits
	csrrc x22, 0x71, x10	// Clear all CSR bits
	csrrw x22, 0x71, x20	// Restore CSR

// Testing CSR 0x72
	csrr x12, 0x72	// Read CSR
	li x19, -1
	csrrw x31, 0x72, x19	// Write all 1s to CSR
	csrrw x31, 0x72, x0	// Write all 0s to CSR
	csrrs x31, 0x72, x19	// Set all CSR bits
	csrrc x31, 0x72, x19	// Clear all CSR bits
	csrrw x31, 0x72, x12	// Restore CSR

// Testing CSR 0x73
	csrr x29, 0x73	// Read CSR
	li x21, -1
	csrrw x28, 0x73, x21	// Write all 1s to CSR
	csrrw x28, 0x73, x0	// Write all 0s to CSR
	csrrs x28, 0x73, x21	// Set all CSR bits
	csrrc x28, 0x73, x21	// Clear all CSR bits
	csrrw x28, 0x73, x29	// Restore CSR

// Testing CSR 0x74
	csrr x20, 0x74	// Read CSR
	li x5, -1
	csrrw x23, 0x74, x5	// Write all 1s to CSR
	csrrw x23, 0x74, x0	// Write all 0s to CSR
	csrrs x23, 0x74, x5	// Set all CSR bits
	csrrc x23, 0x74, x5	// Clear all CSR bits
	csrrw x23, 0x74, x20	// Restore CSR

// Testing CSR 0x75
	csrr x10, 0x75	// Read CSR
	li x13, -1
	csrrw x24, 0x75, x13	// Write all 1s to CSR
	csrrw x24, 0x75, x0	// Write all 0s to CSR
	csrrs x24, 0x75, x13	// Set all CSR bits
	csrrc x24, 0x75, x13	// Clear all CSR bits
	csrrw x24, 0x75, x10	// Restore CSR

// Testing CSR 0x76
	csrr x14, 0x76	// Read CSR
	li x27, -1
	csrrw x21, 0x76, x27	// Write all 1s to CSR
	csrrw x21, 0x76, x0	// Write all 0s to CSR
	csrrs x21, 0x76, x27	// Set all CSR bits
	csrrc x21, 0x76, x27	// Clear all CSR bits
	csrrw x21, 0x76, x14	// Restore CSR

// Testing CSR 0x77
	csrr x3, 0x77	// Read CSR
	li x1, -1
	csrrw x20, 0x77, x1	// Write all 1s to CSR
	csrrw x20, 0x77, x0	// Write all 0s to CSR
	csrrs x20, 0x77, x1	// Set all CSR bits
	csrrc x20, 0x77, x1	// Clear all CSR bits
	csrrw x20, 0x77, x3	// Restore CSR

// Testing CSR 0x78
	csrr x7, 0x78	// Read CSR
	li x23, -1
	csrrw x11, 0x78, x23	// Write all 1s to CSR
	csrrw x11, 0x78, x0	// Write all 0s to CSR
	csrrs x11, 0x78, x23	// Set all CSR bits
	csrrc x11, 0x78, x23	// Clear all CSR bits
	csrrw x11, 0x78, x7	// Restore CSR

// Testing CSR 0x79
	csrr x6, 0x79	// Read CSR
	li x8, -1
	csrrw x21, 0x79, x8	// Write all 1s to CSR
	csrrw x21, 0x79, x0	// Write all 0s to CSR
	csrrs x21, 0x79, x8	// Set all CSR bits
	csrrc x21, 0x79, x8	// Clear all CSR bits
	csrrw x21, 0x79, x6	// Restore CSR

// Testing CSR 0x7a
	csrr x15, 0x7a	// Read CSR
	li x13, -1
	csrrw x23, 0x7a, x13	// Write all 1s to CSR
	csrrw x23, 0x7a, x0	// Write all 0s to CSR
	csrrs x23, 0x7a, x13	// Set all CSR bits
	csrrc x23, 0x7a, x13	// Clear all CSR bits
	csrrw x23, 0x7a, x15	// Restore CSR

// Testing CSR 0x7b
	csrr x29, 0x7b	// Read CSR
	li x22, -1
	csrrw x19, 0x7b, x22	// Write all 1s to CSR
	csrrw x19, 0x7b, x0	// Write all 0s to CSR
	csrrs x19, 0x7b, x22	// Set all CSR bits
	csrrc x19, 0x7b, x22	// Clear all CSR bits
	csrrw x19, 0x7b, x29	// Restore CSR

// Testing CSR 0x7c
	csrr x28, 0x7c	// Read CSR
	li x14, -1
	csrrw x2, 0x7c, x14	// Write all 1s to CSR
	csrrw x2, 0x7c, x0	// Write all 0s to CSR
	csrrs x2, 0x7c, x14	// Set all CSR bits
	csrrc x2, 0x7c, x14	// Clear all CSR bits
	csrrw x2, 0x7c, x28	// Restore CSR

// Testing CSR 0x7d
	csrr x13, 0x7d	// Read CSR
	li x28, -1
	csrrw x23, 0x7d, x28	// Write all 1s to CSR
	csrrw x23, 0x7d, x0	// Write all 0s to CSR
	csrrs x23, 0x7d, x28	// Set all CSR bits
	csrrc x23, 0x7d, x28	// Clear all CSR bits
	csrrw x23, 0x7d, x13	// Restore CSR

// Testing CSR 0x7e
	csrr x19, 0x7e	// Read CSR
	li x14, -1
	csrrw x25, 0x7e, x14	// Write all 1s to CSR
	csrrw x25, 0x7e, x0	// Write all 0s to CSR
	csrrs x25, 0x7e, x14	// Set all CSR bits
	csrrc x25, 0x7e, x14	// Clear all CSR bits
	csrrw x25, 0x7e, x19	// Restore CSR

// Testing CSR 0x7f
	csrr x22, 0x7f	// Read CSR
	li x23, -1
	csrrw x2, 0x7f, x23	// Write all 1s to CSR
	csrrw x2, 0x7f, x0	// Write all 0s to CSR
	csrrs x2, 0x7f, x23	// Set all CSR bits
	csrrc x2, 0x7f, x23	// Clear all CSR bits
	csrrw x2, 0x7f, x22	// Restore CSR

// Testing CSR 0x80
	csrr x6, 0x80	// Read CSR
	li x15, -1
	csrrw x3, 0x80, x15	// Write all 1s to CSR
	csrrw x3, 0x80, x0	// Write all 0s to CSR
	csrrs x3, 0x80, x15	// Set all CSR bits
	csrrc x3, 0x80, x15	// Clear all CSR bits
	csrrw x3, 0x80, x6	// Restore CSR

// Testing CSR 0x81
	csrr x9, 0x81	// Read CSR
	li x23, -1
	csrrw x6, 0x81, x23	// Write all 1s to CSR
	csrrw x6, 0x81, x0	// Write all 0s to CSR
	csrrs x6, 0x81, x23	// Set all CSR bits
	csrrc x6, 0x81, x23	// Clear all CSR bits
	csrrw x6, 0x81, x9	// Restore CSR

// Testing CSR 0x82
	csrr x15, 0x82	// Read CSR
	li x17, -1
	csrrw x29, 0x82, x17	// Write all 1s to CSR
	csrrw x29, 0x82, x0	// Write all 0s to CSR
	csrrs x29, 0x82, x17	// Set all CSR bits
	csrrc x29, 0x82, x17	// Clear all CSR bits
	csrrw x29, 0x82, x15	// Restore CSR

// Testing CSR 0x83
	csrr x16, 0x83	// Read CSR
	li x30, -1
	csrrw x18, 0x83, x30	// Write all 1s to CSR
	csrrw x18, 0x83, x0	// Write all 0s to CSR
	csrrs x18, 0x83, x30	// Set all CSR bits
	csrrc x18, 0x83, x30	// Clear all CSR bits
	csrrw x18, 0x83, x16	// Restore CSR

// Testing CSR 0x84
	csrr x20, 0x84	// Read CSR
	li x25, -1
	csrrw x1, 0x84, x25	// Write all 1s to CSR
	csrrw x1, 0x84, x0	// Write all 0s to CSR
	csrrs x1, 0x84, x25	// Set all CSR bits
	csrrc x1, 0x84, x25	// Clear all CSR bits
	csrrw x1, 0x84, x20	// Restore CSR

// Testing CSR 0x85
	csrr x29, 0x85	// Read CSR
	li x2, -1
	csrrw x16, 0x85, x2	// Write all 1s to CSR
	csrrw x16, 0x85, x0	// Write all 0s to CSR
	csrrs x16, 0x85, x2	// Set all CSR bits
	csrrc x16, 0x85, x2	// Clear all CSR bits
	csrrw x16, 0x85, x29	// Restore CSR

// Testing CSR 0x86
	csrr x11, 0x86	// Read CSR
	li x10, -1
	csrrw x27, 0x86, x10	// Write all 1s to CSR
	csrrw x27, 0x86, x0	// Write all 0s to CSR
	csrrs x27, 0x86, x10	// Set all CSR bits
	csrrc x27, 0x86, x10	// Clear all CSR bits
	csrrw x27, 0x86, x11	// Restore CSR

// Testing CSR 0x87
	csrr x15, 0x87	// Read CSR
	li x2, -1
	csrrw x26, 0x87, x2	// Write all 1s to CSR
	csrrw x26, 0x87, x0	// Write all 0s to CSR
	csrrs x26, 0x87, x2	// Set all CSR bits
	csrrc x26, 0x87, x2	// Clear all CSR bits
	csrrw x26, 0x87, x15	// Restore CSR

// Testing CSR 0x88
	csrr x27, 0x88	// Read CSR
	li x29, -1
	csrrw x26, 0x88, x29	// Write all 1s to CSR
	csrrw x26, 0x88, x0	// Write all 0s to CSR
	csrrs x26, 0x88, x29	// Set all CSR bits
	csrrc x26, 0x88, x29	// Clear all CSR bits
	csrrw x26, 0x88, x27	// Restore CSR

// Testing CSR 0x89
	csrr x14, 0x89	// Read CSR
	li x7, -1
	csrrw x18, 0x89, x7	// Write all 1s to CSR
	csrrw x18, 0x89, x0	// Write all 0s to CSR
	csrrs x18, 0x89, x7	// Set all CSR bits
	csrrc x18, 0x89, x7	// Clear all CSR bits
	csrrw x18, 0x89, x14	// Restore CSR

// Testing CSR 0x8a
	csrr x31, 0x8a	// Read CSR
	li x21, -1
	csrrw x3, 0x8a, x21	// Write all 1s to CSR
	csrrw x3, 0x8a, x0	// Write all 0s to CSR
	csrrs x3, 0x8a, x21	// Set all CSR bits
	csrrc x3, 0x8a, x21	// Clear all CSR bits
	csrrw x3, 0x8a, x31	// Restore CSR

// Testing CSR 0x8b
	csrr x27, 0x8b	// Read CSR
	li x24, -1
	csrrw x5, 0x8b, x24	// Write all 1s to CSR
	csrrw x5, 0x8b, x0	// Write all 0s to CSR
	csrrs x5, 0x8b, x24	// Set all CSR bits
	csrrc x5, 0x8b, x24	// Clear all CSR bits
	csrrw x5, 0x8b, x27	// Restore CSR

// Testing CSR 0x8c
	csrr x1, 0x8c	// Read CSR
	li x13, -1
	csrrw x31, 0x8c, x13	// Write all 1s to CSR
	csrrw x31, 0x8c, x0	// Write all 0s to CSR
	csrrs x31, 0x8c, x13	// Set all CSR bits
	csrrc x31, 0x8c, x13	// Clear all CSR bits
	csrrw x31, 0x8c, x1	// Restore CSR

// Testing CSR 0x8d
	csrr x22, 0x8d	// Read CSR
	li x14, -1
	csrrw x11, 0x8d, x14	// Write all 1s to CSR
	csrrw x11, 0x8d, x0	// Write all 0s to CSR
	csrrs x11, 0x8d, x14	// Set all CSR bits
	csrrc x11, 0x8d, x14	// Clear all CSR bits
	csrrw x11, 0x8d, x22	// Restore CSR

// Testing CSR 0x8e
	csrr x1, 0x8e	// Read CSR
	li x7, -1
	csrrw x23, 0x8e, x7	// Write all 1s to CSR
	csrrw x23, 0x8e, x0	// Write all 0s to CSR
	csrrs x23, 0x8e, x7	// Set all CSR bits
	csrrc x23, 0x8e, x7	// Clear all CSR bits
	csrrw x23, 0x8e, x1	// Restore CSR

// Testing CSR 0x8f
	csrr x25, 0x8f	// Read CSR
	li x1, -1
	csrrw x27, 0x8f, x1	// Write all 1s to CSR
	csrrw x27, 0x8f, x0	// Write all 0s to CSR
	csrrs x27, 0x8f, x1	// Set all CSR bits
	csrrc x27, 0x8f, x1	// Clear all CSR bits
	csrrw x27, 0x8f, x25	// Restore CSR

// Testing CSR 0x90
	csrr x22, 0x90	// Read CSR
	li x17, -1
	csrrw x20, 0x90, x17	// Write all 1s to CSR
	csrrw x20, 0x90, x0	// Write all 0s to CSR
	csrrs x20, 0x90, x17	// Set all CSR bits
	csrrc x20, 0x90, x17	// Clear all CSR bits
	csrrw x20, 0x90, x22	// Restore CSR

// Testing CSR 0x91
	csrr x4, 0x91	// Read CSR
	li x7, -1
	csrrw x20, 0x91, x7	// Write all 1s to CSR
	csrrw x20, 0x91, x0	// Write all 0s to CSR
	csrrs x20, 0x91, x7	// Set all CSR bits
	csrrc x20, 0x91, x7	// Clear all CSR bits
	csrrw x20, 0x91, x4	// Restore CSR

// Testing CSR 0x92
	csrr x21, 0x92	// Read CSR
	li x7, -1
	csrrw x28, 0x92, x7	// Write all 1s to CSR
	csrrw x28, 0x92, x0	// Write all 0s to CSR
	csrrs x28, 0x92, x7	// Set all CSR bits
	csrrc x28, 0x92, x7	// Clear all CSR bits
	csrrw x28, 0x92, x21	// Restore CSR

// Testing CSR 0x93
	csrr x10, 0x93	// Read CSR
	li x9, -1
	csrrw x23, 0x93, x9	// Write all 1s to CSR
	csrrw x23, 0x93, x0	// Write all 0s to CSR
	csrrs x23, 0x93, x9	// Set all CSR bits
	csrrc x23, 0x93, x9	// Clear all CSR bits
	csrrw x23, 0x93, x10	// Restore CSR

// Testing CSR 0x94
	csrr x6, 0x94	// Read CSR
	li x4, -1
	csrrw x16, 0x94, x4	// Write all 1s to CSR
	csrrw x16, 0x94, x0	// Write all 0s to CSR
	csrrs x16, 0x94, x4	// Set all CSR bits
	csrrc x16, 0x94, x4	// Clear all CSR bits
	csrrw x16, 0x94, x6	// Restore CSR

// Testing CSR 0x95
	csrr x28, 0x95	// Read CSR
	li x30, -1
	csrrw x13, 0x95, x30	// Write all 1s to CSR
	csrrw x13, 0x95, x0	// Write all 0s to CSR
	csrrs x13, 0x95, x30	// Set all CSR bits
	csrrc x13, 0x95, x30	// Clear all CSR bits
	csrrw x13, 0x95, x28	// Restore CSR

// Testing CSR 0x96
	csrr x21, 0x96	// Read CSR
	li x3, -1
	csrrw x1, 0x96, x3	// Write all 1s to CSR
	csrrw x1, 0x96, x0	// Write all 0s to CSR
	csrrs x1, 0x96, x3	// Set all CSR bits
	csrrc x1, 0x96, x3	// Clear all CSR bits
	csrrw x1, 0x96, x21	// Restore CSR

// Testing CSR 0x97
	csrr x9, 0x97	// Read CSR
	li x30, -1
	csrrw x15, 0x97, x30	// Write all 1s to CSR
	csrrw x15, 0x97, x0	// Write all 0s to CSR
	csrrs x15, 0x97, x30	// Set all CSR bits
	csrrc x15, 0x97, x30	// Clear all CSR bits
	csrrw x15, 0x97, x9	// Restore CSR

// Testing CSR 0x98
	csrr x26, 0x98	// Read CSR
	li x28, -1
	csrrw x4, 0x98, x28	// Write all 1s to CSR
	csrrw x4, 0x98, x0	// Write all 0s to CSR
	csrrs x4, 0x98, x28	// Set all CSR bits
	csrrc x4, 0x98, x28	// Clear all CSR bits
	csrrw x4, 0x98, x26	// Restore CSR

// Testing CSR 0x99
	csrr x9, 0x99	// Read CSR
	li x5, -1
	csrrw x21, 0x99, x5	// Write all 1s to CSR
	csrrw x21, 0x99, x0	// Write all 0s to CSR
	csrrs x21, 0x99, x5	// Set all CSR bits
	csrrc x21, 0x99, x5	// Clear all CSR bits
	csrrw x21, 0x99, x9	// Restore CSR

// Testing CSR 0x9a
	csrr x17, 0x9a	// Read CSR
	li x27, -1
	csrrw x21, 0x9a, x27	// Write all 1s to CSR
	csrrw x21, 0x9a, x0	// Write all 0s to CSR
	csrrs x21, 0x9a, x27	// Set all CSR bits
	csrrc x21, 0x9a, x27	// Clear all CSR bits
	csrrw x21, 0x9a, x17	// Restore CSR

// Testing CSR 0x9b
	csrr x21, 0x9b	// Read CSR
	li x12, -1
	csrrw x4, 0x9b, x12	// Write all 1s to CSR
	csrrw x4, 0x9b, x0	// Write all 0s to CSR
	csrrs x4, 0x9b, x12	// Set all CSR bits
	csrrc x4, 0x9b, x12	// Clear all CSR bits
	csrrw x4, 0x9b, x21	// Restore CSR

// Testing CSR 0x9c
	csrr x28, 0x9c	// Read CSR
	li x5, -1
	csrrw x9, 0x9c, x5	// Write all 1s to CSR
	csrrw x9, 0x9c, x0	// Write all 0s to CSR
	csrrs x9, 0x9c, x5	// Set all CSR bits
	csrrc x9, 0x9c, x5	// Clear all CSR bits
	csrrw x9, 0x9c, x28	// Restore CSR

// Testing CSR 0x9d
	csrr x28, 0x9d	// Read CSR
	li x1, -1
	csrrw x2, 0x9d, x1	// Write all 1s to CSR
	csrrw x2, 0x9d, x0	// Write all 0s to CSR
	csrrs x2, 0x9d, x1	// Set all CSR bits
	csrrc x2, 0x9d, x1	// Clear all CSR bits
	csrrw x2, 0x9d, x28	// Restore CSR

// Testing CSR 0x9e
	csrr x2, 0x9e	// Read CSR
	li x7, -1
	csrrw x22, 0x9e, x7	// Write all 1s to CSR
	csrrw x22, 0x9e, x0	// Write all 0s to CSR
	csrrs x22, 0x9e, x7	// Set all CSR bits
	csrrc x22, 0x9e, x7	// Clear all CSR bits
	csrrw x22, 0x9e, x2	// Restore CSR

// Testing CSR 0x9f
	csrr x9, 0x9f	// Read CSR
	li x18, -1
	csrrw x11, 0x9f, x18	// Write all 1s to CSR
	csrrw x11, 0x9f, x0	// Write all 0s to CSR
	csrrs x11, 0x9f, x18	// Set all CSR bits
	csrrc x11, 0x9f, x18	// Clear all CSR bits
	csrrw x11, 0x9f, x9	// Restore CSR

// Testing CSR 0xa0
	csrr x31, 0xa0	// Read CSR
	li x12, -1
	csrrw x19, 0xa0, x12	// Write all 1s to CSR
	csrrw x19, 0xa0, x0	// Write all 0s to CSR
	csrrs x19, 0xa0, x12	// Set all CSR bits
	csrrc x19, 0xa0, x12	// Clear all CSR bits
	csrrw x19, 0xa0, x31	// Restore CSR

// Testing CSR 0xa1
	csrr x30, 0xa1	// Read CSR
	li x28, -1
	csrrw x2, 0xa1, x28	// Write all 1s to CSR
	csrrw x2, 0xa1, x0	// Write all 0s to CSR
	csrrs x2, 0xa1, x28	// Set all CSR bits
	csrrc x2, 0xa1, x28	// Clear all CSR bits
	csrrw x2, 0xa1, x30	// Restore CSR

// Testing CSR 0xa2
	csrr x28, 0xa2	// Read CSR
	li x24, -1
	csrrw x31, 0xa2, x24	// Write all 1s to CSR
	csrrw x31, 0xa2, x0	// Write all 0s to CSR
	csrrs x31, 0xa2, x24	// Set all CSR bits
	csrrc x31, 0xa2, x24	// Clear all CSR bits
	csrrw x31, 0xa2, x28	// Restore CSR

// Testing CSR 0xa3
	csrr x23, 0xa3	// Read CSR
	li x20, -1
	csrrw x21, 0xa3, x20	// Write all 1s to CSR
	csrrw x21, 0xa3, x0	// Write all 0s to CSR
	csrrs x21, 0xa3, x20	// Set all CSR bits
	csrrc x21, 0xa3, x20	// Clear all CSR bits
	csrrw x21, 0xa3, x23	// Restore CSR

// Testing CSR 0xa4
	csrr x16, 0xa4	// Read CSR
	li x23, -1
	csrrw x21, 0xa4, x23	// Write all 1s to CSR
	csrrw x21, 0xa4, x0	// Write all 0s to CSR
	csrrs x21, 0xa4, x23	// Set all CSR bits
	csrrc x21, 0xa4, x23	// Clear all CSR bits
	csrrw x21, 0xa4, x16	// Restore CSR

// Testing CSR 0xa5
	csrr x29, 0xa5	// Read CSR
	li x15, -1
	csrrw x21, 0xa5, x15	// Write all 1s to CSR
	csrrw x21, 0xa5, x0	// Write all 0s to CSR
	csrrs x21, 0xa5, x15	// Set all CSR bits
	csrrc x21, 0xa5, x15	// Clear all CSR bits
	csrrw x21, 0xa5, x29	// Restore CSR

// Testing CSR 0xa6
	csrr x14, 0xa6	// Read CSR
	li x12, -1
	csrrw x28, 0xa6, x12	// Write all 1s to CSR
	csrrw x28, 0xa6, x0	// Write all 0s to CSR
	csrrs x28, 0xa6, x12	// Set all CSR bits
	csrrc x28, 0xa6, x12	// Clear all CSR bits
	csrrw x28, 0xa6, x14	// Restore CSR

// Testing CSR 0xa7
	csrr x18, 0xa7	// Read CSR
	li x6, -1
	csrrw x7, 0xa7, x6	// Write all 1s to CSR
	csrrw x7, 0xa7, x0	// Write all 0s to CSR
	csrrs x7, 0xa7, x6	// Set all CSR bits
	csrrc x7, 0xa7, x6	// Clear all CSR bits
	csrrw x7, 0xa7, x18	// Restore CSR

// Testing CSR 0xa8
	csrr x13, 0xa8	// Read CSR
	li x19, -1
	csrrw x10, 0xa8, x19	// Write all 1s to CSR
	csrrw x10, 0xa8, x0	// Write all 0s to CSR
	csrrs x10, 0xa8, x19	// Set all CSR bits
	csrrc x10, 0xa8, x19	// Clear all CSR bits
	csrrw x10, 0xa8, x13	// Restore CSR

// Testing CSR 0xa9
	csrr x1, 0xa9	// Read CSR
	li x5, -1
	csrrw x9, 0xa9, x5	// Write all 1s to CSR
	csrrw x9, 0xa9, x0	// Write all 0s to CSR
	csrrs x9, 0xa9, x5	// Set all CSR bits
	csrrc x9, 0xa9, x5	// Clear all CSR bits
	csrrw x9, 0xa9, x1	// Restore CSR

// Testing CSR 0xaa
	csrr x11, 0xaa	// Read CSR
	li x12, -1
	csrrw x26, 0xaa, x12	// Write all 1s to CSR
	csrrw x26, 0xaa, x0	// Write all 0s to CSR
	csrrs x26, 0xaa, x12	// Set all CSR bits
	csrrc x26, 0xaa, x12	// Clear all CSR bits
	csrrw x26, 0xaa, x11	// Restore CSR

// Testing CSR 0xab
	csrr x23, 0xab	// Read CSR
	li x3, -1
	csrrw x11, 0xab, x3	// Write all 1s to CSR
	csrrw x11, 0xab, x0	// Write all 0s to CSR
	csrrs x11, 0xab, x3	// Set all CSR bits
	csrrc x11, 0xab, x3	// Clear all CSR bits
	csrrw x11, 0xab, x23	// Restore CSR

// Testing CSR 0xac
	csrr x25, 0xac	// Read CSR
	li x20, -1
	csrrw x2, 0xac, x20	// Write all 1s to CSR
	csrrw x2, 0xac, x0	// Write all 0s to CSR
	csrrs x2, 0xac, x20	// Set all CSR bits
	csrrc x2, 0xac, x20	// Clear all CSR bits
	csrrw x2, 0xac, x25	// Restore CSR

// Testing CSR 0xad
	csrr x2, 0xad	// Read CSR
	li x9, -1
	csrrw x6, 0xad, x9	// Write all 1s to CSR
	csrrw x6, 0xad, x0	// Write all 0s to CSR
	csrrs x6, 0xad, x9	// Set all CSR bits
	csrrc x6, 0xad, x9	// Clear all CSR bits
	csrrw x6, 0xad, x2	// Restore CSR

// Testing CSR 0xae
	csrr x5, 0xae	// Read CSR
	li x19, -1
	csrrw x10, 0xae, x19	// Write all 1s to CSR
	csrrw x10, 0xae, x0	// Write all 0s to CSR
	csrrs x10, 0xae, x19	// Set all CSR bits
	csrrc x10, 0xae, x19	// Clear all CSR bits
	csrrw x10, 0xae, x5	// Restore CSR

// Testing CSR 0xaf
	csrr x12, 0xaf	// Read CSR
	li x13, -1
	csrrw x18, 0xaf, x13	// Write all 1s to CSR
	csrrw x18, 0xaf, x0	// Write all 0s to CSR
	csrrs x18, 0xaf, x13	// Set all CSR bits
	csrrc x18, 0xaf, x13	// Clear all CSR bits
	csrrw x18, 0xaf, x12	// Restore CSR

// Testing CSR 0xb0
	csrr x5, 0xb0	// Read CSR
	li x10, -1
	csrrw x4, 0xb0, x10	// Write all 1s to CSR
	csrrw x4, 0xb0, x0	// Write all 0s to CSR
	csrrs x4, 0xb0, x10	// Set all CSR bits
	csrrc x4, 0xb0, x10	// Clear all CSR bits
	csrrw x4, 0xb0, x5	// Restore CSR

// Testing CSR 0xb1
	csrr x16, 0xb1	// Read CSR
	li x24, -1
	csrrw x8, 0xb1, x24	// Write all 1s to CSR
	csrrw x8, 0xb1, x0	// Write all 0s to CSR
	csrrs x8, 0xb1, x24	// Set all CSR bits
	csrrc x8, 0xb1, x24	// Clear all CSR bits
	csrrw x8, 0xb1, x16	// Restore CSR

// Testing CSR 0xb2
	csrr x30, 0xb2	// Read CSR
	li x2, -1
	csrrw x10, 0xb2, x2	// Write all 1s to CSR
	csrrw x10, 0xb2, x0	// Write all 0s to CSR
	csrrs x10, 0xb2, x2	// Set all CSR bits
	csrrc x10, 0xb2, x2	// Clear all CSR bits
	csrrw x10, 0xb2, x30	// Restore CSR

// Testing CSR 0xb3
	csrr x6, 0xb3	// Read CSR
	li x28, -1
	csrrw x17, 0xb3, x28	// Write all 1s to CSR
	csrrw x17, 0xb3, x0	// Write all 0s to CSR
	csrrs x17, 0xb3, x28	// Set all CSR bits
	csrrc x17, 0xb3, x28	// Clear all CSR bits
	csrrw x17, 0xb3, x6	// Restore CSR

// Testing CSR 0xb4
	csrr x24, 0xb4	// Read CSR
	li x3, -1
	csrrw x10, 0xb4, x3	// Write all 1s to CSR
	csrrw x10, 0xb4, x0	// Write all 0s to CSR
	csrrs x10, 0xb4, x3	// Set all CSR bits
	csrrc x10, 0xb4, x3	// Clear all CSR bits
	csrrw x10, 0xb4, x24	// Restore CSR

// Testing CSR 0xb5
	csrr x13, 0xb5	// Read CSR
	li x27, -1
	csrrw x11, 0xb5, x27	// Write all 1s to CSR
	csrrw x11, 0xb5, x0	// Write all 0s to CSR
	csrrs x11, 0xb5, x27	// Set all CSR bits
	csrrc x11, 0xb5, x27	// Clear all CSR bits
	csrrw x11, 0xb5, x13	// Restore CSR

// Testing CSR 0xb6
	csrr x10, 0xb6	// Read CSR
	li x14, -1
	csrrw x4, 0xb6, x14	// Write all 1s to CSR
	csrrw x4, 0xb6, x0	// Write all 0s to CSR
	csrrs x4, 0xb6, x14	// Set all CSR bits
	csrrc x4, 0xb6, x14	// Clear all CSR bits
	csrrw x4, 0xb6, x10	// Restore CSR

// Testing CSR 0xb7
	csrr x4, 0xb7	// Read CSR
	li x18, -1
	csrrw x30, 0xb7, x18	// Write all 1s to CSR
	csrrw x30, 0xb7, x0	// Write all 0s to CSR
	csrrs x30, 0xb7, x18	// Set all CSR bits
	csrrc x30, 0xb7, x18	// Clear all CSR bits
	csrrw x30, 0xb7, x4	// Restore CSR

// Testing CSR 0xb8
	csrr x16, 0xb8	// Read CSR
	li x27, -1
	csrrw x11, 0xb8, x27	// Write all 1s to CSR
	csrrw x11, 0xb8, x0	// Write all 0s to CSR
	csrrs x11, 0xb8, x27	// Set all CSR bits
	csrrc x11, 0xb8, x27	// Clear all CSR bits
	csrrw x11, 0xb8, x16	// Restore CSR

// Testing CSR 0xb9
	csrr x26, 0xb9	// Read CSR
	li x4, -1
	csrrw x11, 0xb9, x4	// Write all 1s to CSR
	csrrw x11, 0xb9, x0	// Write all 0s to CSR
	csrrs x11, 0xb9, x4	// Set all CSR bits
	csrrc x11, 0xb9, x4	// Clear all CSR bits
	csrrw x11, 0xb9, x26	// Restore CSR

// Testing CSR 0xba
	csrr x16, 0xba	// Read CSR
	li x4, -1
	csrrw x23, 0xba, x4	// Write all 1s to CSR
	csrrw x23, 0xba, x0	// Write all 0s to CSR
	csrrs x23, 0xba, x4	// Set all CSR bits
	csrrc x23, 0xba, x4	// Clear all CSR bits
	csrrw x23, 0xba, x16	// Restore CSR

// Testing CSR 0xbb
	csrr x16, 0xbb	// Read CSR
	li x14, -1
	csrrw x2, 0xbb, x14	// Write all 1s to CSR
	csrrw x2, 0xbb, x0	// Write all 0s to CSR
	csrrs x2, 0xbb, x14	// Set all CSR bits
	csrrc x2, 0xbb, x14	// Clear all CSR bits
	csrrw x2, 0xbb, x16	// Restore CSR

// Testing CSR 0xbc
	csrr x10, 0xbc	// Read CSR
	li x11, -1
	csrrw x24, 0xbc, x11	// Write all 1s to CSR
	csrrw x24, 0xbc, x0	// Write all 0s to CSR
	csrrs x24, 0xbc, x11	// Set all CSR bits
	csrrc x24, 0xbc, x11	// Clear all CSR bits
	csrrw x24, 0xbc, x10	// Restore CSR

// Testing CSR 0xbd
	csrr x22, 0xbd	// Read CSR
	li x29, -1
	csrrw x5, 0xbd, x29	// Write all 1s to CSR
	csrrw x5, 0xbd, x0	// Write all 0s to CSR
	csrrs x5, 0xbd, x29	// Set all CSR bits
	csrrc x5, 0xbd, x29	// Clear all CSR bits
	csrrw x5, 0xbd, x22	// Restore CSR

// Testing CSR 0xbe
	csrr x30, 0xbe	// Read CSR
	li x6, -1
	csrrw x21, 0xbe, x6	// Write all 1s to CSR
	csrrw x21, 0xbe, x0	// Write all 0s to CSR
	csrrs x21, 0xbe, x6	// Set all CSR bits
	csrrc x21, 0xbe, x6	// Clear all CSR bits
	csrrw x21, 0xbe, x30	// Restore CSR

// Testing CSR 0xbf
	csrr x19, 0xbf	// Read CSR
	li x13, -1
	csrrw x26, 0xbf, x13	// Write all 1s to CSR
	csrrw x26, 0xbf, x0	// Write all 0s to CSR
	csrrs x26, 0xbf, x13	// Set all CSR bits
	csrrc x26, 0xbf, x13	// Clear all CSR bits
	csrrw x26, 0xbf, x19	// Restore CSR

// Testing CSR 0xc0
	csrr x21, 0xc0	// Read CSR
	li x3, -1
	csrrw x26, 0xc0, x3	// Write all 1s to CSR
	csrrw x26, 0xc0, x0	// Write all 0s to CSR
	csrrs x26, 0xc0, x3	// Set all CSR bits
	csrrc x26, 0xc0, x3	// Clear all CSR bits
	csrrw x26, 0xc0, x21	// Restore CSR

// Testing CSR 0xc1
	csrr x3, 0xc1	// Read CSR
	li x7, -1
	csrrw x24, 0xc1, x7	// Write all 1s to CSR
	csrrw x24, 0xc1, x0	// Write all 0s to CSR
	csrrs x24, 0xc1, x7	// Set all CSR bits
	csrrc x24, 0xc1, x7	// Clear all CSR bits
	csrrw x24, 0xc1, x3	// Restore CSR

// Testing CSR 0xc2
	csrr x8, 0xc2	// Read CSR
	li x2, -1
	csrrw x13, 0xc2, x2	// Write all 1s to CSR
	csrrw x13, 0xc2, x0	// Write all 0s to CSR
	csrrs x13, 0xc2, x2	// Set all CSR bits
	csrrc x13, 0xc2, x2	// Clear all CSR bits
	csrrw x13, 0xc2, x8	// Restore CSR

// Testing CSR 0xc3
	csrr x1, 0xc3	// Read CSR
	li x4, -1
	csrrw x13, 0xc3, x4	// Write all 1s to CSR
	csrrw x13, 0xc3, x0	// Write all 0s to CSR
	csrrs x13, 0xc3, x4	// Set all CSR bits
	csrrc x13, 0xc3, x4	// Clear all CSR bits
	csrrw x13, 0xc3, x1	// Restore CSR

// Testing CSR 0xc4
	csrr x18, 0xc4	// Read CSR
	li x17, -1
	csrrw x10, 0xc4, x17	// Write all 1s to CSR
	csrrw x10, 0xc4, x0	// Write all 0s to CSR
	csrrs x10, 0xc4, x17	// Set all CSR bits
	csrrc x10, 0xc4, x17	// Clear all CSR bits
	csrrw x10, 0xc4, x18	// Restore CSR

// Testing CSR 0xc5
	csrr x15, 0xc5	// Read CSR
	li x30, -1
	csrrw x16, 0xc5, x30	// Write all 1s to CSR
	csrrw x16, 0xc5, x0	// Write all 0s to CSR
	csrrs x16, 0xc5, x30	// Set all CSR bits
	csrrc x16, 0xc5, x30	// Clear all CSR bits
	csrrw x16, 0xc5, x15	// Restore CSR

// Testing CSR 0xc6
	csrr x26, 0xc6	// Read CSR
	li x19, -1
	csrrw x23, 0xc6, x19	// Write all 1s to CSR
	csrrw x23, 0xc6, x0	// Write all 0s to CSR
	csrrs x23, 0xc6, x19	// Set all CSR bits
	csrrc x23, 0xc6, x19	// Clear all CSR bits
	csrrw x23, 0xc6, x26	// Restore CSR

// Testing CSR 0xc7
	csrr x22, 0xc7	// Read CSR
	li x7, -1
	csrrw x14, 0xc7, x7	// Write all 1s to CSR
	csrrw x14, 0xc7, x0	// Write all 0s to CSR
	csrrs x14, 0xc7, x7	// Set all CSR bits
	csrrc x14, 0xc7, x7	// Clear all CSR bits
	csrrw x14, 0xc7, x22	// Restore CSR

// Testing CSR 0xc8
	csrr x3, 0xc8	// Read CSR
	li x12, -1
	csrrw x8, 0xc8, x12	// Write all 1s to CSR
	csrrw x8, 0xc8, x0	// Write all 0s to CSR
	csrrs x8, 0xc8, x12	// Set all CSR bits
	csrrc x8, 0xc8, x12	// Clear all CSR bits
	csrrw x8, 0xc8, x3	// Restore CSR

// Testing CSR 0xc9
	csrr x9, 0xc9	// Read CSR
	li x19, -1
	csrrw x25, 0xc9, x19	// Write all 1s to CSR
	csrrw x25, 0xc9, x0	// Write all 0s to CSR
	csrrs x25, 0xc9, x19	// Set all CSR bits
	csrrc x25, 0xc9, x19	// Clear all CSR bits
	csrrw x25, 0xc9, x9	// Restore CSR

// Testing CSR 0xca
	csrr x6, 0xca	// Read CSR
	li x14, -1
	csrrw x7, 0xca, x14	// Write all 1s to CSR
	csrrw x7, 0xca, x0	// Write all 0s to CSR
	csrrs x7, 0xca, x14	// Set all CSR bits
	csrrc x7, 0xca, x14	// Clear all CSR bits
	csrrw x7, 0xca, x6	// Restore CSR

// Testing CSR 0xcb
	csrr x12, 0xcb	// Read CSR
	li x4, -1
	csrrw x3, 0xcb, x4	// Write all 1s to CSR
	csrrw x3, 0xcb, x0	// Write all 0s to CSR
	csrrs x3, 0xcb, x4	// Set all CSR bits
	csrrc x3, 0xcb, x4	// Clear all CSR bits
	csrrw x3, 0xcb, x12	// Restore CSR

// Testing CSR 0xcc
	csrr x27, 0xcc	// Read CSR
	li x28, -1
	csrrw x23, 0xcc, x28	// Write all 1s to CSR
	csrrw x23, 0xcc, x0	// Write all 0s to CSR
	csrrs x23, 0xcc, x28	// Set all CSR bits
	csrrc x23, 0xcc, x28	// Clear all CSR bits
	csrrw x23, 0xcc, x27	// Restore CSR

// Testing CSR 0xcd
	csrr x1, 0xcd	// Read CSR
	li x29, -1
	csrrw x17, 0xcd, x29	// Write all 1s to CSR
	csrrw x17, 0xcd, x0	// Write all 0s to CSR
	csrrs x17, 0xcd, x29	// Set all CSR bits
	csrrc x17, 0xcd, x29	// Clear all CSR bits
	csrrw x17, 0xcd, x1	// Restore CSR

// Testing CSR 0xce
	csrr x15, 0xce	// Read CSR
	li x25, -1
	csrrw x22, 0xce, x25	// Write all 1s to CSR
	csrrw x22, 0xce, x0	// Write all 0s to CSR
	csrrs x22, 0xce, x25	// Set all CSR bits
	csrrc x22, 0xce, x25	// Clear all CSR bits
	csrrw x22, 0xce, x15	// Restore CSR

// Testing CSR 0xcf
	csrr x7, 0xcf	// Read CSR
	li x4, -1
	csrrw x16, 0xcf, x4	// Write all 1s to CSR
	csrrw x16, 0xcf, x0	// Write all 0s to CSR
	csrrs x16, 0xcf, x4	// Set all CSR bits
	csrrc x16, 0xcf, x4	// Clear all CSR bits
	csrrw x16, 0xcf, x7	// Restore CSR

// Testing CSR 0xd0
	csrr x13, 0xd0	// Read CSR
	li x9, -1
	csrrw x7, 0xd0, x9	// Write all 1s to CSR
	csrrw x7, 0xd0, x0	// Write all 0s to CSR
	csrrs x7, 0xd0, x9	// Set all CSR bits
	csrrc x7, 0xd0, x9	// Clear all CSR bits
	csrrw x7, 0xd0, x13	// Restore CSR

// Testing CSR 0xd1
	csrr x21, 0xd1	// Read CSR
	li x2, -1
	csrrw x31, 0xd1, x2	// Write all 1s to CSR
	csrrw x31, 0xd1, x0	// Write all 0s to CSR
	csrrs x31, 0xd1, x2	// Set all CSR bits
	csrrc x31, 0xd1, x2	// Clear all CSR bits
	csrrw x31, 0xd1, x21	// Restore CSR

// Testing CSR 0xd2
	csrr x26, 0xd2	// Read CSR
	li x7, -1
	csrrw x20, 0xd2, x7	// Write all 1s to CSR
	csrrw x20, 0xd2, x0	// Write all 0s to CSR
	csrrs x20, 0xd2, x7	// Set all CSR bits
	csrrc x20, 0xd2, x7	// Clear all CSR bits
	csrrw x20, 0xd2, x26	// Restore CSR

// Testing CSR 0xd3
	csrr x5, 0xd3	// Read CSR
	li x4, -1
	csrrw x7, 0xd3, x4	// Write all 1s to CSR
	csrrw x7, 0xd3, x0	// Write all 0s to CSR
	csrrs x7, 0xd3, x4	// Set all CSR bits
	csrrc x7, 0xd3, x4	// Clear all CSR bits
	csrrw x7, 0xd3, x5	// Restore CSR

// Testing CSR 0xd4
	csrr x15, 0xd4	// Read CSR
	li x13, -1
	csrrw x12, 0xd4, x13	// Write all 1s to CSR
	csrrw x12, 0xd4, x0	// Write all 0s to CSR
	csrrs x12, 0xd4, x13	// Set all CSR bits
	csrrc x12, 0xd4, x13	// Clear all CSR bits
	csrrw x12, 0xd4, x15	// Restore CSR

// Testing CSR 0xd5
	csrr x18, 0xd5	// Read CSR
	li x27, -1
	csrrw x5, 0xd5, x27	// Write all 1s to CSR
	csrrw x5, 0xd5, x0	// Write all 0s to CSR
	csrrs x5, 0xd5, x27	// Set all CSR bits
	csrrc x5, 0xd5, x27	// Clear all CSR bits
	csrrw x5, 0xd5, x18	// Restore CSR

// Testing CSR 0xd6
	csrr x4, 0xd6	// Read CSR
	li x20, -1
	csrrw x16, 0xd6, x20	// Write all 1s to CSR
	csrrw x16, 0xd6, x0	// Write all 0s to CSR
	csrrs x16, 0xd6, x20	// Set all CSR bits
	csrrc x16, 0xd6, x20	// Clear all CSR bits
	csrrw x16, 0xd6, x4	// Restore CSR

// Testing CSR 0xd7
	csrr x5, 0xd7	// Read CSR
	li x19, -1
	csrrw x13, 0xd7, x19	// Write all 1s to CSR
	csrrw x13, 0xd7, x0	// Write all 0s to CSR
	csrrs x13, 0xd7, x19	// Set all CSR bits
	csrrc x13, 0xd7, x19	// Clear all CSR bits
	csrrw x13, 0xd7, x5	// Restore CSR

// Testing CSR 0xd8
	csrr x21, 0xd8	// Read CSR
	li x22, -1
	csrrw x14, 0xd8, x22	// Write all 1s to CSR
	csrrw x14, 0xd8, x0	// Write all 0s to CSR
	csrrs x14, 0xd8, x22	// Set all CSR bits
	csrrc x14, 0xd8, x22	// Clear all CSR bits
	csrrw x14, 0xd8, x21	// Restore CSR

// Testing CSR 0xd9
	csrr x29, 0xd9	// Read CSR
	li x17, -1
	csrrw x16, 0xd9, x17	// Write all 1s to CSR
	csrrw x16, 0xd9, x0	// Write all 0s to CSR
	csrrs x16, 0xd9, x17	// Set all CSR bits
	csrrc x16, 0xd9, x17	// Clear all CSR bits
	csrrw x16, 0xd9, x29	// Restore CSR

// Testing CSR 0xda
	csrr x22, 0xda	// Read CSR
	li x30, -1
	csrrw x29, 0xda, x30	// Write all 1s to CSR
	csrrw x29, 0xda, x0	// Write all 0s to CSR
	csrrs x29, 0xda, x30	// Set all CSR bits
	csrrc x29, 0xda, x30	// Clear all CSR bits
	csrrw x29, 0xda, x22	// Restore CSR

// Testing CSR 0xdb
	csrr x11, 0xdb	// Read CSR
	li x27, -1
	csrrw x16, 0xdb, x27	// Write all 1s to CSR
	csrrw x16, 0xdb, x0	// Write all 0s to CSR
	csrrs x16, 0xdb, x27	// Set all CSR bits
	csrrc x16, 0xdb, x27	// Clear all CSR bits
	csrrw x16, 0xdb, x11	// Restore CSR

// Testing CSR 0xdc
	csrr x16, 0xdc	// Read CSR
	li x21, -1
	csrrw x22, 0xdc, x21	// Write all 1s to CSR
	csrrw x22, 0xdc, x0	// Write all 0s to CSR
	csrrs x22, 0xdc, x21	// Set all CSR bits
	csrrc x22, 0xdc, x21	// Clear all CSR bits
	csrrw x22, 0xdc, x16	// Restore CSR

// Testing CSR 0xdd
	csrr x28, 0xdd	// Read CSR
	li x7, -1
	csrrw x18, 0xdd, x7	// Write all 1s to CSR
	csrrw x18, 0xdd, x0	// Write all 0s to CSR
	csrrs x18, 0xdd, x7	// Set all CSR bits
	csrrc x18, 0xdd, x7	// Clear all CSR bits
	csrrw x18, 0xdd, x28	// Restore CSR

// Testing CSR 0xde
	csrr x20, 0xde	// Read CSR
	li x30, -1
	csrrw x8, 0xde, x30	// Write all 1s to CSR
	csrrw x8, 0xde, x0	// Write all 0s to CSR
	csrrs x8, 0xde, x30	// Set all CSR bits
	csrrc x8, 0xde, x30	// Clear all CSR bits
	csrrw x8, 0xde, x20	// Restore CSR

// Testing CSR 0xdf
	csrr x1, 0xdf	// Read CSR
	li x11, -1
	csrrw x23, 0xdf, x11	// Write all 1s to CSR
	csrrw x23, 0xdf, x0	// Write all 0s to CSR
	csrrs x23, 0xdf, x11	// Set all CSR bits
	csrrc x23, 0xdf, x11	// Clear all CSR bits
	csrrw x23, 0xdf, x1	// Restore CSR

// Testing CSR 0xe0
	csrr x31, 0xe0	// Read CSR
	li x24, -1
	csrrw x29, 0xe0, x24	// Write all 1s to CSR
	csrrw x29, 0xe0, x0	// Write all 0s to CSR
	csrrs x29, 0xe0, x24	// Set all CSR bits
	csrrc x29, 0xe0, x24	// Clear all CSR bits
	csrrw x29, 0xe0, x31	// Restore CSR

// Testing CSR 0xe1
	csrr x11, 0xe1	// Read CSR
	li x27, -1
	csrrw x2, 0xe1, x27	// Write all 1s to CSR
	csrrw x2, 0xe1, x0	// Write all 0s to CSR
	csrrs x2, 0xe1, x27	// Set all CSR bits
	csrrc x2, 0xe1, x27	// Clear all CSR bits
	csrrw x2, 0xe1, x11	// Restore CSR

// Testing CSR 0xe2
	csrr x17, 0xe2	// Read CSR
	li x5, -1
	csrrw x28, 0xe2, x5	// Write all 1s to CSR
	csrrw x28, 0xe2, x0	// Write all 0s to CSR
	csrrs x28, 0xe2, x5	// Set all CSR bits
	csrrc x28, 0xe2, x5	// Clear all CSR bits
	csrrw x28, 0xe2, x17	// Restore CSR

// Testing CSR 0xe3
	csrr x9, 0xe3	// Read CSR
	li x20, -1
	csrrw x26, 0xe3, x20	// Write all 1s to CSR
	csrrw x26, 0xe3, x0	// Write all 0s to CSR
	csrrs x26, 0xe3, x20	// Set all CSR bits
	csrrc x26, 0xe3, x20	// Clear all CSR bits
	csrrw x26, 0xe3, x9	// Restore CSR

// Testing CSR 0xe4
	csrr x5, 0xe4	// Read CSR
	li x27, -1
	csrrw x13, 0xe4, x27	// Write all 1s to CSR
	csrrw x13, 0xe4, x0	// Write all 0s to CSR
	csrrs x13, 0xe4, x27	// Set all CSR bits
	csrrc x13, 0xe4, x27	// Clear all CSR bits
	csrrw x13, 0xe4, x5	// Restore CSR

// Testing CSR 0xe5
	csrr x19, 0xe5	// Read CSR
	li x10, -1
	csrrw x23, 0xe5, x10	// Write all 1s to CSR
	csrrw x23, 0xe5, x0	// Write all 0s to CSR
	csrrs x23, 0xe5, x10	// Set all CSR bits
	csrrc x23, 0xe5, x10	// Clear all CSR bits
	csrrw x23, 0xe5, x19	// Restore CSR

// Testing CSR 0xe6
	csrr x23, 0xe6	// Read CSR
	li x26, -1
	csrrw x16, 0xe6, x26	// Write all 1s to CSR
	csrrw x16, 0xe6, x0	// Write all 0s to CSR
	csrrs x16, 0xe6, x26	// Set all CSR bits
	csrrc x16, 0xe6, x26	// Clear all CSR bits
	csrrw x16, 0xe6, x23	// Restore CSR

// Testing CSR 0xe7
	csrr x3, 0xe7	// Read CSR
	li x26, -1
	csrrw x17, 0xe7, x26	// Write all 1s to CSR
	csrrw x17, 0xe7, x0	// Write all 0s to CSR
	csrrs x17, 0xe7, x26	// Set all CSR bits
	csrrc x17, 0xe7, x26	// Clear all CSR bits
	csrrw x17, 0xe7, x3	// Restore CSR

// Testing CSR 0xe8
	csrr x28, 0xe8	// Read CSR
	li x30, -1
	csrrw x2, 0xe8, x30	// Write all 1s to CSR
	csrrw x2, 0xe8, x0	// Write all 0s to CSR
	csrrs x2, 0xe8, x30	// Set all CSR bits
	csrrc x2, 0xe8, x30	// Clear all CSR bits
	csrrw x2, 0xe8, x28	// Restore CSR

// Testing CSR 0xe9
	csrr x3, 0xe9	// Read CSR
	li x8, -1
	csrrw x5, 0xe9, x8	// Write all 1s to CSR
	csrrw x5, 0xe9, x0	// Write all 0s to CSR
	csrrs x5, 0xe9, x8	// Set all CSR bits
	csrrc x5, 0xe9, x8	// Clear all CSR bits
	csrrw x5, 0xe9, x3	// Restore CSR

// Testing CSR 0xea
	csrr x2, 0xea	// Read CSR
	li x10, -1
	csrrw x1, 0xea, x10	// Write all 1s to CSR
	csrrw x1, 0xea, x0	// Write all 0s to CSR
	csrrs x1, 0xea, x10	// Set all CSR bits
	csrrc x1, 0xea, x10	// Clear all CSR bits
	csrrw x1, 0xea, x2	// Restore CSR

// Testing CSR 0xeb
	csrr x25, 0xeb	// Read CSR
	li x28, -1
	csrrw x15, 0xeb, x28	// Write all 1s to CSR
	csrrw x15, 0xeb, x0	// Write all 0s to CSR
	csrrs x15, 0xeb, x28	// Set all CSR bits
	csrrc x15, 0xeb, x28	// Clear all CSR bits
	csrrw x15, 0xeb, x25	// Restore CSR

// Testing CSR 0xec
	csrr x11, 0xec	// Read CSR
	li x28, -1
	csrrw x6, 0xec, x28	// Write all 1s to CSR
	csrrw x6, 0xec, x0	// Write all 0s to CSR
	csrrs x6, 0xec, x28	// Set all CSR bits
	csrrc x6, 0xec, x28	// Clear all CSR bits
	csrrw x6, 0xec, x11	// Restore CSR

// Testing CSR 0xed
	csrr x26, 0xed	// Read CSR
	li x5, -1
	csrrw x28, 0xed, x5	// Write all 1s to CSR
	csrrw x28, 0xed, x0	// Write all 0s to CSR
	csrrs x28, 0xed, x5	// Set all CSR bits
	csrrc x28, 0xed, x5	// Clear all CSR bits
	csrrw x28, 0xed, x26	// Restore CSR

// Testing CSR 0xee
	csrr x21, 0xee	// Read CSR
	li x15, -1
	csrrw x31, 0xee, x15	// Write all 1s to CSR
	csrrw x31, 0xee, x0	// Write all 0s to CSR
	csrrs x31, 0xee, x15	// Set all CSR bits
	csrrc x31, 0xee, x15	// Clear all CSR bits
	csrrw x31, 0xee, x21	// Restore CSR

// Testing CSR 0xef
	csrr x12, 0xef	// Read CSR
	li x17, -1
	csrrw x13, 0xef, x17	// Write all 1s to CSR
	csrrw x13, 0xef, x0	// Write all 0s to CSR
	csrrs x13, 0xef, x17	// Set all CSR bits
	csrrc x13, 0xef, x17	// Clear all CSR bits
	csrrw x13, 0xef, x12	// Restore CSR

// Testing CSR 0xf0
	csrr x29, 0xf0	// Read CSR
	li x17, -1
	csrrw x2, 0xf0, x17	// Write all 1s to CSR
	csrrw x2, 0xf0, x0	// Write all 0s to CSR
	csrrs x2, 0xf0, x17	// Set all CSR bits
	csrrc x2, 0xf0, x17	// Clear all CSR bits
	csrrw x2, 0xf0, x29	// Restore CSR

// Testing CSR 0xf1
	csrr x19, 0xf1	// Read CSR
	li x3, -1
	csrrw x22, 0xf1, x3	// Write all 1s to CSR
	csrrw x22, 0xf1, x0	// Write all 0s to CSR
	csrrs x22, 0xf1, x3	// Set all CSR bits
	csrrc x22, 0xf1, x3	// Clear all CSR bits
	csrrw x22, 0xf1, x19	// Restore CSR

// Testing CSR 0xf2
	csrr x26, 0xf2	// Read CSR
	li x25, -1
	csrrw x17, 0xf2, x25	// Write all 1s to CSR
	csrrw x17, 0xf2, x0	// Write all 0s to CSR
	csrrs x17, 0xf2, x25	// Set all CSR bits
	csrrc x17, 0xf2, x25	// Clear all CSR bits
	csrrw x17, 0xf2, x26	// Restore CSR

// Testing CSR 0xf3
	csrr x20, 0xf3	// Read CSR
	li x3, -1
	csrrw x24, 0xf3, x3	// Write all 1s to CSR
	csrrw x24, 0xf3, x0	// Write all 0s to CSR
	csrrs x24, 0xf3, x3	// Set all CSR bits
	csrrc x24, 0xf3, x3	// Clear all CSR bits
	csrrw x24, 0xf3, x20	// Restore CSR

// Testing CSR 0xf4
	csrr x14, 0xf4	// Read CSR
	li x29, -1
	csrrw x25, 0xf4, x29	// Write all 1s to CSR
	csrrw x25, 0xf4, x0	// Write all 0s to CSR
	csrrs x25, 0xf4, x29	// Set all CSR bits
	csrrc x25, 0xf4, x29	// Clear all CSR bits
	csrrw x25, 0xf4, x14	// Restore CSR

// Testing CSR 0xf5
	csrr x7, 0xf5	// Read CSR
	li x10, -1
	csrrw x18, 0xf5, x10	// Write all 1s to CSR
	csrrw x18, 0xf5, x0	// Write all 0s to CSR
	csrrs x18, 0xf5, x10	// Set all CSR bits
	csrrc x18, 0xf5, x10	// Clear all CSR bits
	csrrw x18, 0xf5, x7	// Restore CSR

// Testing CSR 0xf6
	csrr x29, 0xf6	// Read CSR
	li x20, -1
	csrrw x14, 0xf6, x20	// Write all 1s to CSR
	csrrw x14, 0xf6, x0	// Write all 0s to CSR
	csrrs x14, 0xf6, x20	// Set all CSR bits
	csrrc x14, 0xf6, x20	// Clear all CSR bits
	csrrw x14, 0xf6, x29	// Restore CSR

// Testing CSR 0xf7
	csrr x27, 0xf7	// Read CSR
	li x16, -1
	csrrw x28, 0xf7, x16	// Write all 1s to CSR
	csrrw x28, 0xf7, x0	// Write all 0s to CSR
	csrrs x28, 0xf7, x16	// Set all CSR bits
	csrrc x28, 0xf7, x16	// Clear all CSR bits
	csrrw x28, 0xf7, x27	// Restore CSR

// Testing CSR 0xf8
	csrr x26, 0xf8	// Read CSR
	li x13, -1
	csrrw x20, 0xf8, x13	// Write all 1s to CSR
	csrrw x20, 0xf8, x0	// Write all 0s to CSR
	csrrs x20, 0xf8, x13	// Set all CSR bits
	csrrc x20, 0xf8, x13	// Clear all CSR bits
	csrrw x20, 0xf8, x26	// Restore CSR

// Testing CSR 0xf9
	csrr x19, 0xf9	// Read CSR
	li x8, -1
	csrrw x28, 0xf9, x8	// Write all 1s to CSR
	csrrw x28, 0xf9, x0	// Write all 0s to CSR
	csrrs x28, 0xf9, x8	// Set all CSR bits
	csrrc x28, 0xf9, x8	// Clear all CSR bits
	csrrw x28, 0xf9, x19	// Restore CSR

// Testing CSR 0xfa
	csrr x28, 0xfa	// Read CSR
	li x26, -1
	csrrw x1, 0xfa, x26	// Write all 1s to CSR
	csrrw x1, 0xfa, x0	// Write all 0s to CSR
	csrrs x1, 0xfa, x26	// Set all CSR bits
	csrrc x1, 0xfa, x26	// Clear all CSR bits
	csrrw x1, 0xfa, x28	// Restore CSR

// Testing CSR 0xfb
	csrr x22, 0xfb	// Read CSR
	li x29, -1
	csrrw x1, 0xfb, x29	// Write all 1s to CSR
	csrrw x1, 0xfb, x0	// Write all 0s to CSR
	csrrs x1, 0xfb, x29	// Set all CSR bits
	csrrc x1, 0xfb, x29	// Clear all CSR bits
	csrrw x1, 0xfb, x22	// Restore CSR

// Testing CSR 0xfc
	csrr x24, 0xfc	// Read CSR
	li x6, -1
	csrrw x10, 0xfc, x6	// Write all 1s to CSR
	csrrw x10, 0xfc, x0	// Write all 0s to CSR
	csrrs x10, 0xfc, x6	// Set all CSR bits
	csrrc x10, 0xfc, x6	// Clear all CSR bits
	csrrw x10, 0xfc, x24	// Restore CSR

// Testing CSR 0xfd
	csrr x17, 0xfd	// Read CSR
	li x19, -1
	csrrw x9, 0xfd, x19	// Write all 1s to CSR
	csrrw x9, 0xfd, x0	// Write all 0s to CSR
	csrrs x9, 0xfd, x19	// Set all CSR bits
	csrrc x9, 0xfd, x19	// Clear all CSR bits
	csrrw x9, 0xfd, x17	// Restore CSR

// Testing CSR 0xfe
	csrr x11, 0xfe	// Read CSR
	li x3, -1
	csrrw x16, 0xfe, x3	// Write all 1s to CSR
	csrrw x16, 0xfe, x0	// Write all 0s to CSR
	csrrs x16, 0xfe, x3	// Set all CSR bits
	csrrc x16, 0xfe, x3	// Clear all CSR bits
	csrrw x16, 0xfe, x11	// Restore CSR

// Testing CSR 0xff
	csrr x28, 0xff	// Read CSR
	li x9, -1
	csrrw x31, 0xff, x9	// Write all 1s to CSR
	csrrw x31, 0xff, x0	// Write all 0s to CSR
	csrrs x31, 0xff, x9	// Set all CSR bits
	csrrc x31, 0xff, x9	// Clear all CSR bits
	csrrw x31, 0xff, x28	// Restore CSR

// Testing CSR 0x100
	csrr x27, 0x100	// Read CSR
	li x10, -1
	csrrw x25, 0x100, x10	// Write all 1s to CSR
	csrrw x25, 0x100, x0	// Write all 0s to CSR
	csrrs x25, 0x100, x10	// Set all CSR bits
	csrrc x25, 0x100, x10	// Clear all CSR bits
	csrrw x25, 0x100, x27	// Restore CSR

// Testing CSR 0x101
	csrr x14, 0x101	// Read CSR
	li x13, -1
	csrrw x26, 0x101, x13	// Write all 1s to CSR
	csrrw x26, 0x101, x0	// Write all 0s to CSR
	csrrs x26, 0x101, x13	// Set all CSR bits
	csrrc x26, 0x101, x13	// Clear all CSR bits
	csrrw x26, 0x101, x14	// Restore CSR

// Testing CSR 0x102
	csrr x13, 0x102	// Read CSR
	li x2, -1
	csrrw x6, 0x102, x2	// Write all 1s to CSR
	csrrw x6, 0x102, x0	// Write all 0s to CSR
	csrrs x6, 0x102, x2	// Set all CSR bits
	csrrc x6, 0x102, x2	// Clear all CSR bits
	csrrw x6, 0x102, x13	// Restore CSR

// Testing CSR 0x103
	csrr x21, 0x103	// Read CSR
	li x30, -1
	csrrw x5, 0x103, x30	// Write all 1s to CSR
	csrrw x5, 0x103, x0	// Write all 0s to CSR
	csrrs x5, 0x103, x30	// Set all CSR bits
	csrrc x5, 0x103, x30	// Clear all CSR bits
	csrrw x5, 0x103, x21	// Restore CSR

// Testing CSR 0x104
	csrr x8, 0x104	// Read CSR
	li x10, -1
	csrrw x24, 0x104, x10	// Write all 1s to CSR
	csrrw x24, 0x104, x0	// Write all 0s to CSR
	csrrs x24, 0x104, x10	// Set all CSR bits
	csrrc x24, 0x104, x10	// Clear all CSR bits
	csrrw x24, 0x104, x8	// Restore CSR

// Testing CSR 0x105
	csrr x27, 0x105	// Read CSR
	li x11, -1
	csrrw x2, 0x105, x11	// Write all 1s to CSR
	csrrw x2, 0x105, x0	// Write all 0s to CSR
	csrrs x2, 0x105, x11	// Set all CSR bits
	csrrc x2, 0x105, x11	// Clear all CSR bits
	csrrw x2, 0x105, x27	// Restore CSR

// Testing CSR 0x106
	csrr x31, 0x106	// Read CSR
	li x2, -1
	csrrw x16, 0x106, x2	// Write all 1s to CSR
	csrrw x16, 0x106, x0	// Write all 0s to CSR
	csrrs x16, 0x106, x2	// Set all CSR bits
	csrrc x16, 0x106, x2	// Clear all CSR bits
	csrrw x16, 0x106, x31	// Restore CSR

// Testing CSR 0x107
	csrr x14, 0x107	// Read CSR
	li x5, -1
	csrrw x16, 0x107, x5	// Write all 1s to CSR
	csrrw x16, 0x107, x0	// Write all 0s to CSR
	csrrs x16, 0x107, x5	// Set all CSR bits
	csrrc x16, 0x107, x5	// Clear all CSR bits
	csrrw x16, 0x107, x14	// Restore CSR

// Testing CSR 0x108
	csrr x29, 0x108	// Read CSR
	li x28, -1
	csrrw x20, 0x108, x28	// Write all 1s to CSR
	csrrw x20, 0x108, x0	// Write all 0s to CSR
	csrrs x20, 0x108, x28	// Set all CSR bits
	csrrc x20, 0x108, x28	// Clear all CSR bits
	csrrw x20, 0x108, x29	// Restore CSR

// Testing CSR 0x109
	csrr x23, 0x109	// Read CSR
	li x3, -1
	csrrw x22, 0x109, x3	// Write all 1s to CSR
	csrrw x22, 0x109, x0	// Write all 0s to CSR
	csrrs x22, 0x109, x3	// Set all CSR bits
	csrrc x22, 0x109, x3	// Clear all CSR bits
	csrrw x22, 0x109, x23	// Restore CSR

// Testing CSR 0x10a
	csrr x23, 0x10a	// Read CSR
	li x5, -1
	csrrw x26, 0x10a, x5	// Write all 1s to CSR
	csrrw x26, 0x10a, x0	// Write all 0s to CSR
	csrrs x26, 0x10a, x5	// Set all CSR bits
	csrrc x26, 0x10a, x5	// Clear all CSR bits
	csrrw x26, 0x10a, x23	// Restore CSR

// Testing CSR 0x10b
	csrr x12, 0x10b	// Read CSR
	li x14, -1
	csrrw x2, 0x10b, x14	// Write all 1s to CSR
	csrrw x2, 0x10b, x0	// Write all 0s to CSR
	csrrs x2, 0x10b, x14	// Set all CSR bits
	csrrc x2, 0x10b, x14	// Clear all CSR bits
	csrrw x2, 0x10b, x12	// Restore CSR

// Testing CSR 0x10c
	csrr x20, 0x10c	// Read CSR
	li x15, -1
	csrrw x13, 0x10c, x15	// Write all 1s to CSR
	csrrw x13, 0x10c, x0	// Write all 0s to CSR
	csrrs x13, 0x10c, x15	// Set all CSR bits
	csrrc x13, 0x10c, x15	// Clear all CSR bits
	csrrw x13, 0x10c, x20	// Restore CSR

// Testing CSR 0x10d
	csrr x15, 0x10d	// Read CSR
	li x2, -1
	csrrw x4, 0x10d, x2	// Write all 1s to CSR
	csrrw x4, 0x10d, x0	// Write all 0s to CSR
	csrrs x4, 0x10d, x2	// Set all CSR bits
	csrrc x4, 0x10d, x2	// Clear all CSR bits
	csrrw x4, 0x10d, x15	// Restore CSR

// Testing CSR 0x10e
	csrr x16, 0x10e	// Read CSR
	li x25, -1
	csrrw x5, 0x10e, x25	// Write all 1s to CSR
	csrrw x5, 0x10e, x0	// Write all 0s to CSR
	csrrs x5, 0x10e, x25	// Set all CSR bits
	csrrc x5, 0x10e, x25	// Clear all CSR bits
	csrrw x5, 0x10e, x16	// Restore CSR

// Testing CSR 0x10f
	csrr x1, 0x10f	// Read CSR
	li x2, -1
	csrrw x20, 0x10f, x2	// Write all 1s to CSR
	csrrw x20, 0x10f, x0	// Write all 0s to CSR
	csrrs x20, 0x10f, x2	// Set all CSR bits
	csrrc x20, 0x10f, x2	// Clear all CSR bits
	csrrw x20, 0x10f, x1	// Restore CSR

// Testing CSR 0x110
	csrr x20, 0x110	// Read CSR
	li x5, -1
	csrrw x21, 0x110, x5	// Write all 1s to CSR
	csrrw x21, 0x110, x0	// Write all 0s to CSR
	csrrs x21, 0x110, x5	// Set all CSR bits
	csrrc x21, 0x110, x5	// Clear all CSR bits
	csrrw x21, 0x110, x20	// Restore CSR

// Testing CSR 0x111
	csrr x11, 0x111	// Read CSR
	li x4, -1
	csrrw x23, 0x111, x4	// Write all 1s to CSR
	csrrw x23, 0x111, x0	// Write all 0s to CSR
	csrrs x23, 0x111, x4	// Set all CSR bits
	csrrc x23, 0x111, x4	// Clear all CSR bits
	csrrw x23, 0x111, x11	// Restore CSR

// Testing CSR 0x112
	csrr x18, 0x112	// Read CSR
	li x21, -1
	csrrw x12, 0x112, x21	// Write all 1s to CSR
	csrrw x12, 0x112, x0	// Write all 0s to CSR
	csrrs x12, 0x112, x21	// Set all CSR bits
	csrrc x12, 0x112, x21	// Clear all CSR bits
	csrrw x12, 0x112, x18	// Restore CSR

// Testing CSR 0x113
	csrr x7, 0x113	// Read CSR
	li x13, -1
	csrrw x26, 0x113, x13	// Write all 1s to CSR
	csrrw x26, 0x113, x0	// Write all 0s to CSR
	csrrs x26, 0x113, x13	// Set all CSR bits
	csrrc x26, 0x113, x13	// Clear all CSR bits
	csrrw x26, 0x113, x7	// Restore CSR

// Testing CSR 0x114
	csrr x25, 0x114	// Read CSR
	li x4, -1
	csrrw x16, 0x114, x4	// Write all 1s to CSR
	csrrw x16, 0x114, x0	// Write all 0s to CSR
	csrrs x16, 0x114, x4	// Set all CSR bits
	csrrc x16, 0x114, x4	// Clear all CSR bits
	csrrw x16, 0x114, x25	// Restore CSR

// Testing CSR 0x115
	csrr x29, 0x115	// Read CSR
	li x2, -1
	csrrw x20, 0x115, x2	// Write all 1s to CSR
	csrrw x20, 0x115, x0	// Write all 0s to CSR
	csrrs x20, 0x115, x2	// Set all CSR bits
	csrrc x20, 0x115, x2	// Clear all CSR bits
	csrrw x20, 0x115, x29	// Restore CSR

// Testing CSR 0x116
	csrr x23, 0x116	// Read CSR
	li x15, -1
	csrrw x20, 0x116, x15	// Write all 1s to CSR
	csrrw x20, 0x116, x0	// Write all 0s to CSR
	csrrs x20, 0x116, x15	// Set all CSR bits
	csrrc x20, 0x116, x15	// Clear all CSR bits
	csrrw x20, 0x116, x23	// Restore CSR

// Testing CSR 0x117
	csrr x21, 0x117	// Read CSR
	li x30, -1
	csrrw x11, 0x117, x30	// Write all 1s to CSR
	csrrw x11, 0x117, x0	// Write all 0s to CSR
	csrrs x11, 0x117, x30	// Set all CSR bits
	csrrc x11, 0x117, x30	// Clear all CSR bits
	csrrw x11, 0x117, x21	// Restore CSR

// Testing CSR 0x118
	csrr x21, 0x118	// Read CSR
	li x4, -1
	csrrw x22, 0x118, x4	// Write all 1s to CSR
	csrrw x22, 0x118, x0	// Write all 0s to CSR
	csrrs x22, 0x118, x4	// Set all CSR bits
	csrrc x22, 0x118, x4	// Clear all CSR bits
	csrrw x22, 0x118, x21	// Restore CSR

// Testing CSR 0x119
	csrr x23, 0x119	// Read CSR
	li x20, -1
	csrrw x10, 0x119, x20	// Write all 1s to CSR
	csrrw x10, 0x119, x0	// Write all 0s to CSR
	csrrs x10, 0x119, x20	// Set all CSR bits
	csrrc x10, 0x119, x20	// Clear all CSR bits
	csrrw x10, 0x119, x23	// Restore CSR

// Testing CSR 0x11a
	csrr x26, 0x11a	// Read CSR
	li x28, -1
	csrrw x5, 0x11a, x28	// Write all 1s to CSR
	csrrw x5, 0x11a, x0	// Write all 0s to CSR
	csrrs x5, 0x11a, x28	// Set all CSR bits
	csrrc x5, 0x11a, x28	// Clear all CSR bits
	csrrw x5, 0x11a, x26	// Restore CSR

// Testing CSR 0x11b
	csrr x31, 0x11b	// Read CSR
	li x30, -1
	csrrw x13, 0x11b, x30	// Write all 1s to CSR
	csrrw x13, 0x11b, x0	// Write all 0s to CSR
	csrrs x13, 0x11b, x30	// Set all CSR bits
	csrrc x13, 0x11b, x30	// Clear all CSR bits
	csrrw x13, 0x11b, x31	// Restore CSR

// Testing CSR 0x11c
	csrr x26, 0x11c	// Read CSR
	li x10, -1
	csrrw x30, 0x11c, x10	// Write all 1s to CSR
	csrrw x30, 0x11c, x0	// Write all 0s to CSR
	csrrs x30, 0x11c, x10	// Set all CSR bits
	csrrc x30, 0x11c, x10	// Clear all CSR bits
	csrrw x30, 0x11c, x26	// Restore CSR

// Testing CSR 0x11d
	csrr x24, 0x11d	// Read CSR
	li x28, -1
	csrrw x31, 0x11d, x28	// Write all 1s to CSR
	csrrw x31, 0x11d, x0	// Write all 0s to CSR
	csrrs x31, 0x11d, x28	// Set all CSR bits
	csrrc x31, 0x11d, x28	// Clear all CSR bits
	csrrw x31, 0x11d, x24	// Restore CSR

// Testing CSR 0x11e
	csrr x22, 0x11e	// Read CSR
	li x26, -1
	csrrw x4, 0x11e, x26	// Write all 1s to CSR
	csrrw x4, 0x11e, x0	// Write all 0s to CSR
	csrrs x4, 0x11e, x26	// Set all CSR bits
	csrrc x4, 0x11e, x26	// Clear all CSR bits
	csrrw x4, 0x11e, x22	// Restore CSR

// Testing CSR 0x11f
	csrr x17, 0x11f	// Read CSR
	li x28, -1
	csrrw x26, 0x11f, x28	// Write all 1s to CSR
	csrrw x26, 0x11f, x0	// Write all 0s to CSR
	csrrs x26, 0x11f, x28	// Set all CSR bits
	csrrc x26, 0x11f, x28	// Clear all CSR bits
	csrrw x26, 0x11f, x17	// Restore CSR

// Testing CSR 0x120
	csrr x7, 0x120	// Read CSR
	li x2, -1
	csrrw x26, 0x120, x2	// Write all 1s to CSR
	csrrw x26, 0x120, x0	// Write all 0s to CSR
	csrrs x26, 0x120, x2	// Set all CSR bits
	csrrc x26, 0x120, x2	// Clear all CSR bits
	csrrw x26, 0x120, x7	// Restore CSR

// Testing CSR 0x121
	csrr x13, 0x121	// Read CSR
	li x15, -1
	csrrw x12, 0x121, x15	// Write all 1s to CSR
	csrrw x12, 0x121, x0	// Write all 0s to CSR
	csrrs x12, 0x121, x15	// Set all CSR bits
	csrrc x12, 0x121, x15	// Clear all CSR bits
	csrrw x12, 0x121, x13	// Restore CSR

// Testing CSR 0x122
	csrr x25, 0x122	// Read CSR
	li x7, -1
	csrrw x15, 0x122, x7	// Write all 1s to CSR
	csrrw x15, 0x122, x0	// Write all 0s to CSR
	csrrs x15, 0x122, x7	// Set all CSR bits
	csrrc x15, 0x122, x7	// Clear all CSR bits
	csrrw x15, 0x122, x25	// Restore CSR

// Testing CSR 0x123
	csrr x12, 0x123	// Read CSR
	li x26, -1
	csrrw x21, 0x123, x26	// Write all 1s to CSR
	csrrw x21, 0x123, x0	// Write all 0s to CSR
	csrrs x21, 0x123, x26	// Set all CSR bits
	csrrc x21, 0x123, x26	// Clear all CSR bits
	csrrw x21, 0x123, x12	// Restore CSR

// Testing CSR 0x124
	csrr x3, 0x124	// Read CSR
	li x31, -1
	csrrw x2, 0x124, x31	// Write all 1s to CSR
	csrrw x2, 0x124, x0	// Write all 0s to CSR
	csrrs x2, 0x124, x31	// Set all CSR bits
	csrrc x2, 0x124, x31	// Clear all CSR bits
	csrrw x2, 0x124, x3	// Restore CSR

// Testing CSR 0x125
	csrr x29, 0x125	// Read CSR
	li x30, -1
	csrrw x2, 0x125, x30	// Write all 1s to CSR
	csrrw x2, 0x125, x0	// Write all 0s to CSR
	csrrs x2, 0x125, x30	// Set all CSR bits
	csrrc x2, 0x125, x30	// Clear all CSR bits
	csrrw x2, 0x125, x29	// Restore CSR

// Testing CSR 0x126
	csrr x16, 0x126	// Read CSR
	li x9, -1
	csrrw x29, 0x126, x9	// Write all 1s to CSR
	csrrw x29, 0x126, x0	// Write all 0s to CSR
	csrrs x29, 0x126, x9	// Set all CSR bits
	csrrc x29, 0x126, x9	// Clear all CSR bits
	csrrw x29, 0x126, x16	// Restore CSR

// Testing CSR 0x127
	csrr x1, 0x127	// Read CSR
	li x31, -1
	csrrw x17, 0x127, x31	// Write all 1s to CSR
	csrrw x17, 0x127, x0	// Write all 0s to CSR
	csrrs x17, 0x127, x31	// Set all CSR bits
	csrrc x17, 0x127, x31	// Clear all CSR bits
	csrrw x17, 0x127, x1	// Restore CSR

// Testing CSR 0x128
	csrr x22, 0x128	// Read CSR
	li x19, -1
	csrrw x29, 0x128, x19	// Write all 1s to CSR
	csrrw x29, 0x128, x0	// Write all 0s to CSR
	csrrs x29, 0x128, x19	// Set all CSR bits
	csrrc x29, 0x128, x19	// Clear all CSR bits
	csrrw x29, 0x128, x22	// Restore CSR

// Testing CSR 0x129
	csrr x7, 0x129	// Read CSR
	li x8, -1
	csrrw x3, 0x129, x8	// Write all 1s to CSR
	csrrw x3, 0x129, x0	// Write all 0s to CSR
	csrrs x3, 0x129, x8	// Set all CSR bits
	csrrc x3, 0x129, x8	// Clear all CSR bits
	csrrw x3, 0x129, x7	// Restore CSR

// Testing CSR 0x12a
	csrr x25, 0x12a	// Read CSR
	li x27, -1
	csrrw x29, 0x12a, x27	// Write all 1s to CSR
	csrrw x29, 0x12a, x0	// Write all 0s to CSR
	csrrs x29, 0x12a, x27	// Set all CSR bits
	csrrc x29, 0x12a, x27	// Clear all CSR bits
	csrrw x29, 0x12a, x25	// Restore CSR

// Testing CSR 0x12b
	csrr x29, 0x12b	// Read CSR
	li x21, -1
	csrrw x25, 0x12b, x21	// Write all 1s to CSR
	csrrw x25, 0x12b, x0	// Write all 0s to CSR
	csrrs x25, 0x12b, x21	// Set all CSR bits
	csrrc x25, 0x12b, x21	// Clear all CSR bits
	csrrw x25, 0x12b, x29	// Restore CSR

// Testing CSR 0x12c
	csrr x17, 0x12c	// Read CSR
	li x23, -1
	csrrw x14, 0x12c, x23	// Write all 1s to CSR
	csrrw x14, 0x12c, x0	// Write all 0s to CSR
	csrrs x14, 0x12c, x23	// Set all CSR bits
	csrrc x14, 0x12c, x23	// Clear all CSR bits
	csrrw x14, 0x12c, x17	// Restore CSR

// Testing CSR 0x12d
	csrr x17, 0x12d	// Read CSR
	li x10, -1
	csrrw x31, 0x12d, x10	// Write all 1s to CSR
	csrrw x31, 0x12d, x0	// Write all 0s to CSR
	csrrs x31, 0x12d, x10	// Set all CSR bits
	csrrc x31, 0x12d, x10	// Clear all CSR bits
	csrrw x31, 0x12d, x17	// Restore CSR

// Testing CSR 0x12e
	csrr x4, 0x12e	// Read CSR
	li x5, -1
	csrrw x14, 0x12e, x5	// Write all 1s to CSR
	csrrw x14, 0x12e, x0	// Write all 0s to CSR
	csrrs x14, 0x12e, x5	// Set all CSR bits
	csrrc x14, 0x12e, x5	// Clear all CSR bits
	csrrw x14, 0x12e, x4	// Restore CSR

// Testing CSR 0x12f
	csrr x29, 0x12f	// Read CSR
	li x19, -1
	csrrw x14, 0x12f, x19	// Write all 1s to CSR
	csrrw x14, 0x12f, x0	// Write all 0s to CSR
	csrrs x14, 0x12f, x19	// Set all CSR bits
	csrrc x14, 0x12f, x19	// Clear all CSR bits
	csrrw x14, 0x12f, x29	// Restore CSR

// Testing CSR 0x130
	csrr x30, 0x130	// Read CSR
	li x3, -1
	csrrw x4, 0x130, x3	// Write all 1s to CSR
	csrrw x4, 0x130, x0	// Write all 0s to CSR
	csrrs x4, 0x130, x3	// Set all CSR bits
	csrrc x4, 0x130, x3	// Clear all CSR bits
	csrrw x4, 0x130, x30	// Restore CSR

// Testing CSR 0x131
	csrr x14, 0x131	// Read CSR
	li x3, -1
	csrrw x4, 0x131, x3	// Write all 1s to CSR
	csrrw x4, 0x131, x0	// Write all 0s to CSR
	csrrs x4, 0x131, x3	// Set all CSR bits
	csrrc x4, 0x131, x3	// Clear all CSR bits
	csrrw x4, 0x131, x14	// Restore CSR

// Testing CSR 0x132
	csrr x14, 0x132	// Read CSR
	li x25, -1
	csrrw x5, 0x132, x25	// Write all 1s to CSR
	csrrw x5, 0x132, x0	// Write all 0s to CSR
	csrrs x5, 0x132, x25	// Set all CSR bits
	csrrc x5, 0x132, x25	// Clear all CSR bits
	csrrw x5, 0x132, x14	// Restore CSR

// Testing CSR 0x133
	csrr x24, 0x133	// Read CSR
	li x31, -1
	csrrw x1, 0x133, x31	// Write all 1s to CSR
	csrrw x1, 0x133, x0	// Write all 0s to CSR
	csrrs x1, 0x133, x31	// Set all CSR bits
	csrrc x1, 0x133, x31	// Clear all CSR bits
	csrrw x1, 0x133, x24	// Restore CSR

// Testing CSR 0x134
	csrr x26, 0x134	// Read CSR
	li x15, -1
	csrrw x14, 0x134, x15	// Write all 1s to CSR
	csrrw x14, 0x134, x0	// Write all 0s to CSR
	csrrs x14, 0x134, x15	// Set all CSR bits
	csrrc x14, 0x134, x15	// Clear all CSR bits
	csrrw x14, 0x134, x26	// Restore CSR

// Testing CSR 0x135
	csrr x22, 0x135	// Read CSR
	li x14, -1
	csrrw x1, 0x135, x14	// Write all 1s to CSR
	csrrw x1, 0x135, x0	// Write all 0s to CSR
	csrrs x1, 0x135, x14	// Set all CSR bits
	csrrc x1, 0x135, x14	// Clear all CSR bits
	csrrw x1, 0x135, x22	// Restore CSR

// Testing CSR 0x136
	csrr x16, 0x136	// Read CSR
	li x30, -1
	csrrw x28, 0x136, x30	// Write all 1s to CSR
	csrrw x28, 0x136, x0	// Write all 0s to CSR
	csrrs x28, 0x136, x30	// Set all CSR bits
	csrrc x28, 0x136, x30	// Clear all CSR bits
	csrrw x28, 0x136, x16	// Restore CSR

// Testing CSR 0x137
	csrr x31, 0x137	// Read CSR
	li x11, -1
	csrrw x24, 0x137, x11	// Write all 1s to CSR
	csrrw x24, 0x137, x0	// Write all 0s to CSR
	csrrs x24, 0x137, x11	// Set all CSR bits
	csrrc x24, 0x137, x11	// Clear all CSR bits
	csrrw x24, 0x137, x31	// Restore CSR

// Testing CSR 0x138
	csrr x9, 0x138	// Read CSR
	li x3, -1
	csrrw x12, 0x138, x3	// Write all 1s to CSR
	csrrw x12, 0x138, x0	// Write all 0s to CSR
	csrrs x12, 0x138, x3	// Set all CSR bits
	csrrc x12, 0x138, x3	// Clear all CSR bits
	csrrw x12, 0x138, x9	// Restore CSR

// Testing CSR 0x139
	csrr x3, 0x139	// Read CSR
	li x4, -1
	csrrw x12, 0x139, x4	// Write all 1s to CSR
	csrrw x12, 0x139, x0	// Write all 0s to CSR
	csrrs x12, 0x139, x4	// Set all CSR bits
	csrrc x12, 0x139, x4	// Clear all CSR bits
	csrrw x12, 0x139, x3	// Restore CSR

// Testing CSR 0x13a
	csrr x23, 0x13a	// Read CSR
	li x1, -1
	csrrw x12, 0x13a, x1	// Write all 1s to CSR
	csrrw x12, 0x13a, x0	// Write all 0s to CSR
	csrrs x12, 0x13a, x1	// Set all CSR bits
	csrrc x12, 0x13a, x1	// Clear all CSR bits
	csrrw x12, 0x13a, x23	// Restore CSR

// Testing CSR 0x13b
	csrr x12, 0x13b	// Read CSR
	li x6, -1
	csrrw x1, 0x13b, x6	// Write all 1s to CSR
	csrrw x1, 0x13b, x0	// Write all 0s to CSR
	csrrs x1, 0x13b, x6	// Set all CSR bits
	csrrc x1, 0x13b, x6	// Clear all CSR bits
	csrrw x1, 0x13b, x12	// Restore CSR

// Testing CSR 0x13c
	csrr x27, 0x13c	// Read CSR
	li x8, -1
	csrrw x12, 0x13c, x8	// Write all 1s to CSR
	csrrw x12, 0x13c, x0	// Write all 0s to CSR
	csrrs x12, 0x13c, x8	// Set all CSR bits
	csrrc x12, 0x13c, x8	// Clear all CSR bits
	csrrw x12, 0x13c, x27	// Restore CSR

// Testing CSR 0x13d
	csrr x3, 0x13d	// Read CSR
	li x20, -1
	csrrw x29, 0x13d, x20	// Write all 1s to CSR
	csrrw x29, 0x13d, x0	// Write all 0s to CSR
	csrrs x29, 0x13d, x20	// Set all CSR bits
	csrrc x29, 0x13d, x20	// Clear all CSR bits
	csrrw x29, 0x13d, x3	// Restore CSR

// Testing CSR 0x13e
	csrr x5, 0x13e	// Read CSR
	li x7, -1
	csrrw x1, 0x13e, x7	// Write all 1s to CSR
	csrrw x1, 0x13e, x0	// Write all 0s to CSR
	csrrs x1, 0x13e, x7	// Set all CSR bits
	csrrc x1, 0x13e, x7	// Clear all CSR bits
	csrrw x1, 0x13e, x5	// Restore CSR

// Testing CSR 0x13f
	csrr x7, 0x13f	// Read CSR
	li x22, -1
	csrrw x24, 0x13f, x22	// Write all 1s to CSR
	csrrw x24, 0x13f, x0	// Write all 0s to CSR
	csrrs x24, 0x13f, x22	// Set all CSR bits
	csrrc x24, 0x13f, x22	// Clear all CSR bits
	csrrw x24, 0x13f, x7	// Restore CSR

// Testing CSR 0x140
	csrr x31, 0x140	// Read CSR
	li x29, -1
	csrrw x4, 0x140, x29	// Write all 1s to CSR
	csrrw x4, 0x140, x0	// Write all 0s to CSR
	csrrs x4, 0x140, x29	// Set all CSR bits
	csrrc x4, 0x140, x29	// Clear all CSR bits
	csrrw x4, 0x140, x31	// Restore CSR

// Testing CSR 0x141
	csrr x24, 0x141	// Read CSR
	li x1, -1
	csrrw x10, 0x141, x1	// Write all 1s to CSR
	csrrw x10, 0x141, x0	// Write all 0s to CSR
	csrrs x10, 0x141, x1	// Set all CSR bits
	csrrc x10, 0x141, x1	// Clear all CSR bits
	csrrw x10, 0x141, x24	// Restore CSR

// Testing CSR 0x142
	csrr x12, 0x142	// Read CSR
	li x23, -1
	csrrw x1, 0x142, x23	// Write all 1s to CSR
	csrrw x1, 0x142, x0	// Write all 0s to CSR
	csrrs x1, 0x142, x23	// Set all CSR bits
	csrrc x1, 0x142, x23	// Clear all CSR bits
	csrrw x1, 0x142, x12	// Restore CSR

// Testing CSR 0x143
	csrr x30, 0x143	// Read CSR
	li x20, -1
	csrrw x8, 0x143, x20	// Write all 1s to CSR
	csrrw x8, 0x143, x0	// Write all 0s to CSR
	csrrs x8, 0x143, x20	// Set all CSR bits
	csrrc x8, 0x143, x20	// Clear all CSR bits
	csrrw x8, 0x143, x30	// Restore CSR

// Testing CSR 0x144
	csrr x28, 0x144	// Read CSR
	li x5, -1
	csrrw x6, 0x144, x5	// Write all 1s to CSR
	csrrw x6, 0x144, x0	// Write all 0s to CSR
	csrrs x6, 0x144, x5	// Set all CSR bits
	csrrc x6, 0x144, x5	// Clear all CSR bits
	csrrw x6, 0x144, x28	// Restore CSR

// Testing CSR 0x145
	csrr x15, 0x145	// Read CSR
	li x4, -1
	csrrw x16, 0x145, x4	// Write all 1s to CSR
	csrrw x16, 0x145, x0	// Write all 0s to CSR
	csrrs x16, 0x145, x4	// Set all CSR bits
	csrrc x16, 0x145, x4	// Clear all CSR bits
	csrrw x16, 0x145, x15	// Restore CSR

// Testing CSR 0x146
	csrr x12, 0x146	// Read CSR
	li x23, -1
	csrrw x31, 0x146, x23	// Write all 1s to CSR
	csrrw x31, 0x146, x0	// Write all 0s to CSR
	csrrs x31, 0x146, x23	// Set all CSR bits
	csrrc x31, 0x146, x23	// Clear all CSR bits
	csrrw x31, 0x146, x12	// Restore CSR

// Testing CSR 0x147
	csrr x9, 0x147	// Read CSR
	li x5, -1
	csrrw x1, 0x147, x5	// Write all 1s to CSR
	csrrw x1, 0x147, x0	// Write all 0s to CSR
	csrrs x1, 0x147, x5	// Set all CSR bits
	csrrc x1, 0x147, x5	// Clear all CSR bits
	csrrw x1, 0x147, x9	// Restore CSR

// Testing CSR 0x148
	csrr x31, 0x148	// Read CSR
	li x7, -1
	csrrw x12, 0x148, x7	// Write all 1s to CSR
	csrrw x12, 0x148, x0	// Write all 0s to CSR
	csrrs x12, 0x148, x7	// Set all CSR bits
	csrrc x12, 0x148, x7	// Clear all CSR bits
	csrrw x12, 0x148, x31	// Restore CSR

// Testing CSR 0x149
	csrr x11, 0x149	// Read CSR
	li x16, -1
	csrrw x31, 0x149, x16	// Write all 1s to CSR
	csrrw x31, 0x149, x0	// Write all 0s to CSR
	csrrs x31, 0x149, x16	// Set all CSR bits
	csrrc x31, 0x149, x16	// Clear all CSR bits
	csrrw x31, 0x149, x11	// Restore CSR

// Testing CSR 0x14a
	csrr x10, 0x14a	// Read CSR
	li x29, -1
	csrrw x30, 0x14a, x29	// Write all 1s to CSR
	csrrw x30, 0x14a, x0	// Write all 0s to CSR
	csrrs x30, 0x14a, x29	// Set all CSR bits
	csrrc x30, 0x14a, x29	// Clear all CSR bits
	csrrw x30, 0x14a, x10	// Restore CSR

// Testing CSR 0x14b
	csrr x31, 0x14b	// Read CSR
	li x18, -1
	csrrw x21, 0x14b, x18	// Write all 1s to CSR
	csrrw x21, 0x14b, x0	// Write all 0s to CSR
	csrrs x21, 0x14b, x18	// Set all CSR bits
	csrrc x21, 0x14b, x18	// Clear all CSR bits
	csrrw x21, 0x14b, x31	// Restore CSR

// Testing CSR 0x14c
	csrr x11, 0x14c	// Read CSR
	li x6, -1
	csrrw x19, 0x14c, x6	// Write all 1s to CSR
	csrrw x19, 0x14c, x0	// Write all 0s to CSR
	csrrs x19, 0x14c, x6	// Set all CSR bits
	csrrc x19, 0x14c, x6	// Clear all CSR bits
	csrrw x19, 0x14c, x11	// Restore CSR

// Testing CSR 0x14d
	csrr x3, 0x14d	// Read CSR
	li x4, -1
	csrrw x18, 0x14d, x4	// Write all 1s to CSR
	csrrw x18, 0x14d, x0	// Write all 0s to CSR
	csrrs x18, 0x14d, x4	// Set all CSR bits
	csrrc x18, 0x14d, x4	// Clear all CSR bits
	csrrw x18, 0x14d, x3	// Restore CSR

// Testing CSR 0x14e
	csrr x19, 0x14e	// Read CSR
	li x10, -1
	csrrw x6, 0x14e, x10	// Write all 1s to CSR
	csrrw x6, 0x14e, x0	// Write all 0s to CSR
	csrrs x6, 0x14e, x10	// Set all CSR bits
	csrrc x6, 0x14e, x10	// Clear all CSR bits
	csrrw x6, 0x14e, x19	// Restore CSR

// Testing CSR 0x14f
	csrr x13, 0x14f	// Read CSR
	li x29, -1
	csrrw x5, 0x14f, x29	// Write all 1s to CSR
	csrrw x5, 0x14f, x0	// Write all 0s to CSR
	csrrs x5, 0x14f, x29	// Set all CSR bits
	csrrc x5, 0x14f, x29	// Clear all CSR bits
	csrrw x5, 0x14f, x13	// Restore CSR

// Testing CSR 0x150
	csrr x31, 0x150	// Read CSR
	li x5, -1
	csrrw x26, 0x150, x5	// Write all 1s to CSR
	csrrw x26, 0x150, x0	// Write all 0s to CSR
	csrrs x26, 0x150, x5	// Set all CSR bits
	csrrc x26, 0x150, x5	// Clear all CSR bits
	csrrw x26, 0x150, x31	// Restore CSR

// Testing CSR 0x151
	csrr x8, 0x151	// Read CSR
	li x11, -1
	csrrw x17, 0x151, x11	// Write all 1s to CSR
	csrrw x17, 0x151, x0	// Write all 0s to CSR
	csrrs x17, 0x151, x11	// Set all CSR bits
	csrrc x17, 0x151, x11	// Clear all CSR bits
	csrrw x17, 0x151, x8	// Restore CSR

// Testing CSR 0x152
	csrr x8, 0x152	// Read CSR
	li x6, -1
	csrrw x25, 0x152, x6	// Write all 1s to CSR
	csrrw x25, 0x152, x0	// Write all 0s to CSR
	csrrs x25, 0x152, x6	// Set all CSR bits
	csrrc x25, 0x152, x6	// Clear all CSR bits
	csrrw x25, 0x152, x8	// Restore CSR

// Testing CSR 0x153
	csrr x10, 0x153	// Read CSR
	li x12, -1
	csrrw x14, 0x153, x12	// Write all 1s to CSR
	csrrw x14, 0x153, x0	// Write all 0s to CSR
	csrrs x14, 0x153, x12	// Set all CSR bits
	csrrc x14, 0x153, x12	// Clear all CSR bits
	csrrw x14, 0x153, x10	// Restore CSR

// Testing CSR 0x154
	csrr x22, 0x154	// Read CSR
	li x2, -1
	csrrw x28, 0x154, x2	// Write all 1s to CSR
	csrrw x28, 0x154, x0	// Write all 0s to CSR
	csrrs x28, 0x154, x2	// Set all CSR bits
	csrrc x28, 0x154, x2	// Clear all CSR bits
	csrrw x28, 0x154, x22	// Restore CSR

// Testing CSR 0x155
	csrr x5, 0x155	// Read CSR
	li x20, -1
	csrrw x1, 0x155, x20	// Write all 1s to CSR
	csrrw x1, 0x155, x0	// Write all 0s to CSR
	csrrs x1, 0x155, x20	// Set all CSR bits
	csrrc x1, 0x155, x20	// Clear all CSR bits
	csrrw x1, 0x155, x5	// Restore CSR

// Testing CSR 0x156
	csrr x13, 0x156	// Read CSR
	li x3, -1
	csrrw x23, 0x156, x3	// Write all 1s to CSR
	csrrw x23, 0x156, x0	// Write all 0s to CSR
	csrrs x23, 0x156, x3	// Set all CSR bits
	csrrc x23, 0x156, x3	// Clear all CSR bits
	csrrw x23, 0x156, x13	// Restore CSR

// Testing CSR 0x157
	csrr x3, 0x157	// Read CSR
	li x5, -1
	csrrw x14, 0x157, x5	// Write all 1s to CSR
	csrrw x14, 0x157, x0	// Write all 0s to CSR
	csrrs x14, 0x157, x5	// Set all CSR bits
	csrrc x14, 0x157, x5	// Clear all CSR bits
	csrrw x14, 0x157, x3	// Restore CSR

// Testing CSR 0x158
	csrr x10, 0x158	// Read CSR
	li x18, -1
	csrrw x14, 0x158, x18	// Write all 1s to CSR
	csrrw x14, 0x158, x0	// Write all 0s to CSR
	csrrs x14, 0x158, x18	// Set all CSR bits
	csrrc x14, 0x158, x18	// Clear all CSR bits
	csrrw x14, 0x158, x10	// Restore CSR

// Testing CSR 0x159
	csrr x24, 0x159	// Read CSR
	li x30, -1
	csrrw x5, 0x159, x30	// Write all 1s to CSR
	csrrw x5, 0x159, x0	// Write all 0s to CSR
	csrrs x5, 0x159, x30	// Set all CSR bits
	csrrc x5, 0x159, x30	// Clear all CSR bits
	csrrw x5, 0x159, x24	// Restore CSR

// Testing CSR 0x15a
	csrr x19, 0x15a	// Read CSR
	li x14, -1
	csrrw x10, 0x15a, x14	// Write all 1s to CSR
	csrrw x10, 0x15a, x0	// Write all 0s to CSR
	csrrs x10, 0x15a, x14	// Set all CSR bits
	csrrc x10, 0x15a, x14	// Clear all CSR bits
	csrrw x10, 0x15a, x19	// Restore CSR

// Testing CSR 0x15b
	csrr x21, 0x15b	// Read CSR
	li x12, -1
	csrrw x3, 0x15b, x12	// Write all 1s to CSR
	csrrw x3, 0x15b, x0	// Write all 0s to CSR
	csrrs x3, 0x15b, x12	// Set all CSR bits
	csrrc x3, 0x15b, x12	// Clear all CSR bits
	csrrw x3, 0x15b, x21	// Restore CSR

// Testing CSR 0x15c
	csrr x8, 0x15c	// Read CSR
	li x15, -1
	csrrw x21, 0x15c, x15	// Write all 1s to CSR
	csrrw x21, 0x15c, x0	// Write all 0s to CSR
	csrrs x21, 0x15c, x15	// Set all CSR bits
	csrrc x21, 0x15c, x15	// Clear all CSR bits
	csrrw x21, 0x15c, x8	// Restore CSR

// Testing CSR 0x15d
	csrr x12, 0x15d	// Read CSR
	li x21, -1
	csrrw x31, 0x15d, x21	// Write all 1s to CSR
	csrrw x31, 0x15d, x0	// Write all 0s to CSR
	csrrs x31, 0x15d, x21	// Set all CSR bits
	csrrc x31, 0x15d, x21	// Clear all CSR bits
	csrrw x31, 0x15d, x12	// Restore CSR

// Testing CSR 0x15e
	csrr x17, 0x15e	// Read CSR
	li x2, -1
	csrrw x13, 0x15e, x2	// Write all 1s to CSR
	csrrw x13, 0x15e, x0	// Write all 0s to CSR
	csrrs x13, 0x15e, x2	// Set all CSR bits
	csrrc x13, 0x15e, x2	// Clear all CSR bits
	csrrw x13, 0x15e, x17	// Restore CSR

// Testing CSR 0x15f
	csrr x14, 0x15f	// Read CSR
	li x1, -1
	csrrw x31, 0x15f, x1	// Write all 1s to CSR
	csrrw x31, 0x15f, x0	// Write all 0s to CSR
	csrrs x31, 0x15f, x1	// Set all CSR bits
	csrrc x31, 0x15f, x1	// Clear all CSR bits
	csrrw x31, 0x15f, x14	// Restore CSR

// Testing CSR 0x160
	csrr x24, 0x160	// Read CSR
	li x29, -1
	csrrw x11, 0x160, x29	// Write all 1s to CSR
	csrrw x11, 0x160, x0	// Write all 0s to CSR
	csrrs x11, 0x160, x29	// Set all CSR bits
	csrrc x11, 0x160, x29	// Clear all CSR bits
	csrrw x11, 0x160, x24	// Restore CSR

// Testing CSR 0x161
	csrr x15, 0x161	// Read CSR
	li x7, -1
	csrrw x12, 0x161, x7	// Write all 1s to CSR
	csrrw x12, 0x161, x0	// Write all 0s to CSR
	csrrs x12, 0x161, x7	// Set all CSR bits
	csrrc x12, 0x161, x7	// Clear all CSR bits
	csrrw x12, 0x161, x15	// Restore CSR

// Testing CSR 0x162
	csrr x10, 0x162	// Read CSR
	li x31, -1
	csrrw x16, 0x162, x31	// Write all 1s to CSR
	csrrw x16, 0x162, x0	// Write all 0s to CSR
	csrrs x16, 0x162, x31	// Set all CSR bits
	csrrc x16, 0x162, x31	// Clear all CSR bits
	csrrw x16, 0x162, x10	// Restore CSR

// Testing CSR 0x163
	csrr x3, 0x163	// Read CSR
	li x31, -1
	csrrw x6, 0x163, x31	// Write all 1s to CSR
	csrrw x6, 0x163, x0	// Write all 0s to CSR
	csrrs x6, 0x163, x31	// Set all CSR bits
	csrrc x6, 0x163, x31	// Clear all CSR bits
	csrrw x6, 0x163, x3	// Restore CSR

// Testing CSR 0x164
	csrr x26, 0x164	// Read CSR
	li x4, -1
	csrrw x9, 0x164, x4	// Write all 1s to CSR
	csrrw x9, 0x164, x0	// Write all 0s to CSR
	csrrs x9, 0x164, x4	// Set all CSR bits
	csrrc x9, 0x164, x4	// Clear all CSR bits
	csrrw x9, 0x164, x26	// Restore CSR

// Testing CSR 0x165
	csrr x4, 0x165	// Read CSR
	li x18, -1
	csrrw x20, 0x165, x18	// Write all 1s to CSR
	csrrw x20, 0x165, x0	// Write all 0s to CSR
	csrrs x20, 0x165, x18	// Set all CSR bits
	csrrc x20, 0x165, x18	// Clear all CSR bits
	csrrw x20, 0x165, x4	// Restore CSR

// Testing CSR 0x166
	csrr x23, 0x166	// Read CSR
	li x5, -1
	csrrw x26, 0x166, x5	// Write all 1s to CSR
	csrrw x26, 0x166, x0	// Write all 0s to CSR
	csrrs x26, 0x166, x5	// Set all CSR bits
	csrrc x26, 0x166, x5	// Clear all CSR bits
	csrrw x26, 0x166, x23	// Restore CSR

// Testing CSR 0x167
	csrr x23, 0x167	// Read CSR
	li x15, -1
	csrrw x30, 0x167, x15	// Write all 1s to CSR
	csrrw x30, 0x167, x0	// Write all 0s to CSR
	csrrs x30, 0x167, x15	// Set all CSR bits
	csrrc x30, 0x167, x15	// Clear all CSR bits
	csrrw x30, 0x167, x23	// Restore CSR

// Testing CSR 0x168
	csrr x13, 0x168	// Read CSR
	li x6, -1
	csrrw x25, 0x168, x6	// Write all 1s to CSR
	csrrw x25, 0x168, x0	// Write all 0s to CSR
	csrrs x25, 0x168, x6	// Set all CSR bits
	csrrc x25, 0x168, x6	// Clear all CSR bits
	csrrw x25, 0x168, x13	// Restore CSR

// Testing CSR 0x169
	csrr x14, 0x169	// Read CSR
	li x8, -1
	csrrw x6, 0x169, x8	// Write all 1s to CSR
	csrrw x6, 0x169, x0	// Write all 0s to CSR
	csrrs x6, 0x169, x8	// Set all CSR bits
	csrrc x6, 0x169, x8	// Clear all CSR bits
	csrrw x6, 0x169, x14	// Restore CSR

// Testing CSR 0x16a
	csrr x31, 0x16a	// Read CSR
	li x15, -1
	csrrw x11, 0x16a, x15	// Write all 1s to CSR
	csrrw x11, 0x16a, x0	// Write all 0s to CSR
	csrrs x11, 0x16a, x15	// Set all CSR bits
	csrrc x11, 0x16a, x15	// Clear all CSR bits
	csrrw x11, 0x16a, x31	// Restore CSR

// Testing CSR 0x16b
	csrr x30, 0x16b	// Read CSR
	li x17, -1
	csrrw x5, 0x16b, x17	// Write all 1s to CSR
	csrrw x5, 0x16b, x0	// Write all 0s to CSR
	csrrs x5, 0x16b, x17	// Set all CSR bits
	csrrc x5, 0x16b, x17	// Clear all CSR bits
	csrrw x5, 0x16b, x30	// Restore CSR

// Testing CSR 0x16c
	csrr x12, 0x16c	// Read CSR
	li x15, -1
	csrrw x21, 0x16c, x15	// Write all 1s to CSR
	csrrw x21, 0x16c, x0	// Write all 0s to CSR
	csrrs x21, 0x16c, x15	// Set all CSR bits
	csrrc x21, 0x16c, x15	// Clear all CSR bits
	csrrw x21, 0x16c, x12	// Restore CSR

// Testing CSR 0x16d
	csrr x21, 0x16d	// Read CSR
	li x3, -1
	csrrw x16, 0x16d, x3	// Write all 1s to CSR
	csrrw x16, 0x16d, x0	// Write all 0s to CSR
	csrrs x16, 0x16d, x3	// Set all CSR bits
	csrrc x16, 0x16d, x3	// Clear all CSR bits
	csrrw x16, 0x16d, x21	// Restore CSR

// Testing CSR 0x16e
	csrr x25, 0x16e	// Read CSR
	li x7, -1
	csrrw x10, 0x16e, x7	// Write all 1s to CSR
	csrrw x10, 0x16e, x0	// Write all 0s to CSR
	csrrs x10, 0x16e, x7	// Set all CSR bits
	csrrc x10, 0x16e, x7	// Clear all CSR bits
	csrrw x10, 0x16e, x25	// Restore CSR

// Testing CSR 0x16f
	csrr x1, 0x16f	// Read CSR
	li x27, -1
	csrrw x23, 0x16f, x27	// Write all 1s to CSR
	csrrw x23, 0x16f, x0	// Write all 0s to CSR
	csrrs x23, 0x16f, x27	// Set all CSR bits
	csrrc x23, 0x16f, x27	// Clear all CSR bits
	csrrw x23, 0x16f, x1	// Restore CSR

// Testing CSR 0x170
	csrr x15, 0x170	// Read CSR
	li x20, -1
	csrrw x1, 0x170, x20	// Write all 1s to CSR
	csrrw x1, 0x170, x0	// Write all 0s to CSR
	csrrs x1, 0x170, x20	// Set all CSR bits
	csrrc x1, 0x170, x20	// Clear all CSR bits
	csrrw x1, 0x170, x15	// Restore CSR

// Testing CSR 0x171
	csrr x7, 0x171	// Read CSR
	li x10, -1
	csrrw x4, 0x171, x10	// Write all 1s to CSR
	csrrw x4, 0x171, x0	// Write all 0s to CSR
	csrrs x4, 0x171, x10	// Set all CSR bits
	csrrc x4, 0x171, x10	// Clear all CSR bits
	csrrw x4, 0x171, x7	// Restore CSR

// Testing CSR 0x172
	csrr x25, 0x172	// Read CSR
	li x21, -1
	csrrw x10, 0x172, x21	// Write all 1s to CSR
	csrrw x10, 0x172, x0	// Write all 0s to CSR
	csrrs x10, 0x172, x21	// Set all CSR bits
	csrrc x10, 0x172, x21	// Clear all CSR bits
	csrrw x10, 0x172, x25	// Restore CSR

// Testing CSR 0x173
	csrr x18, 0x173	// Read CSR
	li x20, -1
	csrrw x5, 0x173, x20	// Write all 1s to CSR
	csrrw x5, 0x173, x0	// Write all 0s to CSR
	csrrs x5, 0x173, x20	// Set all CSR bits
	csrrc x5, 0x173, x20	// Clear all CSR bits
	csrrw x5, 0x173, x18	// Restore CSR

// Testing CSR 0x174
	csrr x14, 0x174	// Read CSR
	li x23, -1
	csrrw x25, 0x174, x23	// Write all 1s to CSR
	csrrw x25, 0x174, x0	// Write all 0s to CSR
	csrrs x25, 0x174, x23	// Set all CSR bits
	csrrc x25, 0x174, x23	// Clear all CSR bits
	csrrw x25, 0x174, x14	// Restore CSR

// Testing CSR 0x175
	csrr x16, 0x175	// Read CSR
	li x3, -1
	csrrw x22, 0x175, x3	// Write all 1s to CSR
	csrrw x22, 0x175, x0	// Write all 0s to CSR
	csrrs x22, 0x175, x3	// Set all CSR bits
	csrrc x22, 0x175, x3	// Clear all CSR bits
	csrrw x22, 0x175, x16	// Restore CSR

// Testing CSR 0x176
	csrr x16, 0x176	// Read CSR
	li x25, -1
	csrrw x31, 0x176, x25	// Write all 1s to CSR
	csrrw x31, 0x176, x0	// Write all 0s to CSR
	csrrs x31, 0x176, x25	// Set all CSR bits
	csrrc x31, 0x176, x25	// Clear all CSR bits
	csrrw x31, 0x176, x16	// Restore CSR

// Testing CSR 0x177
	csrr x8, 0x177	// Read CSR
	li x18, -1
	csrrw x25, 0x177, x18	// Write all 1s to CSR
	csrrw x25, 0x177, x0	// Write all 0s to CSR
	csrrs x25, 0x177, x18	// Set all CSR bits
	csrrc x25, 0x177, x18	// Clear all CSR bits
	csrrw x25, 0x177, x8	// Restore CSR

// Testing CSR 0x178
	csrr x13, 0x178	// Read CSR
	li x9, -1
	csrrw x21, 0x178, x9	// Write all 1s to CSR
	csrrw x21, 0x178, x0	// Write all 0s to CSR
	csrrs x21, 0x178, x9	// Set all CSR bits
	csrrc x21, 0x178, x9	// Clear all CSR bits
	csrrw x21, 0x178, x13	// Restore CSR

// Testing CSR 0x179
	csrr x1, 0x179	// Read CSR
	li x4, -1
	csrrw x9, 0x179, x4	// Write all 1s to CSR
	csrrw x9, 0x179, x0	// Write all 0s to CSR
	csrrs x9, 0x179, x4	// Set all CSR bits
	csrrc x9, 0x179, x4	// Clear all CSR bits
	csrrw x9, 0x179, x1	// Restore CSR

// Testing CSR 0x17a
	csrr x29, 0x17a	// Read CSR
	li x22, -1
	csrrw x2, 0x17a, x22	// Write all 1s to CSR
	csrrw x2, 0x17a, x0	// Write all 0s to CSR
	csrrs x2, 0x17a, x22	// Set all CSR bits
	csrrc x2, 0x17a, x22	// Clear all CSR bits
	csrrw x2, 0x17a, x29	// Restore CSR

// Testing CSR 0x17b
	csrr x1, 0x17b	// Read CSR
	li x9, -1
	csrrw x13, 0x17b, x9	// Write all 1s to CSR
	csrrw x13, 0x17b, x0	// Write all 0s to CSR
	csrrs x13, 0x17b, x9	// Set all CSR bits
	csrrc x13, 0x17b, x9	// Clear all CSR bits
	csrrw x13, 0x17b, x1	// Restore CSR

// Testing CSR 0x17c
	csrr x17, 0x17c	// Read CSR
	li x29, -1
	csrrw x19, 0x17c, x29	// Write all 1s to CSR
	csrrw x19, 0x17c, x0	// Write all 0s to CSR
	csrrs x19, 0x17c, x29	// Set all CSR bits
	csrrc x19, 0x17c, x29	// Clear all CSR bits
	csrrw x19, 0x17c, x17	// Restore CSR

// Testing CSR 0x17d
	csrr x23, 0x17d	// Read CSR
	li x13, -1
	csrrw x15, 0x17d, x13	// Write all 1s to CSR
	csrrw x15, 0x17d, x0	// Write all 0s to CSR
	csrrs x15, 0x17d, x13	// Set all CSR bits
	csrrc x15, 0x17d, x13	// Clear all CSR bits
	csrrw x15, 0x17d, x23	// Restore CSR

// Testing CSR 0x17e
	csrr x4, 0x17e	// Read CSR
	li x24, -1
	csrrw x9, 0x17e, x24	// Write all 1s to CSR
	csrrw x9, 0x17e, x0	// Write all 0s to CSR
	csrrs x9, 0x17e, x24	// Set all CSR bits
	csrrc x9, 0x17e, x24	// Clear all CSR bits
	csrrw x9, 0x17e, x4	// Restore CSR

// Testing CSR 0x17f
	csrr x12, 0x17f	// Read CSR
	li x10, -1
	csrrw x28, 0x17f, x10	// Write all 1s to CSR
	csrrw x28, 0x17f, x0	// Write all 0s to CSR
	csrrs x28, 0x17f, x10	// Set all CSR bits
	csrrc x28, 0x17f, x10	// Clear all CSR bits
	csrrw x28, 0x17f, x12	// Restore CSR

// Testing CSR 0x180
	csrr x25, 0x180	// Read CSR
	li x22, -1
	csrrw x30, 0x180, x22	// Write all 1s to CSR
	csrrw x30, 0x180, x0	// Write all 0s to CSR
	csrrs x30, 0x180, x22	// Set all CSR bits
	csrrc x30, 0x180, x22	// Clear all CSR bits
	csrrw x30, 0x180, x25	// Restore CSR

// Testing CSR 0x181
	csrr x7, 0x181	// Read CSR
	li x20, -1
	csrrw x3, 0x181, x20	// Write all 1s to CSR
	csrrw x3, 0x181, x0	// Write all 0s to CSR
	csrrs x3, 0x181, x20	// Set all CSR bits
	csrrc x3, 0x181, x20	// Clear all CSR bits
	csrrw x3, 0x181, x7	// Restore CSR

// Testing CSR 0x182
	csrr x2, 0x182	// Read CSR
	li x3, -1
	csrrw x26, 0x182, x3	// Write all 1s to CSR
	csrrw x26, 0x182, x0	// Write all 0s to CSR
	csrrs x26, 0x182, x3	// Set all CSR bits
	csrrc x26, 0x182, x3	// Clear all CSR bits
	csrrw x26, 0x182, x2	// Restore CSR

// Testing CSR 0x183
	csrr x9, 0x183	// Read CSR
	li x10, -1
	csrrw x18, 0x183, x10	// Write all 1s to CSR
	csrrw x18, 0x183, x0	// Write all 0s to CSR
	csrrs x18, 0x183, x10	// Set all CSR bits
	csrrc x18, 0x183, x10	// Clear all CSR bits
	csrrw x18, 0x183, x9	// Restore CSR

// Testing CSR 0x184
	csrr x11, 0x184	// Read CSR
	li x4, -1
	csrrw x17, 0x184, x4	// Write all 1s to CSR
	csrrw x17, 0x184, x0	// Write all 0s to CSR
	csrrs x17, 0x184, x4	// Set all CSR bits
	csrrc x17, 0x184, x4	// Clear all CSR bits
	csrrw x17, 0x184, x11	// Restore CSR

// Testing CSR 0x185
	csrr x28, 0x185	// Read CSR
	li x8, -1
	csrrw x29, 0x185, x8	// Write all 1s to CSR
	csrrw x29, 0x185, x0	// Write all 0s to CSR
	csrrs x29, 0x185, x8	// Set all CSR bits
	csrrc x29, 0x185, x8	// Clear all CSR bits
	csrrw x29, 0x185, x28	// Restore CSR

// Testing CSR 0x186
	csrr x30, 0x186	// Read CSR
	li x25, -1
	csrrw x6, 0x186, x25	// Write all 1s to CSR
	csrrw x6, 0x186, x0	// Write all 0s to CSR
	csrrs x6, 0x186, x25	// Set all CSR bits
	csrrc x6, 0x186, x25	// Clear all CSR bits
	csrrw x6, 0x186, x30	// Restore CSR

// Testing CSR 0x187
	csrr x3, 0x187	// Read CSR
	li x14, -1
	csrrw x28, 0x187, x14	// Write all 1s to CSR
	csrrw x28, 0x187, x0	// Write all 0s to CSR
	csrrs x28, 0x187, x14	// Set all CSR bits
	csrrc x28, 0x187, x14	// Clear all CSR bits
	csrrw x28, 0x187, x3	// Restore CSR

// Testing CSR 0x188
	csrr x10, 0x188	// Read CSR
	li x5, -1
	csrrw x17, 0x188, x5	// Write all 1s to CSR
	csrrw x17, 0x188, x0	// Write all 0s to CSR
	csrrs x17, 0x188, x5	// Set all CSR bits
	csrrc x17, 0x188, x5	// Clear all CSR bits
	csrrw x17, 0x188, x10	// Restore CSR

// Testing CSR 0x189
	csrr x19, 0x189	// Read CSR
	li x17, -1
	csrrw x21, 0x189, x17	// Write all 1s to CSR
	csrrw x21, 0x189, x0	// Write all 0s to CSR
	csrrs x21, 0x189, x17	// Set all CSR bits
	csrrc x21, 0x189, x17	// Clear all CSR bits
	csrrw x21, 0x189, x19	// Restore CSR

// Testing CSR 0x18a
	csrr x7, 0x18a	// Read CSR
	li x18, -1
	csrrw x4, 0x18a, x18	// Write all 1s to CSR
	csrrw x4, 0x18a, x0	// Write all 0s to CSR
	csrrs x4, 0x18a, x18	// Set all CSR bits
	csrrc x4, 0x18a, x18	// Clear all CSR bits
	csrrw x4, 0x18a, x7	// Restore CSR

// Testing CSR 0x18b
	csrr x14, 0x18b	// Read CSR
	li x31, -1
	csrrw x21, 0x18b, x31	// Write all 1s to CSR
	csrrw x21, 0x18b, x0	// Write all 0s to CSR
	csrrs x21, 0x18b, x31	// Set all CSR bits
	csrrc x21, 0x18b, x31	// Clear all CSR bits
	csrrw x21, 0x18b, x14	// Restore CSR

// Testing CSR 0x18c
	csrr x18, 0x18c	// Read CSR
	li x13, -1
	csrrw x24, 0x18c, x13	// Write all 1s to CSR
	csrrw x24, 0x18c, x0	// Write all 0s to CSR
	csrrs x24, 0x18c, x13	// Set all CSR bits
	csrrc x24, 0x18c, x13	// Clear all CSR bits
	csrrw x24, 0x18c, x18	// Restore CSR

// Testing CSR 0x18d
	csrr x25, 0x18d	// Read CSR
	li x29, -1
	csrrw x26, 0x18d, x29	// Write all 1s to CSR
	csrrw x26, 0x18d, x0	// Write all 0s to CSR
	csrrs x26, 0x18d, x29	// Set all CSR bits
	csrrc x26, 0x18d, x29	// Clear all CSR bits
	csrrw x26, 0x18d, x25	// Restore CSR

// Testing CSR 0x18e
	csrr x9, 0x18e	// Read CSR
	li x10, -1
	csrrw x15, 0x18e, x10	// Write all 1s to CSR
	csrrw x15, 0x18e, x0	// Write all 0s to CSR
	csrrs x15, 0x18e, x10	// Set all CSR bits
	csrrc x15, 0x18e, x10	// Clear all CSR bits
	csrrw x15, 0x18e, x9	// Restore CSR

// Testing CSR 0x18f
	csrr x12, 0x18f	// Read CSR
	li x19, -1
	csrrw x21, 0x18f, x19	// Write all 1s to CSR
	csrrw x21, 0x18f, x0	// Write all 0s to CSR
	csrrs x21, 0x18f, x19	// Set all CSR bits
	csrrc x21, 0x18f, x19	// Clear all CSR bits
	csrrw x21, 0x18f, x12	// Restore CSR

// Testing CSR 0x190
	csrr x5, 0x190	// Read CSR
	li x6, -1
	csrrw x4, 0x190, x6	// Write all 1s to CSR
	csrrw x4, 0x190, x0	// Write all 0s to CSR
	csrrs x4, 0x190, x6	// Set all CSR bits
	csrrc x4, 0x190, x6	// Clear all CSR bits
	csrrw x4, 0x190, x5	// Restore CSR

// Testing CSR 0x191
	csrr x23, 0x191	// Read CSR
	li x4, -1
	csrrw x13, 0x191, x4	// Write all 1s to CSR
	csrrw x13, 0x191, x0	// Write all 0s to CSR
	csrrs x13, 0x191, x4	// Set all CSR bits
	csrrc x13, 0x191, x4	// Clear all CSR bits
	csrrw x13, 0x191, x23	// Restore CSR

// Testing CSR 0x192
	csrr x13, 0x192	// Read CSR
	li x19, -1
	csrrw x15, 0x192, x19	// Write all 1s to CSR
	csrrw x15, 0x192, x0	// Write all 0s to CSR
	csrrs x15, 0x192, x19	// Set all CSR bits
	csrrc x15, 0x192, x19	// Clear all CSR bits
	csrrw x15, 0x192, x13	// Restore CSR

// Testing CSR 0x193
	csrr x5, 0x193	// Read CSR
	li x18, -1
	csrrw x22, 0x193, x18	// Write all 1s to CSR
	csrrw x22, 0x193, x0	// Write all 0s to CSR
	csrrs x22, 0x193, x18	// Set all CSR bits
	csrrc x22, 0x193, x18	// Clear all CSR bits
	csrrw x22, 0x193, x5	// Restore CSR

// Testing CSR 0x194
	csrr x10, 0x194	// Read CSR
	li x12, -1
	csrrw x21, 0x194, x12	// Write all 1s to CSR
	csrrw x21, 0x194, x0	// Write all 0s to CSR
	csrrs x21, 0x194, x12	// Set all CSR bits
	csrrc x21, 0x194, x12	// Clear all CSR bits
	csrrw x21, 0x194, x10	// Restore CSR

// Testing CSR 0x195
	csrr x16, 0x195	// Read CSR
	li x24, -1
	csrrw x14, 0x195, x24	// Write all 1s to CSR
	csrrw x14, 0x195, x0	// Write all 0s to CSR
	csrrs x14, 0x195, x24	// Set all CSR bits
	csrrc x14, 0x195, x24	// Clear all CSR bits
	csrrw x14, 0x195, x16	// Restore CSR

// Testing CSR 0x196
	csrr x7, 0x196	// Read CSR
	li x16, -1
	csrrw x23, 0x196, x16	// Write all 1s to CSR
	csrrw x23, 0x196, x0	// Write all 0s to CSR
	csrrs x23, 0x196, x16	// Set all CSR bits
	csrrc x23, 0x196, x16	// Clear all CSR bits
	csrrw x23, 0x196, x7	// Restore CSR

// Testing CSR 0x197
	csrr x17, 0x197	// Read CSR
	li x11, -1
	csrrw x16, 0x197, x11	// Write all 1s to CSR
	csrrw x16, 0x197, x0	// Write all 0s to CSR
	csrrs x16, 0x197, x11	// Set all CSR bits
	csrrc x16, 0x197, x11	// Clear all CSR bits
	csrrw x16, 0x197, x17	// Restore CSR

// Testing CSR 0x198
	csrr x21, 0x198	// Read CSR
	li x31, -1
	csrrw x2, 0x198, x31	// Write all 1s to CSR
	csrrw x2, 0x198, x0	// Write all 0s to CSR
	csrrs x2, 0x198, x31	// Set all CSR bits
	csrrc x2, 0x198, x31	// Clear all CSR bits
	csrrw x2, 0x198, x21	// Restore CSR

// Testing CSR 0x199
	csrr x15, 0x199	// Read CSR
	li x10, -1
	csrrw x5, 0x199, x10	// Write all 1s to CSR
	csrrw x5, 0x199, x0	// Write all 0s to CSR
	csrrs x5, 0x199, x10	// Set all CSR bits
	csrrc x5, 0x199, x10	// Clear all CSR bits
	csrrw x5, 0x199, x15	// Restore CSR

// Testing CSR 0x19a
	csrr x24, 0x19a	// Read CSR
	li x16, -1
	csrrw x2, 0x19a, x16	// Write all 1s to CSR
	csrrw x2, 0x19a, x0	// Write all 0s to CSR
	csrrs x2, 0x19a, x16	// Set all CSR bits
	csrrc x2, 0x19a, x16	// Clear all CSR bits
	csrrw x2, 0x19a, x24	// Restore CSR

// Testing CSR 0x19b
	csrr x29, 0x19b	// Read CSR
	li x20, -1
	csrrw x7, 0x19b, x20	// Write all 1s to CSR
	csrrw x7, 0x19b, x0	// Write all 0s to CSR
	csrrs x7, 0x19b, x20	// Set all CSR bits
	csrrc x7, 0x19b, x20	// Clear all CSR bits
	csrrw x7, 0x19b, x29	// Restore CSR

// Testing CSR 0x19c
	csrr x1, 0x19c	// Read CSR
	li x12, -1
	csrrw x16, 0x19c, x12	// Write all 1s to CSR
	csrrw x16, 0x19c, x0	// Write all 0s to CSR
	csrrs x16, 0x19c, x12	// Set all CSR bits
	csrrc x16, 0x19c, x12	// Clear all CSR bits
	csrrw x16, 0x19c, x1	// Restore CSR

// Testing CSR 0x19d
	csrr x13, 0x19d	// Read CSR
	li x29, -1
	csrrw x1, 0x19d, x29	// Write all 1s to CSR
	csrrw x1, 0x19d, x0	// Write all 0s to CSR
	csrrs x1, 0x19d, x29	// Set all CSR bits
	csrrc x1, 0x19d, x29	// Clear all CSR bits
	csrrw x1, 0x19d, x13	// Restore CSR

// Testing CSR 0x19e
	csrr x28, 0x19e	// Read CSR
	li x17, -1
	csrrw x3, 0x19e, x17	// Write all 1s to CSR
	csrrw x3, 0x19e, x0	// Write all 0s to CSR
	csrrs x3, 0x19e, x17	// Set all CSR bits
	csrrc x3, 0x19e, x17	// Clear all CSR bits
	csrrw x3, 0x19e, x28	// Restore CSR

// Testing CSR 0x19f
	csrr x22, 0x19f	// Read CSR
	li x28, -1
	csrrw x3, 0x19f, x28	// Write all 1s to CSR
	csrrw x3, 0x19f, x0	// Write all 0s to CSR
	csrrs x3, 0x19f, x28	// Set all CSR bits
	csrrc x3, 0x19f, x28	// Clear all CSR bits
	csrrw x3, 0x19f, x22	// Restore CSR

// Testing CSR 0x1a0
	csrr x22, 0x1a0	// Read CSR
	li x31, -1
	csrrw x24, 0x1a0, x31	// Write all 1s to CSR
	csrrw x24, 0x1a0, x0	// Write all 0s to CSR
	csrrs x24, 0x1a0, x31	// Set all CSR bits
	csrrc x24, 0x1a0, x31	// Clear all CSR bits
	csrrw x24, 0x1a0, x22	// Restore CSR

// Testing CSR 0x1a1
	csrr x30, 0x1a1	// Read CSR
	li x22, -1
	csrrw x13, 0x1a1, x22	// Write all 1s to CSR
	csrrw x13, 0x1a1, x0	// Write all 0s to CSR
	csrrs x13, 0x1a1, x22	// Set all CSR bits
	csrrc x13, 0x1a1, x22	// Clear all CSR bits
	csrrw x13, 0x1a1, x30	// Restore CSR

// Testing CSR 0x1a2
	csrr x1, 0x1a2	// Read CSR
	li x12, -1
	csrrw x2, 0x1a2, x12	// Write all 1s to CSR
	csrrw x2, 0x1a2, x0	// Write all 0s to CSR
	csrrs x2, 0x1a2, x12	// Set all CSR bits
	csrrc x2, 0x1a2, x12	// Clear all CSR bits
	csrrw x2, 0x1a2, x1	// Restore CSR

// Testing CSR 0x1a3
	csrr x4, 0x1a3	// Read CSR
	li x20, -1
	csrrw x1, 0x1a3, x20	// Write all 1s to CSR
	csrrw x1, 0x1a3, x0	// Write all 0s to CSR
	csrrs x1, 0x1a3, x20	// Set all CSR bits
	csrrc x1, 0x1a3, x20	// Clear all CSR bits
	csrrw x1, 0x1a3, x4	// Restore CSR

// Testing CSR 0x1a4
	csrr x9, 0x1a4	// Read CSR
	li x28, -1
	csrrw x21, 0x1a4, x28	// Write all 1s to CSR
	csrrw x21, 0x1a4, x0	// Write all 0s to CSR
	csrrs x21, 0x1a4, x28	// Set all CSR bits
	csrrc x21, 0x1a4, x28	// Clear all CSR bits
	csrrw x21, 0x1a4, x9	// Restore CSR

// Testing CSR 0x1a5
	csrr x23, 0x1a5	// Read CSR
	li x10, -1
	csrrw x24, 0x1a5, x10	// Write all 1s to CSR
	csrrw x24, 0x1a5, x0	// Write all 0s to CSR
	csrrs x24, 0x1a5, x10	// Set all CSR bits
	csrrc x24, 0x1a5, x10	// Clear all CSR bits
	csrrw x24, 0x1a5, x23	// Restore CSR

// Testing CSR 0x1a6
	csrr x29, 0x1a6	// Read CSR
	li x8, -1
	csrrw x5, 0x1a6, x8	// Write all 1s to CSR
	csrrw x5, 0x1a6, x0	// Write all 0s to CSR
	csrrs x5, 0x1a6, x8	// Set all CSR bits
	csrrc x5, 0x1a6, x8	// Clear all CSR bits
	csrrw x5, 0x1a6, x29	// Restore CSR

// Testing CSR 0x1a7
	csrr x25, 0x1a7	// Read CSR
	li x19, -1
	csrrw x10, 0x1a7, x19	// Write all 1s to CSR
	csrrw x10, 0x1a7, x0	// Write all 0s to CSR
	csrrs x10, 0x1a7, x19	// Set all CSR bits
	csrrc x10, 0x1a7, x19	// Clear all CSR bits
	csrrw x10, 0x1a7, x25	// Restore CSR

// Testing CSR 0x1a8
	csrr x7, 0x1a8	// Read CSR
	li x4, -1
	csrrw x14, 0x1a8, x4	// Write all 1s to CSR
	csrrw x14, 0x1a8, x0	// Write all 0s to CSR
	csrrs x14, 0x1a8, x4	// Set all CSR bits
	csrrc x14, 0x1a8, x4	// Clear all CSR bits
	csrrw x14, 0x1a8, x7	// Restore CSR

// Testing CSR 0x1a9
	csrr x15, 0x1a9	// Read CSR
	li x23, -1
	csrrw x11, 0x1a9, x23	// Write all 1s to CSR
	csrrw x11, 0x1a9, x0	// Write all 0s to CSR
	csrrs x11, 0x1a9, x23	// Set all CSR bits
	csrrc x11, 0x1a9, x23	// Clear all CSR bits
	csrrw x11, 0x1a9, x15	// Restore CSR

// Testing CSR 0x1aa
	csrr x13, 0x1aa	// Read CSR
	li x6, -1
	csrrw x11, 0x1aa, x6	// Write all 1s to CSR
	csrrw x11, 0x1aa, x0	// Write all 0s to CSR
	csrrs x11, 0x1aa, x6	// Set all CSR bits
	csrrc x11, 0x1aa, x6	// Clear all CSR bits
	csrrw x11, 0x1aa, x13	// Restore CSR

// Testing CSR 0x1ab
	csrr x14, 0x1ab	// Read CSR
	li x21, -1
	csrrw x29, 0x1ab, x21	// Write all 1s to CSR
	csrrw x29, 0x1ab, x0	// Write all 0s to CSR
	csrrs x29, 0x1ab, x21	// Set all CSR bits
	csrrc x29, 0x1ab, x21	// Clear all CSR bits
	csrrw x29, 0x1ab, x14	// Restore CSR

// Testing CSR 0x1ac
	csrr x22, 0x1ac	// Read CSR
	li x14, -1
	csrrw x5, 0x1ac, x14	// Write all 1s to CSR
	csrrw x5, 0x1ac, x0	// Write all 0s to CSR
	csrrs x5, 0x1ac, x14	// Set all CSR bits
	csrrc x5, 0x1ac, x14	// Clear all CSR bits
	csrrw x5, 0x1ac, x22	// Restore CSR

// Testing CSR 0x1ad
	csrr x15, 0x1ad	// Read CSR
	li x30, -1
	csrrw x23, 0x1ad, x30	// Write all 1s to CSR
	csrrw x23, 0x1ad, x0	// Write all 0s to CSR
	csrrs x23, 0x1ad, x30	// Set all CSR bits
	csrrc x23, 0x1ad, x30	// Clear all CSR bits
	csrrw x23, 0x1ad, x15	// Restore CSR

// Testing CSR 0x1ae
	csrr x5, 0x1ae	// Read CSR
	li x17, -1
	csrrw x11, 0x1ae, x17	// Write all 1s to CSR
	csrrw x11, 0x1ae, x0	// Write all 0s to CSR
	csrrs x11, 0x1ae, x17	// Set all CSR bits
	csrrc x11, 0x1ae, x17	// Clear all CSR bits
	csrrw x11, 0x1ae, x5	// Restore CSR

// Testing CSR 0x1af
	csrr x5, 0x1af	// Read CSR
	li x7, -1
	csrrw x30, 0x1af, x7	// Write all 1s to CSR
	csrrw x30, 0x1af, x0	// Write all 0s to CSR
	csrrs x30, 0x1af, x7	// Set all CSR bits
	csrrc x30, 0x1af, x7	// Clear all CSR bits
	csrrw x30, 0x1af, x5	// Restore CSR

// Testing CSR 0x1b0
	csrr x6, 0x1b0	// Read CSR
	li x15, -1
	csrrw x12, 0x1b0, x15	// Write all 1s to CSR
	csrrw x12, 0x1b0, x0	// Write all 0s to CSR
	csrrs x12, 0x1b0, x15	// Set all CSR bits
	csrrc x12, 0x1b0, x15	// Clear all CSR bits
	csrrw x12, 0x1b0, x6	// Restore CSR

// Testing CSR 0x1b1
	csrr x26, 0x1b1	// Read CSR
	li x13, -1
	csrrw x14, 0x1b1, x13	// Write all 1s to CSR
	csrrw x14, 0x1b1, x0	// Write all 0s to CSR
	csrrs x14, 0x1b1, x13	// Set all CSR bits
	csrrc x14, 0x1b1, x13	// Clear all CSR bits
	csrrw x14, 0x1b1, x26	// Restore CSR

// Testing CSR 0x1b2
	csrr x26, 0x1b2	// Read CSR
	li x16, -1
	csrrw x13, 0x1b2, x16	// Write all 1s to CSR
	csrrw x13, 0x1b2, x0	// Write all 0s to CSR
	csrrs x13, 0x1b2, x16	// Set all CSR bits
	csrrc x13, 0x1b2, x16	// Clear all CSR bits
	csrrw x13, 0x1b2, x26	// Restore CSR

// Testing CSR 0x1b3
	csrr x24, 0x1b3	// Read CSR
	li x8, -1
	csrrw x26, 0x1b3, x8	// Write all 1s to CSR
	csrrw x26, 0x1b3, x0	// Write all 0s to CSR
	csrrs x26, 0x1b3, x8	// Set all CSR bits
	csrrc x26, 0x1b3, x8	// Clear all CSR bits
	csrrw x26, 0x1b3, x24	// Restore CSR

// Testing CSR 0x1b4
	csrr x7, 0x1b4	// Read CSR
	li x15, -1
	csrrw x31, 0x1b4, x15	// Write all 1s to CSR
	csrrw x31, 0x1b4, x0	// Write all 0s to CSR
	csrrs x31, 0x1b4, x15	// Set all CSR bits
	csrrc x31, 0x1b4, x15	// Clear all CSR bits
	csrrw x31, 0x1b4, x7	// Restore CSR

// Testing CSR 0x1b5
	csrr x7, 0x1b5	// Read CSR
	li x19, -1
	csrrw x23, 0x1b5, x19	// Write all 1s to CSR
	csrrw x23, 0x1b5, x0	// Write all 0s to CSR
	csrrs x23, 0x1b5, x19	// Set all CSR bits
	csrrc x23, 0x1b5, x19	// Clear all CSR bits
	csrrw x23, 0x1b5, x7	// Restore CSR

// Testing CSR 0x1b6
	csrr x2, 0x1b6	// Read CSR
	li x29, -1
	csrrw x13, 0x1b6, x29	// Write all 1s to CSR
	csrrw x13, 0x1b6, x0	// Write all 0s to CSR
	csrrs x13, 0x1b6, x29	// Set all CSR bits
	csrrc x13, 0x1b6, x29	// Clear all CSR bits
	csrrw x13, 0x1b6, x2	// Restore CSR

// Testing CSR 0x1b7
	csrr x2, 0x1b7	// Read CSR
	li x8, -1
	csrrw x21, 0x1b7, x8	// Write all 1s to CSR
	csrrw x21, 0x1b7, x0	// Write all 0s to CSR
	csrrs x21, 0x1b7, x8	// Set all CSR bits
	csrrc x21, 0x1b7, x8	// Clear all CSR bits
	csrrw x21, 0x1b7, x2	// Restore CSR

// Testing CSR 0x1b8
	csrr x3, 0x1b8	// Read CSR
	li x28, -1
	csrrw x6, 0x1b8, x28	// Write all 1s to CSR
	csrrw x6, 0x1b8, x0	// Write all 0s to CSR
	csrrs x6, 0x1b8, x28	// Set all CSR bits
	csrrc x6, 0x1b8, x28	// Clear all CSR bits
	csrrw x6, 0x1b8, x3	// Restore CSR

// Testing CSR 0x1b9
	csrr x12, 0x1b9	// Read CSR
	li x2, -1
	csrrw x24, 0x1b9, x2	// Write all 1s to CSR
	csrrw x24, 0x1b9, x0	// Write all 0s to CSR
	csrrs x24, 0x1b9, x2	// Set all CSR bits
	csrrc x24, 0x1b9, x2	// Clear all CSR bits
	csrrw x24, 0x1b9, x12	// Restore CSR

// Testing CSR 0x1ba
	csrr x21, 0x1ba	// Read CSR
	li x22, -1
	csrrw x6, 0x1ba, x22	// Write all 1s to CSR
	csrrw x6, 0x1ba, x0	// Write all 0s to CSR
	csrrs x6, 0x1ba, x22	// Set all CSR bits
	csrrc x6, 0x1ba, x22	// Clear all CSR bits
	csrrw x6, 0x1ba, x21	// Restore CSR

// Testing CSR 0x1bb
	csrr x8, 0x1bb	// Read CSR
	li x20, -1
	csrrw x10, 0x1bb, x20	// Write all 1s to CSR
	csrrw x10, 0x1bb, x0	// Write all 0s to CSR
	csrrs x10, 0x1bb, x20	// Set all CSR bits
	csrrc x10, 0x1bb, x20	// Clear all CSR bits
	csrrw x10, 0x1bb, x8	// Restore CSR

// Testing CSR 0x1bc
	csrr x20, 0x1bc	// Read CSR
	li x3, -1
	csrrw x23, 0x1bc, x3	// Write all 1s to CSR
	csrrw x23, 0x1bc, x0	// Write all 0s to CSR
	csrrs x23, 0x1bc, x3	// Set all CSR bits
	csrrc x23, 0x1bc, x3	// Clear all CSR bits
	csrrw x23, 0x1bc, x20	// Restore CSR

// Testing CSR 0x1bd
	csrr x28, 0x1bd	// Read CSR
	li x17, -1
	csrrw x25, 0x1bd, x17	// Write all 1s to CSR
	csrrw x25, 0x1bd, x0	// Write all 0s to CSR
	csrrs x25, 0x1bd, x17	// Set all CSR bits
	csrrc x25, 0x1bd, x17	// Clear all CSR bits
	csrrw x25, 0x1bd, x28	// Restore CSR

// Testing CSR 0x1be
	csrr x10, 0x1be	// Read CSR
	li x25, -1
	csrrw x29, 0x1be, x25	// Write all 1s to CSR
	csrrw x29, 0x1be, x0	// Write all 0s to CSR
	csrrs x29, 0x1be, x25	// Set all CSR bits
	csrrc x29, 0x1be, x25	// Clear all CSR bits
	csrrw x29, 0x1be, x10	// Restore CSR

// Testing CSR 0x1bf
	csrr x29, 0x1bf	// Read CSR
	li x12, -1
	csrrw x14, 0x1bf, x12	// Write all 1s to CSR
	csrrw x14, 0x1bf, x0	// Write all 0s to CSR
	csrrs x14, 0x1bf, x12	// Set all CSR bits
	csrrc x14, 0x1bf, x12	// Clear all CSR bits
	csrrw x14, 0x1bf, x29	// Restore CSR

// Testing CSR 0x1c0
	csrr x15, 0x1c0	// Read CSR
	li x2, -1
	csrrw x21, 0x1c0, x2	// Write all 1s to CSR
	csrrw x21, 0x1c0, x0	// Write all 0s to CSR
	csrrs x21, 0x1c0, x2	// Set all CSR bits
	csrrc x21, 0x1c0, x2	// Clear all CSR bits
	csrrw x21, 0x1c0, x15	// Restore CSR

// Testing CSR 0x1c1
	csrr x23, 0x1c1	// Read CSR
	li x17, -1
	csrrw x22, 0x1c1, x17	// Write all 1s to CSR
	csrrw x22, 0x1c1, x0	// Write all 0s to CSR
	csrrs x22, 0x1c1, x17	// Set all CSR bits
	csrrc x22, 0x1c1, x17	// Clear all CSR bits
	csrrw x22, 0x1c1, x23	// Restore CSR

// Testing CSR 0x1c2
	csrr x31, 0x1c2	// Read CSR
	li x21, -1
	csrrw x18, 0x1c2, x21	// Write all 1s to CSR
	csrrw x18, 0x1c2, x0	// Write all 0s to CSR
	csrrs x18, 0x1c2, x21	// Set all CSR bits
	csrrc x18, 0x1c2, x21	// Clear all CSR bits
	csrrw x18, 0x1c2, x31	// Restore CSR

// Testing CSR 0x1c3
	csrr x30, 0x1c3	// Read CSR
	li x24, -1
	csrrw x14, 0x1c3, x24	// Write all 1s to CSR
	csrrw x14, 0x1c3, x0	// Write all 0s to CSR
	csrrs x14, 0x1c3, x24	// Set all CSR bits
	csrrc x14, 0x1c3, x24	// Clear all CSR bits
	csrrw x14, 0x1c3, x30	// Restore CSR

// Testing CSR 0x1c4
	csrr x19, 0x1c4	// Read CSR
	li x15, -1
	csrrw x16, 0x1c4, x15	// Write all 1s to CSR
	csrrw x16, 0x1c4, x0	// Write all 0s to CSR
	csrrs x16, 0x1c4, x15	// Set all CSR bits
	csrrc x16, 0x1c4, x15	// Clear all CSR bits
	csrrw x16, 0x1c4, x19	// Restore CSR

// Testing CSR 0x1c5
	csrr x9, 0x1c5	// Read CSR
	li x23, -1
	csrrw x16, 0x1c5, x23	// Write all 1s to CSR
	csrrw x16, 0x1c5, x0	// Write all 0s to CSR
	csrrs x16, 0x1c5, x23	// Set all CSR bits
	csrrc x16, 0x1c5, x23	// Clear all CSR bits
	csrrw x16, 0x1c5, x9	// Restore CSR

// Testing CSR 0x1c6
	csrr x7, 0x1c6	// Read CSR
	li x11, -1
	csrrw x9, 0x1c6, x11	// Write all 1s to CSR
	csrrw x9, 0x1c6, x0	// Write all 0s to CSR
	csrrs x9, 0x1c6, x11	// Set all CSR bits
	csrrc x9, 0x1c6, x11	// Clear all CSR bits
	csrrw x9, 0x1c6, x7	// Restore CSR

// Testing CSR 0x1c7
	csrr x2, 0x1c7	// Read CSR
	li x6, -1
	csrrw x12, 0x1c7, x6	// Write all 1s to CSR
	csrrw x12, 0x1c7, x0	// Write all 0s to CSR
	csrrs x12, 0x1c7, x6	// Set all CSR bits
	csrrc x12, 0x1c7, x6	// Clear all CSR bits
	csrrw x12, 0x1c7, x2	// Restore CSR

// Testing CSR 0x1c8
	csrr x1, 0x1c8	// Read CSR
	li x10, -1
	csrrw x21, 0x1c8, x10	// Write all 1s to CSR
	csrrw x21, 0x1c8, x0	// Write all 0s to CSR
	csrrs x21, 0x1c8, x10	// Set all CSR bits
	csrrc x21, 0x1c8, x10	// Clear all CSR bits
	csrrw x21, 0x1c8, x1	// Restore CSR

// Testing CSR 0x1c9
	csrr x1, 0x1c9	// Read CSR
	li x5, -1
	csrrw x3, 0x1c9, x5	// Write all 1s to CSR
	csrrw x3, 0x1c9, x0	// Write all 0s to CSR
	csrrs x3, 0x1c9, x5	// Set all CSR bits
	csrrc x3, 0x1c9, x5	// Clear all CSR bits
	csrrw x3, 0x1c9, x1	// Restore CSR

// Testing CSR 0x1ca
	csrr x26, 0x1ca	// Read CSR
	li x14, -1
	csrrw x22, 0x1ca, x14	// Write all 1s to CSR
	csrrw x22, 0x1ca, x0	// Write all 0s to CSR
	csrrs x22, 0x1ca, x14	// Set all CSR bits
	csrrc x22, 0x1ca, x14	// Clear all CSR bits
	csrrw x22, 0x1ca, x26	// Restore CSR

// Testing CSR 0x1cb
	csrr x8, 0x1cb	// Read CSR
	li x20, -1
	csrrw x13, 0x1cb, x20	// Write all 1s to CSR
	csrrw x13, 0x1cb, x0	// Write all 0s to CSR
	csrrs x13, 0x1cb, x20	// Set all CSR bits
	csrrc x13, 0x1cb, x20	// Clear all CSR bits
	csrrw x13, 0x1cb, x8	// Restore CSR

// Testing CSR 0x1cc
	csrr x18, 0x1cc	// Read CSR
	li x30, -1
	csrrw x8, 0x1cc, x30	// Write all 1s to CSR
	csrrw x8, 0x1cc, x0	// Write all 0s to CSR
	csrrs x8, 0x1cc, x30	// Set all CSR bits
	csrrc x8, 0x1cc, x30	// Clear all CSR bits
	csrrw x8, 0x1cc, x18	// Restore CSR

// Testing CSR 0x1cd
	csrr x15, 0x1cd	// Read CSR
	li x7, -1
	csrrw x11, 0x1cd, x7	// Write all 1s to CSR
	csrrw x11, 0x1cd, x0	// Write all 0s to CSR
	csrrs x11, 0x1cd, x7	// Set all CSR bits
	csrrc x11, 0x1cd, x7	// Clear all CSR bits
	csrrw x11, 0x1cd, x15	// Restore CSR

// Testing CSR 0x1ce
	csrr x20, 0x1ce	// Read CSR
	li x4, -1
	csrrw x29, 0x1ce, x4	// Write all 1s to CSR
	csrrw x29, 0x1ce, x0	// Write all 0s to CSR
	csrrs x29, 0x1ce, x4	// Set all CSR bits
	csrrc x29, 0x1ce, x4	// Clear all CSR bits
	csrrw x29, 0x1ce, x20	// Restore CSR

// Testing CSR 0x1cf
	csrr x3, 0x1cf	// Read CSR
	li x26, -1
	csrrw x11, 0x1cf, x26	// Write all 1s to CSR
	csrrw x11, 0x1cf, x0	// Write all 0s to CSR
	csrrs x11, 0x1cf, x26	// Set all CSR bits
	csrrc x11, 0x1cf, x26	// Clear all CSR bits
	csrrw x11, 0x1cf, x3	// Restore CSR

// Testing CSR 0x1d0
	csrr x11, 0x1d0	// Read CSR
	li x18, -1
	csrrw x15, 0x1d0, x18	// Write all 1s to CSR
	csrrw x15, 0x1d0, x0	// Write all 0s to CSR
	csrrs x15, 0x1d0, x18	// Set all CSR bits
	csrrc x15, 0x1d0, x18	// Clear all CSR bits
	csrrw x15, 0x1d0, x11	// Restore CSR

// Testing CSR 0x1d1
	csrr x29, 0x1d1	// Read CSR
	li x11, -1
	csrrw x9, 0x1d1, x11	// Write all 1s to CSR
	csrrw x9, 0x1d1, x0	// Write all 0s to CSR
	csrrs x9, 0x1d1, x11	// Set all CSR bits
	csrrc x9, 0x1d1, x11	// Clear all CSR bits
	csrrw x9, 0x1d1, x29	// Restore CSR

// Testing CSR 0x1d2
	csrr x1, 0x1d2	// Read CSR
	li x17, -1
	csrrw x2, 0x1d2, x17	// Write all 1s to CSR
	csrrw x2, 0x1d2, x0	// Write all 0s to CSR
	csrrs x2, 0x1d2, x17	// Set all CSR bits
	csrrc x2, 0x1d2, x17	// Clear all CSR bits
	csrrw x2, 0x1d2, x1	// Restore CSR

// Testing CSR 0x1d3
	csrr x7, 0x1d3	// Read CSR
	li x12, -1
	csrrw x3, 0x1d3, x12	// Write all 1s to CSR
	csrrw x3, 0x1d3, x0	// Write all 0s to CSR
	csrrs x3, 0x1d3, x12	// Set all CSR bits
	csrrc x3, 0x1d3, x12	// Clear all CSR bits
	csrrw x3, 0x1d3, x7	// Restore CSR

// Testing CSR 0x1d4
	csrr x7, 0x1d4	// Read CSR
	li x28, -1
	csrrw x17, 0x1d4, x28	// Write all 1s to CSR
	csrrw x17, 0x1d4, x0	// Write all 0s to CSR
	csrrs x17, 0x1d4, x28	// Set all CSR bits
	csrrc x17, 0x1d4, x28	// Clear all CSR bits
	csrrw x17, 0x1d4, x7	// Restore CSR

// Testing CSR 0x1d5
	csrr x12, 0x1d5	// Read CSR
	li x7, -1
	csrrw x27, 0x1d5, x7	// Write all 1s to CSR
	csrrw x27, 0x1d5, x0	// Write all 0s to CSR
	csrrs x27, 0x1d5, x7	// Set all CSR bits
	csrrc x27, 0x1d5, x7	// Clear all CSR bits
	csrrw x27, 0x1d5, x12	// Restore CSR

// Testing CSR 0x1d6
	csrr x7, 0x1d6	// Read CSR
	li x9, -1
	csrrw x22, 0x1d6, x9	// Write all 1s to CSR
	csrrw x22, 0x1d6, x0	// Write all 0s to CSR
	csrrs x22, 0x1d6, x9	// Set all CSR bits
	csrrc x22, 0x1d6, x9	// Clear all CSR bits
	csrrw x22, 0x1d6, x7	// Restore CSR

// Testing CSR 0x1d7
	csrr x24, 0x1d7	// Read CSR
	li x10, -1
	csrrw x17, 0x1d7, x10	// Write all 1s to CSR
	csrrw x17, 0x1d7, x0	// Write all 0s to CSR
	csrrs x17, 0x1d7, x10	// Set all CSR bits
	csrrc x17, 0x1d7, x10	// Clear all CSR bits
	csrrw x17, 0x1d7, x24	// Restore CSR

// Testing CSR 0x1d8
	csrr x28, 0x1d8	// Read CSR
	li x13, -1
	csrrw x9, 0x1d8, x13	// Write all 1s to CSR
	csrrw x9, 0x1d8, x0	// Write all 0s to CSR
	csrrs x9, 0x1d8, x13	// Set all CSR bits
	csrrc x9, 0x1d8, x13	// Clear all CSR bits
	csrrw x9, 0x1d8, x28	// Restore CSR

// Testing CSR 0x1d9
	csrr x16, 0x1d9	// Read CSR
	li x12, -1
	csrrw x28, 0x1d9, x12	// Write all 1s to CSR
	csrrw x28, 0x1d9, x0	// Write all 0s to CSR
	csrrs x28, 0x1d9, x12	// Set all CSR bits
	csrrc x28, 0x1d9, x12	// Clear all CSR bits
	csrrw x28, 0x1d9, x16	// Restore CSR

// Testing CSR 0x1da
	csrr x23, 0x1da	// Read CSR
	li x8, -1
	csrrw x2, 0x1da, x8	// Write all 1s to CSR
	csrrw x2, 0x1da, x0	// Write all 0s to CSR
	csrrs x2, 0x1da, x8	// Set all CSR bits
	csrrc x2, 0x1da, x8	// Clear all CSR bits
	csrrw x2, 0x1da, x23	// Restore CSR

// Testing CSR 0x1db
	csrr x10, 0x1db	// Read CSR
	li x30, -1
	csrrw x18, 0x1db, x30	// Write all 1s to CSR
	csrrw x18, 0x1db, x0	// Write all 0s to CSR
	csrrs x18, 0x1db, x30	// Set all CSR bits
	csrrc x18, 0x1db, x30	// Clear all CSR bits
	csrrw x18, 0x1db, x10	// Restore CSR

// Testing CSR 0x1dc
	csrr x3, 0x1dc	// Read CSR
	li x1, -1
	csrrw x15, 0x1dc, x1	// Write all 1s to CSR
	csrrw x15, 0x1dc, x0	// Write all 0s to CSR
	csrrs x15, 0x1dc, x1	// Set all CSR bits
	csrrc x15, 0x1dc, x1	// Clear all CSR bits
	csrrw x15, 0x1dc, x3	// Restore CSR

// Testing CSR 0x1dd
	csrr x16, 0x1dd	// Read CSR
	li x24, -1
	csrrw x15, 0x1dd, x24	// Write all 1s to CSR
	csrrw x15, 0x1dd, x0	// Write all 0s to CSR
	csrrs x15, 0x1dd, x24	// Set all CSR bits
	csrrc x15, 0x1dd, x24	// Clear all CSR bits
	csrrw x15, 0x1dd, x16	// Restore CSR

// Testing CSR 0x1de
	csrr x2, 0x1de	// Read CSR
	li x30, -1
	csrrw x26, 0x1de, x30	// Write all 1s to CSR
	csrrw x26, 0x1de, x0	// Write all 0s to CSR
	csrrs x26, 0x1de, x30	// Set all CSR bits
	csrrc x26, 0x1de, x30	// Clear all CSR bits
	csrrw x26, 0x1de, x2	// Restore CSR

// Testing CSR 0x1df
	csrr x14, 0x1df	// Read CSR
	li x16, -1
	csrrw x15, 0x1df, x16	// Write all 1s to CSR
	csrrw x15, 0x1df, x0	// Write all 0s to CSR
	csrrs x15, 0x1df, x16	// Set all CSR bits
	csrrc x15, 0x1df, x16	// Clear all CSR bits
	csrrw x15, 0x1df, x14	// Restore CSR

// Testing CSR 0x1e0
	csrr x15, 0x1e0	// Read CSR
	li x4, -1
	csrrw x3, 0x1e0, x4	// Write all 1s to CSR
	csrrw x3, 0x1e0, x0	// Write all 0s to CSR
	csrrs x3, 0x1e0, x4	// Set all CSR bits
	csrrc x3, 0x1e0, x4	// Clear all CSR bits
	csrrw x3, 0x1e0, x15	// Restore CSR

// Testing CSR 0x1e1
	csrr x3, 0x1e1	// Read CSR
	li x8, -1
	csrrw x4, 0x1e1, x8	// Write all 1s to CSR
	csrrw x4, 0x1e1, x0	// Write all 0s to CSR
	csrrs x4, 0x1e1, x8	// Set all CSR bits
	csrrc x4, 0x1e1, x8	// Clear all CSR bits
	csrrw x4, 0x1e1, x3	// Restore CSR

// Testing CSR 0x1e2
	csrr x27, 0x1e2	// Read CSR
	li x25, -1
	csrrw x5, 0x1e2, x25	// Write all 1s to CSR
	csrrw x5, 0x1e2, x0	// Write all 0s to CSR
	csrrs x5, 0x1e2, x25	// Set all CSR bits
	csrrc x5, 0x1e2, x25	// Clear all CSR bits
	csrrw x5, 0x1e2, x27	// Restore CSR

// Testing CSR 0x1e3
	csrr x14, 0x1e3	// Read CSR
	li x29, -1
	csrrw x30, 0x1e3, x29	// Write all 1s to CSR
	csrrw x30, 0x1e3, x0	// Write all 0s to CSR
	csrrs x30, 0x1e3, x29	// Set all CSR bits
	csrrc x30, 0x1e3, x29	// Clear all CSR bits
	csrrw x30, 0x1e3, x14	// Restore CSR

// Testing CSR 0x1e4
	csrr x7, 0x1e4	// Read CSR
	li x15, -1
	csrrw x20, 0x1e4, x15	// Write all 1s to CSR
	csrrw x20, 0x1e4, x0	// Write all 0s to CSR
	csrrs x20, 0x1e4, x15	// Set all CSR bits
	csrrc x20, 0x1e4, x15	// Clear all CSR bits
	csrrw x20, 0x1e4, x7	// Restore CSR

// Testing CSR 0x1e5
	csrr x3, 0x1e5	// Read CSR
	li x27, -1
	csrrw x14, 0x1e5, x27	// Write all 1s to CSR
	csrrw x14, 0x1e5, x0	// Write all 0s to CSR
	csrrs x14, 0x1e5, x27	// Set all CSR bits
	csrrc x14, 0x1e5, x27	// Clear all CSR bits
	csrrw x14, 0x1e5, x3	// Restore CSR

// Testing CSR 0x1e6
	csrr x18, 0x1e6	// Read CSR
	li x25, -1
	csrrw x29, 0x1e6, x25	// Write all 1s to CSR
	csrrw x29, 0x1e6, x0	// Write all 0s to CSR
	csrrs x29, 0x1e6, x25	// Set all CSR bits
	csrrc x29, 0x1e6, x25	// Clear all CSR bits
	csrrw x29, 0x1e6, x18	// Restore CSR

// Testing CSR 0x1e7
	csrr x27, 0x1e7	// Read CSR
	li x13, -1
	csrrw x2, 0x1e7, x13	// Write all 1s to CSR
	csrrw x2, 0x1e7, x0	// Write all 0s to CSR
	csrrs x2, 0x1e7, x13	// Set all CSR bits
	csrrc x2, 0x1e7, x13	// Clear all CSR bits
	csrrw x2, 0x1e7, x27	// Restore CSR

// Testing CSR 0x1e8
	csrr x31, 0x1e8	// Read CSR
	li x6, -1
	csrrw x8, 0x1e8, x6	// Write all 1s to CSR
	csrrw x8, 0x1e8, x0	// Write all 0s to CSR
	csrrs x8, 0x1e8, x6	// Set all CSR bits
	csrrc x8, 0x1e8, x6	// Clear all CSR bits
	csrrw x8, 0x1e8, x31	// Restore CSR

// Testing CSR 0x1e9
	csrr x16, 0x1e9	// Read CSR
	li x8, -1
	csrrw x5, 0x1e9, x8	// Write all 1s to CSR
	csrrw x5, 0x1e9, x0	// Write all 0s to CSR
	csrrs x5, 0x1e9, x8	// Set all CSR bits
	csrrc x5, 0x1e9, x8	// Clear all CSR bits
	csrrw x5, 0x1e9, x16	// Restore CSR

// Testing CSR 0x1ea
	csrr x27, 0x1ea	// Read CSR
	li x28, -1
	csrrw x9, 0x1ea, x28	// Write all 1s to CSR
	csrrw x9, 0x1ea, x0	// Write all 0s to CSR
	csrrs x9, 0x1ea, x28	// Set all CSR bits
	csrrc x9, 0x1ea, x28	// Clear all CSR bits
	csrrw x9, 0x1ea, x27	// Restore CSR

// Testing CSR 0x1eb
	csrr x30, 0x1eb	// Read CSR
	li x12, -1
	csrrw x11, 0x1eb, x12	// Write all 1s to CSR
	csrrw x11, 0x1eb, x0	// Write all 0s to CSR
	csrrs x11, 0x1eb, x12	// Set all CSR bits
	csrrc x11, 0x1eb, x12	// Clear all CSR bits
	csrrw x11, 0x1eb, x30	// Restore CSR

// Testing CSR 0x1ec
	csrr x14, 0x1ec	// Read CSR
	li x4, -1
	csrrw x18, 0x1ec, x4	// Write all 1s to CSR
	csrrw x18, 0x1ec, x0	// Write all 0s to CSR
	csrrs x18, 0x1ec, x4	// Set all CSR bits
	csrrc x18, 0x1ec, x4	// Clear all CSR bits
	csrrw x18, 0x1ec, x14	// Restore CSR

// Testing CSR 0x1ed
	csrr x29, 0x1ed	// Read CSR
	li x10, -1
	csrrw x20, 0x1ed, x10	// Write all 1s to CSR
	csrrw x20, 0x1ed, x0	// Write all 0s to CSR
	csrrs x20, 0x1ed, x10	// Set all CSR bits
	csrrc x20, 0x1ed, x10	// Clear all CSR bits
	csrrw x20, 0x1ed, x29	// Restore CSR

// Testing CSR 0x1ee
	csrr x18, 0x1ee	// Read CSR
	li x26, -1
	csrrw x7, 0x1ee, x26	// Write all 1s to CSR
	csrrw x7, 0x1ee, x0	// Write all 0s to CSR
	csrrs x7, 0x1ee, x26	// Set all CSR bits
	csrrc x7, 0x1ee, x26	// Clear all CSR bits
	csrrw x7, 0x1ee, x18	// Restore CSR

// Testing CSR 0x1ef
	csrr x23, 0x1ef	// Read CSR
	li x10, -1
	csrrw x25, 0x1ef, x10	// Write all 1s to CSR
	csrrw x25, 0x1ef, x0	// Write all 0s to CSR
	csrrs x25, 0x1ef, x10	// Set all CSR bits
	csrrc x25, 0x1ef, x10	// Clear all CSR bits
	csrrw x25, 0x1ef, x23	// Restore CSR

// Testing CSR 0x1f0
	csrr x15, 0x1f0	// Read CSR
	li x17, -1
	csrrw x20, 0x1f0, x17	// Write all 1s to CSR
	csrrw x20, 0x1f0, x0	// Write all 0s to CSR
	csrrs x20, 0x1f0, x17	// Set all CSR bits
	csrrc x20, 0x1f0, x17	// Clear all CSR bits
	csrrw x20, 0x1f0, x15	// Restore CSR

// Testing CSR 0x1f1
	csrr x15, 0x1f1	// Read CSR
	li x18, -1
	csrrw x21, 0x1f1, x18	// Write all 1s to CSR
	csrrw x21, 0x1f1, x0	// Write all 0s to CSR
	csrrs x21, 0x1f1, x18	// Set all CSR bits
	csrrc x21, 0x1f1, x18	// Clear all CSR bits
	csrrw x21, 0x1f1, x15	// Restore CSR

// Testing CSR 0x1f2
	csrr x9, 0x1f2	// Read CSR
	li x1, -1
	csrrw x8, 0x1f2, x1	// Write all 1s to CSR
	csrrw x8, 0x1f2, x0	// Write all 0s to CSR
	csrrs x8, 0x1f2, x1	// Set all CSR bits
	csrrc x8, 0x1f2, x1	// Clear all CSR bits
	csrrw x8, 0x1f2, x9	// Restore CSR

// Testing CSR 0x1f3
	csrr x4, 0x1f3	// Read CSR
	li x20, -1
	csrrw x26, 0x1f3, x20	// Write all 1s to CSR
	csrrw x26, 0x1f3, x0	// Write all 0s to CSR
	csrrs x26, 0x1f3, x20	// Set all CSR bits
	csrrc x26, 0x1f3, x20	// Clear all CSR bits
	csrrw x26, 0x1f3, x4	// Restore CSR

// Testing CSR 0x1f4
	csrr x23, 0x1f4	// Read CSR
	li x4, -1
	csrrw x6, 0x1f4, x4	// Write all 1s to CSR
	csrrw x6, 0x1f4, x0	// Write all 0s to CSR
	csrrs x6, 0x1f4, x4	// Set all CSR bits
	csrrc x6, 0x1f4, x4	// Clear all CSR bits
	csrrw x6, 0x1f4, x23	// Restore CSR

// Testing CSR 0x1f5
	csrr x24, 0x1f5	// Read CSR
	li x14, -1
	csrrw x8, 0x1f5, x14	// Write all 1s to CSR
	csrrw x8, 0x1f5, x0	// Write all 0s to CSR
	csrrs x8, 0x1f5, x14	// Set all CSR bits
	csrrc x8, 0x1f5, x14	// Clear all CSR bits
	csrrw x8, 0x1f5, x24	// Restore CSR

// Testing CSR 0x1f6
	csrr x7, 0x1f6	// Read CSR
	li x10, -1
	csrrw x29, 0x1f6, x10	// Write all 1s to CSR
	csrrw x29, 0x1f6, x0	// Write all 0s to CSR
	csrrs x29, 0x1f6, x10	// Set all CSR bits
	csrrc x29, 0x1f6, x10	// Clear all CSR bits
	csrrw x29, 0x1f6, x7	// Restore CSR

// Testing CSR 0x1f7
	csrr x24, 0x1f7	// Read CSR
	li x22, -1
	csrrw x1, 0x1f7, x22	// Write all 1s to CSR
	csrrw x1, 0x1f7, x0	// Write all 0s to CSR
	csrrs x1, 0x1f7, x22	// Set all CSR bits
	csrrc x1, 0x1f7, x22	// Clear all CSR bits
	csrrw x1, 0x1f7, x24	// Restore CSR

// Testing CSR 0x1f8
	csrr x24, 0x1f8	// Read CSR
	li x18, -1
	csrrw x17, 0x1f8, x18	// Write all 1s to CSR
	csrrw x17, 0x1f8, x0	// Write all 0s to CSR
	csrrs x17, 0x1f8, x18	// Set all CSR bits
	csrrc x17, 0x1f8, x18	// Clear all CSR bits
	csrrw x17, 0x1f8, x24	// Restore CSR

// Testing CSR 0x1f9
	csrr x14, 0x1f9	// Read CSR
	li x28, -1
	csrrw x2, 0x1f9, x28	// Write all 1s to CSR
	csrrw x2, 0x1f9, x0	// Write all 0s to CSR
	csrrs x2, 0x1f9, x28	// Set all CSR bits
	csrrc x2, 0x1f9, x28	// Clear all CSR bits
	csrrw x2, 0x1f9, x14	// Restore CSR

// Testing CSR 0x1fa
	csrr x4, 0x1fa	// Read CSR
	li x13, -1
	csrrw x21, 0x1fa, x13	// Write all 1s to CSR
	csrrw x21, 0x1fa, x0	// Write all 0s to CSR
	csrrs x21, 0x1fa, x13	// Set all CSR bits
	csrrc x21, 0x1fa, x13	// Clear all CSR bits
	csrrw x21, 0x1fa, x4	// Restore CSR

// Testing CSR 0x1fb
	csrr x9, 0x1fb	// Read CSR
	li x4, -1
	csrrw x24, 0x1fb, x4	// Write all 1s to CSR
	csrrw x24, 0x1fb, x0	// Write all 0s to CSR
	csrrs x24, 0x1fb, x4	// Set all CSR bits
	csrrc x24, 0x1fb, x4	// Clear all CSR bits
	csrrw x24, 0x1fb, x9	// Restore CSR

// Testing CSR 0x1fc
	csrr x19, 0x1fc	// Read CSR
	li x12, -1
	csrrw x8, 0x1fc, x12	// Write all 1s to CSR
	csrrw x8, 0x1fc, x0	// Write all 0s to CSR
	csrrs x8, 0x1fc, x12	// Set all CSR bits
	csrrc x8, 0x1fc, x12	// Clear all CSR bits
	csrrw x8, 0x1fc, x19	// Restore CSR

// Testing CSR 0x1fd
	csrr x22, 0x1fd	// Read CSR
	li x23, -1
	csrrw x18, 0x1fd, x23	// Write all 1s to CSR
	csrrw x18, 0x1fd, x0	// Write all 0s to CSR
	csrrs x18, 0x1fd, x23	// Set all CSR bits
	csrrc x18, 0x1fd, x23	// Clear all CSR bits
	csrrw x18, 0x1fd, x22	// Restore CSR

// Testing CSR 0x1fe
	csrr x22, 0x1fe	// Read CSR
	li x10, -1
	csrrw x8, 0x1fe, x10	// Write all 1s to CSR
	csrrw x8, 0x1fe, x0	// Write all 0s to CSR
	csrrs x8, 0x1fe, x10	// Set all CSR bits
	csrrc x8, 0x1fe, x10	// Clear all CSR bits
	csrrw x8, 0x1fe, x22	// Restore CSR

// Testing CSR 0x1ff
	csrr x24, 0x1ff	// Read CSR
	li x27, -1
	csrrw x29, 0x1ff, x27	// Write all 1s to CSR
	csrrw x29, 0x1ff, x0	// Write all 0s to CSR
	csrrs x29, 0x1ff, x27	// Set all CSR bits
	csrrc x29, 0x1ff, x27	// Clear all CSR bits
	csrrw x29, 0x1ff, x24	// Restore CSR

// Testing CSR 0x200
	csrr x8, 0x200	// Read CSR
	li x3, -1
	csrrw x17, 0x200, x3	// Write all 1s to CSR
	csrrw x17, 0x200, x0	// Write all 0s to CSR
	csrrs x17, 0x200, x3	// Set all CSR bits
	csrrc x17, 0x200, x3	// Clear all CSR bits
	csrrw x17, 0x200, x8	// Restore CSR

// Testing CSR 0x201
	csrr x10, 0x201	// Read CSR
	li x22, -1
	csrrw x11, 0x201, x22	// Write all 1s to CSR
	csrrw x11, 0x201, x0	// Write all 0s to CSR
	csrrs x11, 0x201, x22	// Set all CSR bits
	csrrc x11, 0x201, x22	// Clear all CSR bits
	csrrw x11, 0x201, x10	// Restore CSR

// Testing CSR 0x202
	csrr x8, 0x202	// Read CSR
	li x12, -1
	csrrw x21, 0x202, x12	// Write all 1s to CSR
	csrrw x21, 0x202, x0	// Write all 0s to CSR
	csrrs x21, 0x202, x12	// Set all CSR bits
	csrrc x21, 0x202, x12	// Clear all CSR bits
	csrrw x21, 0x202, x8	// Restore CSR

// Testing CSR 0x203
	csrr x16, 0x203	// Read CSR
	li x10, -1
	csrrw x19, 0x203, x10	// Write all 1s to CSR
	csrrw x19, 0x203, x0	// Write all 0s to CSR
	csrrs x19, 0x203, x10	// Set all CSR bits
	csrrc x19, 0x203, x10	// Clear all CSR bits
	csrrw x19, 0x203, x16	// Restore CSR

// Testing CSR 0x204
	csrr x6, 0x204	// Read CSR
	li x5, -1
	csrrw x26, 0x204, x5	// Write all 1s to CSR
	csrrw x26, 0x204, x0	// Write all 0s to CSR
	csrrs x26, 0x204, x5	// Set all CSR bits
	csrrc x26, 0x204, x5	// Clear all CSR bits
	csrrw x26, 0x204, x6	// Restore CSR

// Testing CSR 0x205
	csrr x1, 0x205	// Read CSR
	li x18, -1
	csrrw x17, 0x205, x18	// Write all 1s to CSR
	csrrw x17, 0x205, x0	// Write all 0s to CSR
	csrrs x17, 0x205, x18	// Set all CSR bits
	csrrc x17, 0x205, x18	// Clear all CSR bits
	csrrw x17, 0x205, x1	// Restore CSR

// Testing CSR 0x206
	csrr x11, 0x206	// Read CSR
	li x12, -1
	csrrw x19, 0x206, x12	// Write all 1s to CSR
	csrrw x19, 0x206, x0	// Write all 0s to CSR
	csrrs x19, 0x206, x12	// Set all CSR bits
	csrrc x19, 0x206, x12	// Clear all CSR bits
	csrrw x19, 0x206, x11	// Restore CSR

// Testing CSR 0x207
	csrr x21, 0x207	// Read CSR
	li x1, -1
	csrrw x26, 0x207, x1	// Write all 1s to CSR
	csrrw x26, 0x207, x0	// Write all 0s to CSR
	csrrs x26, 0x207, x1	// Set all CSR bits
	csrrc x26, 0x207, x1	// Clear all CSR bits
	csrrw x26, 0x207, x21	// Restore CSR

// Testing CSR 0x208
	csrr x5, 0x208	// Read CSR
	li x29, -1
	csrrw x13, 0x208, x29	// Write all 1s to CSR
	csrrw x13, 0x208, x0	// Write all 0s to CSR
	csrrs x13, 0x208, x29	// Set all CSR bits
	csrrc x13, 0x208, x29	// Clear all CSR bits
	csrrw x13, 0x208, x5	// Restore CSR

// Testing CSR 0x209
	csrr x5, 0x209	// Read CSR
	li x6, -1
	csrrw x17, 0x209, x6	// Write all 1s to CSR
	csrrw x17, 0x209, x0	// Write all 0s to CSR
	csrrs x17, 0x209, x6	// Set all CSR bits
	csrrc x17, 0x209, x6	// Clear all CSR bits
	csrrw x17, 0x209, x5	// Restore CSR

// Testing CSR 0x20a
	csrr x3, 0x20a	// Read CSR
	li x5, -1
	csrrw x25, 0x20a, x5	// Write all 1s to CSR
	csrrw x25, 0x20a, x0	// Write all 0s to CSR
	csrrs x25, 0x20a, x5	// Set all CSR bits
	csrrc x25, 0x20a, x5	// Clear all CSR bits
	csrrw x25, 0x20a, x3	// Restore CSR

// Testing CSR 0x20b
	csrr x7, 0x20b	// Read CSR
	li x26, -1
	csrrw x30, 0x20b, x26	// Write all 1s to CSR
	csrrw x30, 0x20b, x0	// Write all 0s to CSR
	csrrs x30, 0x20b, x26	// Set all CSR bits
	csrrc x30, 0x20b, x26	// Clear all CSR bits
	csrrw x30, 0x20b, x7	// Restore CSR

// Testing CSR 0x20c
	csrr x25, 0x20c	// Read CSR
	li x16, -1
	csrrw x19, 0x20c, x16	// Write all 1s to CSR
	csrrw x19, 0x20c, x0	// Write all 0s to CSR
	csrrs x19, 0x20c, x16	// Set all CSR bits
	csrrc x19, 0x20c, x16	// Clear all CSR bits
	csrrw x19, 0x20c, x25	// Restore CSR

// Testing CSR 0x20d
	csrr x25, 0x20d	// Read CSR
	li x23, -1
	csrrw x7, 0x20d, x23	// Write all 1s to CSR
	csrrw x7, 0x20d, x0	// Write all 0s to CSR
	csrrs x7, 0x20d, x23	// Set all CSR bits
	csrrc x7, 0x20d, x23	// Clear all CSR bits
	csrrw x7, 0x20d, x25	// Restore CSR

// Testing CSR 0x20e
	csrr x8, 0x20e	// Read CSR
	li x24, -1
	csrrw x5, 0x20e, x24	// Write all 1s to CSR
	csrrw x5, 0x20e, x0	// Write all 0s to CSR
	csrrs x5, 0x20e, x24	// Set all CSR bits
	csrrc x5, 0x20e, x24	// Clear all CSR bits
	csrrw x5, 0x20e, x8	// Restore CSR

// Testing CSR 0x20f
	csrr x27, 0x20f	// Read CSR
	li x8, -1
	csrrw x25, 0x20f, x8	// Write all 1s to CSR
	csrrw x25, 0x20f, x0	// Write all 0s to CSR
	csrrs x25, 0x20f, x8	// Set all CSR bits
	csrrc x25, 0x20f, x8	// Clear all CSR bits
	csrrw x25, 0x20f, x27	// Restore CSR

// Testing CSR 0x210
	csrr x13, 0x210	// Read CSR
	li x12, -1
	csrrw x20, 0x210, x12	// Write all 1s to CSR
	csrrw x20, 0x210, x0	// Write all 0s to CSR
	csrrs x20, 0x210, x12	// Set all CSR bits
	csrrc x20, 0x210, x12	// Clear all CSR bits
	csrrw x20, 0x210, x13	// Restore CSR

// Testing CSR 0x211
	csrr x19, 0x211	// Read CSR
	li x5, -1
	csrrw x21, 0x211, x5	// Write all 1s to CSR
	csrrw x21, 0x211, x0	// Write all 0s to CSR
	csrrs x21, 0x211, x5	// Set all CSR bits
	csrrc x21, 0x211, x5	// Clear all CSR bits
	csrrw x21, 0x211, x19	// Restore CSR

// Testing CSR 0x212
	csrr x16, 0x212	// Read CSR
	li x29, -1
	csrrw x30, 0x212, x29	// Write all 1s to CSR
	csrrw x30, 0x212, x0	// Write all 0s to CSR
	csrrs x30, 0x212, x29	// Set all CSR bits
	csrrc x30, 0x212, x29	// Clear all CSR bits
	csrrw x30, 0x212, x16	// Restore CSR

// Testing CSR 0x213
	csrr x4, 0x213	// Read CSR
	li x20, -1
	csrrw x27, 0x213, x20	// Write all 1s to CSR
	csrrw x27, 0x213, x0	// Write all 0s to CSR
	csrrs x27, 0x213, x20	// Set all CSR bits
	csrrc x27, 0x213, x20	// Clear all CSR bits
	csrrw x27, 0x213, x4	// Restore CSR

// Testing CSR 0x214
	csrr x1, 0x214	// Read CSR
	li x17, -1
	csrrw x20, 0x214, x17	// Write all 1s to CSR
	csrrw x20, 0x214, x0	// Write all 0s to CSR
	csrrs x20, 0x214, x17	// Set all CSR bits
	csrrc x20, 0x214, x17	// Clear all CSR bits
	csrrw x20, 0x214, x1	// Restore CSR

// Testing CSR 0x215
	csrr x12, 0x215	// Read CSR
	li x16, -1
	csrrw x15, 0x215, x16	// Write all 1s to CSR
	csrrw x15, 0x215, x0	// Write all 0s to CSR
	csrrs x15, 0x215, x16	// Set all CSR bits
	csrrc x15, 0x215, x16	// Clear all CSR bits
	csrrw x15, 0x215, x12	// Restore CSR

// Testing CSR 0x216
	csrr x10, 0x216	// Read CSR
	li x1, -1
	csrrw x31, 0x216, x1	// Write all 1s to CSR
	csrrw x31, 0x216, x0	// Write all 0s to CSR
	csrrs x31, 0x216, x1	// Set all CSR bits
	csrrc x31, 0x216, x1	// Clear all CSR bits
	csrrw x31, 0x216, x10	// Restore CSR

// Testing CSR 0x217
	csrr x8, 0x217	// Read CSR
	li x18, -1
	csrrw x21, 0x217, x18	// Write all 1s to CSR
	csrrw x21, 0x217, x0	// Write all 0s to CSR
	csrrs x21, 0x217, x18	// Set all CSR bits
	csrrc x21, 0x217, x18	// Clear all CSR bits
	csrrw x21, 0x217, x8	// Restore CSR

// Testing CSR 0x218
	csrr x6, 0x218	// Read CSR
	li x22, -1
	csrrw x29, 0x218, x22	// Write all 1s to CSR
	csrrw x29, 0x218, x0	// Write all 0s to CSR
	csrrs x29, 0x218, x22	// Set all CSR bits
	csrrc x29, 0x218, x22	// Clear all CSR bits
	csrrw x29, 0x218, x6	// Restore CSR

// Testing CSR 0x219
	csrr x16, 0x219	// Read CSR
	li x26, -1
	csrrw x31, 0x219, x26	// Write all 1s to CSR
	csrrw x31, 0x219, x0	// Write all 0s to CSR
	csrrs x31, 0x219, x26	// Set all CSR bits
	csrrc x31, 0x219, x26	// Clear all CSR bits
	csrrw x31, 0x219, x16	// Restore CSR

// Testing CSR 0x21a
	csrr x24, 0x21a	// Read CSR
	li x16, -1
	csrrw x18, 0x21a, x16	// Write all 1s to CSR
	csrrw x18, 0x21a, x0	// Write all 0s to CSR
	csrrs x18, 0x21a, x16	// Set all CSR bits
	csrrc x18, 0x21a, x16	// Clear all CSR bits
	csrrw x18, 0x21a, x24	// Restore CSR

// Testing CSR 0x21b
	csrr x11, 0x21b	// Read CSR
	li x23, -1
	csrrw x28, 0x21b, x23	// Write all 1s to CSR
	csrrw x28, 0x21b, x0	// Write all 0s to CSR
	csrrs x28, 0x21b, x23	// Set all CSR bits
	csrrc x28, 0x21b, x23	// Clear all CSR bits
	csrrw x28, 0x21b, x11	// Restore CSR

// Testing CSR 0x21c
	csrr x3, 0x21c	// Read CSR
	li x9, -1
	csrrw x5, 0x21c, x9	// Write all 1s to CSR
	csrrw x5, 0x21c, x0	// Write all 0s to CSR
	csrrs x5, 0x21c, x9	// Set all CSR bits
	csrrc x5, 0x21c, x9	// Clear all CSR bits
	csrrw x5, 0x21c, x3	// Restore CSR

// Testing CSR 0x21d
	csrr x20, 0x21d	// Read CSR
	li x13, -1
	csrrw x23, 0x21d, x13	// Write all 1s to CSR
	csrrw x23, 0x21d, x0	// Write all 0s to CSR
	csrrs x23, 0x21d, x13	// Set all CSR bits
	csrrc x23, 0x21d, x13	// Clear all CSR bits
	csrrw x23, 0x21d, x20	// Restore CSR

// Testing CSR 0x21e
	csrr x7, 0x21e	// Read CSR
	li x27, -1
	csrrw x11, 0x21e, x27	// Write all 1s to CSR
	csrrw x11, 0x21e, x0	// Write all 0s to CSR
	csrrs x11, 0x21e, x27	// Set all CSR bits
	csrrc x11, 0x21e, x27	// Clear all CSR bits
	csrrw x11, 0x21e, x7	// Restore CSR

// Testing CSR 0x21f
	csrr x26, 0x21f	// Read CSR
	li x10, -1
	csrrw x13, 0x21f, x10	// Write all 1s to CSR
	csrrw x13, 0x21f, x0	// Write all 0s to CSR
	csrrs x13, 0x21f, x10	// Set all CSR bits
	csrrc x13, 0x21f, x10	// Clear all CSR bits
	csrrw x13, 0x21f, x26	// Restore CSR

// Testing CSR 0x220
	csrr x31, 0x220	// Read CSR
	li x2, -1
	csrrw x7, 0x220, x2	// Write all 1s to CSR
	csrrw x7, 0x220, x0	// Write all 0s to CSR
	csrrs x7, 0x220, x2	// Set all CSR bits
	csrrc x7, 0x220, x2	// Clear all CSR bits
	csrrw x7, 0x220, x31	// Restore CSR

// Testing CSR 0x221
	csrr x2, 0x221	// Read CSR
	li x11, -1
	csrrw x24, 0x221, x11	// Write all 1s to CSR
	csrrw x24, 0x221, x0	// Write all 0s to CSR
	csrrs x24, 0x221, x11	// Set all CSR bits
	csrrc x24, 0x221, x11	// Clear all CSR bits
	csrrw x24, 0x221, x2	// Restore CSR

// Testing CSR 0x222
	csrr x24, 0x222	// Read CSR
	li x31, -1
	csrrw x8, 0x222, x31	// Write all 1s to CSR
	csrrw x8, 0x222, x0	// Write all 0s to CSR
	csrrs x8, 0x222, x31	// Set all CSR bits
	csrrc x8, 0x222, x31	// Clear all CSR bits
	csrrw x8, 0x222, x24	// Restore CSR

// Testing CSR 0x223
	csrr x11, 0x223	// Read CSR
	li x28, -1
	csrrw x15, 0x223, x28	// Write all 1s to CSR
	csrrw x15, 0x223, x0	// Write all 0s to CSR
	csrrs x15, 0x223, x28	// Set all CSR bits
	csrrc x15, 0x223, x28	// Clear all CSR bits
	csrrw x15, 0x223, x11	// Restore CSR

// Testing CSR 0x224
	csrr x22, 0x224	// Read CSR
	li x24, -1
	csrrw x8, 0x224, x24	// Write all 1s to CSR
	csrrw x8, 0x224, x0	// Write all 0s to CSR
	csrrs x8, 0x224, x24	// Set all CSR bits
	csrrc x8, 0x224, x24	// Clear all CSR bits
	csrrw x8, 0x224, x22	// Restore CSR

// Testing CSR 0x225
	csrr x9, 0x225	// Read CSR
	li x12, -1
	csrrw x22, 0x225, x12	// Write all 1s to CSR
	csrrw x22, 0x225, x0	// Write all 0s to CSR
	csrrs x22, 0x225, x12	// Set all CSR bits
	csrrc x22, 0x225, x12	// Clear all CSR bits
	csrrw x22, 0x225, x9	// Restore CSR

// Testing CSR 0x226
	csrr x6, 0x226	// Read CSR
	li x10, -1
	csrrw x1, 0x226, x10	// Write all 1s to CSR
	csrrw x1, 0x226, x0	// Write all 0s to CSR
	csrrs x1, 0x226, x10	// Set all CSR bits
	csrrc x1, 0x226, x10	// Clear all CSR bits
	csrrw x1, 0x226, x6	// Restore CSR

// Testing CSR 0x227
	csrr x12, 0x227	// Read CSR
	li x19, -1
	csrrw x18, 0x227, x19	// Write all 1s to CSR
	csrrw x18, 0x227, x0	// Write all 0s to CSR
	csrrs x18, 0x227, x19	// Set all CSR bits
	csrrc x18, 0x227, x19	// Clear all CSR bits
	csrrw x18, 0x227, x12	// Restore CSR

// Testing CSR 0x228
	csrr x2, 0x228	// Read CSR
	li x24, -1
	csrrw x21, 0x228, x24	// Write all 1s to CSR
	csrrw x21, 0x228, x0	// Write all 0s to CSR
	csrrs x21, 0x228, x24	// Set all CSR bits
	csrrc x21, 0x228, x24	// Clear all CSR bits
	csrrw x21, 0x228, x2	// Restore CSR

// Testing CSR 0x229
	csrr x5, 0x229	// Read CSR
	li x12, -1
	csrrw x1, 0x229, x12	// Write all 1s to CSR
	csrrw x1, 0x229, x0	// Write all 0s to CSR
	csrrs x1, 0x229, x12	// Set all CSR bits
	csrrc x1, 0x229, x12	// Clear all CSR bits
	csrrw x1, 0x229, x5	// Restore CSR

// Testing CSR 0x22a
	csrr x16, 0x22a	// Read CSR
	li x21, -1
	csrrw x2, 0x22a, x21	// Write all 1s to CSR
	csrrw x2, 0x22a, x0	// Write all 0s to CSR
	csrrs x2, 0x22a, x21	// Set all CSR bits
	csrrc x2, 0x22a, x21	// Clear all CSR bits
	csrrw x2, 0x22a, x16	// Restore CSR

// Testing CSR 0x22b
	csrr x1, 0x22b	// Read CSR
	li x8, -1
	csrrw x2, 0x22b, x8	// Write all 1s to CSR
	csrrw x2, 0x22b, x0	// Write all 0s to CSR
	csrrs x2, 0x22b, x8	// Set all CSR bits
	csrrc x2, 0x22b, x8	// Clear all CSR bits
	csrrw x2, 0x22b, x1	// Restore CSR

// Testing CSR 0x22c
	csrr x1, 0x22c	// Read CSR
	li x8, -1
	csrrw x31, 0x22c, x8	// Write all 1s to CSR
	csrrw x31, 0x22c, x0	// Write all 0s to CSR
	csrrs x31, 0x22c, x8	// Set all CSR bits
	csrrc x31, 0x22c, x8	// Clear all CSR bits
	csrrw x31, 0x22c, x1	// Restore CSR

// Testing CSR 0x22d
	csrr x21, 0x22d	// Read CSR
	li x11, -1
	csrrw x3, 0x22d, x11	// Write all 1s to CSR
	csrrw x3, 0x22d, x0	// Write all 0s to CSR
	csrrs x3, 0x22d, x11	// Set all CSR bits
	csrrc x3, 0x22d, x11	// Clear all CSR bits
	csrrw x3, 0x22d, x21	// Restore CSR

// Testing CSR 0x22e
	csrr x27, 0x22e	// Read CSR
	li x2, -1
	csrrw x12, 0x22e, x2	// Write all 1s to CSR
	csrrw x12, 0x22e, x0	// Write all 0s to CSR
	csrrs x12, 0x22e, x2	// Set all CSR bits
	csrrc x12, 0x22e, x2	// Clear all CSR bits
	csrrw x12, 0x22e, x27	// Restore CSR

// Testing CSR 0x22f
	csrr x22, 0x22f	// Read CSR
	li x14, -1
	csrrw x5, 0x22f, x14	// Write all 1s to CSR
	csrrw x5, 0x22f, x0	// Write all 0s to CSR
	csrrs x5, 0x22f, x14	// Set all CSR bits
	csrrc x5, 0x22f, x14	// Clear all CSR bits
	csrrw x5, 0x22f, x22	// Restore CSR

// Testing CSR 0x230
	csrr x29, 0x230	// Read CSR
	li x30, -1
	csrrw x7, 0x230, x30	// Write all 1s to CSR
	csrrw x7, 0x230, x0	// Write all 0s to CSR
	csrrs x7, 0x230, x30	// Set all CSR bits
	csrrc x7, 0x230, x30	// Clear all CSR bits
	csrrw x7, 0x230, x29	// Restore CSR

// Testing CSR 0x231
	csrr x15, 0x231	// Read CSR
	li x14, -1
	csrrw x5, 0x231, x14	// Write all 1s to CSR
	csrrw x5, 0x231, x0	// Write all 0s to CSR
	csrrs x5, 0x231, x14	// Set all CSR bits
	csrrc x5, 0x231, x14	// Clear all CSR bits
	csrrw x5, 0x231, x15	// Restore CSR

// Testing CSR 0x232
	csrr x12, 0x232	// Read CSR
	li x10, -1
	csrrw x6, 0x232, x10	// Write all 1s to CSR
	csrrw x6, 0x232, x0	// Write all 0s to CSR
	csrrs x6, 0x232, x10	// Set all CSR bits
	csrrc x6, 0x232, x10	// Clear all CSR bits
	csrrw x6, 0x232, x12	// Restore CSR

// Testing CSR 0x233
	csrr x21, 0x233	// Read CSR
	li x11, -1
	csrrw x24, 0x233, x11	// Write all 1s to CSR
	csrrw x24, 0x233, x0	// Write all 0s to CSR
	csrrs x24, 0x233, x11	// Set all CSR bits
	csrrc x24, 0x233, x11	// Clear all CSR bits
	csrrw x24, 0x233, x21	// Restore CSR

// Testing CSR 0x234
	csrr x26, 0x234	// Read CSR
	li x24, -1
	csrrw x14, 0x234, x24	// Write all 1s to CSR
	csrrw x14, 0x234, x0	// Write all 0s to CSR
	csrrs x14, 0x234, x24	// Set all CSR bits
	csrrc x14, 0x234, x24	// Clear all CSR bits
	csrrw x14, 0x234, x26	// Restore CSR

// Testing CSR 0x235
	csrr x13, 0x235	// Read CSR
	li x1, -1
	csrrw x14, 0x235, x1	// Write all 1s to CSR
	csrrw x14, 0x235, x0	// Write all 0s to CSR
	csrrs x14, 0x235, x1	// Set all CSR bits
	csrrc x14, 0x235, x1	// Clear all CSR bits
	csrrw x14, 0x235, x13	// Restore CSR

// Testing CSR 0x236
	csrr x29, 0x236	// Read CSR
	li x9, -1
	csrrw x18, 0x236, x9	// Write all 1s to CSR
	csrrw x18, 0x236, x0	// Write all 0s to CSR
	csrrs x18, 0x236, x9	// Set all CSR bits
	csrrc x18, 0x236, x9	// Clear all CSR bits
	csrrw x18, 0x236, x29	// Restore CSR

// Testing CSR 0x237
	csrr x18, 0x237	// Read CSR
	li x26, -1
	csrrw x24, 0x237, x26	// Write all 1s to CSR
	csrrw x24, 0x237, x0	// Write all 0s to CSR
	csrrs x24, 0x237, x26	// Set all CSR bits
	csrrc x24, 0x237, x26	// Clear all CSR bits
	csrrw x24, 0x237, x18	// Restore CSR

// Testing CSR 0x238
	csrr x22, 0x238	// Read CSR
	li x23, -1
	csrrw x15, 0x238, x23	// Write all 1s to CSR
	csrrw x15, 0x238, x0	// Write all 0s to CSR
	csrrs x15, 0x238, x23	// Set all CSR bits
	csrrc x15, 0x238, x23	// Clear all CSR bits
	csrrw x15, 0x238, x22	// Restore CSR

// Testing CSR 0x239
	csrr x25, 0x239	// Read CSR
	li x2, -1
	csrrw x19, 0x239, x2	// Write all 1s to CSR
	csrrw x19, 0x239, x0	// Write all 0s to CSR
	csrrs x19, 0x239, x2	// Set all CSR bits
	csrrc x19, 0x239, x2	// Clear all CSR bits
	csrrw x19, 0x239, x25	// Restore CSR

// Testing CSR 0x23a
	csrr x30, 0x23a	// Read CSR
	li x4, -1
	csrrw x14, 0x23a, x4	// Write all 1s to CSR
	csrrw x14, 0x23a, x0	// Write all 0s to CSR
	csrrs x14, 0x23a, x4	// Set all CSR bits
	csrrc x14, 0x23a, x4	// Clear all CSR bits
	csrrw x14, 0x23a, x30	// Restore CSR

// Testing CSR 0x23b
	csrr x31, 0x23b	// Read CSR
	li x13, -1
	csrrw x6, 0x23b, x13	// Write all 1s to CSR
	csrrw x6, 0x23b, x0	// Write all 0s to CSR
	csrrs x6, 0x23b, x13	// Set all CSR bits
	csrrc x6, 0x23b, x13	// Clear all CSR bits
	csrrw x6, 0x23b, x31	// Restore CSR

// Testing CSR 0x23c
	csrr x1, 0x23c	// Read CSR
	li x17, -1
	csrrw x5, 0x23c, x17	// Write all 1s to CSR
	csrrw x5, 0x23c, x0	// Write all 0s to CSR
	csrrs x5, 0x23c, x17	// Set all CSR bits
	csrrc x5, 0x23c, x17	// Clear all CSR bits
	csrrw x5, 0x23c, x1	// Restore CSR

// Testing CSR 0x23d
	csrr x20, 0x23d	// Read CSR
	li x28, -1
	csrrw x22, 0x23d, x28	// Write all 1s to CSR
	csrrw x22, 0x23d, x0	// Write all 0s to CSR
	csrrs x22, 0x23d, x28	// Set all CSR bits
	csrrc x22, 0x23d, x28	// Clear all CSR bits
	csrrw x22, 0x23d, x20	// Restore CSR

// Testing CSR 0x23e
	csrr x17, 0x23e	// Read CSR
	li x27, -1
	csrrw x24, 0x23e, x27	// Write all 1s to CSR
	csrrw x24, 0x23e, x0	// Write all 0s to CSR
	csrrs x24, 0x23e, x27	// Set all CSR bits
	csrrc x24, 0x23e, x27	// Clear all CSR bits
	csrrw x24, 0x23e, x17	// Restore CSR

// Testing CSR 0x23f
	csrr x23, 0x23f	// Read CSR
	li x5, -1
	csrrw x3, 0x23f, x5	// Write all 1s to CSR
	csrrw x3, 0x23f, x0	// Write all 0s to CSR
	csrrs x3, 0x23f, x5	// Set all CSR bits
	csrrc x3, 0x23f, x5	// Clear all CSR bits
	csrrw x3, 0x23f, x23	// Restore CSR

// Testing CSR 0x240
	csrr x11, 0x240	// Read CSR
	li x8, -1
	csrrw x27, 0x240, x8	// Write all 1s to CSR
	csrrw x27, 0x240, x0	// Write all 0s to CSR
	csrrs x27, 0x240, x8	// Set all CSR bits
	csrrc x27, 0x240, x8	// Clear all CSR bits
	csrrw x27, 0x240, x11	// Restore CSR

// Testing CSR 0x241
	csrr x27, 0x241	// Read CSR
	li x8, -1
	csrrw x6, 0x241, x8	// Write all 1s to CSR
	csrrw x6, 0x241, x0	// Write all 0s to CSR
	csrrs x6, 0x241, x8	// Set all CSR bits
	csrrc x6, 0x241, x8	// Clear all CSR bits
	csrrw x6, 0x241, x27	// Restore CSR

// Testing CSR 0x242
	csrr x31, 0x242	// Read CSR
	li x1, -1
	csrrw x26, 0x242, x1	// Write all 1s to CSR
	csrrw x26, 0x242, x0	// Write all 0s to CSR
	csrrs x26, 0x242, x1	// Set all CSR bits
	csrrc x26, 0x242, x1	// Clear all CSR bits
	csrrw x26, 0x242, x31	// Restore CSR

// Testing CSR 0x243
	csrr x29, 0x243	// Read CSR
	li x6, -1
	csrrw x24, 0x243, x6	// Write all 1s to CSR
	csrrw x24, 0x243, x0	// Write all 0s to CSR
	csrrs x24, 0x243, x6	// Set all CSR bits
	csrrc x24, 0x243, x6	// Clear all CSR bits
	csrrw x24, 0x243, x29	// Restore CSR

// Testing CSR 0x244
	csrr x26, 0x244	// Read CSR
	li x27, -1
	csrrw x22, 0x244, x27	// Write all 1s to CSR
	csrrw x22, 0x244, x0	// Write all 0s to CSR
	csrrs x22, 0x244, x27	// Set all CSR bits
	csrrc x22, 0x244, x27	// Clear all CSR bits
	csrrw x22, 0x244, x26	// Restore CSR

// Testing CSR 0x245
	csrr x18, 0x245	// Read CSR
	li x6, -1
	csrrw x23, 0x245, x6	// Write all 1s to CSR
	csrrw x23, 0x245, x0	// Write all 0s to CSR
	csrrs x23, 0x245, x6	// Set all CSR bits
	csrrc x23, 0x245, x6	// Clear all CSR bits
	csrrw x23, 0x245, x18	// Restore CSR

// Testing CSR 0x246
	csrr x3, 0x246	// Read CSR
	li x14, -1
	csrrw x30, 0x246, x14	// Write all 1s to CSR
	csrrw x30, 0x246, x0	// Write all 0s to CSR
	csrrs x30, 0x246, x14	// Set all CSR bits
	csrrc x30, 0x246, x14	// Clear all CSR bits
	csrrw x30, 0x246, x3	// Restore CSR

// Testing CSR 0x247
	csrr x28, 0x247	// Read CSR
	li x20, -1
	csrrw x4, 0x247, x20	// Write all 1s to CSR
	csrrw x4, 0x247, x0	// Write all 0s to CSR
	csrrs x4, 0x247, x20	// Set all CSR bits
	csrrc x4, 0x247, x20	// Clear all CSR bits
	csrrw x4, 0x247, x28	// Restore CSR

// Testing CSR 0x248
	csrr x20, 0x248	// Read CSR
	li x21, -1
	csrrw x15, 0x248, x21	// Write all 1s to CSR
	csrrw x15, 0x248, x0	// Write all 0s to CSR
	csrrs x15, 0x248, x21	// Set all CSR bits
	csrrc x15, 0x248, x21	// Clear all CSR bits
	csrrw x15, 0x248, x20	// Restore CSR

// Testing CSR 0x249
	csrr x23, 0x249	// Read CSR
	li x5, -1
	csrrw x20, 0x249, x5	// Write all 1s to CSR
	csrrw x20, 0x249, x0	// Write all 0s to CSR
	csrrs x20, 0x249, x5	// Set all CSR bits
	csrrc x20, 0x249, x5	// Clear all CSR bits
	csrrw x20, 0x249, x23	// Restore CSR

// Testing CSR 0x24a
	csrr x20, 0x24a	// Read CSR
	li x2, -1
	csrrw x9, 0x24a, x2	// Write all 1s to CSR
	csrrw x9, 0x24a, x0	// Write all 0s to CSR
	csrrs x9, 0x24a, x2	// Set all CSR bits
	csrrc x9, 0x24a, x2	// Clear all CSR bits
	csrrw x9, 0x24a, x20	// Restore CSR

// Testing CSR 0x24b
	csrr x11, 0x24b	// Read CSR
	li x26, -1
	csrrw x24, 0x24b, x26	// Write all 1s to CSR
	csrrw x24, 0x24b, x0	// Write all 0s to CSR
	csrrs x24, 0x24b, x26	// Set all CSR bits
	csrrc x24, 0x24b, x26	// Clear all CSR bits
	csrrw x24, 0x24b, x11	// Restore CSR

// Testing CSR 0x24c
	csrr x24, 0x24c	// Read CSR
	li x13, -1
	csrrw x1, 0x24c, x13	// Write all 1s to CSR
	csrrw x1, 0x24c, x0	// Write all 0s to CSR
	csrrs x1, 0x24c, x13	// Set all CSR bits
	csrrc x1, 0x24c, x13	// Clear all CSR bits
	csrrw x1, 0x24c, x24	// Restore CSR

// Testing CSR 0x24d
	csrr x21, 0x24d	// Read CSR
	li x30, -1
	csrrw x29, 0x24d, x30	// Write all 1s to CSR
	csrrw x29, 0x24d, x0	// Write all 0s to CSR
	csrrs x29, 0x24d, x30	// Set all CSR bits
	csrrc x29, 0x24d, x30	// Clear all CSR bits
	csrrw x29, 0x24d, x21	// Restore CSR

// Testing CSR 0x24e
	csrr x2, 0x24e	// Read CSR
	li x16, -1
	csrrw x3, 0x24e, x16	// Write all 1s to CSR
	csrrw x3, 0x24e, x0	// Write all 0s to CSR
	csrrs x3, 0x24e, x16	// Set all CSR bits
	csrrc x3, 0x24e, x16	// Clear all CSR bits
	csrrw x3, 0x24e, x2	// Restore CSR

// Testing CSR 0x24f
	csrr x12, 0x24f	// Read CSR
	li x10, -1
	csrrw x22, 0x24f, x10	// Write all 1s to CSR
	csrrw x22, 0x24f, x0	// Write all 0s to CSR
	csrrs x22, 0x24f, x10	// Set all CSR bits
	csrrc x22, 0x24f, x10	// Clear all CSR bits
	csrrw x22, 0x24f, x12	// Restore CSR

// Testing CSR 0x250
	csrr x5, 0x250	// Read CSR
	li x15, -1
	csrrw x8, 0x250, x15	// Write all 1s to CSR
	csrrw x8, 0x250, x0	// Write all 0s to CSR
	csrrs x8, 0x250, x15	// Set all CSR bits
	csrrc x8, 0x250, x15	// Clear all CSR bits
	csrrw x8, 0x250, x5	// Restore CSR

// Testing CSR 0x251
	csrr x17, 0x251	// Read CSR
	li x12, -1
	csrrw x6, 0x251, x12	// Write all 1s to CSR
	csrrw x6, 0x251, x0	// Write all 0s to CSR
	csrrs x6, 0x251, x12	// Set all CSR bits
	csrrc x6, 0x251, x12	// Clear all CSR bits
	csrrw x6, 0x251, x17	// Restore CSR

// Testing CSR 0x252
	csrr x24, 0x252	// Read CSR
	li x25, -1
	csrrw x13, 0x252, x25	// Write all 1s to CSR
	csrrw x13, 0x252, x0	// Write all 0s to CSR
	csrrs x13, 0x252, x25	// Set all CSR bits
	csrrc x13, 0x252, x25	// Clear all CSR bits
	csrrw x13, 0x252, x24	// Restore CSR

// Testing CSR 0x253
	csrr x11, 0x253	// Read CSR
	li x9, -1
	csrrw x26, 0x253, x9	// Write all 1s to CSR
	csrrw x26, 0x253, x0	// Write all 0s to CSR
	csrrs x26, 0x253, x9	// Set all CSR bits
	csrrc x26, 0x253, x9	// Clear all CSR bits
	csrrw x26, 0x253, x11	// Restore CSR

// Testing CSR 0x254
	csrr x16, 0x254	// Read CSR
	li x31, -1
	csrrw x13, 0x254, x31	// Write all 1s to CSR
	csrrw x13, 0x254, x0	// Write all 0s to CSR
	csrrs x13, 0x254, x31	// Set all CSR bits
	csrrc x13, 0x254, x31	// Clear all CSR bits
	csrrw x13, 0x254, x16	// Restore CSR

// Testing CSR 0x255
	csrr x1, 0x255	// Read CSR
	li x10, -1
	csrrw x17, 0x255, x10	// Write all 1s to CSR
	csrrw x17, 0x255, x0	// Write all 0s to CSR
	csrrs x17, 0x255, x10	// Set all CSR bits
	csrrc x17, 0x255, x10	// Clear all CSR bits
	csrrw x17, 0x255, x1	// Restore CSR

// Testing CSR 0x256
	csrr x29, 0x256	// Read CSR
	li x10, -1
	csrrw x18, 0x256, x10	// Write all 1s to CSR
	csrrw x18, 0x256, x0	// Write all 0s to CSR
	csrrs x18, 0x256, x10	// Set all CSR bits
	csrrc x18, 0x256, x10	// Clear all CSR bits
	csrrw x18, 0x256, x29	// Restore CSR

// Testing CSR 0x257
	csrr x16, 0x257	// Read CSR
	li x2, -1
	csrrw x25, 0x257, x2	// Write all 1s to CSR
	csrrw x25, 0x257, x0	// Write all 0s to CSR
	csrrs x25, 0x257, x2	// Set all CSR bits
	csrrc x25, 0x257, x2	// Clear all CSR bits
	csrrw x25, 0x257, x16	// Restore CSR

// Testing CSR 0x258
	csrr x18, 0x258	// Read CSR
	li x19, -1
	csrrw x9, 0x258, x19	// Write all 1s to CSR
	csrrw x9, 0x258, x0	// Write all 0s to CSR
	csrrs x9, 0x258, x19	// Set all CSR bits
	csrrc x9, 0x258, x19	// Clear all CSR bits
	csrrw x9, 0x258, x18	// Restore CSR

// Testing CSR 0x259
	csrr x30, 0x259	// Read CSR
	li x22, -1
	csrrw x2, 0x259, x22	// Write all 1s to CSR
	csrrw x2, 0x259, x0	// Write all 0s to CSR
	csrrs x2, 0x259, x22	// Set all CSR bits
	csrrc x2, 0x259, x22	// Clear all CSR bits
	csrrw x2, 0x259, x30	// Restore CSR

// Testing CSR 0x25a
	csrr x15, 0x25a	// Read CSR
	li x13, -1
	csrrw x24, 0x25a, x13	// Write all 1s to CSR
	csrrw x24, 0x25a, x0	// Write all 0s to CSR
	csrrs x24, 0x25a, x13	// Set all CSR bits
	csrrc x24, 0x25a, x13	// Clear all CSR bits
	csrrw x24, 0x25a, x15	// Restore CSR

// Testing CSR 0x25b
	csrr x4, 0x25b	// Read CSR
	li x13, -1
	csrrw x12, 0x25b, x13	// Write all 1s to CSR
	csrrw x12, 0x25b, x0	// Write all 0s to CSR
	csrrs x12, 0x25b, x13	// Set all CSR bits
	csrrc x12, 0x25b, x13	// Clear all CSR bits
	csrrw x12, 0x25b, x4	// Restore CSR

// Testing CSR 0x25c
	csrr x16, 0x25c	// Read CSR
	li x2, -1
	csrrw x1, 0x25c, x2	// Write all 1s to CSR
	csrrw x1, 0x25c, x0	// Write all 0s to CSR
	csrrs x1, 0x25c, x2	// Set all CSR bits
	csrrc x1, 0x25c, x2	// Clear all CSR bits
	csrrw x1, 0x25c, x16	// Restore CSR

// Testing CSR 0x25d
	csrr x9, 0x25d	// Read CSR
	li x24, -1
	csrrw x2, 0x25d, x24	// Write all 1s to CSR
	csrrw x2, 0x25d, x0	// Write all 0s to CSR
	csrrs x2, 0x25d, x24	// Set all CSR bits
	csrrc x2, 0x25d, x24	// Clear all CSR bits
	csrrw x2, 0x25d, x9	// Restore CSR

// Testing CSR 0x25e
	csrr x9, 0x25e	// Read CSR
	li x22, -1
	csrrw x19, 0x25e, x22	// Write all 1s to CSR
	csrrw x19, 0x25e, x0	// Write all 0s to CSR
	csrrs x19, 0x25e, x22	// Set all CSR bits
	csrrc x19, 0x25e, x22	// Clear all CSR bits
	csrrw x19, 0x25e, x9	// Restore CSR

// Testing CSR 0x25f
	csrr x23, 0x25f	// Read CSR
	li x25, -1
	csrrw x30, 0x25f, x25	// Write all 1s to CSR
	csrrw x30, 0x25f, x0	// Write all 0s to CSR
	csrrs x30, 0x25f, x25	// Set all CSR bits
	csrrc x30, 0x25f, x25	// Clear all CSR bits
	csrrw x30, 0x25f, x23	// Restore CSR

// Testing CSR 0x260
	csrr x10, 0x260	// Read CSR
	li x22, -1
	csrrw x25, 0x260, x22	// Write all 1s to CSR
	csrrw x25, 0x260, x0	// Write all 0s to CSR
	csrrs x25, 0x260, x22	// Set all CSR bits
	csrrc x25, 0x260, x22	// Clear all CSR bits
	csrrw x25, 0x260, x10	// Restore CSR

// Testing CSR 0x261
	csrr x7, 0x261	// Read CSR
	li x25, -1
	csrrw x17, 0x261, x25	// Write all 1s to CSR
	csrrw x17, 0x261, x0	// Write all 0s to CSR
	csrrs x17, 0x261, x25	// Set all CSR bits
	csrrc x17, 0x261, x25	// Clear all CSR bits
	csrrw x17, 0x261, x7	// Restore CSR

// Testing CSR 0x262
	csrr x17, 0x262	// Read CSR
	li x11, -1
	csrrw x13, 0x262, x11	// Write all 1s to CSR
	csrrw x13, 0x262, x0	// Write all 0s to CSR
	csrrs x13, 0x262, x11	// Set all CSR bits
	csrrc x13, 0x262, x11	// Clear all CSR bits
	csrrw x13, 0x262, x17	// Restore CSR

// Testing CSR 0x263
	csrr x27, 0x263	// Read CSR
	li x9, -1
	csrrw x7, 0x263, x9	// Write all 1s to CSR
	csrrw x7, 0x263, x0	// Write all 0s to CSR
	csrrs x7, 0x263, x9	// Set all CSR bits
	csrrc x7, 0x263, x9	// Clear all CSR bits
	csrrw x7, 0x263, x27	// Restore CSR

// Testing CSR 0x264
	csrr x4, 0x264	// Read CSR
	li x19, -1
	csrrw x11, 0x264, x19	// Write all 1s to CSR
	csrrw x11, 0x264, x0	// Write all 0s to CSR
	csrrs x11, 0x264, x19	// Set all CSR bits
	csrrc x11, 0x264, x19	// Clear all CSR bits
	csrrw x11, 0x264, x4	// Restore CSR

// Testing CSR 0x265
	csrr x26, 0x265	// Read CSR
	li x31, -1
	csrrw x30, 0x265, x31	// Write all 1s to CSR
	csrrw x30, 0x265, x0	// Write all 0s to CSR
	csrrs x30, 0x265, x31	// Set all CSR bits
	csrrc x30, 0x265, x31	// Clear all CSR bits
	csrrw x30, 0x265, x26	// Restore CSR

// Testing CSR 0x266
	csrr x8, 0x266	// Read CSR
	li x19, -1
	csrrw x22, 0x266, x19	// Write all 1s to CSR
	csrrw x22, 0x266, x0	// Write all 0s to CSR
	csrrs x22, 0x266, x19	// Set all CSR bits
	csrrc x22, 0x266, x19	// Clear all CSR bits
	csrrw x22, 0x266, x8	// Restore CSR

// Testing CSR 0x267
	csrr x24, 0x267	// Read CSR
	li x18, -1
	csrrw x22, 0x267, x18	// Write all 1s to CSR
	csrrw x22, 0x267, x0	// Write all 0s to CSR
	csrrs x22, 0x267, x18	// Set all CSR bits
	csrrc x22, 0x267, x18	// Clear all CSR bits
	csrrw x22, 0x267, x24	// Restore CSR

// Testing CSR 0x268
	csrr x29, 0x268	// Read CSR
	li x12, -1
	csrrw x6, 0x268, x12	// Write all 1s to CSR
	csrrw x6, 0x268, x0	// Write all 0s to CSR
	csrrs x6, 0x268, x12	// Set all CSR bits
	csrrc x6, 0x268, x12	// Clear all CSR bits
	csrrw x6, 0x268, x29	// Restore CSR

// Testing CSR 0x269
	csrr x30, 0x269	// Read CSR
	li x28, -1
	csrrw x29, 0x269, x28	// Write all 1s to CSR
	csrrw x29, 0x269, x0	// Write all 0s to CSR
	csrrs x29, 0x269, x28	// Set all CSR bits
	csrrc x29, 0x269, x28	// Clear all CSR bits
	csrrw x29, 0x269, x30	// Restore CSR

// Testing CSR 0x26a
	csrr x5, 0x26a	// Read CSR
	li x11, -1
	csrrw x28, 0x26a, x11	// Write all 1s to CSR
	csrrw x28, 0x26a, x0	// Write all 0s to CSR
	csrrs x28, 0x26a, x11	// Set all CSR bits
	csrrc x28, 0x26a, x11	// Clear all CSR bits
	csrrw x28, 0x26a, x5	// Restore CSR

// Testing CSR 0x26b
	csrr x24, 0x26b	// Read CSR
	li x27, -1
	csrrw x1, 0x26b, x27	// Write all 1s to CSR
	csrrw x1, 0x26b, x0	// Write all 0s to CSR
	csrrs x1, 0x26b, x27	// Set all CSR bits
	csrrc x1, 0x26b, x27	// Clear all CSR bits
	csrrw x1, 0x26b, x24	// Restore CSR

// Testing CSR 0x26c
	csrr x19, 0x26c	// Read CSR
	li x27, -1
	csrrw x2, 0x26c, x27	// Write all 1s to CSR
	csrrw x2, 0x26c, x0	// Write all 0s to CSR
	csrrs x2, 0x26c, x27	// Set all CSR bits
	csrrc x2, 0x26c, x27	// Clear all CSR bits
	csrrw x2, 0x26c, x19	// Restore CSR

// Testing CSR 0x26d
	csrr x19, 0x26d	// Read CSR
	li x5, -1
	csrrw x31, 0x26d, x5	// Write all 1s to CSR
	csrrw x31, 0x26d, x0	// Write all 0s to CSR
	csrrs x31, 0x26d, x5	// Set all CSR bits
	csrrc x31, 0x26d, x5	// Clear all CSR bits
	csrrw x31, 0x26d, x19	// Restore CSR

// Testing CSR 0x26e
	csrr x12, 0x26e	// Read CSR
	li x21, -1
	csrrw x10, 0x26e, x21	// Write all 1s to CSR
	csrrw x10, 0x26e, x0	// Write all 0s to CSR
	csrrs x10, 0x26e, x21	// Set all CSR bits
	csrrc x10, 0x26e, x21	// Clear all CSR bits
	csrrw x10, 0x26e, x12	// Restore CSR

// Testing CSR 0x26f
	csrr x10, 0x26f	// Read CSR
	li x11, -1
	csrrw x16, 0x26f, x11	// Write all 1s to CSR
	csrrw x16, 0x26f, x0	// Write all 0s to CSR
	csrrs x16, 0x26f, x11	// Set all CSR bits
	csrrc x16, 0x26f, x11	// Clear all CSR bits
	csrrw x16, 0x26f, x10	// Restore CSR

// Testing CSR 0x270
	csrr x26, 0x270	// Read CSR
	li x13, -1
	csrrw x20, 0x270, x13	// Write all 1s to CSR
	csrrw x20, 0x270, x0	// Write all 0s to CSR
	csrrs x20, 0x270, x13	// Set all CSR bits
	csrrc x20, 0x270, x13	// Clear all CSR bits
	csrrw x20, 0x270, x26	// Restore CSR

// Testing CSR 0x271
	csrr x14, 0x271	// Read CSR
	li x6, -1
	csrrw x1, 0x271, x6	// Write all 1s to CSR
	csrrw x1, 0x271, x0	// Write all 0s to CSR
	csrrs x1, 0x271, x6	// Set all CSR bits
	csrrc x1, 0x271, x6	// Clear all CSR bits
	csrrw x1, 0x271, x14	// Restore CSR

// Testing CSR 0x272
	csrr x26, 0x272	// Read CSR
	li x5, -1
	csrrw x19, 0x272, x5	// Write all 1s to CSR
	csrrw x19, 0x272, x0	// Write all 0s to CSR
	csrrs x19, 0x272, x5	// Set all CSR bits
	csrrc x19, 0x272, x5	// Clear all CSR bits
	csrrw x19, 0x272, x26	// Restore CSR

// Testing CSR 0x273
	csrr x2, 0x273	// Read CSR
	li x15, -1
	csrrw x5, 0x273, x15	// Write all 1s to CSR
	csrrw x5, 0x273, x0	// Write all 0s to CSR
	csrrs x5, 0x273, x15	// Set all CSR bits
	csrrc x5, 0x273, x15	// Clear all CSR bits
	csrrw x5, 0x273, x2	// Restore CSR

// Testing CSR 0x274
	csrr x11, 0x274	// Read CSR
	li x30, -1
	csrrw x1, 0x274, x30	// Write all 1s to CSR
	csrrw x1, 0x274, x0	// Write all 0s to CSR
	csrrs x1, 0x274, x30	// Set all CSR bits
	csrrc x1, 0x274, x30	// Clear all CSR bits
	csrrw x1, 0x274, x11	// Restore CSR

// Testing CSR 0x275
	csrr x31, 0x275	// Read CSR
	li x24, -1
	csrrw x16, 0x275, x24	// Write all 1s to CSR
	csrrw x16, 0x275, x0	// Write all 0s to CSR
	csrrs x16, 0x275, x24	// Set all CSR bits
	csrrc x16, 0x275, x24	// Clear all CSR bits
	csrrw x16, 0x275, x31	// Restore CSR

// Testing CSR 0x276
	csrr x30, 0x276	// Read CSR
	li x31, -1
	csrrw x22, 0x276, x31	// Write all 1s to CSR
	csrrw x22, 0x276, x0	// Write all 0s to CSR
	csrrs x22, 0x276, x31	// Set all CSR bits
	csrrc x22, 0x276, x31	// Clear all CSR bits
	csrrw x22, 0x276, x30	// Restore CSR

// Testing CSR 0x277
	csrr x27, 0x277	// Read CSR
	li x22, -1
	csrrw x25, 0x277, x22	// Write all 1s to CSR
	csrrw x25, 0x277, x0	// Write all 0s to CSR
	csrrs x25, 0x277, x22	// Set all CSR bits
	csrrc x25, 0x277, x22	// Clear all CSR bits
	csrrw x25, 0x277, x27	// Restore CSR

// Testing CSR 0x278
	csrr x9, 0x278	// Read CSR
	li x24, -1
	csrrw x20, 0x278, x24	// Write all 1s to CSR
	csrrw x20, 0x278, x0	// Write all 0s to CSR
	csrrs x20, 0x278, x24	// Set all CSR bits
	csrrc x20, 0x278, x24	// Clear all CSR bits
	csrrw x20, 0x278, x9	// Restore CSR

// Testing CSR 0x279
	csrr x7, 0x279	// Read CSR
	li x3, -1
	csrrw x18, 0x279, x3	// Write all 1s to CSR
	csrrw x18, 0x279, x0	// Write all 0s to CSR
	csrrs x18, 0x279, x3	// Set all CSR bits
	csrrc x18, 0x279, x3	// Clear all CSR bits
	csrrw x18, 0x279, x7	// Restore CSR

// Testing CSR 0x27a
	csrr x30, 0x27a	// Read CSR
	li x14, -1
	csrrw x9, 0x27a, x14	// Write all 1s to CSR
	csrrw x9, 0x27a, x0	// Write all 0s to CSR
	csrrs x9, 0x27a, x14	// Set all CSR bits
	csrrc x9, 0x27a, x14	// Clear all CSR bits
	csrrw x9, 0x27a, x30	// Restore CSR

// Testing CSR 0x27b
	csrr x31, 0x27b	// Read CSR
	li x27, -1
	csrrw x6, 0x27b, x27	// Write all 1s to CSR
	csrrw x6, 0x27b, x0	// Write all 0s to CSR
	csrrs x6, 0x27b, x27	// Set all CSR bits
	csrrc x6, 0x27b, x27	// Clear all CSR bits
	csrrw x6, 0x27b, x31	// Restore CSR

// Testing CSR 0x27c
	csrr x17, 0x27c	// Read CSR
	li x6, -1
	csrrw x3, 0x27c, x6	// Write all 1s to CSR
	csrrw x3, 0x27c, x0	// Write all 0s to CSR
	csrrs x3, 0x27c, x6	// Set all CSR bits
	csrrc x3, 0x27c, x6	// Clear all CSR bits
	csrrw x3, 0x27c, x17	// Restore CSR

// Testing CSR 0x27d
	csrr x22, 0x27d	// Read CSR
	li x21, -1
	csrrw x6, 0x27d, x21	// Write all 1s to CSR
	csrrw x6, 0x27d, x0	// Write all 0s to CSR
	csrrs x6, 0x27d, x21	// Set all CSR bits
	csrrc x6, 0x27d, x21	// Clear all CSR bits
	csrrw x6, 0x27d, x22	// Restore CSR

// Testing CSR 0x27e
	csrr x19, 0x27e	// Read CSR
	li x4, -1
	csrrw x31, 0x27e, x4	// Write all 1s to CSR
	csrrw x31, 0x27e, x0	// Write all 0s to CSR
	csrrs x31, 0x27e, x4	// Set all CSR bits
	csrrc x31, 0x27e, x4	// Clear all CSR bits
	csrrw x31, 0x27e, x19	// Restore CSR

// Testing CSR 0x27f
	csrr x17, 0x27f	// Read CSR
	li x21, -1
	csrrw x26, 0x27f, x21	// Write all 1s to CSR
	csrrw x26, 0x27f, x0	// Write all 0s to CSR
	csrrs x26, 0x27f, x21	// Set all CSR bits
	csrrc x26, 0x27f, x21	// Clear all CSR bits
	csrrw x26, 0x27f, x17	// Restore CSR

// Testing CSR 0x280
	csrr x18, 0x280	// Read CSR
	li x20, -1
	csrrw x13, 0x280, x20	// Write all 1s to CSR
	csrrw x13, 0x280, x0	// Write all 0s to CSR
	csrrs x13, 0x280, x20	// Set all CSR bits
	csrrc x13, 0x280, x20	// Clear all CSR bits
	csrrw x13, 0x280, x18	// Restore CSR

// Testing CSR 0x281
	csrr x25, 0x281	// Read CSR
	li x14, -1
	csrrw x9, 0x281, x14	// Write all 1s to CSR
	csrrw x9, 0x281, x0	// Write all 0s to CSR
	csrrs x9, 0x281, x14	// Set all CSR bits
	csrrc x9, 0x281, x14	// Clear all CSR bits
	csrrw x9, 0x281, x25	// Restore CSR

// Testing CSR 0x282
	csrr x10, 0x282	// Read CSR
	li x14, -1
	csrrw x1, 0x282, x14	// Write all 1s to CSR
	csrrw x1, 0x282, x0	// Write all 0s to CSR
	csrrs x1, 0x282, x14	// Set all CSR bits
	csrrc x1, 0x282, x14	// Clear all CSR bits
	csrrw x1, 0x282, x10	// Restore CSR

// Testing CSR 0x283
	csrr x25, 0x283	// Read CSR
	li x27, -1
	csrrw x23, 0x283, x27	// Write all 1s to CSR
	csrrw x23, 0x283, x0	// Write all 0s to CSR
	csrrs x23, 0x283, x27	// Set all CSR bits
	csrrc x23, 0x283, x27	// Clear all CSR bits
	csrrw x23, 0x283, x25	// Restore CSR

// Testing CSR 0x284
	csrr x9, 0x284	// Read CSR
	li x31, -1
	csrrw x18, 0x284, x31	// Write all 1s to CSR
	csrrw x18, 0x284, x0	// Write all 0s to CSR
	csrrs x18, 0x284, x31	// Set all CSR bits
	csrrc x18, 0x284, x31	// Clear all CSR bits
	csrrw x18, 0x284, x9	// Restore CSR

// Testing CSR 0x285
	csrr x17, 0x285	// Read CSR
	li x18, -1
	csrrw x11, 0x285, x18	// Write all 1s to CSR
	csrrw x11, 0x285, x0	// Write all 0s to CSR
	csrrs x11, 0x285, x18	// Set all CSR bits
	csrrc x11, 0x285, x18	// Clear all CSR bits
	csrrw x11, 0x285, x17	// Restore CSR

// Testing CSR 0x286
	csrr x11, 0x286	// Read CSR
	li x7, -1
	csrrw x23, 0x286, x7	// Write all 1s to CSR
	csrrw x23, 0x286, x0	// Write all 0s to CSR
	csrrs x23, 0x286, x7	// Set all CSR bits
	csrrc x23, 0x286, x7	// Clear all CSR bits
	csrrw x23, 0x286, x11	// Restore CSR

// Testing CSR 0x287
	csrr x26, 0x287	// Read CSR
	li x14, -1
	csrrw x5, 0x287, x14	// Write all 1s to CSR
	csrrw x5, 0x287, x0	// Write all 0s to CSR
	csrrs x5, 0x287, x14	// Set all CSR bits
	csrrc x5, 0x287, x14	// Clear all CSR bits
	csrrw x5, 0x287, x26	// Restore CSR

// Testing CSR 0x288
	csrr x28, 0x288	// Read CSR
	li x1, -1
	csrrw x25, 0x288, x1	// Write all 1s to CSR
	csrrw x25, 0x288, x0	// Write all 0s to CSR
	csrrs x25, 0x288, x1	// Set all CSR bits
	csrrc x25, 0x288, x1	// Clear all CSR bits
	csrrw x25, 0x288, x28	// Restore CSR

// Testing CSR 0x289
	csrr x17, 0x289	// Read CSR
	li x5, -1
	csrrw x26, 0x289, x5	// Write all 1s to CSR
	csrrw x26, 0x289, x0	// Write all 0s to CSR
	csrrs x26, 0x289, x5	// Set all CSR bits
	csrrc x26, 0x289, x5	// Clear all CSR bits
	csrrw x26, 0x289, x17	// Restore CSR

// Testing CSR 0x28a
	csrr x22, 0x28a	// Read CSR
	li x23, -1
	csrrw x30, 0x28a, x23	// Write all 1s to CSR
	csrrw x30, 0x28a, x0	// Write all 0s to CSR
	csrrs x30, 0x28a, x23	// Set all CSR bits
	csrrc x30, 0x28a, x23	// Clear all CSR bits
	csrrw x30, 0x28a, x22	// Restore CSR

// Testing CSR 0x28b
	csrr x26, 0x28b	// Read CSR
	li x19, -1
	csrrw x13, 0x28b, x19	// Write all 1s to CSR
	csrrw x13, 0x28b, x0	// Write all 0s to CSR
	csrrs x13, 0x28b, x19	// Set all CSR bits
	csrrc x13, 0x28b, x19	// Clear all CSR bits
	csrrw x13, 0x28b, x26	// Restore CSR

// Testing CSR 0x28c
	csrr x12, 0x28c	// Read CSR
	li x15, -1
	csrrw x31, 0x28c, x15	// Write all 1s to CSR
	csrrw x31, 0x28c, x0	// Write all 0s to CSR
	csrrs x31, 0x28c, x15	// Set all CSR bits
	csrrc x31, 0x28c, x15	// Clear all CSR bits
	csrrw x31, 0x28c, x12	// Restore CSR

// Testing CSR 0x28d
	csrr x2, 0x28d	// Read CSR
	li x18, -1
	csrrw x30, 0x28d, x18	// Write all 1s to CSR
	csrrw x30, 0x28d, x0	// Write all 0s to CSR
	csrrs x30, 0x28d, x18	// Set all CSR bits
	csrrc x30, 0x28d, x18	// Clear all CSR bits
	csrrw x30, 0x28d, x2	// Restore CSR

// Testing CSR 0x28e
	csrr x14, 0x28e	// Read CSR
	li x21, -1
	csrrw x20, 0x28e, x21	// Write all 1s to CSR
	csrrw x20, 0x28e, x0	// Write all 0s to CSR
	csrrs x20, 0x28e, x21	// Set all CSR bits
	csrrc x20, 0x28e, x21	// Clear all CSR bits
	csrrw x20, 0x28e, x14	// Restore CSR

// Testing CSR 0x28f
	csrr x26, 0x28f	// Read CSR
	li x8, -1
	csrrw x25, 0x28f, x8	// Write all 1s to CSR
	csrrw x25, 0x28f, x0	// Write all 0s to CSR
	csrrs x25, 0x28f, x8	// Set all CSR bits
	csrrc x25, 0x28f, x8	// Clear all CSR bits
	csrrw x25, 0x28f, x26	// Restore CSR

// Testing CSR 0x290
	csrr x29, 0x290	// Read CSR
	li x1, -1
	csrrw x12, 0x290, x1	// Write all 1s to CSR
	csrrw x12, 0x290, x0	// Write all 0s to CSR
	csrrs x12, 0x290, x1	// Set all CSR bits
	csrrc x12, 0x290, x1	// Clear all CSR bits
	csrrw x12, 0x290, x29	// Restore CSR

// Testing CSR 0x291
	csrr x17, 0x291	// Read CSR
	li x31, -1
	csrrw x6, 0x291, x31	// Write all 1s to CSR
	csrrw x6, 0x291, x0	// Write all 0s to CSR
	csrrs x6, 0x291, x31	// Set all CSR bits
	csrrc x6, 0x291, x31	// Clear all CSR bits
	csrrw x6, 0x291, x17	// Restore CSR

// Testing CSR 0x292
	csrr x22, 0x292	// Read CSR
	li x7, -1
	csrrw x21, 0x292, x7	// Write all 1s to CSR
	csrrw x21, 0x292, x0	// Write all 0s to CSR
	csrrs x21, 0x292, x7	// Set all CSR bits
	csrrc x21, 0x292, x7	// Clear all CSR bits
	csrrw x21, 0x292, x22	// Restore CSR

// Testing CSR 0x293
	csrr x12, 0x293	// Read CSR
	li x21, -1
	csrrw x23, 0x293, x21	// Write all 1s to CSR
	csrrw x23, 0x293, x0	// Write all 0s to CSR
	csrrs x23, 0x293, x21	// Set all CSR bits
	csrrc x23, 0x293, x21	// Clear all CSR bits
	csrrw x23, 0x293, x12	// Restore CSR

// Testing CSR 0x294
	csrr x16, 0x294	// Read CSR
	li x1, -1
	csrrw x24, 0x294, x1	// Write all 1s to CSR
	csrrw x24, 0x294, x0	// Write all 0s to CSR
	csrrs x24, 0x294, x1	// Set all CSR bits
	csrrc x24, 0x294, x1	// Clear all CSR bits
	csrrw x24, 0x294, x16	// Restore CSR

// Testing CSR 0x295
	csrr x24, 0x295	// Read CSR
	li x8, -1
	csrrw x19, 0x295, x8	// Write all 1s to CSR
	csrrw x19, 0x295, x0	// Write all 0s to CSR
	csrrs x19, 0x295, x8	// Set all CSR bits
	csrrc x19, 0x295, x8	// Clear all CSR bits
	csrrw x19, 0x295, x24	// Restore CSR

// Testing CSR 0x296
	csrr x29, 0x296	// Read CSR
	li x8, -1
	csrrw x9, 0x296, x8	// Write all 1s to CSR
	csrrw x9, 0x296, x0	// Write all 0s to CSR
	csrrs x9, 0x296, x8	// Set all CSR bits
	csrrc x9, 0x296, x8	// Clear all CSR bits
	csrrw x9, 0x296, x29	// Restore CSR

// Testing CSR 0x297
	csrr x6, 0x297	// Read CSR
	li x31, -1
	csrrw x25, 0x297, x31	// Write all 1s to CSR
	csrrw x25, 0x297, x0	// Write all 0s to CSR
	csrrs x25, 0x297, x31	// Set all CSR bits
	csrrc x25, 0x297, x31	// Clear all CSR bits
	csrrw x25, 0x297, x6	// Restore CSR

// Testing CSR 0x298
	csrr x30, 0x298	// Read CSR
	li x14, -1
	csrrw x3, 0x298, x14	// Write all 1s to CSR
	csrrw x3, 0x298, x0	// Write all 0s to CSR
	csrrs x3, 0x298, x14	// Set all CSR bits
	csrrc x3, 0x298, x14	// Clear all CSR bits
	csrrw x3, 0x298, x30	// Restore CSR

// Testing CSR 0x299
	csrr x19, 0x299	// Read CSR
	li x15, -1
	csrrw x8, 0x299, x15	// Write all 1s to CSR
	csrrw x8, 0x299, x0	// Write all 0s to CSR
	csrrs x8, 0x299, x15	// Set all CSR bits
	csrrc x8, 0x299, x15	// Clear all CSR bits
	csrrw x8, 0x299, x19	// Restore CSR

// Testing CSR 0x29a
	csrr x24, 0x29a	// Read CSR
	li x23, -1
	csrrw x15, 0x29a, x23	// Write all 1s to CSR
	csrrw x15, 0x29a, x0	// Write all 0s to CSR
	csrrs x15, 0x29a, x23	// Set all CSR bits
	csrrc x15, 0x29a, x23	// Clear all CSR bits
	csrrw x15, 0x29a, x24	// Restore CSR

// Testing CSR 0x29b
	csrr x28, 0x29b	// Read CSR
	li x17, -1
	csrrw x29, 0x29b, x17	// Write all 1s to CSR
	csrrw x29, 0x29b, x0	// Write all 0s to CSR
	csrrs x29, 0x29b, x17	// Set all CSR bits
	csrrc x29, 0x29b, x17	// Clear all CSR bits
	csrrw x29, 0x29b, x28	// Restore CSR

// Testing CSR 0x29c
	csrr x26, 0x29c	// Read CSR
	li x4, -1
	csrrw x23, 0x29c, x4	// Write all 1s to CSR
	csrrw x23, 0x29c, x0	// Write all 0s to CSR
	csrrs x23, 0x29c, x4	// Set all CSR bits
	csrrc x23, 0x29c, x4	// Clear all CSR bits
	csrrw x23, 0x29c, x26	// Restore CSR

// Testing CSR 0x29d
	csrr x31, 0x29d	// Read CSR
	li x7, -1
	csrrw x6, 0x29d, x7	// Write all 1s to CSR
	csrrw x6, 0x29d, x0	// Write all 0s to CSR
	csrrs x6, 0x29d, x7	// Set all CSR bits
	csrrc x6, 0x29d, x7	// Clear all CSR bits
	csrrw x6, 0x29d, x31	// Restore CSR

// Testing CSR 0x29e
	csrr x15, 0x29e	// Read CSR
	li x30, -1
	csrrw x3, 0x29e, x30	// Write all 1s to CSR
	csrrw x3, 0x29e, x0	// Write all 0s to CSR
	csrrs x3, 0x29e, x30	// Set all CSR bits
	csrrc x3, 0x29e, x30	// Clear all CSR bits
	csrrw x3, 0x29e, x15	// Restore CSR

// Testing CSR 0x29f
	csrr x30, 0x29f	// Read CSR
	li x14, -1
	csrrw x21, 0x29f, x14	// Write all 1s to CSR
	csrrw x21, 0x29f, x0	// Write all 0s to CSR
	csrrs x21, 0x29f, x14	// Set all CSR bits
	csrrc x21, 0x29f, x14	// Clear all CSR bits
	csrrw x21, 0x29f, x30	// Restore CSR

// Testing CSR 0x2a0
	csrr x13, 0x2a0	// Read CSR
	li x31, -1
	csrrw x9, 0x2a0, x31	// Write all 1s to CSR
	csrrw x9, 0x2a0, x0	// Write all 0s to CSR
	csrrs x9, 0x2a0, x31	// Set all CSR bits
	csrrc x9, 0x2a0, x31	// Clear all CSR bits
	csrrw x9, 0x2a0, x13	// Restore CSR

// Testing CSR 0x2a1
	csrr x9, 0x2a1	// Read CSR
	li x14, -1
	csrrw x29, 0x2a1, x14	// Write all 1s to CSR
	csrrw x29, 0x2a1, x0	// Write all 0s to CSR
	csrrs x29, 0x2a1, x14	// Set all CSR bits
	csrrc x29, 0x2a1, x14	// Clear all CSR bits
	csrrw x29, 0x2a1, x9	// Restore CSR

// Testing CSR 0x2a2
	csrr x25, 0x2a2	// Read CSR
	li x20, -1
	csrrw x12, 0x2a2, x20	// Write all 1s to CSR
	csrrw x12, 0x2a2, x0	// Write all 0s to CSR
	csrrs x12, 0x2a2, x20	// Set all CSR bits
	csrrc x12, 0x2a2, x20	// Clear all CSR bits
	csrrw x12, 0x2a2, x25	// Restore CSR

// Testing CSR 0x2a3
	csrr x11, 0x2a3	// Read CSR
	li x3, -1
	csrrw x10, 0x2a3, x3	// Write all 1s to CSR
	csrrw x10, 0x2a3, x0	// Write all 0s to CSR
	csrrs x10, 0x2a3, x3	// Set all CSR bits
	csrrc x10, 0x2a3, x3	// Clear all CSR bits
	csrrw x10, 0x2a3, x11	// Restore CSR

// Testing CSR 0x2a4
	csrr x1, 0x2a4	// Read CSR
	li x16, -1
	csrrw x25, 0x2a4, x16	// Write all 1s to CSR
	csrrw x25, 0x2a4, x0	// Write all 0s to CSR
	csrrs x25, 0x2a4, x16	// Set all CSR bits
	csrrc x25, 0x2a4, x16	// Clear all CSR bits
	csrrw x25, 0x2a4, x1	// Restore CSR

// Testing CSR 0x2a5
	csrr x9, 0x2a5	// Read CSR
	li x7, -1
	csrrw x25, 0x2a5, x7	// Write all 1s to CSR
	csrrw x25, 0x2a5, x0	// Write all 0s to CSR
	csrrs x25, 0x2a5, x7	// Set all CSR bits
	csrrc x25, 0x2a5, x7	// Clear all CSR bits
	csrrw x25, 0x2a5, x9	// Restore CSR

// Testing CSR 0x2a6
	csrr x13, 0x2a6	// Read CSR
	li x25, -1
	csrrw x14, 0x2a6, x25	// Write all 1s to CSR
	csrrw x14, 0x2a6, x0	// Write all 0s to CSR
	csrrs x14, 0x2a6, x25	// Set all CSR bits
	csrrc x14, 0x2a6, x25	// Clear all CSR bits
	csrrw x14, 0x2a6, x13	// Restore CSR

// Testing CSR 0x2a7
	csrr x21, 0x2a7	// Read CSR
	li x13, -1
	csrrw x22, 0x2a7, x13	// Write all 1s to CSR
	csrrw x22, 0x2a7, x0	// Write all 0s to CSR
	csrrs x22, 0x2a7, x13	// Set all CSR bits
	csrrc x22, 0x2a7, x13	// Clear all CSR bits
	csrrw x22, 0x2a7, x21	// Restore CSR

// Testing CSR 0x2a8
	csrr x23, 0x2a8	// Read CSR
	li x29, -1
	csrrw x27, 0x2a8, x29	// Write all 1s to CSR
	csrrw x27, 0x2a8, x0	// Write all 0s to CSR
	csrrs x27, 0x2a8, x29	// Set all CSR bits
	csrrc x27, 0x2a8, x29	// Clear all CSR bits
	csrrw x27, 0x2a8, x23	// Restore CSR

// Testing CSR 0x2a9
	csrr x2, 0x2a9	// Read CSR
	li x19, -1
	csrrw x15, 0x2a9, x19	// Write all 1s to CSR
	csrrw x15, 0x2a9, x0	// Write all 0s to CSR
	csrrs x15, 0x2a9, x19	// Set all CSR bits
	csrrc x15, 0x2a9, x19	// Clear all CSR bits
	csrrw x15, 0x2a9, x2	// Restore CSR

// Testing CSR 0x2aa
	csrr x12, 0x2aa	// Read CSR
	li x27, -1
	csrrw x19, 0x2aa, x27	// Write all 1s to CSR
	csrrw x19, 0x2aa, x0	// Write all 0s to CSR
	csrrs x19, 0x2aa, x27	// Set all CSR bits
	csrrc x19, 0x2aa, x27	// Clear all CSR bits
	csrrw x19, 0x2aa, x12	// Restore CSR

// Testing CSR 0x2ab
	csrr x5, 0x2ab	// Read CSR
	li x19, -1
	csrrw x23, 0x2ab, x19	// Write all 1s to CSR
	csrrw x23, 0x2ab, x0	// Write all 0s to CSR
	csrrs x23, 0x2ab, x19	// Set all CSR bits
	csrrc x23, 0x2ab, x19	// Clear all CSR bits
	csrrw x23, 0x2ab, x5	// Restore CSR

// Testing CSR 0x2ac
	csrr x9, 0x2ac	// Read CSR
	li x11, -1
	csrrw x27, 0x2ac, x11	// Write all 1s to CSR
	csrrw x27, 0x2ac, x0	// Write all 0s to CSR
	csrrs x27, 0x2ac, x11	// Set all CSR bits
	csrrc x27, 0x2ac, x11	// Clear all CSR bits
	csrrw x27, 0x2ac, x9	// Restore CSR

// Testing CSR 0x2ad
	csrr x1, 0x2ad	// Read CSR
	li x13, -1
	csrrw x16, 0x2ad, x13	// Write all 1s to CSR
	csrrw x16, 0x2ad, x0	// Write all 0s to CSR
	csrrs x16, 0x2ad, x13	// Set all CSR bits
	csrrc x16, 0x2ad, x13	// Clear all CSR bits
	csrrw x16, 0x2ad, x1	// Restore CSR

// Testing CSR 0x2ae
	csrr x30, 0x2ae	// Read CSR
	li x17, -1
	csrrw x5, 0x2ae, x17	// Write all 1s to CSR
	csrrw x5, 0x2ae, x0	// Write all 0s to CSR
	csrrs x5, 0x2ae, x17	// Set all CSR bits
	csrrc x5, 0x2ae, x17	// Clear all CSR bits
	csrrw x5, 0x2ae, x30	// Restore CSR

// Testing CSR 0x2af
	csrr x2, 0x2af	// Read CSR
	li x3, -1
	csrrw x19, 0x2af, x3	// Write all 1s to CSR
	csrrw x19, 0x2af, x0	// Write all 0s to CSR
	csrrs x19, 0x2af, x3	// Set all CSR bits
	csrrc x19, 0x2af, x3	// Clear all CSR bits
	csrrw x19, 0x2af, x2	// Restore CSR

// Testing CSR 0x2b0
	csrr x28, 0x2b0	// Read CSR
	li x12, -1
	csrrw x1, 0x2b0, x12	// Write all 1s to CSR
	csrrw x1, 0x2b0, x0	// Write all 0s to CSR
	csrrs x1, 0x2b0, x12	// Set all CSR bits
	csrrc x1, 0x2b0, x12	// Clear all CSR bits
	csrrw x1, 0x2b0, x28	// Restore CSR

// Testing CSR 0x2b1
	csrr x3, 0x2b1	// Read CSR
	li x7, -1
	csrrw x23, 0x2b1, x7	// Write all 1s to CSR
	csrrw x23, 0x2b1, x0	// Write all 0s to CSR
	csrrs x23, 0x2b1, x7	// Set all CSR bits
	csrrc x23, 0x2b1, x7	// Clear all CSR bits
	csrrw x23, 0x2b1, x3	// Restore CSR

// Testing CSR 0x2b2
	csrr x4, 0x2b2	// Read CSR
	li x22, -1
	csrrw x18, 0x2b2, x22	// Write all 1s to CSR
	csrrw x18, 0x2b2, x0	// Write all 0s to CSR
	csrrs x18, 0x2b2, x22	// Set all CSR bits
	csrrc x18, 0x2b2, x22	// Clear all CSR bits
	csrrw x18, 0x2b2, x4	// Restore CSR

// Testing CSR 0x2b3
	csrr x16, 0x2b3	// Read CSR
	li x2, -1
	csrrw x11, 0x2b3, x2	// Write all 1s to CSR
	csrrw x11, 0x2b3, x0	// Write all 0s to CSR
	csrrs x11, 0x2b3, x2	// Set all CSR bits
	csrrc x11, 0x2b3, x2	// Clear all CSR bits
	csrrw x11, 0x2b3, x16	// Restore CSR

// Testing CSR 0x2b4
	csrr x30, 0x2b4	// Read CSR
	li x27, -1
	csrrw x28, 0x2b4, x27	// Write all 1s to CSR
	csrrw x28, 0x2b4, x0	// Write all 0s to CSR
	csrrs x28, 0x2b4, x27	// Set all CSR bits
	csrrc x28, 0x2b4, x27	// Clear all CSR bits
	csrrw x28, 0x2b4, x30	// Restore CSR

// Testing CSR 0x2b5
	csrr x31, 0x2b5	// Read CSR
	li x11, -1
	csrrw x1, 0x2b5, x11	// Write all 1s to CSR
	csrrw x1, 0x2b5, x0	// Write all 0s to CSR
	csrrs x1, 0x2b5, x11	// Set all CSR bits
	csrrc x1, 0x2b5, x11	// Clear all CSR bits
	csrrw x1, 0x2b5, x31	// Restore CSR

// Testing CSR 0x2b6
	csrr x13, 0x2b6	// Read CSR
	li x29, -1
	csrrw x5, 0x2b6, x29	// Write all 1s to CSR
	csrrw x5, 0x2b6, x0	// Write all 0s to CSR
	csrrs x5, 0x2b6, x29	// Set all CSR bits
	csrrc x5, 0x2b6, x29	// Clear all CSR bits
	csrrw x5, 0x2b6, x13	// Restore CSR

// Testing CSR 0x2b7
	csrr x25, 0x2b7	// Read CSR
	li x21, -1
	csrrw x9, 0x2b7, x21	// Write all 1s to CSR
	csrrw x9, 0x2b7, x0	// Write all 0s to CSR
	csrrs x9, 0x2b7, x21	// Set all CSR bits
	csrrc x9, 0x2b7, x21	// Clear all CSR bits
	csrrw x9, 0x2b7, x25	// Restore CSR

// Testing CSR 0x2b8
	csrr x14, 0x2b8	// Read CSR
	li x22, -1
	csrrw x5, 0x2b8, x22	// Write all 1s to CSR
	csrrw x5, 0x2b8, x0	// Write all 0s to CSR
	csrrs x5, 0x2b8, x22	// Set all CSR bits
	csrrc x5, 0x2b8, x22	// Clear all CSR bits
	csrrw x5, 0x2b8, x14	// Restore CSR

// Testing CSR 0x2b9
	csrr x20, 0x2b9	// Read CSR
	li x5, -1
	csrrw x13, 0x2b9, x5	// Write all 1s to CSR
	csrrw x13, 0x2b9, x0	// Write all 0s to CSR
	csrrs x13, 0x2b9, x5	// Set all CSR bits
	csrrc x13, 0x2b9, x5	// Clear all CSR bits
	csrrw x13, 0x2b9, x20	// Restore CSR

// Testing CSR 0x2ba
	csrr x28, 0x2ba	// Read CSR
	li x10, -1
	csrrw x17, 0x2ba, x10	// Write all 1s to CSR
	csrrw x17, 0x2ba, x0	// Write all 0s to CSR
	csrrs x17, 0x2ba, x10	// Set all CSR bits
	csrrc x17, 0x2ba, x10	// Clear all CSR bits
	csrrw x17, 0x2ba, x28	// Restore CSR

// Testing CSR 0x2bb
	csrr x2, 0x2bb	// Read CSR
	li x6, -1
	csrrw x5, 0x2bb, x6	// Write all 1s to CSR
	csrrw x5, 0x2bb, x0	// Write all 0s to CSR
	csrrs x5, 0x2bb, x6	// Set all CSR bits
	csrrc x5, 0x2bb, x6	// Clear all CSR bits
	csrrw x5, 0x2bb, x2	// Restore CSR

// Testing CSR 0x2bc
	csrr x29, 0x2bc	// Read CSR
	li x5, -1
	csrrw x30, 0x2bc, x5	// Write all 1s to CSR
	csrrw x30, 0x2bc, x0	// Write all 0s to CSR
	csrrs x30, 0x2bc, x5	// Set all CSR bits
	csrrc x30, 0x2bc, x5	// Clear all CSR bits
	csrrw x30, 0x2bc, x29	// Restore CSR

// Testing CSR 0x2bd
	csrr x16, 0x2bd	// Read CSR
	li x23, -1
	csrrw x21, 0x2bd, x23	// Write all 1s to CSR
	csrrw x21, 0x2bd, x0	// Write all 0s to CSR
	csrrs x21, 0x2bd, x23	// Set all CSR bits
	csrrc x21, 0x2bd, x23	// Clear all CSR bits
	csrrw x21, 0x2bd, x16	// Restore CSR

// Testing CSR 0x2be
	csrr x23, 0x2be	// Read CSR
	li x25, -1
	csrrw x24, 0x2be, x25	// Write all 1s to CSR
	csrrw x24, 0x2be, x0	// Write all 0s to CSR
	csrrs x24, 0x2be, x25	// Set all CSR bits
	csrrc x24, 0x2be, x25	// Clear all CSR bits
	csrrw x24, 0x2be, x23	// Restore CSR

// Testing CSR 0x2bf
	csrr x2, 0x2bf	// Read CSR
	li x24, -1
	csrrw x27, 0x2bf, x24	// Write all 1s to CSR
	csrrw x27, 0x2bf, x0	// Write all 0s to CSR
	csrrs x27, 0x2bf, x24	// Set all CSR bits
	csrrc x27, 0x2bf, x24	// Clear all CSR bits
	csrrw x27, 0x2bf, x2	// Restore CSR

// Testing CSR 0x2c0
	csrr x17, 0x2c0	// Read CSR
	li x2, -1
	csrrw x27, 0x2c0, x2	// Write all 1s to CSR
	csrrw x27, 0x2c0, x0	// Write all 0s to CSR
	csrrs x27, 0x2c0, x2	// Set all CSR bits
	csrrc x27, 0x2c0, x2	// Clear all CSR bits
	csrrw x27, 0x2c0, x17	// Restore CSR

// Testing CSR 0x2c1
	csrr x18, 0x2c1	// Read CSR
	li x23, -1
	csrrw x24, 0x2c1, x23	// Write all 1s to CSR
	csrrw x24, 0x2c1, x0	// Write all 0s to CSR
	csrrs x24, 0x2c1, x23	// Set all CSR bits
	csrrc x24, 0x2c1, x23	// Clear all CSR bits
	csrrw x24, 0x2c1, x18	// Restore CSR

// Testing CSR 0x2c2
	csrr x23, 0x2c2	// Read CSR
	li x21, -1
	csrrw x13, 0x2c2, x21	// Write all 1s to CSR
	csrrw x13, 0x2c2, x0	// Write all 0s to CSR
	csrrs x13, 0x2c2, x21	// Set all CSR bits
	csrrc x13, 0x2c2, x21	// Clear all CSR bits
	csrrw x13, 0x2c2, x23	// Restore CSR

// Testing CSR 0x2c3
	csrr x31, 0x2c3	// Read CSR
	li x6, -1
	csrrw x12, 0x2c3, x6	// Write all 1s to CSR
	csrrw x12, 0x2c3, x0	// Write all 0s to CSR
	csrrs x12, 0x2c3, x6	// Set all CSR bits
	csrrc x12, 0x2c3, x6	// Clear all CSR bits
	csrrw x12, 0x2c3, x31	// Restore CSR

// Testing CSR 0x2c4
	csrr x26, 0x2c4	// Read CSR
	li x19, -1
	csrrw x27, 0x2c4, x19	// Write all 1s to CSR
	csrrw x27, 0x2c4, x0	// Write all 0s to CSR
	csrrs x27, 0x2c4, x19	// Set all CSR bits
	csrrc x27, 0x2c4, x19	// Clear all CSR bits
	csrrw x27, 0x2c4, x26	// Restore CSR

// Testing CSR 0x2c5
	csrr x3, 0x2c5	// Read CSR
	li x6, -1
	csrrw x18, 0x2c5, x6	// Write all 1s to CSR
	csrrw x18, 0x2c5, x0	// Write all 0s to CSR
	csrrs x18, 0x2c5, x6	// Set all CSR bits
	csrrc x18, 0x2c5, x6	// Clear all CSR bits
	csrrw x18, 0x2c5, x3	// Restore CSR

// Testing CSR 0x2c6
	csrr x27, 0x2c6	// Read CSR
	li x9, -1
	csrrw x7, 0x2c6, x9	// Write all 1s to CSR
	csrrw x7, 0x2c6, x0	// Write all 0s to CSR
	csrrs x7, 0x2c6, x9	// Set all CSR bits
	csrrc x7, 0x2c6, x9	// Clear all CSR bits
	csrrw x7, 0x2c6, x27	// Restore CSR

// Testing CSR 0x2c7
	csrr x26, 0x2c7	// Read CSR
	li x9, -1
	csrrw x11, 0x2c7, x9	// Write all 1s to CSR
	csrrw x11, 0x2c7, x0	// Write all 0s to CSR
	csrrs x11, 0x2c7, x9	// Set all CSR bits
	csrrc x11, 0x2c7, x9	// Clear all CSR bits
	csrrw x11, 0x2c7, x26	// Restore CSR

// Testing CSR 0x2c8
	csrr x23, 0x2c8	// Read CSR
	li x26, -1
	csrrw x9, 0x2c8, x26	// Write all 1s to CSR
	csrrw x9, 0x2c8, x0	// Write all 0s to CSR
	csrrs x9, 0x2c8, x26	// Set all CSR bits
	csrrc x9, 0x2c8, x26	// Clear all CSR bits
	csrrw x9, 0x2c8, x23	// Restore CSR

// Testing CSR 0x2c9
	csrr x9, 0x2c9	// Read CSR
	li x17, -1
	csrrw x30, 0x2c9, x17	// Write all 1s to CSR
	csrrw x30, 0x2c9, x0	// Write all 0s to CSR
	csrrs x30, 0x2c9, x17	// Set all CSR bits
	csrrc x30, 0x2c9, x17	// Clear all CSR bits
	csrrw x30, 0x2c9, x9	// Restore CSR

// Testing CSR 0x2ca
	csrr x15, 0x2ca	// Read CSR
	li x30, -1
	csrrw x5, 0x2ca, x30	// Write all 1s to CSR
	csrrw x5, 0x2ca, x0	// Write all 0s to CSR
	csrrs x5, 0x2ca, x30	// Set all CSR bits
	csrrc x5, 0x2ca, x30	// Clear all CSR bits
	csrrw x5, 0x2ca, x15	// Restore CSR

// Testing CSR 0x2cb
	csrr x25, 0x2cb	// Read CSR
	li x29, -1
	csrrw x15, 0x2cb, x29	// Write all 1s to CSR
	csrrw x15, 0x2cb, x0	// Write all 0s to CSR
	csrrs x15, 0x2cb, x29	// Set all CSR bits
	csrrc x15, 0x2cb, x29	// Clear all CSR bits
	csrrw x15, 0x2cb, x25	// Restore CSR

// Testing CSR 0x2cc
	csrr x18, 0x2cc	// Read CSR
	li x5, -1
	csrrw x2, 0x2cc, x5	// Write all 1s to CSR
	csrrw x2, 0x2cc, x0	// Write all 0s to CSR
	csrrs x2, 0x2cc, x5	// Set all CSR bits
	csrrc x2, 0x2cc, x5	// Clear all CSR bits
	csrrw x2, 0x2cc, x18	// Restore CSR

// Testing CSR 0x2cd
	csrr x21, 0x2cd	// Read CSR
	li x19, -1
	csrrw x6, 0x2cd, x19	// Write all 1s to CSR
	csrrw x6, 0x2cd, x0	// Write all 0s to CSR
	csrrs x6, 0x2cd, x19	// Set all CSR bits
	csrrc x6, 0x2cd, x19	// Clear all CSR bits
	csrrw x6, 0x2cd, x21	// Restore CSR

// Testing CSR 0x2ce
	csrr x21, 0x2ce	// Read CSR
	li x17, -1
	csrrw x2, 0x2ce, x17	// Write all 1s to CSR
	csrrw x2, 0x2ce, x0	// Write all 0s to CSR
	csrrs x2, 0x2ce, x17	// Set all CSR bits
	csrrc x2, 0x2ce, x17	// Clear all CSR bits
	csrrw x2, 0x2ce, x21	// Restore CSR

// Testing CSR 0x2cf
	csrr x29, 0x2cf	// Read CSR
	li x25, -1
	csrrw x11, 0x2cf, x25	// Write all 1s to CSR
	csrrw x11, 0x2cf, x0	// Write all 0s to CSR
	csrrs x11, 0x2cf, x25	// Set all CSR bits
	csrrc x11, 0x2cf, x25	// Clear all CSR bits
	csrrw x11, 0x2cf, x29	// Restore CSR

// Testing CSR 0x2d0
	csrr x27, 0x2d0	// Read CSR
	li x31, -1
	csrrw x3, 0x2d0, x31	// Write all 1s to CSR
	csrrw x3, 0x2d0, x0	// Write all 0s to CSR
	csrrs x3, 0x2d0, x31	// Set all CSR bits
	csrrc x3, 0x2d0, x31	// Clear all CSR bits
	csrrw x3, 0x2d0, x27	// Restore CSR

// Testing CSR 0x2d1
	csrr x7, 0x2d1	// Read CSR
	li x21, -1
	csrrw x26, 0x2d1, x21	// Write all 1s to CSR
	csrrw x26, 0x2d1, x0	// Write all 0s to CSR
	csrrs x26, 0x2d1, x21	// Set all CSR bits
	csrrc x26, 0x2d1, x21	// Clear all CSR bits
	csrrw x26, 0x2d1, x7	// Restore CSR

// Testing CSR 0x2d2
	csrr x15, 0x2d2	// Read CSR
	li x20, -1
	csrrw x8, 0x2d2, x20	// Write all 1s to CSR
	csrrw x8, 0x2d2, x0	// Write all 0s to CSR
	csrrs x8, 0x2d2, x20	// Set all CSR bits
	csrrc x8, 0x2d2, x20	// Clear all CSR bits
	csrrw x8, 0x2d2, x15	// Restore CSR

// Testing CSR 0x2d3
	csrr x26, 0x2d3	// Read CSR
	li x15, -1
	csrrw x17, 0x2d3, x15	// Write all 1s to CSR
	csrrw x17, 0x2d3, x0	// Write all 0s to CSR
	csrrs x17, 0x2d3, x15	// Set all CSR bits
	csrrc x17, 0x2d3, x15	// Clear all CSR bits
	csrrw x17, 0x2d3, x26	// Restore CSR

// Testing CSR 0x2d4
	csrr x6, 0x2d4	// Read CSR
	li x23, -1
	csrrw x11, 0x2d4, x23	// Write all 1s to CSR
	csrrw x11, 0x2d4, x0	// Write all 0s to CSR
	csrrs x11, 0x2d4, x23	// Set all CSR bits
	csrrc x11, 0x2d4, x23	// Clear all CSR bits
	csrrw x11, 0x2d4, x6	// Restore CSR

// Testing CSR 0x2d5
	csrr x30, 0x2d5	// Read CSR
	li x21, -1
	csrrw x5, 0x2d5, x21	// Write all 1s to CSR
	csrrw x5, 0x2d5, x0	// Write all 0s to CSR
	csrrs x5, 0x2d5, x21	// Set all CSR bits
	csrrc x5, 0x2d5, x21	// Clear all CSR bits
	csrrw x5, 0x2d5, x30	// Restore CSR

// Testing CSR 0x2d6
	csrr x16, 0x2d6	// Read CSR
	li x25, -1
	csrrw x18, 0x2d6, x25	// Write all 1s to CSR
	csrrw x18, 0x2d6, x0	// Write all 0s to CSR
	csrrs x18, 0x2d6, x25	// Set all CSR bits
	csrrc x18, 0x2d6, x25	// Clear all CSR bits
	csrrw x18, 0x2d6, x16	// Restore CSR

// Testing CSR 0x2d7
	csrr x2, 0x2d7	// Read CSR
	li x18, -1
	csrrw x3, 0x2d7, x18	// Write all 1s to CSR
	csrrw x3, 0x2d7, x0	// Write all 0s to CSR
	csrrs x3, 0x2d7, x18	// Set all CSR bits
	csrrc x3, 0x2d7, x18	// Clear all CSR bits
	csrrw x3, 0x2d7, x2	// Restore CSR

// Testing CSR 0x2d8
	csrr x27, 0x2d8	// Read CSR
	li x17, -1
	csrrw x11, 0x2d8, x17	// Write all 1s to CSR
	csrrw x11, 0x2d8, x0	// Write all 0s to CSR
	csrrs x11, 0x2d8, x17	// Set all CSR bits
	csrrc x11, 0x2d8, x17	// Clear all CSR bits
	csrrw x11, 0x2d8, x27	// Restore CSR

// Testing CSR 0x2d9
	csrr x1, 0x2d9	// Read CSR
	li x27, -1
	csrrw x25, 0x2d9, x27	// Write all 1s to CSR
	csrrw x25, 0x2d9, x0	// Write all 0s to CSR
	csrrs x25, 0x2d9, x27	// Set all CSR bits
	csrrc x25, 0x2d9, x27	// Clear all CSR bits
	csrrw x25, 0x2d9, x1	// Restore CSR

// Testing CSR 0x2da
	csrr x3, 0x2da	// Read CSR
	li x4, -1
	csrrw x14, 0x2da, x4	// Write all 1s to CSR
	csrrw x14, 0x2da, x0	// Write all 0s to CSR
	csrrs x14, 0x2da, x4	// Set all CSR bits
	csrrc x14, 0x2da, x4	// Clear all CSR bits
	csrrw x14, 0x2da, x3	// Restore CSR

// Testing CSR 0x2db
	csrr x20, 0x2db	// Read CSR
	li x12, -1
	csrrw x19, 0x2db, x12	// Write all 1s to CSR
	csrrw x19, 0x2db, x0	// Write all 0s to CSR
	csrrs x19, 0x2db, x12	// Set all CSR bits
	csrrc x19, 0x2db, x12	// Clear all CSR bits
	csrrw x19, 0x2db, x20	// Restore CSR

// Testing CSR 0x2dc
	csrr x15, 0x2dc	// Read CSR
	li x11, -1
	csrrw x27, 0x2dc, x11	// Write all 1s to CSR
	csrrw x27, 0x2dc, x0	// Write all 0s to CSR
	csrrs x27, 0x2dc, x11	// Set all CSR bits
	csrrc x27, 0x2dc, x11	// Clear all CSR bits
	csrrw x27, 0x2dc, x15	// Restore CSR

// Testing CSR 0x2dd
	csrr x13, 0x2dd	// Read CSR
	li x17, -1
	csrrw x12, 0x2dd, x17	// Write all 1s to CSR
	csrrw x12, 0x2dd, x0	// Write all 0s to CSR
	csrrs x12, 0x2dd, x17	// Set all CSR bits
	csrrc x12, 0x2dd, x17	// Clear all CSR bits
	csrrw x12, 0x2dd, x13	// Restore CSR

// Testing CSR 0x2de
	csrr x27, 0x2de	// Read CSR
	li x28, -1
	csrrw x21, 0x2de, x28	// Write all 1s to CSR
	csrrw x21, 0x2de, x0	// Write all 0s to CSR
	csrrs x21, 0x2de, x28	// Set all CSR bits
	csrrc x21, 0x2de, x28	// Clear all CSR bits
	csrrw x21, 0x2de, x27	// Restore CSR

// Testing CSR 0x2df
	csrr x4, 0x2df	// Read CSR
	li x5, -1
	csrrw x11, 0x2df, x5	// Write all 1s to CSR
	csrrw x11, 0x2df, x0	// Write all 0s to CSR
	csrrs x11, 0x2df, x5	// Set all CSR bits
	csrrc x11, 0x2df, x5	// Clear all CSR bits
	csrrw x11, 0x2df, x4	// Restore CSR

// Testing CSR 0x2e0
	csrr x30, 0x2e0	// Read CSR
	li x1, -1
	csrrw x6, 0x2e0, x1	// Write all 1s to CSR
	csrrw x6, 0x2e0, x0	// Write all 0s to CSR
	csrrs x6, 0x2e0, x1	// Set all CSR bits
	csrrc x6, 0x2e0, x1	// Clear all CSR bits
	csrrw x6, 0x2e0, x30	// Restore CSR

// Testing CSR 0x2e1
	csrr x24, 0x2e1	// Read CSR
	li x5, -1
	csrrw x1, 0x2e1, x5	// Write all 1s to CSR
	csrrw x1, 0x2e1, x0	// Write all 0s to CSR
	csrrs x1, 0x2e1, x5	// Set all CSR bits
	csrrc x1, 0x2e1, x5	// Clear all CSR bits
	csrrw x1, 0x2e1, x24	// Restore CSR

// Testing CSR 0x2e2
	csrr x11, 0x2e2	// Read CSR
	li x29, -1
	csrrw x20, 0x2e2, x29	// Write all 1s to CSR
	csrrw x20, 0x2e2, x0	// Write all 0s to CSR
	csrrs x20, 0x2e2, x29	// Set all CSR bits
	csrrc x20, 0x2e2, x29	// Clear all CSR bits
	csrrw x20, 0x2e2, x11	// Restore CSR

// Testing CSR 0x2e3
	csrr x7, 0x2e3	// Read CSR
	li x2, -1
	csrrw x14, 0x2e3, x2	// Write all 1s to CSR
	csrrw x14, 0x2e3, x0	// Write all 0s to CSR
	csrrs x14, 0x2e3, x2	// Set all CSR bits
	csrrc x14, 0x2e3, x2	// Clear all CSR bits
	csrrw x14, 0x2e3, x7	// Restore CSR

// Testing CSR 0x2e4
	csrr x21, 0x2e4	// Read CSR
	li x2, -1
	csrrw x23, 0x2e4, x2	// Write all 1s to CSR
	csrrw x23, 0x2e4, x0	// Write all 0s to CSR
	csrrs x23, 0x2e4, x2	// Set all CSR bits
	csrrc x23, 0x2e4, x2	// Clear all CSR bits
	csrrw x23, 0x2e4, x21	// Restore CSR

// Testing CSR 0x2e5
	csrr x10, 0x2e5	// Read CSR
	li x26, -1
	csrrw x13, 0x2e5, x26	// Write all 1s to CSR
	csrrw x13, 0x2e5, x0	// Write all 0s to CSR
	csrrs x13, 0x2e5, x26	// Set all CSR bits
	csrrc x13, 0x2e5, x26	// Clear all CSR bits
	csrrw x13, 0x2e5, x10	// Restore CSR

// Testing CSR 0x2e6
	csrr x30, 0x2e6	// Read CSR
	li x2, -1
	csrrw x20, 0x2e6, x2	// Write all 1s to CSR
	csrrw x20, 0x2e6, x0	// Write all 0s to CSR
	csrrs x20, 0x2e6, x2	// Set all CSR bits
	csrrc x20, 0x2e6, x2	// Clear all CSR bits
	csrrw x20, 0x2e6, x30	// Restore CSR

// Testing CSR 0x2e7
	csrr x25, 0x2e7	// Read CSR
	li x26, -1
	csrrw x23, 0x2e7, x26	// Write all 1s to CSR
	csrrw x23, 0x2e7, x0	// Write all 0s to CSR
	csrrs x23, 0x2e7, x26	// Set all CSR bits
	csrrc x23, 0x2e7, x26	// Clear all CSR bits
	csrrw x23, 0x2e7, x25	// Restore CSR

// Testing CSR 0x2e8
	csrr x6, 0x2e8	// Read CSR
	li x12, -1
	csrrw x30, 0x2e8, x12	// Write all 1s to CSR
	csrrw x30, 0x2e8, x0	// Write all 0s to CSR
	csrrs x30, 0x2e8, x12	// Set all CSR bits
	csrrc x30, 0x2e8, x12	// Clear all CSR bits
	csrrw x30, 0x2e8, x6	// Restore CSR

// Testing CSR 0x2e9
	csrr x27, 0x2e9	// Read CSR
	li x30, -1
	csrrw x3, 0x2e9, x30	// Write all 1s to CSR
	csrrw x3, 0x2e9, x0	// Write all 0s to CSR
	csrrs x3, 0x2e9, x30	// Set all CSR bits
	csrrc x3, 0x2e9, x30	// Clear all CSR bits
	csrrw x3, 0x2e9, x27	// Restore CSR

// Testing CSR 0x2ea
	csrr x14, 0x2ea	// Read CSR
	li x2, -1
	csrrw x15, 0x2ea, x2	// Write all 1s to CSR
	csrrw x15, 0x2ea, x0	// Write all 0s to CSR
	csrrs x15, 0x2ea, x2	// Set all CSR bits
	csrrc x15, 0x2ea, x2	// Clear all CSR bits
	csrrw x15, 0x2ea, x14	// Restore CSR

// Testing CSR 0x2eb
	csrr x12, 0x2eb	// Read CSR
	li x20, -1
	csrrw x29, 0x2eb, x20	// Write all 1s to CSR
	csrrw x29, 0x2eb, x0	// Write all 0s to CSR
	csrrs x29, 0x2eb, x20	// Set all CSR bits
	csrrc x29, 0x2eb, x20	// Clear all CSR bits
	csrrw x29, 0x2eb, x12	// Restore CSR

// Testing CSR 0x2ec
	csrr x20, 0x2ec	// Read CSR
	li x25, -1
	csrrw x9, 0x2ec, x25	// Write all 1s to CSR
	csrrw x9, 0x2ec, x0	// Write all 0s to CSR
	csrrs x9, 0x2ec, x25	// Set all CSR bits
	csrrc x9, 0x2ec, x25	// Clear all CSR bits
	csrrw x9, 0x2ec, x20	// Restore CSR

// Testing CSR 0x2ed
	csrr x22, 0x2ed	// Read CSR
	li x10, -1
	csrrw x19, 0x2ed, x10	// Write all 1s to CSR
	csrrw x19, 0x2ed, x0	// Write all 0s to CSR
	csrrs x19, 0x2ed, x10	// Set all CSR bits
	csrrc x19, 0x2ed, x10	// Clear all CSR bits
	csrrw x19, 0x2ed, x22	// Restore CSR

// Testing CSR 0x2ee
	csrr x28, 0x2ee	// Read CSR
	li x26, -1
	csrrw x15, 0x2ee, x26	// Write all 1s to CSR
	csrrw x15, 0x2ee, x0	// Write all 0s to CSR
	csrrs x15, 0x2ee, x26	// Set all CSR bits
	csrrc x15, 0x2ee, x26	// Clear all CSR bits
	csrrw x15, 0x2ee, x28	// Restore CSR

// Testing CSR 0x2ef
	csrr x14, 0x2ef	// Read CSR
	li x6, -1
	csrrw x1, 0x2ef, x6	// Write all 1s to CSR
	csrrw x1, 0x2ef, x0	// Write all 0s to CSR
	csrrs x1, 0x2ef, x6	// Set all CSR bits
	csrrc x1, 0x2ef, x6	// Clear all CSR bits
	csrrw x1, 0x2ef, x14	// Restore CSR

// Testing CSR 0x2f0
	csrr x15, 0x2f0	// Read CSR
	li x26, -1
	csrrw x9, 0x2f0, x26	// Write all 1s to CSR
	csrrw x9, 0x2f0, x0	// Write all 0s to CSR
	csrrs x9, 0x2f0, x26	// Set all CSR bits
	csrrc x9, 0x2f0, x26	// Clear all CSR bits
	csrrw x9, 0x2f0, x15	// Restore CSR

// Testing CSR 0x2f1
	csrr x7, 0x2f1	// Read CSR
	li x31, -1
	csrrw x13, 0x2f1, x31	// Write all 1s to CSR
	csrrw x13, 0x2f1, x0	// Write all 0s to CSR
	csrrs x13, 0x2f1, x31	// Set all CSR bits
	csrrc x13, 0x2f1, x31	// Clear all CSR bits
	csrrw x13, 0x2f1, x7	// Restore CSR

// Testing CSR 0x2f2
	csrr x3, 0x2f2	// Read CSR
	li x12, -1
	csrrw x4, 0x2f2, x12	// Write all 1s to CSR
	csrrw x4, 0x2f2, x0	// Write all 0s to CSR
	csrrs x4, 0x2f2, x12	// Set all CSR bits
	csrrc x4, 0x2f2, x12	// Clear all CSR bits
	csrrw x4, 0x2f2, x3	// Restore CSR

// Testing CSR 0x2f3
	csrr x4, 0x2f3	// Read CSR
	li x1, -1
	csrrw x12, 0x2f3, x1	// Write all 1s to CSR
	csrrw x12, 0x2f3, x0	// Write all 0s to CSR
	csrrs x12, 0x2f3, x1	// Set all CSR bits
	csrrc x12, 0x2f3, x1	// Clear all CSR bits
	csrrw x12, 0x2f3, x4	// Restore CSR

// Testing CSR 0x2f4
	csrr x1, 0x2f4	// Read CSR
	li x6, -1
	csrrw x13, 0x2f4, x6	// Write all 1s to CSR
	csrrw x13, 0x2f4, x0	// Write all 0s to CSR
	csrrs x13, 0x2f4, x6	// Set all CSR bits
	csrrc x13, 0x2f4, x6	// Clear all CSR bits
	csrrw x13, 0x2f4, x1	// Restore CSR

// Testing CSR 0x2f5
	csrr x20, 0x2f5	// Read CSR
	li x23, -1
	csrrw x21, 0x2f5, x23	// Write all 1s to CSR
	csrrw x21, 0x2f5, x0	// Write all 0s to CSR
	csrrs x21, 0x2f5, x23	// Set all CSR bits
	csrrc x21, 0x2f5, x23	// Clear all CSR bits
	csrrw x21, 0x2f5, x20	// Restore CSR

// Testing CSR 0x2f6
	csrr x29, 0x2f6	// Read CSR
	li x1, -1
	csrrw x11, 0x2f6, x1	// Write all 1s to CSR
	csrrw x11, 0x2f6, x0	// Write all 0s to CSR
	csrrs x11, 0x2f6, x1	// Set all CSR bits
	csrrc x11, 0x2f6, x1	// Clear all CSR bits
	csrrw x11, 0x2f6, x29	// Restore CSR

// Testing CSR 0x2f7
	csrr x15, 0x2f7	// Read CSR
	li x26, -1
	csrrw x18, 0x2f7, x26	// Write all 1s to CSR
	csrrw x18, 0x2f7, x0	// Write all 0s to CSR
	csrrs x18, 0x2f7, x26	// Set all CSR bits
	csrrc x18, 0x2f7, x26	// Clear all CSR bits
	csrrw x18, 0x2f7, x15	// Restore CSR

// Testing CSR 0x2f8
	csrr x24, 0x2f8	// Read CSR
	li x28, -1
	csrrw x23, 0x2f8, x28	// Write all 1s to CSR
	csrrw x23, 0x2f8, x0	// Write all 0s to CSR
	csrrs x23, 0x2f8, x28	// Set all CSR bits
	csrrc x23, 0x2f8, x28	// Clear all CSR bits
	csrrw x23, 0x2f8, x24	// Restore CSR

// Testing CSR 0x2f9
	csrr x16, 0x2f9	// Read CSR
	li x28, -1
	csrrw x3, 0x2f9, x28	// Write all 1s to CSR
	csrrw x3, 0x2f9, x0	// Write all 0s to CSR
	csrrs x3, 0x2f9, x28	// Set all CSR bits
	csrrc x3, 0x2f9, x28	// Clear all CSR bits
	csrrw x3, 0x2f9, x16	// Restore CSR

// Testing CSR 0x2fa
	csrr x2, 0x2fa	// Read CSR
	li x18, -1
	csrrw x28, 0x2fa, x18	// Write all 1s to CSR
	csrrw x28, 0x2fa, x0	// Write all 0s to CSR
	csrrs x28, 0x2fa, x18	// Set all CSR bits
	csrrc x28, 0x2fa, x18	// Clear all CSR bits
	csrrw x28, 0x2fa, x2	// Restore CSR

// Testing CSR 0x2fb
	csrr x13, 0x2fb	// Read CSR
	li x26, -1
	csrrw x28, 0x2fb, x26	// Write all 1s to CSR
	csrrw x28, 0x2fb, x0	// Write all 0s to CSR
	csrrs x28, 0x2fb, x26	// Set all CSR bits
	csrrc x28, 0x2fb, x26	// Clear all CSR bits
	csrrw x28, 0x2fb, x13	// Restore CSR

// Testing CSR 0x2fc
	csrr x30, 0x2fc	// Read CSR
	li x9, -1
	csrrw x1, 0x2fc, x9	// Write all 1s to CSR
	csrrw x1, 0x2fc, x0	// Write all 0s to CSR
	csrrs x1, 0x2fc, x9	// Set all CSR bits
	csrrc x1, 0x2fc, x9	// Clear all CSR bits
	csrrw x1, 0x2fc, x30	// Restore CSR

// Testing CSR 0x2fd
	csrr x21, 0x2fd	// Read CSR
	li x17, -1
	csrrw x4, 0x2fd, x17	// Write all 1s to CSR
	csrrw x4, 0x2fd, x0	// Write all 0s to CSR
	csrrs x4, 0x2fd, x17	// Set all CSR bits
	csrrc x4, 0x2fd, x17	// Clear all CSR bits
	csrrw x4, 0x2fd, x21	// Restore CSR

// Testing CSR 0x2fe
	csrr x27, 0x2fe	// Read CSR
	li x11, -1
	csrrw x3, 0x2fe, x11	// Write all 1s to CSR
	csrrw x3, 0x2fe, x0	// Write all 0s to CSR
	csrrs x3, 0x2fe, x11	// Set all CSR bits
	csrrc x3, 0x2fe, x11	// Clear all CSR bits
	csrrw x3, 0x2fe, x27	// Restore CSR

// Testing CSR 0x2ff
	csrr x12, 0x2ff	// Read CSR
	li x31, -1
	csrrw x4, 0x2ff, x31	// Write all 1s to CSR
	csrrw x4, 0x2ff, x0	// Write all 0s to CSR
	csrrs x4, 0x2ff, x31	// Set all CSR bits
	csrrc x4, 0x2ff, x31	// Clear all CSR bits
	csrrw x4, 0x2ff, x12	// Restore CSR

// Testing CSR 0x300
	csrr x16, 0x300	// Read CSR
	li x31, -1
	csrrw x2, 0x300, x31	// Write all 1s to CSR
	csrrw x2, 0x300, x0	// Write all 0s to CSR
	csrrs x2, 0x300, x31	// Set all CSR bits
	csrrc x2, 0x300, x31	// Clear all CSR bits
	csrrw x2, 0x300, x16	// Restore CSR

// Testing CSR 0x301
	csrr x5, 0x301	// Read CSR
	li x30, -1
	csrrw x17, 0x301, x30	// Write all 1s to CSR
	csrrw x17, 0x301, x0	// Write all 0s to CSR
	csrrs x17, 0x301, x30	// Set all CSR bits
	csrrc x17, 0x301, x30	// Clear all CSR bits
	csrrw x17, 0x301, x5	// Restore CSR

// Testing CSR 0x302
	csrr x21, 0x302	// Read CSR
	li x26, -1
	csrrw x10, 0x302, x26	// Write all 1s to CSR
	csrrw x10, 0x302, x0	// Write all 0s to CSR
	csrrs x10, 0x302, x26	// Set all CSR bits
	csrrc x10, 0x302, x26	// Clear all CSR bits
	csrrw x10, 0x302, x21	// Restore CSR

// Testing CSR 0x303
	csrr x31, 0x303	// Read CSR
	li x2, -1
	csrrw x1, 0x303, x2	// Write all 1s to CSR
	csrrw x1, 0x303, x0	// Write all 0s to CSR
	csrrs x1, 0x303, x2	// Set all CSR bits
	csrrc x1, 0x303, x2	// Clear all CSR bits
	csrrw x1, 0x303, x31	// Restore CSR

// Testing CSR 0x304
	csrr x13, 0x304	// Read CSR
	li x11, -1
	csrrw x6, 0x304, x11	// Write all 1s to CSR
	csrrw x6, 0x304, x0	// Write all 0s to CSR
	csrrs x6, 0x304, x11	// Set all CSR bits
	csrrc x6, 0x304, x11	// Clear all CSR bits
	csrrw x6, 0x304, x13	// Restore CSR

// Testing CSR 0x305
	csrr x31, 0x305	// Read CSR
	li x18, -1
	csrrw x23, 0x305, x18	// Write all 1s to CSR
	csrrw x23, 0x305, x0	// Write all 0s to CSR
	csrrs x23, 0x305, x18	// Set all CSR bits
	csrrc x23, 0x305, x18	// Clear all CSR bits
	csrrw x23, 0x305, x31	// Restore CSR

// Testing CSR 0x306
	csrr x5, 0x306	// Read CSR
	li x6, -1
	csrrw x25, 0x306, x6	// Write all 1s to CSR
	csrrw x25, 0x306, x0	// Write all 0s to CSR
	csrrs x25, 0x306, x6	// Set all CSR bits
	csrrc x25, 0x306, x6	// Clear all CSR bits
	csrrw x25, 0x306, x5	// Restore CSR

// Testing CSR 0x307
	csrr x30, 0x307	// Read CSR
	li x6, -1
	csrrw x21, 0x307, x6	// Write all 1s to CSR
	csrrw x21, 0x307, x0	// Write all 0s to CSR
	csrrs x21, 0x307, x6	// Set all CSR bits
	csrrc x21, 0x307, x6	// Clear all CSR bits
	csrrw x21, 0x307, x30	// Restore CSR

// Testing CSR 0x308
	csrr x22, 0x308	// Read CSR
	li x8, -1
	csrrw x31, 0x308, x8	// Write all 1s to CSR
	csrrw x31, 0x308, x0	// Write all 0s to CSR
	csrrs x31, 0x308, x8	// Set all CSR bits
	csrrc x31, 0x308, x8	// Clear all CSR bits
	csrrw x31, 0x308, x22	// Restore CSR

// Testing CSR 0x309
	csrr x29, 0x309	// Read CSR
	li x30, -1
	csrrw x20, 0x309, x30	// Write all 1s to CSR
	csrrw x20, 0x309, x0	// Write all 0s to CSR
	csrrs x20, 0x309, x30	// Set all CSR bits
	csrrc x20, 0x309, x30	// Clear all CSR bits
	csrrw x20, 0x309, x29	// Restore CSR

// Testing CSR 0x30a
	csrr x11, 0x30a	// Read CSR
	li x31, -1
	csrrw x1, 0x30a, x31	// Write all 1s to CSR
	csrrw x1, 0x30a, x0	// Write all 0s to CSR
	csrrs x1, 0x30a, x31	// Set all CSR bits
	csrrc x1, 0x30a, x31	// Clear all CSR bits
	csrrw x1, 0x30a, x11	// Restore CSR

// Testing CSR 0x30b
	csrr x16, 0x30b	// Read CSR
	li x31, -1
	csrrw x29, 0x30b, x31	// Write all 1s to CSR
	csrrw x29, 0x30b, x0	// Write all 0s to CSR
	csrrs x29, 0x30b, x31	// Set all CSR bits
	csrrc x29, 0x30b, x31	// Clear all CSR bits
	csrrw x29, 0x30b, x16	// Restore CSR

// Testing CSR 0x30c
	csrr x21, 0x30c	// Read CSR
	li x22, -1
	csrrw x13, 0x30c, x22	// Write all 1s to CSR
	csrrw x13, 0x30c, x0	// Write all 0s to CSR
	csrrs x13, 0x30c, x22	// Set all CSR bits
	csrrc x13, 0x30c, x22	// Clear all CSR bits
	csrrw x13, 0x30c, x21	// Restore CSR

// Testing CSR 0x30d
	csrr x2, 0x30d	// Read CSR
	li x8, -1
	csrrw x21, 0x30d, x8	// Write all 1s to CSR
	csrrw x21, 0x30d, x0	// Write all 0s to CSR
	csrrs x21, 0x30d, x8	// Set all CSR bits
	csrrc x21, 0x30d, x8	// Clear all CSR bits
	csrrw x21, 0x30d, x2	// Restore CSR

// Testing CSR 0x30e
	csrr x10, 0x30e	// Read CSR
	li x11, -1
	csrrw x6, 0x30e, x11	// Write all 1s to CSR
	csrrw x6, 0x30e, x0	// Write all 0s to CSR
	csrrs x6, 0x30e, x11	// Set all CSR bits
	csrrc x6, 0x30e, x11	// Clear all CSR bits
	csrrw x6, 0x30e, x10	// Restore CSR

// Testing CSR 0x30f
	csrr x31, 0x30f	// Read CSR
	li x8, -1
	csrrw x12, 0x30f, x8	// Write all 1s to CSR
	csrrw x12, 0x30f, x0	// Write all 0s to CSR
	csrrs x12, 0x30f, x8	// Set all CSR bits
	csrrc x12, 0x30f, x8	// Clear all CSR bits
	csrrw x12, 0x30f, x31	// Restore CSR

// Testing CSR 0x310
	csrr x8, 0x310	// Read CSR
	li x6, -1
	csrrw x29, 0x310, x6	// Write all 1s to CSR
	csrrw x29, 0x310, x0	// Write all 0s to CSR
	csrrs x29, 0x310, x6	// Set all CSR bits
	csrrc x29, 0x310, x6	// Clear all CSR bits
	csrrw x29, 0x310, x8	// Restore CSR

// Testing CSR 0x311
	csrr x14, 0x311	// Read CSR
	li x15, -1
	csrrw x12, 0x311, x15	// Write all 1s to CSR
	csrrw x12, 0x311, x0	// Write all 0s to CSR
	csrrs x12, 0x311, x15	// Set all CSR bits
	csrrc x12, 0x311, x15	// Clear all CSR bits
	csrrw x12, 0x311, x14	// Restore CSR

// Testing CSR 0x312
	csrr x29, 0x312	// Read CSR
	li x19, -1
	csrrw x5, 0x312, x19	// Write all 1s to CSR
	csrrw x5, 0x312, x0	// Write all 0s to CSR
	csrrs x5, 0x312, x19	// Set all CSR bits
	csrrc x5, 0x312, x19	// Clear all CSR bits
	csrrw x5, 0x312, x29	// Restore CSR

// Testing CSR 0x313
	csrr x13, 0x313	// Read CSR
	li x19, -1
	csrrw x25, 0x313, x19	// Write all 1s to CSR
	csrrw x25, 0x313, x0	// Write all 0s to CSR
	csrrs x25, 0x313, x19	// Set all CSR bits
	csrrc x25, 0x313, x19	// Clear all CSR bits
	csrrw x25, 0x313, x13	// Restore CSR

// Testing CSR 0x314
	csrr x1, 0x314	// Read CSR
	li x6, -1
	csrrw x30, 0x314, x6	// Write all 1s to CSR
	csrrw x30, 0x314, x0	// Write all 0s to CSR
	csrrs x30, 0x314, x6	// Set all CSR bits
	csrrc x30, 0x314, x6	// Clear all CSR bits
	csrrw x30, 0x314, x1	// Restore CSR

// Testing CSR 0x315
	csrr x19, 0x315	// Read CSR
	li x1, -1
	csrrw x22, 0x315, x1	// Write all 1s to CSR
	csrrw x22, 0x315, x0	// Write all 0s to CSR
	csrrs x22, 0x315, x1	// Set all CSR bits
	csrrc x22, 0x315, x1	// Clear all CSR bits
	csrrw x22, 0x315, x19	// Restore CSR

// Testing CSR 0x316
	csrr x13, 0x316	// Read CSR
	li x23, -1
	csrrw x26, 0x316, x23	// Write all 1s to CSR
	csrrw x26, 0x316, x0	// Write all 0s to CSR
	csrrs x26, 0x316, x23	// Set all CSR bits
	csrrc x26, 0x316, x23	// Clear all CSR bits
	csrrw x26, 0x316, x13	// Restore CSR

// Testing CSR 0x317
	csrr x6, 0x317	// Read CSR
	li x5, -1
	csrrw x1, 0x317, x5	// Write all 1s to CSR
	csrrw x1, 0x317, x0	// Write all 0s to CSR
	csrrs x1, 0x317, x5	// Set all CSR bits
	csrrc x1, 0x317, x5	// Clear all CSR bits
	csrrw x1, 0x317, x6	// Restore CSR

// Testing CSR 0x318
	csrr x1, 0x318	// Read CSR
	li x27, -1
	csrrw x11, 0x318, x27	// Write all 1s to CSR
	csrrw x11, 0x318, x0	// Write all 0s to CSR
	csrrs x11, 0x318, x27	// Set all CSR bits
	csrrc x11, 0x318, x27	// Clear all CSR bits
	csrrw x11, 0x318, x1	// Restore CSR

// Testing CSR 0x319
	csrr x17, 0x319	// Read CSR
	li x1, -1
	csrrw x2, 0x319, x1	// Write all 1s to CSR
	csrrw x2, 0x319, x0	// Write all 0s to CSR
	csrrs x2, 0x319, x1	// Set all CSR bits
	csrrc x2, 0x319, x1	// Clear all CSR bits
	csrrw x2, 0x319, x17	// Restore CSR

// Testing CSR 0x31a
	csrr x2, 0x31a	// Read CSR
	li x25, -1
	csrrw x30, 0x31a, x25	// Write all 1s to CSR
	csrrw x30, 0x31a, x0	// Write all 0s to CSR
	csrrs x30, 0x31a, x25	// Set all CSR bits
	csrrc x30, 0x31a, x25	// Clear all CSR bits
	csrrw x30, 0x31a, x2	// Restore CSR

// Testing CSR 0x31b
	csrr x4, 0x31b	// Read CSR
	li x19, -1
	csrrw x20, 0x31b, x19	// Write all 1s to CSR
	csrrw x20, 0x31b, x0	// Write all 0s to CSR
	csrrs x20, 0x31b, x19	// Set all CSR bits
	csrrc x20, 0x31b, x19	// Clear all CSR bits
	csrrw x20, 0x31b, x4	// Restore CSR

// Testing CSR 0x31c
	csrr x5, 0x31c	// Read CSR
	li x25, -1
	csrrw x22, 0x31c, x25	// Write all 1s to CSR
	csrrw x22, 0x31c, x0	// Write all 0s to CSR
	csrrs x22, 0x31c, x25	// Set all CSR bits
	csrrc x22, 0x31c, x25	// Clear all CSR bits
	csrrw x22, 0x31c, x5	// Restore CSR

// Testing CSR 0x31d
	csrr x26, 0x31d	// Read CSR
	li x13, -1
	csrrw x1, 0x31d, x13	// Write all 1s to CSR
	csrrw x1, 0x31d, x0	// Write all 0s to CSR
	csrrs x1, 0x31d, x13	// Set all CSR bits
	csrrc x1, 0x31d, x13	// Clear all CSR bits
	csrrw x1, 0x31d, x26	// Restore CSR

// Testing CSR 0x31e
	csrr x14, 0x31e	// Read CSR
	li x30, -1
	csrrw x19, 0x31e, x30	// Write all 1s to CSR
	csrrw x19, 0x31e, x0	// Write all 0s to CSR
	csrrs x19, 0x31e, x30	// Set all CSR bits
	csrrc x19, 0x31e, x30	// Clear all CSR bits
	csrrw x19, 0x31e, x14	// Restore CSR

// Testing CSR 0x31f
	csrr x22, 0x31f	// Read CSR
	li x11, -1
	csrrw x23, 0x31f, x11	// Write all 1s to CSR
	csrrw x23, 0x31f, x0	// Write all 0s to CSR
	csrrs x23, 0x31f, x11	// Set all CSR bits
	csrrc x23, 0x31f, x11	// Clear all CSR bits
	csrrw x23, 0x31f, x22	// Restore CSR

// Testing CSR 0x320
	csrr x8, 0x320	// Read CSR
	li x30, -1
	csrrw x5, 0x320, x30	// Write all 1s to CSR
	csrrw x5, 0x320, x0	// Write all 0s to CSR
	csrrs x5, 0x320, x30	// Set all CSR bits
	csrrc x5, 0x320, x30	// Clear all CSR bits
	csrrw x5, 0x320, x8	// Restore CSR

// Testing CSR 0x321
	csrr x12, 0x321	// Read CSR
	li x17, -1
	csrrw x7, 0x321, x17	// Write all 1s to CSR
	csrrw x7, 0x321, x0	// Write all 0s to CSR
	csrrs x7, 0x321, x17	// Set all CSR bits
	csrrc x7, 0x321, x17	// Clear all CSR bits
	csrrw x7, 0x321, x12	// Restore CSR

// Testing CSR 0x322
	csrr x18, 0x322	// Read CSR
	li x13, -1
	csrrw x3, 0x322, x13	// Write all 1s to CSR
	csrrw x3, 0x322, x0	// Write all 0s to CSR
	csrrs x3, 0x322, x13	// Set all CSR bits
	csrrc x3, 0x322, x13	// Clear all CSR bits
	csrrw x3, 0x322, x18	// Restore CSR

// Testing CSR 0x323
	csrr x5, 0x323	// Read CSR
	li x14, -1
	csrrw x19, 0x323, x14	// Write all 1s to CSR
	csrrw x19, 0x323, x0	// Write all 0s to CSR
	csrrs x19, 0x323, x14	// Set all CSR bits
	csrrc x19, 0x323, x14	// Clear all CSR bits
	csrrw x19, 0x323, x5	// Restore CSR

// Testing CSR 0x324
	csrr x22, 0x324	// Read CSR
	li x12, -1
	csrrw x31, 0x324, x12	// Write all 1s to CSR
	csrrw x31, 0x324, x0	// Write all 0s to CSR
	csrrs x31, 0x324, x12	// Set all CSR bits
	csrrc x31, 0x324, x12	// Clear all CSR bits
	csrrw x31, 0x324, x22	// Restore CSR

// Testing CSR 0x325
	csrr x4, 0x325	// Read CSR
	li x14, -1
	csrrw x29, 0x325, x14	// Write all 1s to CSR
	csrrw x29, 0x325, x0	// Write all 0s to CSR
	csrrs x29, 0x325, x14	// Set all CSR bits
	csrrc x29, 0x325, x14	// Clear all CSR bits
	csrrw x29, 0x325, x4	// Restore CSR

// Testing CSR 0x326
	csrr x14, 0x326	// Read CSR
	li x8, -1
	csrrw x16, 0x326, x8	// Write all 1s to CSR
	csrrw x16, 0x326, x0	// Write all 0s to CSR
	csrrs x16, 0x326, x8	// Set all CSR bits
	csrrc x16, 0x326, x8	// Clear all CSR bits
	csrrw x16, 0x326, x14	// Restore CSR

// Testing CSR 0x327
	csrr x13, 0x327	// Read CSR
	li x8, -1
	csrrw x30, 0x327, x8	// Write all 1s to CSR
	csrrw x30, 0x327, x0	// Write all 0s to CSR
	csrrs x30, 0x327, x8	// Set all CSR bits
	csrrc x30, 0x327, x8	// Clear all CSR bits
	csrrw x30, 0x327, x13	// Restore CSR

// Testing CSR 0x328
	csrr x13, 0x328	// Read CSR
	li x8, -1
	csrrw x21, 0x328, x8	// Write all 1s to CSR
	csrrw x21, 0x328, x0	// Write all 0s to CSR
	csrrs x21, 0x328, x8	// Set all CSR bits
	csrrc x21, 0x328, x8	// Clear all CSR bits
	csrrw x21, 0x328, x13	// Restore CSR

// Testing CSR 0x329
	csrr x16, 0x329	// Read CSR
	li x13, -1
	csrrw x30, 0x329, x13	// Write all 1s to CSR
	csrrw x30, 0x329, x0	// Write all 0s to CSR
	csrrs x30, 0x329, x13	// Set all CSR bits
	csrrc x30, 0x329, x13	// Clear all CSR bits
	csrrw x30, 0x329, x16	// Restore CSR

// Testing CSR 0x32a
	csrr x19, 0x32a	// Read CSR
	li x3, -1
	csrrw x27, 0x32a, x3	// Write all 1s to CSR
	csrrw x27, 0x32a, x0	// Write all 0s to CSR
	csrrs x27, 0x32a, x3	// Set all CSR bits
	csrrc x27, 0x32a, x3	// Clear all CSR bits
	csrrw x27, 0x32a, x19	// Restore CSR

// Testing CSR 0x32b
	csrr x9, 0x32b	// Read CSR
	li x17, -1
	csrrw x29, 0x32b, x17	// Write all 1s to CSR
	csrrw x29, 0x32b, x0	// Write all 0s to CSR
	csrrs x29, 0x32b, x17	// Set all CSR bits
	csrrc x29, 0x32b, x17	// Clear all CSR bits
	csrrw x29, 0x32b, x9	// Restore CSR

// Testing CSR 0x32c
	csrr x12, 0x32c	// Read CSR
	li x18, -1
	csrrw x1, 0x32c, x18	// Write all 1s to CSR
	csrrw x1, 0x32c, x0	// Write all 0s to CSR
	csrrs x1, 0x32c, x18	// Set all CSR bits
	csrrc x1, 0x32c, x18	// Clear all CSR bits
	csrrw x1, 0x32c, x12	// Restore CSR

// Testing CSR 0x32d
	csrr x20, 0x32d	// Read CSR
	li x16, -1
	csrrw x25, 0x32d, x16	// Write all 1s to CSR
	csrrw x25, 0x32d, x0	// Write all 0s to CSR
	csrrs x25, 0x32d, x16	// Set all CSR bits
	csrrc x25, 0x32d, x16	// Clear all CSR bits
	csrrw x25, 0x32d, x20	// Restore CSR

// Testing CSR 0x32e
	csrr x29, 0x32e	// Read CSR
	li x8, -1
	csrrw x9, 0x32e, x8	// Write all 1s to CSR
	csrrw x9, 0x32e, x0	// Write all 0s to CSR
	csrrs x9, 0x32e, x8	// Set all CSR bits
	csrrc x9, 0x32e, x8	// Clear all CSR bits
	csrrw x9, 0x32e, x29	// Restore CSR

// Testing CSR 0x32f
	csrr x2, 0x32f	// Read CSR
	li x20, -1
	csrrw x11, 0x32f, x20	// Write all 1s to CSR
	csrrw x11, 0x32f, x0	// Write all 0s to CSR
	csrrs x11, 0x32f, x20	// Set all CSR bits
	csrrc x11, 0x32f, x20	// Clear all CSR bits
	csrrw x11, 0x32f, x2	// Restore CSR

// Testing CSR 0x330
	csrr x28, 0x330	// Read CSR
	li x26, -1
	csrrw x13, 0x330, x26	// Write all 1s to CSR
	csrrw x13, 0x330, x0	// Write all 0s to CSR
	csrrs x13, 0x330, x26	// Set all CSR bits
	csrrc x13, 0x330, x26	// Clear all CSR bits
	csrrw x13, 0x330, x28	// Restore CSR

// Testing CSR 0x331
	csrr x31, 0x331	// Read CSR
	li x21, -1
	csrrw x4, 0x331, x21	// Write all 1s to CSR
	csrrw x4, 0x331, x0	// Write all 0s to CSR
	csrrs x4, 0x331, x21	// Set all CSR bits
	csrrc x4, 0x331, x21	// Clear all CSR bits
	csrrw x4, 0x331, x31	// Restore CSR

// Testing CSR 0x332
	csrr x18, 0x332	// Read CSR
	li x29, -1
	csrrw x28, 0x332, x29	// Write all 1s to CSR
	csrrw x28, 0x332, x0	// Write all 0s to CSR
	csrrs x28, 0x332, x29	// Set all CSR bits
	csrrc x28, 0x332, x29	// Clear all CSR bits
	csrrw x28, 0x332, x18	// Restore CSR

// Testing CSR 0x333
	csrr x2, 0x333	// Read CSR
	li x5, -1
	csrrw x23, 0x333, x5	// Write all 1s to CSR
	csrrw x23, 0x333, x0	// Write all 0s to CSR
	csrrs x23, 0x333, x5	// Set all CSR bits
	csrrc x23, 0x333, x5	// Clear all CSR bits
	csrrw x23, 0x333, x2	// Restore CSR

// Testing CSR 0x334
	csrr x13, 0x334	// Read CSR
	li x1, -1
	csrrw x25, 0x334, x1	// Write all 1s to CSR
	csrrw x25, 0x334, x0	// Write all 0s to CSR
	csrrs x25, 0x334, x1	// Set all CSR bits
	csrrc x25, 0x334, x1	// Clear all CSR bits
	csrrw x25, 0x334, x13	// Restore CSR

// Testing CSR 0x335
	csrr x14, 0x335	// Read CSR
	li x24, -1
	csrrw x28, 0x335, x24	// Write all 1s to CSR
	csrrw x28, 0x335, x0	// Write all 0s to CSR
	csrrs x28, 0x335, x24	// Set all CSR bits
	csrrc x28, 0x335, x24	// Clear all CSR bits
	csrrw x28, 0x335, x14	// Restore CSR

// Testing CSR 0x336
	csrr x13, 0x336	// Read CSR
	li x14, -1
	csrrw x30, 0x336, x14	// Write all 1s to CSR
	csrrw x30, 0x336, x0	// Write all 0s to CSR
	csrrs x30, 0x336, x14	// Set all CSR bits
	csrrc x30, 0x336, x14	// Clear all CSR bits
	csrrw x30, 0x336, x13	// Restore CSR

// Testing CSR 0x337
	csrr x4, 0x337	// Read CSR
	li x23, -1
	csrrw x15, 0x337, x23	// Write all 1s to CSR
	csrrw x15, 0x337, x0	// Write all 0s to CSR
	csrrs x15, 0x337, x23	// Set all CSR bits
	csrrc x15, 0x337, x23	// Clear all CSR bits
	csrrw x15, 0x337, x4	// Restore CSR

// Testing CSR 0x338
	csrr x20, 0x338	// Read CSR
	li x15, -1
	csrrw x6, 0x338, x15	// Write all 1s to CSR
	csrrw x6, 0x338, x0	// Write all 0s to CSR
	csrrs x6, 0x338, x15	// Set all CSR bits
	csrrc x6, 0x338, x15	// Clear all CSR bits
	csrrw x6, 0x338, x20	// Restore CSR

// Testing CSR 0x339
	csrr x6, 0x339	// Read CSR
	li x11, -1
	csrrw x16, 0x339, x11	// Write all 1s to CSR
	csrrw x16, 0x339, x0	// Write all 0s to CSR
	csrrs x16, 0x339, x11	// Set all CSR bits
	csrrc x16, 0x339, x11	// Clear all CSR bits
	csrrw x16, 0x339, x6	// Restore CSR

// Testing CSR 0x33a
	csrr x14, 0x33a	// Read CSR
	li x6, -1
	csrrw x19, 0x33a, x6	// Write all 1s to CSR
	csrrw x19, 0x33a, x0	// Write all 0s to CSR
	csrrs x19, 0x33a, x6	// Set all CSR bits
	csrrc x19, 0x33a, x6	// Clear all CSR bits
	csrrw x19, 0x33a, x14	// Restore CSR

// Testing CSR 0x33b
	csrr x30, 0x33b	// Read CSR
	li x28, -1
	csrrw x10, 0x33b, x28	// Write all 1s to CSR
	csrrw x10, 0x33b, x0	// Write all 0s to CSR
	csrrs x10, 0x33b, x28	// Set all CSR bits
	csrrc x10, 0x33b, x28	// Clear all CSR bits
	csrrw x10, 0x33b, x30	// Restore CSR

// Testing CSR 0x33c
	csrr x25, 0x33c	// Read CSR
	li x17, -1
	csrrw x4, 0x33c, x17	// Write all 1s to CSR
	csrrw x4, 0x33c, x0	// Write all 0s to CSR
	csrrs x4, 0x33c, x17	// Set all CSR bits
	csrrc x4, 0x33c, x17	// Clear all CSR bits
	csrrw x4, 0x33c, x25	// Restore CSR

// Testing CSR 0x33d
	csrr x30, 0x33d	// Read CSR
	li x12, -1
	csrrw x5, 0x33d, x12	// Write all 1s to CSR
	csrrw x5, 0x33d, x0	// Write all 0s to CSR
	csrrs x5, 0x33d, x12	// Set all CSR bits
	csrrc x5, 0x33d, x12	// Clear all CSR bits
	csrrw x5, 0x33d, x30	// Restore CSR

// Testing CSR 0x33e
	csrr x21, 0x33e	// Read CSR
	li x12, -1
	csrrw x25, 0x33e, x12	// Write all 1s to CSR
	csrrw x25, 0x33e, x0	// Write all 0s to CSR
	csrrs x25, 0x33e, x12	// Set all CSR bits
	csrrc x25, 0x33e, x12	// Clear all CSR bits
	csrrw x25, 0x33e, x21	// Restore CSR

// Testing CSR 0x33f
	csrr x16, 0x33f	// Read CSR
	li x21, -1
	csrrw x17, 0x33f, x21	// Write all 1s to CSR
	csrrw x17, 0x33f, x0	// Write all 0s to CSR
	csrrs x17, 0x33f, x21	// Set all CSR bits
	csrrc x17, 0x33f, x21	// Clear all CSR bits
	csrrw x17, 0x33f, x16	// Restore CSR

// Testing CSR 0x340
	csrr x25, 0x340	// Read CSR
	li x2, -1
	csrrw x7, 0x340, x2	// Write all 1s to CSR
	csrrw x7, 0x340, x0	// Write all 0s to CSR
	csrrs x7, 0x340, x2	// Set all CSR bits
	csrrc x7, 0x340, x2	// Clear all CSR bits
	csrrw x7, 0x340, x25	// Restore CSR

// Testing CSR 0x341
	csrr x29, 0x341	// Read CSR
	li x31, -1
	csrrw x9, 0x341, x31	// Write all 1s to CSR
	csrrw x9, 0x341, x0	// Write all 0s to CSR
	csrrs x9, 0x341, x31	// Set all CSR bits
	csrrc x9, 0x341, x31	// Clear all CSR bits
	csrrw x9, 0x341, x29	// Restore CSR

// Testing CSR 0x342
	csrr x6, 0x342	// Read CSR
	li x24, -1
	csrrw x19, 0x342, x24	// Write all 1s to CSR
	csrrw x19, 0x342, x0	// Write all 0s to CSR
	csrrs x19, 0x342, x24	// Set all CSR bits
	csrrc x19, 0x342, x24	// Clear all CSR bits
	csrrw x19, 0x342, x6	// Restore CSR

// Testing CSR 0x343
	csrr x11, 0x343	// Read CSR
	li x10, -1
	csrrw x13, 0x343, x10	// Write all 1s to CSR
	csrrw x13, 0x343, x0	// Write all 0s to CSR
	csrrs x13, 0x343, x10	// Set all CSR bits
	csrrc x13, 0x343, x10	// Clear all CSR bits
	csrrw x13, 0x343, x11	// Restore CSR

// Testing CSR 0x344
	csrr x21, 0x344	// Read CSR
	li x2, -1
	csrrw x10, 0x344, x2	// Write all 1s to CSR
	csrrw x10, 0x344, x0	// Write all 0s to CSR
	csrrs x10, 0x344, x2	// Set all CSR bits
	csrrc x10, 0x344, x2	// Clear all CSR bits
	csrrw x10, 0x344, x21	// Restore CSR

// Testing CSR 0x345
	csrr x18, 0x345	// Read CSR
	li x14, -1
	csrrw x2, 0x345, x14	// Write all 1s to CSR
	csrrw x2, 0x345, x0	// Write all 0s to CSR
	csrrs x2, 0x345, x14	// Set all CSR bits
	csrrc x2, 0x345, x14	// Clear all CSR bits
	csrrw x2, 0x345, x18	// Restore CSR

// Testing CSR 0x346
	csrr x22, 0x346	// Read CSR
	li x14, -1
	csrrw x9, 0x346, x14	// Write all 1s to CSR
	csrrw x9, 0x346, x0	// Write all 0s to CSR
	csrrs x9, 0x346, x14	// Set all CSR bits
	csrrc x9, 0x346, x14	// Clear all CSR bits
	csrrw x9, 0x346, x22	// Restore CSR

// Testing CSR 0x347
	csrr x13, 0x347	// Read CSR
	li x24, -1
	csrrw x7, 0x347, x24	// Write all 1s to CSR
	csrrw x7, 0x347, x0	// Write all 0s to CSR
	csrrs x7, 0x347, x24	// Set all CSR bits
	csrrc x7, 0x347, x24	// Clear all CSR bits
	csrrw x7, 0x347, x13	// Restore CSR

// Testing CSR 0x348
	csrr x12, 0x348	// Read CSR
	li x5, -1
	csrrw x4, 0x348, x5	// Write all 1s to CSR
	csrrw x4, 0x348, x0	// Write all 0s to CSR
	csrrs x4, 0x348, x5	// Set all CSR bits
	csrrc x4, 0x348, x5	// Clear all CSR bits
	csrrw x4, 0x348, x12	// Restore CSR

// Testing CSR 0x349
	csrr x20, 0x349	// Read CSR
	li x12, -1
	csrrw x6, 0x349, x12	// Write all 1s to CSR
	csrrw x6, 0x349, x0	// Write all 0s to CSR
	csrrs x6, 0x349, x12	// Set all CSR bits
	csrrc x6, 0x349, x12	// Clear all CSR bits
	csrrw x6, 0x349, x20	// Restore CSR

// Testing CSR 0x34a
	csrr x1, 0x34a	// Read CSR
	li x14, -1
	csrrw x19, 0x34a, x14	// Write all 1s to CSR
	csrrw x19, 0x34a, x0	// Write all 0s to CSR
	csrrs x19, 0x34a, x14	// Set all CSR bits
	csrrc x19, 0x34a, x14	// Clear all CSR bits
	csrrw x19, 0x34a, x1	// Restore CSR

// Testing CSR 0x34b
	csrr x13, 0x34b	// Read CSR
	li x15, -1
	csrrw x3, 0x34b, x15	// Write all 1s to CSR
	csrrw x3, 0x34b, x0	// Write all 0s to CSR
	csrrs x3, 0x34b, x15	// Set all CSR bits
	csrrc x3, 0x34b, x15	// Clear all CSR bits
	csrrw x3, 0x34b, x13	// Restore CSR

// Testing CSR 0x34c
	csrr x21, 0x34c	// Read CSR
	li x23, -1
	csrrw x22, 0x34c, x23	// Write all 1s to CSR
	csrrw x22, 0x34c, x0	// Write all 0s to CSR
	csrrs x22, 0x34c, x23	// Set all CSR bits
	csrrc x22, 0x34c, x23	// Clear all CSR bits
	csrrw x22, 0x34c, x21	// Restore CSR

// Testing CSR 0x34d
	csrr x3, 0x34d	// Read CSR
	li x25, -1
	csrrw x14, 0x34d, x25	// Write all 1s to CSR
	csrrw x14, 0x34d, x0	// Write all 0s to CSR
	csrrs x14, 0x34d, x25	// Set all CSR bits
	csrrc x14, 0x34d, x25	// Clear all CSR bits
	csrrw x14, 0x34d, x3	// Restore CSR

// Testing CSR 0x34e
	csrr x18, 0x34e	// Read CSR
	li x24, -1
	csrrw x5, 0x34e, x24	// Write all 1s to CSR
	csrrw x5, 0x34e, x0	// Write all 0s to CSR
	csrrs x5, 0x34e, x24	// Set all CSR bits
	csrrc x5, 0x34e, x24	// Clear all CSR bits
	csrrw x5, 0x34e, x18	// Restore CSR

// Testing CSR 0x34f
	csrr x6, 0x34f	// Read CSR
	li x5, -1
	csrrw x7, 0x34f, x5	// Write all 1s to CSR
	csrrw x7, 0x34f, x0	// Write all 0s to CSR
	csrrs x7, 0x34f, x5	// Set all CSR bits
	csrrc x7, 0x34f, x5	// Clear all CSR bits
	csrrw x7, 0x34f, x6	// Restore CSR

// Testing CSR 0x350
	csrr x6, 0x350	// Read CSR
	li x8, -1
	csrrw x1, 0x350, x8	// Write all 1s to CSR
	csrrw x1, 0x350, x0	// Write all 0s to CSR
	csrrs x1, 0x350, x8	// Set all CSR bits
	csrrc x1, 0x350, x8	// Clear all CSR bits
	csrrw x1, 0x350, x6	// Restore CSR

// Testing CSR 0x351
	csrr x17, 0x351	// Read CSR
	li x5, -1
	csrrw x27, 0x351, x5	// Write all 1s to CSR
	csrrw x27, 0x351, x0	// Write all 0s to CSR
	csrrs x27, 0x351, x5	// Set all CSR bits
	csrrc x27, 0x351, x5	// Clear all CSR bits
	csrrw x27, 0x351, x17	// Restore CSR

// Testing CSR 0x352
	csrr x16, 0x352	// Read CSR
	li x12, -1
	csrrw x29, 0x352, x12	// Write all 1s to CSR
	csrrw x29, 0x352, x0	// Write all 0s to CSR
	csrrs x29, 0x352, x12	// Set all CSR bits
	csrrc x29, 0x352, x12	// Clear all CSR bits
	csrrw x29, 0x352, x16	// Restore CSR

// Testing CSR 0x353
	csrr x29, 0x353	// Read CSR
	li x20, -1
	csrrw x24, 0x353, x20	// Write all 1s to CSR
	csrrw x24, 0x353, x0	// Write all 0s to CSR
	csrrs x24, 0x353, x20	// Set all CSR bits
	csrrc x24, 0x353, x20	// Clear all CSR bits
	csrrw x24, 0x353, x29	// Restore CSR

// Testing CSR 0x354
	csrr x10, 0x354	// Read CSR
	li x23, -1
	csrrw x26, 0x354, x23	// Write all 1s to CSR
	csrrw x26, 0x354, x0	// Write all 0s to CSR
	csrrs x26, 0x354, x23	// Set all CSR bits
	csrrc x26, 0x354, x23	// Clear all CSR bits
	csrrw x26, 0x354, x10	// Restore CSR

// Testing CSR 0x355
	csrr x11, 0x355	// Read CSR
	li x22, -1
	csrrw x4, 0x355, x22	// Write all 1s to CSR
	csrrw x4, 0x355, x0	// Write all 0s to CSR
	csrrs x4, 0x355, x22	// Set all CSR bits
	csrrc x4, 0x355, x22	// Clear all CSR bits
	csrrw x4, 0x355, x11	// Restore CSR

// Testing CSR 0x356
	csrr x26, 0x356	// Read CSR
	li x31, -1
	csrrw x30, 0x356, x31	// Write all 1s to CSR
	csrrw x30, 0x356, x0	// Write all 0s to CSR
	csrrs x30, 0x356, x31	// Set all CSR bits
	csrrc x30, 0x356, x31	// Clear all CSR bits
	csrrw x30, 0x356, x26	// Restore CSR

// Testing CSR 0x357
	csrr x28, 0x357	// Read CSR
	li x27, -1
	csrrw x14, 0x357, x27	// Write all 1s to CSR
	csrrw x14, 0x357, x0	// Write all 0s to CSR
	csrrs x14, 0x357, x27	// Set all CSR bits
	csrrc x14, 0x357, x27	// Clear all CSR bits
	csrrw x14, 0x357, x28	// Restore CSR

// Testing CSR 0x358
	csrr x25, 0x358	// Read CSR
	li x28, -1
	csrrw x9, 0x358, x28	// Write all 1s to CSR
	csrrw x9, 0x358, x0	// Write all 0s to CSR
	csrrs x9, 0x358, x28	// Set all CSR bits
	csrrc x9, 0x358, x28	// Clear all CSR bits
	csrrw x9, 0x358, x25	// Restore CSR

// Testing CSR 0x359
	csrr x29, 0x359	// Read CSR
	li x6, -1
	csrrw x11, 0x359, x6	// Write all 1s to CSR
	csrrw x11, 0x359, x0	// Write all 0s to CSR
	csrrs x11, 0x359, x6	// Set all CSR bits
	csrrc x11, 0x359, x6	// Clear all CSR bits
	csrrw x11, 0x359, x29	// Restore CSR

// Testing CSR 0x35a
	csrr x21, 0x35a	// Read CSR
	li x17, -1
	csrrw x31, 0x35a, x17	// Write all 1s to CSR
	csrrw x31, 0x35a, x0	// Write all 0s to CSR
	csrrs x31, 0x35a, x17	// Set all CSR bits
	csrrc x31, 0x35a, x17	// Clear all CSR bits
	csrrw x31, 0x35a, x21	// Restore CSR

// Testing CSR 0x35b
	csrr x11, 0x35b	// Read CSR
	li x18, -1
	csrrw x23, 0x35b, x18	// Write all 1s to CSR
	csrrw x23, 0x35b, x0	// Write all 0s to CSR
	csrrs x23, 0x35b, x18	// Set all CSR bits
	csrrc x23, 0x35b, x18	// Clear all CSR bits
	csrrw x23, 0x35b, x11	// Restore CSR

// Testing CSR 0x35c
	csrr x5, 0x35c	// Read CSR
	li x30, -1
	csrrw x13, 0x35c, x30	// Write all 1s to CSR
	csrrw x13, 0x35c, x0	// Write all 0s to CSR
	csrrs x13, 0x35c, x30	// Set all CSR bits
	csrrc x13, 0x35c, x30	// Clear all CSR bits
	csrrw x13, 0x35c, x5	// Restore CSR

// Testing CSR 0x35d
	csrr x24, 0x35d	// Read CSR
	li x10, -1
	csrrw x18, 0x35d, x10	// Write all 1s to CSR
	csrrw x18, 0x35d, x0	// Write all 0s to CSR
	csrrs x18, 0x35d, x10	// Set all CSR bits
	csrrc x18, 0x35d, x10	// Clear all CSR bits
	csrrw x18, 0x35d, x24	// Restore CSR

// Testing CSR 0x35e
	csrr x8, 0x35e	// Read CSR
	li x29, -1
	csrrw x30, 0x35e, x29	// Write all 1s to CSR
	csrrw x30, 0x35e, x0	// Write all 0s to CSR
	csrrs x30, 0x35e, x29	// Set all CSR bits
	csrrc x30, 0x35e, x29	// Clear all CSR bits
	csrrw x30, 0x35e, x8	// Restore CSR

// Testing CSR 0x35f
	csrr x13, 0x35f	// Read CSR
	li x12, -1
	csrrw x31, 0x35f, x12	// Write all 1s to CSR
	csrrw x31, 0x35f, x0	// Write all 0s to CSR
	csrrs x31, 0x35f, x12	// Set all CSR bits
	csrrc x31, 0x35f, x12	// Clear all CSR bits
	csrrw x31, 0x35f, x13	// Restore CSR

// Testing CSR 0x360
	csrr x16, 0x360	// Read CSR
	li x17, -1
	csrrw x10, 0x360, x17	// Write all 1s to CSR
	csrrw x10, 0x360, x0	// Write all 0s to CSR
	csrrs x10, 0x360, x17	// Set all CSR bits
	csrrc x10, 0x360, x17	// Clear all CSR bits
	csrrw x10, 0x360, x16	// Restore CSR

// Testing CSR 0x361
	csrr x31, 0x361	// Read CSR
	li x14, -1
	csrrw x27, 0x361, x14	// Write all 1s to CSR
	csrrw x27, 0x361, x0	// Write all 0s to CSR
	csrrs x27, 0x361, x14	// Set all CSR bits
	csrrc x27, 0x361, x14	// Clear all CSR bits
	csrrw x27, 0x361, x31	// Restore CSR

// Testing CSR 0x362
	csrr x4, 0x362	// Read CSR
	li x22, -1
	csrrw x5, 0x362, x22	// Write all 1s to CSR
	csrrw x5, 0x362, x0	// Write all 0s to CSR
	csrrs x5, 0x362, x22	// Set all CSR bits
	csrrc x5, 0x362, x22	// Clear all CSR bits
	csrrw x5, 0x362, x4	// Restore CSR

// Testing CSR 0x363
	csrr x5, 0x363	// Read CSR
	li x1, -1
	csrrw x19, 0x363, x1	// Write all 1s to CSR
	csrrw x19, 0x363, x0	// Write all 0s to CSR
	csrrs x19, 0x363, x1	// Set all CSR bits
	csrrc x19, 0x363, x1	// Clear all CSR bits
	csrrw x19, 0x363, x5	// Restore CSR

// Testing CSR 0x364
	csrr x20, 0x364	// Read CSR
	li x21, -1
	csrrw x23, 0x364, x21	// Write all 1s to CSR
	csrrw x23, 0x364, x0	// Write all 0s to CSR
	csrrs x23, 0x364, x21	// Set all CSR bits
	csrrc x23, 0x364, x21	// Clear all CSR bits
	csrrw x23, 0x364, x20	// Restore CSR

// Testing CSR 0x365
	csrr x30, 0x365	// Read CSR
	li x29, -1
	csrrw x17, 0x365, x29	// Write all 1s to CSR
	csrrw x17, 0x365, x0	// Write all 0s to CSR
	csrrs x17, 0x365, x29	// Set all CSR bits
	csrrc x17, 0x365, x29	// Clear all CSR bits
	csrrw x17, 0x365, x30	// Restore CSR

// Testing CSR 0x366
	csrr x4, 0x366	// Read CSR
	li x23, -1
	csrrw x25, 0x366, x23	// Write all 1s to CSR
	csrrw x25, 0x366, x0	// Write all 0s to CSR
	csrrs x25, 0x366, x23	// Set all CSR bits
	csrrc x25, 0x366, x23	// Clear all CSR bits
	csrrw x25, 0x366, x4	// Restore CSR

// Testing CSR 0x367
	csrr x21, 0x367	// Read CSR
	li x23, -1
	csrrw x7, 0x367, x23	// Write all 1s to CSR
	csrrw x7, 0x367, x0	// Write all 0s to CSR
	csrrs x7, 0x367, x23	// Set all CSR bits
	csrrc x7, 0x367, x23	// Clear all CSR bits
	csrrw x7, 0x367, x21	// Restore CSR

// Testing CSR 0x368
	csrr x20, 0x368	// Read CSR
	li x21, -1
	csrrw x17, 0x368, x21	// Write all 1s to CSR
	csrrw x17, 0x368, x0	// Write all 0s to CSR
	csrrs x17, 0x368, x21	// Set all CSR bits
	csrrc x17, 0x368, x21	// Clear all CSR bits
	csrrw x17, 0x368, x20	// Restore CSR

// Testing CSR 0x369
	csrr x4, 0x369	// Read CSR
	li x9, -1
	csrrw x23, 0x369, x9	// Write all 1s to CSR
	csrrw x23, 0x369, x0	// Write all 0s to CSR
	csrrs x23, 0x369, x9	// Set all CSR bits
	csrrc x23, 0x369, x9	// Clear all CSR bits
	csrrw x23, 0x369, x4	// Restore CSR

// Testing CSR 0x36a
	csrr x24, 0x36a	// Read CSR
	li x20, -1
	csrrw x6, 0x36a, x20	// Write all 1s to CSR
	csrrw x6, 0x36a, x0	// Write all 0s to CSR
	csrrs x6, 0x36a, x20	// Set all CSR bits
	csrrc x6, 0x36a, x20	// Clear all CSR bits
	csrrw x6, 0x36a, x24	// Restore CSR

// Testing CSR 0x36b
	csrr x13, 0x36b	// Read CSR
	li x3, -1
	csrrw x26, 0x36b, x3	// Write all 1s to CSR
	csrrw x26, 0x36b, x0	// Write all 0s to CSR
	csrrs x26, 0x36b, x3	// Set all CSR bits
	csrrc x26, 0x36b, x3	// Clear all CSR bits
	csrrw x26, 0x36b, x13	// Restore CSR

// Testing CSR 0x36c
	csrr x2, 0x36c	// Read CSR
	li x1, -1
	csrrw x4, 0x36c, x1	// Write all 1s to CSR
	csrrw x4, 0x36c, x0	// Write all 0s to CSR
	csrrs x4, 0x36c, x1	// Set all CSR bits
	csrrc x4, 0x36c, x1	// Clear all CSR bits
	csrrw x4, 0x36c, x2	// Restore CSR

// Testing CSR 0x36d
	csrr x29, 0x36d	// Read CSR
	li x12, -1
	csrrw x27, 0x36d, x12	// Write all 1s to CSR
	csrrw x27, 0x36d, x0	// Write all 0s to CSR
	csrrs x27, 0x36d, x12	// Set all CSR bits
	csrrc x27, 0x36d, x12	// Clear all CSR bits
	csrrw x27, 0x36d, x29	// Restore CSR

// Testing CSR 0x36e
	csrr x24, 0x36e	// Read CSR
	li x16, -1
	csrrw x11, 0x36e, x16	// Write all 1s to CSR
	csrrw x11, 0x36e, x0	// Write all 0s to CSR
	csrrs x11, 0x36e, x16	// Set all CSR bits
	csrrc x11, 0x36e, x16	// Clear all CSR bits
	csrrw x11, 0x36e, x24	// Restore CSR

// Testing CSR 0x36f
	csrr x4, 0x36f	// Read CSR
	li x22, -1
	csrrw x15, 0x36f, x22	// Write all 1s to CSR
	csrrw x15, 0x36f, x0	// Write all 0s to CSR
	csrrs x15, 0x36f, x22	// Set all CSR bits
	csrrc x15, 0x36f, x22	// Clear all CSR bits
	csrrw x15, 0x36f, x4	// Restore CSR

// Testing CSR 0x370
	csrr x12, 0x370	// Read CSR
	li x19, -1
	csrrw x23, 0x370, x19	// Write all 1s to CSR
	csrrw x23, 0x370, x0	// Write all 0s to CSR
	csrrs x23, 0x370, x19	// Set all CSR bits
	csrrc x23, 0x370, x19	// Clear all CSR bits
	csrrw x23, 0x370, x12	// Restore CSR

// Testing CSR 0x371
	csrr x9, 0x371	// Read CSR
	li x22, -1
	csrrw x16, 0x371, x22	// Write all 1s to CSR
	csrrw x16, 0x371, x0	// Write all 0s to CSR
	csrrs x16, 0x371, x22	// Set all CSR bits
	csrrc x16, 0x371, x22	// Clear all CSR bits
	csrrw x16, 0x371, x9	// Restore CSR

// Testing CSR 0x372
	csrr x26, 0x372	// Read CSR
	li x25, -1
	csrrw x8, 0x372, x25	// Write all 1s to CSR
	csrrw x8, 0x372, x0	// Write all 0s to CSR
	csrrs x8, 0x372, x25	// Set all CSR bits
	csrrc x8, 0x372, x25	// Clear all CSR bits
	csrrw x8, 0x372, x26	// Restore CSR

// Testing CSR 0x373
	csrr x30, 0x373	// Read CSR
	li x6, -1
	csrrw x18, 0x373, x6	// Write all 1s to CSR
	csrrw x18, 0x373, x0	// Write all 0s to CSR
	csrrs x18, 0x373, x6	// Set all CSR bits
	csrrc x18, 0x373, x6	// Clear all CSR bits
	csrrw x18, 0x373, x30	// Restore CSR

// Testing CSR 0x374
	csrr x18, 0x374	// Read CSR
	li x27, -1
	csrrw x29, 0x374, x27	// Write all 1s to CSR
	csrrw x29, 0x374, x0	// Write all 0s to CSR
	csrrs x29, 0x374, x27	// Set all CSR bits
	csrrc x29, 0x374, x27	// Clear all CSR bits
	csrrw x29, 0x374, x18	// Restore CSR

// Testing CSR 0x375
	csrr x3, 0x375	// Read CSR
	li x25, -1
	csrrw x28, 0x375, x25	// Write all 1s to CSR
	csrrw x28, 0x375, x0	// Write all 0s to CSR
	csrrs x28, 0x375, x25	// Set all CSR bits
	csrrc x28, 0x375, x25	// Clear all CSR bits
	csrrw x28, 0x375, x3	// Restore CSR

// Testing CSR 0x376
	csrr x17, 0x376	// Read CSR
	li x30, -1
	csrrw x29, 0x376, x30	// Write all 1s to CSR
	csrrw x29, 0x376, x0	// Write all 0s to CSR
	csrrs x29, 0x376, x30	// Set all CSR bits
	csrrc x29, 0x376, x30	// Clear all CSR bits
	csrrw x29, 0x376, x17	// Restore CSR

// Testing CSR 0x377
	csrr x6, 0x377	// Read CSR
	li x1, -1
	csrrw x27, 0x377, x1	// Write all 1s to CSR
	csrrw x27, 0x377, x0	// Write all 0s to CSR
	csrrs x27, 0x377, x1	// Set all CSR bits
	csrrc x27, 0x377, x1	// Clear all CSR bits
	csrrw x27, 0x377, x6	// Restore CSR

// Testing CSR 0x378
	csrr x21, 0x378	// Read CSR
	li x28, -1
	csrrw x6, 0x378, x28	// Write all 1s to CSR
	csrrw x6, 0x378, x0	// Write all 0s to CSR
	csrrs x6, 0x378, x28	// Set all CSR bits
	csrrc x6, 0x378, x28	// Clear all CSR bits
	csrrw x6, 0x378, x21	// Restore CSR

// Testing CSR 0x379
	csrr x29, 0x379	// Read CSR
	li x17, -1
	csrrw x14, 0x379, x17	// Write all 1s to CSR
	csrrw x14, 0x379, x0	// Write all 0s to CSR
	csrrs x14, 0x379, x17	// Set all CSR bits
	csrrc x14, 0x379, x17	// Clear all CSR bits
	csrrw x14, 0x379, x29	// Restore CSR

// Testing CSR 0x37a
	csrr x20, 0x37a	// Read CSR
	li x22, -1
	csrrw x7, 0x37a, x22	// Write all 1s to CSR
	csrrw x7, 0x37a, x0	// Write all 0s to CSR
	csrrs x7, 0x37a, x22	// Set all CSR bits
	csrrc x7, 0x37a, x22	// Clear all CSR bits
	csrrw x7, 0x37a, x20	// Restore CSR

// Testing CSR 0x37b
	csrr x15, 0x37b	// Read CSR
	li x23, -1
	csrrw x22, 0x37b, x23	// Write all 1s to CSR
	csrrw x22, 0x37b, x0	// Write all 0s to CSR
	csrrs x22, 0x37b, x23	// Set all CSR bits
	csrrc x22, 0x37b, x23	// Clear all CSR bits
	csrrw x22, 0x37b, x15	// Restore CSR

// Testing CSR 0x37c
	csrr x13, 0x37c	// Read CSR
	li x9, -1
	csrrw x1, 0x37c, x9	// Write all 1s to CSR
	csrrw x1, 0x37c, x0	// Write all 0s to CSR
	csrrs x1, 0x37c, x9	// Set all CSR bits
	csrrc x1, 0x37c, x9	// Clear all CSR bits
	csrrw x1, 0x37c, x13	// Restore CSR

// Testing CSR 0x37d
	csrr x19, 0x37d	// Read CSR
	li x5, -1
	csrrw x30, 0x37d, x5	// Write all 1s to CSR
	csrrw x30, 0x37d, x0	// Write all 0s to CSR
	csrrs x30, 0x37d, x5	// Set all CSR bits
	csrrc x30, 0x37d, x5	// Clear all CSR bits
	csrrw x30, 0x37d, x19	// Restore CSR

// Testing CSR 0x37e
	csrr x13, 0x37e	// Read CSR
	li x6, -1
	csrrw x29, 0x37e, x6	// Write all 1s to CSR
	csrrw x29, 0x37e, x0	// Write all 0s to CSR
	csrrs x29, 0x37e, x6	// Set all CSR bits
	csrrc x29, 0x37e, x6	// Clear all CSR bits
	csrrw x29, 0x37e, x13	// Restore CSR

// Testing CSR 0x37f
	csrr x15, 0x37f	// Read CSR
	li x19, -1
	csrrw x2, 0x37f, x19	// Write all 1s to CSR
	csrrw x2, 0x37f, x0	// Write all 0s to CSR
	csrrs x2, 0x37f, x19	// Set all CSR bits
	csrrc x2, 0x37f, x19	// Clear all CSR bits
	csrrw x2, 0x37f, x15	// Restore CSR

// Testing CSR 0x380
	csrr x30, 0x380	// Read CSR
	li x13, -1
	csrrw x26, 0x380, x13	// Write all 1s to CSR
	csrrw x26, 0x380, x0	// Write all 0s to CSR
	csrrs x26, 0x380, x13	// Set all CSR bits
	csrrc x26, 0x380, x13	// Clear all CSR bits
	csrrw x26, 0x380, x30	// Restore CSR

// Testing CSR 0x381
	csrr x3, 0x381	// Read CSR
	li x21, -1
	csrrw x19, 0x381, x21	// Write all 1s to CSR
	csrrw x19, 0x381, x0	// Write all 0s to CSR
	csrrs x19, 0x381, x21	// Set all CSR bits
	csrrc x19, 0x381, x21	// Clear all CSR bits
	csrrw x19, 0x381, x3	// Restore CSR

// Testing CSR 0x382
	csrr x13, 0x382	// Read CSR
	li x11, -1
	csrrw x8, 0x382, x11	// Write all 1s to CSR
	csrrw x8, 0x382, x0	// Write all 0s to CSR
	csrrs x8, 0x382, x11	// Set all CSR bits
	csrrc x8, 0x382, x11	// Clear all CSR bits
	csrrw x8, 0x382, x13	// Restore CSR

// Testing CSR 0x383
	csrr x17, 0x383	// Read CSR
	li x28, -1
	csrrw x15, 0x383, x28	// Write all 1s to CSR
	csrrw x15, 0x383, x0	// Write all 0s to CSR
	csrrs x15, 0x383, x28	// Set all CSR bits
	csrrc x15, 0x383, x28	// Clear all CSR bits
	csrrw x15, 0x383, x17	// Restore CSR

// Testing CSR 0x384
	csrr x2, 0x384	// Read CSR
	li x16, -1
	csrrw x20, 0x384, x16	// Write all 1s to CSR
	csrrw x20, 0x384, x0	// Write all 0s to CSR
	csrrs x20, 0x384, x16	// Set all CSR bits
	csrrc x20, 0x384, x16	// Clear all CSR bits
	csrrw x20, 0x384, x2	// Restore CSR

// Testing CSR 0x385
	csrr x4, 0x385	// Read CSR
	li x9, -1
	csrrw x27, 0x385, x9	// Write all 1s to CSR
	csrrw x27, 0x385, x0	// Write all 0s to CSR
	csrrs x27, 0x385, x9	// Set all CSR bits
	csrrc x27, 0x385, x9	// Clear all CSR bits
	csrrw x27, 0x385, x4	// Restore CSR

// Testing CSR 0x386
	csrr x17, 0x386	// Read CSR
	li x16, -1
	csrrw x18, 0x386, x16	// Write all 1s to CSR
	csrrw x18, 0x386, x0	// Write all 0s to CSR
	csrrs x18, 0x386, x16	// Set all CSR bits
	csrrc x18, 0x386, x16	// Clear all CSR bits
	csrrw x18, 0x386, x17	// Restore CSR

// Testing CSR 0x387
	csrr x21, 0x387	// Read CSR
	li x13, -1
	csrrw x16, 0x387, x13	// Write all 1s to CSR
	csrrw x16, 0x387, x0	// Write all 0s to CSR
	csrrs x16, 0x387, x13	// Set all CSR bits
	csrrc x16, 0x387, x13	// Clear all CSR bits
	csrrw x16, 0x387, x21	// Restore CSR

// Testing CSR 0x388
	csrr x9, 0x388	// Read CSR
	li x6, -1
	csrrw x8, 0x388, x6	// Write all 1s to CSR
	csrrw x8, 0x388, x0	// Write all 0s to CSR
	csrrs x8, 0x388, x6	// Set all CSR bits
	csrrc x8, 0x388, x6	// Clear all CSR bits
	csrrw x8, 0x388, x9	// Restore CSR

// Testing CSR 0x389
	csrr x18, 0x389	// Read CSR
	li x12, -1
	csrrw x6, 0x389, x12	// Write all 1s to CSR
	csrrw x6, 0x389, x0	// Write all 0s to CSR
	csrrs x6, 0x389, x12	// Set all CSR bits
	csrrc x6, 0x389, x12	// Clear all CSR bits
	csrrw x6, 0x389, x18	// Restore CSR

// Testing CSR 0x38a
	csrr x10, 0x38a	// Read CSR
	li x28, -1
	csrrw x20, 0x38a, x28	// Write all 1s to CSR
	csrrw x20, 0x38a, x0	// Write all 0s to CSR
	csrrs x20, 0x38a, x28	// Set all CSR bits
	csrrc x20, 0x38a, x28	// Clear all CSR bits
	csrrw x20, 0x38a, x10	// Restore CSR

// Testing CSR 0x38b
	csrr x27, 0x38b	// Read CSR
	li x30, -1
	csrrw x5, 0x38b, x30	// Write all 1s to CSR
	csrrw x5, 0x38b, x0	// Write all 0s to CSR
	csrrs x5, 0x38b, x30	// Set all CSR bits
	csrrc x5, 0x38b, x30	// Clear all CSR bits
	csrrw x5, 0x38b, x27	// Restore CSR

// Testing CSR 0x38c
	csrr x15, 0x38c	// Read CSR
	li x3, -1
	csrrw x31, 0x38c, x3	// Write all 1s to CSR
	csrrw x31, 0x38c, x0	// Write all 0s to CSR
	csrrs x31, 0x38c, x3	// Set all CSR bits
	csrrc x31, 0x38c, x3	// Clear all CSR bits
	csrrw x31, 0x38c, x15	// Restore CSR

// Testing CSR 0x38d
	csrr x3, 0x38d	// Read CSR
	li x16, -1
	csrrw x13, 0x38d, x16	// Write all 1s to CSR
	csrrw x13, 0x38d, x0	// Write all 0s to CSR
	csrrs x13, 0x38d, x16	// Set all CSR bits
	csrrc x13, 0x38d, x16	// Clear all CSR bits
	csrrw x13, 0x38d, x3	// Restore CSR

// Testing CSR 0x38e
	csrr x19, 0x38e	// Read CSR
	li x31, -1
	csrrw x14, 0x38e, x31	// Write all 1s to CSR
	csrrw x14, 0x38e, x0	// Write all 0s to CSR
	csrrs x14, 0x38e, x31	// Set all CSR bits
	csrrc x14, 0x38e, x31	// Clear all CSR bits
	csrrw x14, 0x38e, x19	// Restore CSR

// Testing CSR 0x38f
	csrr x18, 0x38f	// Read CSR
	li x3, -1
	csrrw x9, 0x38f, x3	// Write all 1s to CSR
	csrrw x9, 0x38f, x0	// Write all 0s to CSR
	csrrs x9, 0x38f, x3	// Set all CSR bits
	csrrc x9, 0x38f, x3	// Clear all CSR bits
	csrrw x9, 0x38f, x18	// Restore CSR

// Testing CSR 0x390
	csrr x16, 0x390	// Read CSR
	li x8, -1
	csrrw x27, 0x390, x8	// Write all 1s to CSR
	csrrw x27, 0x390, x0	// Write all 0s to CSR
	csrrs x27, 0x390, x8	// Set all CSR bits
	csrrc x27, 0x390, x8	// Clear all CSR bits
	csrrw x27, 0x390, x16	// Restore CSR

// Testing CSR 0x391
	csrr x4, 0x391	// Read CSR
	li x10, -1
	csrrw x5, 0x391, x10	// Write all 1s to CSR
	csrrw x5, 0x391, x0	// Write all 0s to CSR
	csrrs x5, 0x391, x10	// Set all CSR bits
	csrrc x5, 0x391, x10	// Clear all CSR bits
	csrrw x5, 0x391, x4	// Restore CSR

// Testing CSR 0x392
	csrr x12, 0x392	// Read CSR
	li x26, -1
	csrrw x4, 0x392, x26	// Write all 1s to CSR
	csrrw x4, 0x392, x0	// Write all 0s to CSR
	csrrs x4, 0x392, x26	// Set all CSR bits
	csrrc x4, 0x392, x26	// Clear all CSR bits
	csrrw x4, 0x392, x12	// Restore CSR

// Testing CSR 0x393
	csrr x5, 0x393	// Read CSR
	li x22, -1
	csrrw x28, 0x393, x22	// Write all 1s to CSR
	csrrw x28, 0x393, x0	// Write all 0s to CSR
	csrrs x28, 0x393, x22	// Set all CSR bits
	csrrc x28, 0x393, x22	// Clear all CSR bits
	csrrw x28, 0x393, x5	// Restore CSR

// Testing CSR 0x394
	csrr x2, 0x394	// Read CSR
	li x27, -1
	csrrw x22, 0x394, x27	// Write all 1s to CSR
	csrrw x22, 0x394, x0	// Write all 0s to CSR
	csrrs x22, 0x394, x27	// Set all CSR bits
	csrrc x22, 0x394, x27	// Clear all CSR bits
	csrrw x22, 0x394, x2	// Restore CSR

// Testing CSR 0x395
	csrr x5, 0x395	// Read CSR
	li x19, -1
	csrrw x18, 0x395, x19	// Write all 1s to CSR
	csrrw x18, 0x395, x0	// Write all 0s to CSR
	csrrs x18, 0x395, x19	// Set all CSR bits
	csrrc x18, 0x395, x19	// Clear all CSR bits
	csrrw x18, 0x395, x5	// Restore CSR

// Testing CSR 0x396
	csrr x7, 0x396	// Read CSR
	li x1, -1
	csrrw x2, 0x396, x1	// Write all 1s to CSR
	csrrw x2, 0x396, x0	// Write all 0s to CSR
	csrrs x2, 0x396, x1	// Set all CSR bits
	csrrc x2, 0x396, x1	// Clear all CSR bits
	csrrw x2, 0x396, x7	// Restore CSR

// Testing CSR 0x397
	csrr x28, 0x397	// Read CSR
	li x13, -1
	csrrw x18, 0x397, x13	// Write all 1s to CSR
	csrrw x18, 0x397, x0	// Write all 0s to CSR
	csrrs x18, 0x397, x13	// Set all CSR bits
	csrrc x18, 0x397, x13	// Clear all CSR bits
	csrrw x18, 0x397, x28	// Restore CSR

// Testing CSR 0x398
	csrr x23, 0x398	// Read CSR
	li x25, -1
	csrrw x20, 0x398, x25	// Write all 1s to CSR
	csrrw x20, 0x398, x0	// Write all 0s to CSR
	csrrs x20, 0x398, x25	// Set all CSR bits
	csrrc x20, 0x398, x25	// Clear all CSR bits
	csrrw x20, 0x398, x23	// Restore CSR

// Testing CSR 0x399
	csrr x16, 0x399	// Read CSR
	li x23, -1
	csrrw x4, 0x399, x23	// Write all 1s to CSR
	csrrw x4, 0x399, x0	// Write all 0s to CSR
	csrrs x4, 0x399, x23	// Set all CSR bits
	csrrc x4, 0x399, x23	// Clear all CSR bits
	csrrw x4, 0x399, x16	// Restore CSR

// Testing CSR 0x39a
	csrr x30, 0x39a	// Read CSR
	li x16, -1
	csrrw x18, 0x39a, x16	// Write all 1s to CSR
	csrrw x18, 0x39a, x0	// Write all 0s to CSR
	csrrs x18, 0x39a, x16	// Set all CSR bits
	csrrc x18, 0x39a, x16	// Clear all CSR bits
	csrrw x18, 0x39a, x30	// Restore CSR

// Testing CSR 0x39b
	csrr x12, 0x39b	// Read CSR
	li x28, -1
	csrrw x25, 0x39b, x28	// Write all 1s to CSR
	csrrw x25, 0x39b, x0	// Write all 0s to CSR
	csrrs x25, 0x39b, x28	// Set all CSR bits
	csrrc x25, 0x39b, x28	// Clear all CSR bits
	csrrw x25, 0x39b, x12	// Restore CSR

// Testing CSR 0x39c
	csrr x11, 0x39c	// Read CSR
	li x28, -1
	csrrw x4, 0x39c, x28	// Write all 1s to CSR
	csrrw x4, 0x39c, x0	// Write all 0s to CSR
	csrrs x4, 0x39c, x28	// Set all CSR bits
	csrrc x4, 0x39c, x28	// Clear all CSR bits
	csrrw x4, 0x39c, x11	// Restore CSR

// Testing CSR 0x39d
	csrr x22, 0x39d	// Read CSR
	li x1, -1
	csrrw x8, 0x39d, x1	// Write all 1s to CSR
	csrrw x8, 0x39d, x0	// Write all 0s to CSR
	csrrs x8, 0x39d, x1	// Set all CSR bits
	csrrc x8, 0x39d, x1	// Clear all CSR bits
	csrrw x8, 0x39d, x22	// Restore CSR

// Testing CSR 0x39e
	csrr x8, 0x39e	// Read CSR
	li x16, -1
	csrrw x27, 0x39e, x16	// Write all 1s to CSR
	csrrw x27, 0x39e, x0	// Write all 0s to CSR
	csrrs x27, 0x39e, x16	// Set all CSR bits
	csrrc x27, 0x39e, x16	// Clear all CSR bits
	csrrw x27, 0x39e, x8	// Restore CSR

// Testing CSR 0x39f
	csrr x10, 0x39f	// Read CSR
	li x9, -1
	csrrw x8, 0x39f, x9	// Write all 1s to CSR
	csrrw x8, 0x39f, x0	// Write all 0s to CSR
	csrrs x8, 0x39f, x9	// Set all CSR bits
	csrrc x8, 0x39f, x9	// Clear all CSR bits
	csrrw x8, 0x39f, x10	// Restore CSR

// Testing CSR 0x3a0
	csrr x1, 0x3a0	// Read CSR
	li x16, -1
	csrrw x12, 0x3a0, x16	// Write all 1s to CSR
	csrrw x12, 0x3a0, x0	// Write all 0s to CSR
	csrrs x12, 0x3a0, x16	// Set all CSR bits
	csrrc x12, 0x3a0, x16	// Clear all CSR bits
	csrrw x12, 0x3a0, x1	// Restore CSR

// Testing CSR 0x3a1
	csrr x31, 0x3a1	// Read CSR
	li x30, -1
	csrrw x17, 0x3a1, x30	// Write all 1s to CSR
	csrrw x17, 0x3a1, x0	// Write all 0s to CSR
	csrrs x17, 0x3a1, x30	// Set all CSR bits
	csrrc x17, 0x3a1, x30	// Clear all CSR bits
	csrrw x17, 0x3a1, x31	// Restore CSR

// Testing CSR 0x3a2
	csrr x11, 0x3a2	// Read CSR
	li x3, -1
	csrrw x10, 0x3a2, x3	// Write all 1s to CSR
	csrrw x10, 0x3a2, x0	// Write all 0s to CSR
	csrrs x10, 0x3a2, x3	// Set all CSR bits
	csrrc x10, 0x3a2, x3	// Clear all CSR bits
	csrrw x10, 0x3a2, x11	// Restore CSR

// Testing CSR 0x3a3
	csrr x19, 0x3a3	// Read CSR
	li x14, -1
	csrrw x8, 0x3a3, x14	// Write all 1s to CSR
	csrrw x8, 0x3a3, x0	// Write all 0s to CSR
	csrrs x8, 0x3a3, x14	// Set all CSR bits
	csrrc x8, 0x3a3, x14	// Clear all CSR bits
	csrrw x8, 0x3a3, x19	// Restore CSR

// Testing CSR 0x3a4
	csrr x24, 0x3a4	// Read CSR
	li x12, -1
	csrrw x31, 0x3a4, x12	// Write all 1s to CSR
	csrrw x31, 0x3a4, x0	// Write all 0s to CSR
	csrrs x31, 0x3a4, x12	// Set all CSR bits
	csrrc x31, 0x3a4, x12	// Clear all CSR bits
	csrrw x31, 0x3a4, x24	// Restore CSR

// Testing CSR 0x3a5
	csrr x13, 0x3a5	// Read CSR
	li x28, -1
	csrrw x25, 0x3a5, x28	// Write all 1s to CSR
	csrrw x25, 0x3a5, x0	// Write all 0s to CSR
	csrrs x25, 0x3a5, x28	// Set all CSR bits
	csrrc x25, 0x3a5, x28	// Clear all CSR bits
	csrrw x25, 0x3a5, x13	// Restore CSR

// Testing CSR 0x3a6
	csrr x5, 0x3a6	// Read CSR
	li x8, -1
	csrrw x10, 0x3a6, x8	// Write all 1s to CSR
	csrrw x10, 0x3a6, x0	// Write all 0s to CSR
	csrrs x10, 0x3a6, x8	// Set all CSR bits
	csrrc x10, 0x3a6, x8	// Clear all CSR bits
	csrrw x10, 0x3a6, x5	// Restore CSR

// Testing CSR 0x3a7
	csrr x30, 0x3a7	// Read CSR
	li x7, -1
	csrrw x24, 0x3a7, x7	// Write all 1s to CSR
	csrrw x24, 0x3a7, x0	// Write all 0s to CSR
	csrrs x24, 0x3a7, x7	// Set all CSR bits
	csrrc x24, 0x3a7, x7	// Clear all CSR bits
	csrrw x24, 0x3a7, x30	// Restore CSR

// Testing CSR 0x3a8
	csrr x25, 0x3a8	// Read CSR
	li x16, -1
	csrrw x22, 0x3a8, x16	// Write all 1s to CSR
	csrrw x22, 0x3a8, x0	// Write all 0s to CSR
	csrrs x22, 0x3a8, x16	// Set all CSR bits
	csrrc x22, 0x3a8, x16	// Clear all CSR bits
	csrrw x22, 0x3a8, x25	// Restore CSR

// Testing CSR 0x3a9
	csrr x29, 0x3a9	// Read CSR
	li x26, -1
	csrrw x12, 0x3a9, x26	// Write all 1s to CSR
	csrrw x12, 0x3a9, x0	// Write all 0s to CSR
	csrrs x12, 0x3a9, x26	// Set all CSR bits
	csrrc x12, 0x3a9, x26	// Clear all CSR bits
	csrrw x12, 0x3a9, x29	// Restore CSR

// Testing CSR 0x3aa
	csrr x10, 0x3aa	// Read CSR
	li x13, -1
	csrrw x20, 0x3aa, x13	// Write all 1s to CSR
	csrrw x20, 0x3aa, x0	// Write all 0s to CSR
	csrrs x20, 0x3aa, x13	// Set all CSR bits
	csrrc x20, 0x3aa, x13	// Clear all CSR bits
	csrrw x20, 0x3aa, x10	// Restore CSR

// Testing CSR 0x3ab
	csrr x5, 0x3ab	// Read CSR
	li x27, -1
	csrrw x25, 0x3ab, x27	// Write all 1s to CSR
	csrrw x25, 0x3ab, x0	// Write all 0s to CSR
	csrrs x25, 0x3ab, x27	// Set all CSR bits
	csrrc x25, 0x3ab, x27	// Clear all CSR bits
	csrrw x25, 0x3ab, x5	// Restore CSR

// Testing CSR 0x3ac
	csrr x4, 0x3ac	// Read CSR
	li x13, -1
	csrrw x12, 0x3ac, x13	// Write all 1s to CSR
	csrrw x12, 0x3ac, x0	// Write all 0s to CSR
	csrrs x12, 0x3ac, x13	// Set all CSR bits
	csrrc x12, 0x3ac, x13	// Clear all CSR bits
	csrrw x12, 0x3ac, x4	// Restore CSR

// Testing CSR 0x3ad
	csrr x17, 0x3ad	// Read CSR
	li x28, -1
	csrrw x16, 0x3ad, x28	// Write all 1s to CSR
	csrrw x16, 0x3ad, x0	// Write all 0s to CSR
	csrrs x16, 0x3ad, x28	// Set all CSR bits
	csrrc x16, 0x3ad, x28	// Clear all CSR bits
	csrrw x16, 0x3ad, x17	// Restore CSR

// Testing CSR 0x3ae
	csrr x8, 0x3ae	// Read CSR
	li x21, -1
	csrrw x23, 0x3ae, x21	// Write all 1s to CSR
	csrrw x23, 0x3ae, x0	// Write all 0s to CSR
	csrrs x23, 0x3ae, x21	// Set all CSR bits
	csrrc x23, 0x3ae, x21	// Clear all CSR bits
	csrrw x23, 0x3ae, x8	// Restore CSR

// Testing CSR 0x3af
	csrr x12, 0x3af	// Read CSR
	li x21, -1
	csrrw x30, 0x3af, x21	// Write all 1s to CSR
	csrrw x30, 0x3af, x0	// Write all 0s to CSR
	csrrs x30, 0x3af, x21	// Set all CSR bits
	csrrc x30, 0x3af, x21	// Clear all CSR bits
	csrrw x30, 0x3af, x12	// Restore CSR

// Testing CSR 0x3b0
	csrr x12, 0x3b0	// Read CSR
	li x14, -1
	csrrw x9, 0x3b0, x14	// Write all 1s to CSR
	csrrw x9, 0x3b0, x0	// Write all 0s to CSR
	csrrs x9, 0x3b0, x14	// Set all CSR bits
	csrrc x9, 0x3b0, x14	// Clear all CSR bits
	csrrw x9, 0x3b0, x12	// Restore CSR

// Testing CSR 0x3b1
	csrr x12, 0x3b1	// Read CSR
	li x13, -1
	csrrw x25, 0x3b1, x13	// Write all 1s to CSR
	csrrw x25, 0x3b1, x0	// Write all 0s to CSR
	csrrs x25, 0x3b1, x13	// Set all CSR bits
	csrrc x25, 0x3b1, x13	// Clear all CSR bits
	csrrw x25, 0x3b1, x12	// Restore CSR

// Testing CSR 0x3b2
	csrr x25, 0x3b2	// Read CSR
	li x23, -1
	csrrw x10, 0x3b2, x23	// Write all 1s to CSR
	csrrw x10, 0x3b2, x0	// Write all 0s to CSR
	csrrs x10, 0x3b2, x23	// Set all CSR bits
	csrrc x10, 0x3b2, x23	// Clear all CSR bits
	csrrw x10, 0x3b2, x25	// Restore CSR

// Testing CSR 0x3b3
	csrr x28, 0x3b3	// Read CSR
	li x4, -1
	csrrw x16, 0x3b3, x4	// Write all 1s to CSR
	csrrw x16, 0x3b3, x0	// Write all 0s to CSR
	csrrs x16, 0x3b3, x4	// Set all CSR bits
	csrrc x16, 0x3b3, x4	// Clear all CSR bits
	csrrw x16, 0x3b3, x28	// Restore CSR

// Testing CSR 0x3b4
	csrr x29, 0x3b4	// Read CSR
	li x10, -1
	csrrw x4, 0x3b4, x10	// Write all 1s to CSR
	csrrw x4, 0x3b4, x0	// Write all 0s to CSR
	csrrs x4, 0x3b4, x10	// Set all CSR bits
	csrrc x4, 0x3b4, x10	// Clear all CSR bits
	csrrw x4, 0x3b4, x29	// Restore CSR

// Testing CSR 0x3b5
	csrr x15, 0x3b5	// Read CSR
	li x5, -1
	csrrw x12, 0x3b5, x5	// Write all 1s to CSR
	csrrw x12, 0x3b5, x0	// Write all 0s to CSR
	csrrs x12, 0x3b5, x5	// Set all CSR bits
	csrrc x12, 0x3b5, x5	// Clear all CSR bits
	csrrw x12, 0x3b5, x15	// Restore CSR

// Testing CSR 0x3b6
	csrr x30, 0x3b6	// Read CSR
	li x8, -1
	csrrw x24, 0x3b6, x8	// Write all 1s to CSR
	csrrw x24, 0x3b6, x0	// Write all 0s to CSR
	csrrs x24, 0x3b6, x8	// Set all CSR bits
	csrrc x24, 0x3b6, x8	// Clear all CSR bits
	csrrw x24, 0x3b6, x30	// Restore CSR

// Testing CSR 0x3b7
	csrr x6, 0x3b7	// Read CSR
	li x30, -1
	csrrw x31, 0x3b7, x30	// Write all 1s to CSR
	csrrw x31, 0x3b7, x0	// Write all 0s to CSR
	csrrs x31, 0x3b7, x30	// Set all CSR bits
	csrrc x31, 0x3b7, x30	// Clear all CSR bits
	csrrw x31, 0x3b7, x6	// Restore CSR

// Testing CSR 0x3b8
	csrr x11, 0x3b8	// Read CSR
	li x16, -1
	csrrw x8, 0x3b8, x16	// Write all 1s to CSR
	csrrw x8, 0x3b8, x0	// Write all 0s to CSR
	csrrs x8, 0x3b8, x16	// Set all CSR bits
	csrrc x8, 0x3b8, x16	// Clear all CSR bits
	csrrw x8, 0x3b8, x11	// Restore CSR

// Testing CSR 0x3b9
	csrr x4, 0x3b9	// Read CSR
	li x22, -1
	csrrw x13, 0x3b9, x22	// Write all 1s to CSR
	csrrw x13, 0x3b9, x0	// Write all 0s to CSR
	csrrs x13, 0x3b9, x22	// Set all CSR bits
	csrrc x13, 0x3b9, x22	// Clear all CSR bits
	csrrw x13, 0x3b9, x4	// Restore CSR

// Testing CSR 0x3ba
	csrr x13, 0x3ba	// Read CSR
	li x15, -1
	csrrw x17, 0x3ba, x15	// Write all 1s to CSR
	csrrw x17, 0x3ba, x0	// Write all 0s to CSR
	csrrs x17, 0x3ba, x15	// Set all CSR bits
	csrrc x17, 0x3ba, x15	// Clear all CSR bits
	csrrw x17, 0x3ba, x13	// Restore CSR

// Testing CSR 0x3bb
	csrr x15, 0x3bb	// Read CSR
	li x30, -1
	csrrw x19, 0x3bb, x30	// Write all 1s to CSR
	csrrw x19, 0x3bb, x0	// Write all 0s to CSR
	csrrs x19, 0x3bb, x30	// Set all CSR bits
	csrrc x19, 0x3bb, x30	// Clear all CSR bits
	csrrw x19, 0x3bb, x15	// Restore CSR

// Testing CSR 0x3bc
	csrr x27, 0x3bc	// Read CSR
	li x20, -1
	csrrw x8, 0x3bc, x20	// Write all 1s to CSR
	csrrw x8, 0x3bc, x0	// Write all 0s to CSR
	csrrs x8, 0x3bc, x20	// Set all CSR bits
	csrrc x8, 0x3bc, x20	// Clear all CSR bits
	csrrw x8, 0x3bc, x27	// Restore CSR

// Testing CSR 0x3bd
	csrr x22, 0x3bd	// Read CSR
	li x13, -1
	csrrw x17, 0x3bd, x13	// Write all 1s to CSR
	csrrw x17, 0x3bd, x0	// Write all 0s to CSR
	csrrs x17, 0x3bd, x13	// Set all CSR bits
	csrrc x17, 0x3bd, x13	// Clear all CSR bits
	csrrw x17, 0x3bd, x22	// Restore CSR

// Testing CSR 0x3be
	csrr x10, 0x3be	// Read CSR
	li x16, -1
	csrrw x8, 0x3be, x16	// Write all 1s to CSR
	csrrw x8, 0x3be, x0	// Write all 0s to CSR
	csrrs x8, 0x3be, x16	// Set all CSR bits
	csrrc x8, 0x3be, x16	// Clear all CSR bits
	csrrw x8, 0x3be, x10	// Restore CSR

// Testing CSR 0x3bf
	csrr x11, 0x3bf	// Read CSR
	li x17, -1
	csrrw x22, 0x3bf, x17	// Write all 1s to CSR
	csrrw x22, 0x3bf, x0	// Write all 0s to CSR
	csrrs x22, 0x3bf, x17	// Set all CSR bits
	csrrc x22, 0x3bf, x17	// Clear all CSR bits
	csrrw x22, 0x3bf, x11	// Restore CSR

// Testing CSR 0x3c0
	csrr x1, 0x3c0	// Read CSR
	li x3, -1
	csrrw x16, 0x3c0, x3	// Write all 1s to CSR
	csrrw x16, 0x3c0, x0	// Write all 0s to CSR
	csrrs x16, 0x3c0, x3	// Set all CSR bits
	csrrc x16, 0x3c0, x3	// Clear all CSR bits
	csrrw x16, 0x3c0, x1	// Restore CSR

// Testing CSR 0x3c1
	csrr x11, 0x3c1	// Read CSR
	li x13, -1
	csrrw x29, 0x3c1, x13	// Write all 1s to CSR
	csrrw x29, 0x3c1, x0	// Write all 0s to CSR
	csrrs x29, 0x3c1, x13	// Set all CSR bits
	csrrc x29, 0x3c1, x13	// Clear all CSR bits
	csrrw x29, 0x3c1, x11	// Restore CSR

// Testing CSR 0x3c2
	csrr x31, 0x3c2	// Read CSR
	li x8, -1
	csrrw x27, 0x3c2, x8	// Write all 1s to CSR
	csrrw x27, 0x3c2, x0	// Write all 0s to CSR
	csrrs x27, 0x3c2, x8	// Set all CSR bits
	csrrc x27, 0x3c2, x8	// Clear all CSR bits
	csrrw x27, 0x3c2, x31	// Restore CSR

// Testing CSR 0x3c3
	csrr x31, 0x3c3	// Read CSR
	li x14, -1
	csrrw x2, 0x3c3, x14	// Write all 1s to CSR
	csrrw x2, 0x3c3, x0	// Write all 0s to CSR
	csrrs x2, 0x3c3, x14	// Set all CSR bits
	csrrc x2, 0x3c3, x14	// Clear all CSR bits
	csrrw x2, 0x3c3, x31	// Restore CSR

// Testing CSR 0x3c4
	csrr x19, 0x3c4	// Read CSR
	li x25, -1
	csrrw x2, 0x3c4, x25	// Write all 1s to CSR
	csrrw x2, 0x3c4, x0	// Write all 0s to CSR
	csrrs x2, 0x3c4, x25	// Set all CSR bits
	csrrc x2, 0x3c4, x25	// Clear all CSR bits
	csrrw x2, 0x3c4, x19	// Restore CSR

// Testing CSR 0x3c5
	csrr x14, 0x3c5	// Read CSR
	li x3, -1
	csrrw x9, 0x3c5, x3	// Write all 1s to CSR
	csrrw x9, 0x3c5, x0	// Write all 0s to CSR
	csrrs x9, 0x3c5, x3	// Set all CSR bits
	csrrc x9, 0x3c5, x3	// Clear all CSR bits
	csrrw x9, 0x3c5, x14	// Restore CSR

// Testing CSR 0x3c6
	csrr x7, 0x3c6	// Read CSR
	li x24, -1
	csrrw x11, 0x3c6, x24	// Write all 1s to CSR
	csrrw x11, 0x3c6, x0	// Write all 0s to CSR
	csrrs x11, 0x3c6, x24	// Set all CSR bits
	csrrc x11, 0x3c6, x24	// Clear all CSR bits
	csrrw x11, 0x3c6, x7	// Restore CSR

// Testing CSR 0x3c7
	csrr x6, 0x3c7	// Read CSR
	li x4, -1
	csrrw x26, 0x3c7, x4	// Write all 1s to CSR
	csrrw x26, 0x3c7, x0	// Write all 0s to CSR
	csrrs x26, 0x3c7, x4	// Set all CSR bits
	csrrc x26, 0x3c7, x4	// Clear all CSR bits
	csrrw x26, 0x3c7, x6	// Restore CSR

// Testing CSR 0x3c8
	csrr x23, 0x3c8	// Read CSR
	li x12, -1
	csrrw x1, 0x3c8, x12	// Write all 1s to CSR
	csrrw x1, 0x3c8, x0	// Write all 0s to CSR
	csrrs x1, 0x3c8, x12	// Set all CSR bits
	csrrc x1, 0x3c8, x12	// Clear all CSR bits
	csrrw x1, 0x3c8, x23	// Restore CSR

// Testing CSR 0x3c9
	csrr x8, 0x3c9	// Read CSR
	li x31, -1
	csrrw x2, 0x3c9, x31	// Write all 1s to CSR
	csrrw x2, 0x3c9, x0	// Write all 0s to CSR
	csrrs x2, 0x3c9, x31	// Set all CSR bits
	csrrc x2, 0x3c9, x31	// Clear all CSR bits
	csrrw x2, 0x3c9, x8	// Restore CSR

// Testing CSR 0x3ca
	csrr x1, 0x3ca	// Read CSR
	li x13, -1
	csrrw x18, 0x3ca, x13	// Write all 1s to CSR
	csrrw x18, 0x3ca, x0	// Write all 0s to CSR
	csrrs x18, 0x3ca, x13	// Set all CSR bits
	csrrc x18, 0x3ca, x13	// Clear all CSR bits
	csrrw x18, 0x3ca, x1	// Restore CSR

// Testing CSR 0x3cb
	csrr x1, 0x3cb	// Read CSR
	li x5, -1
	csrrw x4, 0x3cb, x5	// Write all 1s to CSR
	csrrw x4, 0x3cb, x0	// Write all 0s to CSR
	csrrs x4, 0x3cb, x5	// Set all CSR bits
	csrrc x4, 0x3cb, x5	// Clear all CSR bits
	csrrw x4, 0x3cb, x1	// Restore CSR

// Testing CSR 0x3cc
	csrr x27, 0x3cc	// Read CSR
	li x20, -1
	csrrw x30, 0x3cc, x20	// Write all 1s to CSR
	csrrw x30, 0x3cc, x0	// Write all 0s to CSR
	csrrs x30, 0x3cc, x20	// Set all CSR bits
	csrrc x30, 0x3cc, x20	// Clear all CSR bits
	csrrw x30, 0x3cc, x27	// Restore CSR

// Testing CSR 0x3cd
	csrr x30, 0x3cd	// Read CSR
	li x7, -1
	csrrw x3, 0x3cd, x7	// Write all 1s to CSR
	csrrw x3, 0x3cd, x0	// Write all 0s to CSR
	csrrs x3, 0x3cd, x7	// Set all CSR bits
	csrrc x3, 0x3cd, x7	// Clear all CSR bits
	csrrw x3, 0x3cd, x30	// Restore CSR

// Testing CSR 0x3ce
	csrr x24, 0x3ce	// Read CSR
	li x15, -1
	csrrw x7, 0x3ce, x15	// Write all 1s to CSR
	csrrw x7, 0x3ce, x0	// Write all 0s to CSR
	csrrs x7, 0x3ce, x15	// Set all CSR bits
	csrrc x7, 0x3ce, x15	// Clear all CSR bits
	csrrw x7, 0x3ce, x24	// Restore CSR

// Testing CSR 0x3cf
	csrr x28, 0x3cf	// Read CSR
	li x1, -1
	csrrw x17, 0x3cf, x1	// Write all 1s to CSR
	csrrw x17, 0x3cf, x0	// Write all 0s to CSR
	csrrs x17, 0x3cf, x1	// Set all CSR bits
	csrrc x17, 0x3cf, x1	// Clear all CSR bits
	csrrw x17, 0x3cf, x28	// Restore CSR

// Testing CSR 0x3d0
	csrr x29, 0x3d0	// Read CSR
	li x20, -1
	csrrw x28, 0x3d0, x20	// Write all 1s to CSR
	csrrw x28, 0x3d0, x0	// Write all 0s to CSR
	csrrs x28, 0x3d0, x20	// Set all CSR bits
	csrrc x28, 0x3d0, x20	// Clear all CSR bits
	csrrw x28, 0x3d0, x29	// Restore CSR

// Testing CSR 0x3d1
	csrr x14, 0x3d1	// Read CSR
	li x3, -1
	csrrw x18, 0x3d1, x3	// Write all 1s to CSR
	csrrw x18, 0x3d1, x0	// Write all 0s to CSR
	csrrs x18, 0x3d1, x3	// Set all CSR bits
	csrrc x18, 0x3d1, x3	// Clear all CSR bits
	csrrw x18, 0x3d1, x14	// Restore CSR

// Testing CSR 0x3d2
	csrr x6, 0x3d2	// Read CSR
	li x30, -1
	csrrw x8, 0x3d2, x30	// Write all 1s to CSR
	csrrw x8, 0x3d2, x0	// Write all 0s to CSR
	csrrs x8, 0x3d2, x30	// Set all CSR bits
	csrrc x8, 0x3d2, x30	// Clear all CSR bits
	csrrw x8, 0x3d2, x6	// Restore CSR

// Testing CSR 0x3d3
	csrr x8, 0x3d3	// Read CSR
	li x30, -1
	csrrw x14, 0x3d3, x30	// Write all 1s to CSR
	csrrw x14, 0x3d3, x0	// Write all 0s to CSR
	csrrs x14, 0x3d3, x30	// Set all CSR bits
	csrrc x14, 0x3d3, x30	// Clear all CSR bits
	csrrw x14, 0x3d3, x8	// Restore CSR

// Testing CSR 0x3d4
	csrr x13, 0x3d4	// Read CSR
	li x16, -1
	csrrw x26, 0x3d4, x16	// Write all 1s to CSR
	csrrw x26, 0x3d4, x0	// Write all 0s to CSR
	csrrs x26, 0x3d4, x16	// Set all CSR bits
	csrrc x26, 0x3d4, x16	// Clear all CSR bits
	csrrw x26, 0x3d4, x13	// Restore CSR

// Testing CSR 0x3d5
	csrr x1, 0x3d5	// Read CSR
	li x14, -1
	csrrw x7, 0x3d5, x14	// Write all 1s to CSR
	csrrw x7, 0x3d5, x0	// Write all 0s to CSR
	csrrs x7, 0x3d5, x14	// Set all CSR bits
	csrrc x7, 0x3d5, x14	// Clear all CSR bits
	csrrw x7, 0x3d5, x1	// Restore CSR

// Testing CSR 0x3d6
	csrr x13, 0x3d6	// Read CSR
	li x25, -1
	csrrw x2, 0x3d6, x25	// Write all 1s to CSR
	csrrw x2, 0x3d6, x0	// Write all 0s to CSR
	csrrs x2, 0x3d6, x25	// Set all CSR bits
	csrrc x2, 0x3d6, x25	// Clear all CSR bits
	csrrw x2, 0x3d6, x13	// Restore CSR

// Testing CSR 0x3d7
	csrr x20, 0x3d7	// Read CSR
	li x31, -1
	csrrw x9, 0x3d7, x31	// Write all 1s to CSR
	csrrw x9, 0x3d7, x0	// Write all 0s to CSR
	csrrs x9, 0x3d7, x31	// Set all CSR bits
	csrrc x9, 0x3d7, x31	// Clear all CSR bits
	csrrw x9, 0x3d7, x20	// Restore CSR

// Testing CSR 0x3d8
	csrr x1, 0x3d8	// Read CSR
	li x19, -1
	csrrw x12, 0x3d8, x19	// Write all 1s to CSR
	csrrw x12, 0x3d8, x0	// Write all 0s to CSR
	csrrs x12, 0x3d8, x19	// Set all CSR bits
	csrrc x12, 0x3d8, x19	// Clear all CSR bits
	csrrw x12, 0x3d8, x1	// Restore CSR

// Testing CSR 0x3d9
	csrr x23, 0x3d9	// Read CSR
	li x12, -1
	csrrw x27, 0x3d9, x12	// Write all 1s to CSR
	csrrw x27, 0x3d9, x0	// Write all 0s to CSR
	csrrs x27, 0x3d9, x12	// Set all CSR bits
	csrrc x27, 0x3d9, x12	// Clear all CSR bits
	csrrw x27, 0x3d9, x23	// Restore CSR

// Testing CSR 0x3da
	csrr x11, 0x3da	// Read CSR
	li x22, -1
	csrrw x15, 0x3da, x22	// Write all 1s to CSR
	csrrw x15, 0x3da, x0	// Write all 0s to CSR
	csrrs x15, 0x3da, x22	// Set all CSR bits
	csrrc x15, 0x3da, x22	// Clear all CSR bits
	csrrw x15, 0x3da, x11	// Restore CSR

// Testing CSR 0x3db
	csrr x21, 0x3db	// Read CSR
	li x5, -1
	csrrw x20, 0x3db, x5	// Write all 1s to CSR
	csrrw x20, 0x3db, x0	// Write all 0s to CSR
	csrrs x20, 0x3db, x5	// Set all CSR bits
	csrrc x20, 0x3db, x5	// Clear all CSR bits
	csrrw x20, 0x3db, x21	// Restore CSR

// Testing CSR 0x3dc
	csrr x17, 0x3dc	// Read CSR
	li x3, -1
	csrrw x9, 0x3dc, x3	// Write all 1s to CSR
	csrrw x9, 0x3dc, x0	// Write all 0s to CSR
	csrrs x9, 0x3dc, x3	// Set all CSR bits
	csrrc x9, 0x3dc, x3	// Clear all CSR bits
	csrrw x9, 0x3dc, x17	// Restore CSR

// Testing CSR 0x3dd
	csrr x31, 0x3dd	// Read CSR
	li x4, -1
	csrrw x23, 0x3dd, x4	// Write all 1s to CSR
	csrrw x23, 0x3dd, x0	// Write all 0s to CSR
	csrrs x23, 0x3dd, x4	// Set all CSR bits
	csrrc x23, 0x3dd, x4	// Clear all CSR bits
	csrrw x23, 0x3dd, x31	// Restore CSR

// Testing CSR 0x3de
	csrr x4, 0x3de	// Read CSR
	li x9, -1
	csrrw x1, 0x3de, x9	// Write all 1s to CSR
	csrrw x1, 0x3de, x0	// Write all 0s to CSR
	csrrs x1, 0x3de, x9	// Set all CSR bits
	csrrc x1, 0x3de, x9	// Clear all CSR bits
	csrrw x1, 0x3de, x4	// Restore CSR

// Testing CSR 0x3df
	csrr x23, 0x3df	// Read CSR
	li x5, -1
	csrrw x20, 0x3df, x5	// Write all 1s to CSR
	csrrw x20, 0x3df, x0	// Write all 0s to CSR
	csrrs x20, 0x3df, x5	// Set all CSR bits
	csrrc x20, 0x3df, x5	// Clear all CSR bits
	csrrw x20, 0x3df, x23	// Restore CSR

// Testing CSR 0x3e0
	csrr x25, 0x3e0	// Read CSR
	li x22, -1
	csrrw x5, 0x3e0, x22	// Write all 1s to CSR
	csrrw x5, 0x3e0, x0	// Write all 0s to CSR
	csrrs x5, 0x3e0, x22	// Set all CSR bits
	csrrc x5, 0x3e0, x22	// Clear all CSR bits
	csrrw x5, 0x3e0, x25	// Restore CSR

// Testing CSR 0x3e1
	csrr x13, 0x3e1	// Read CSR
	li x7, -1
	csrrw x19, 0x3e1, x7	// Write all 1s to CSR
	csrrw x19, 0x3e1, x0	// Write all 0s to CSR
	csrrs x19, 0x3e1, x7	// Set all CSR bits
	csrrc x19, 0x3e1, x7	// Clear all CSR bits
	csrrw x19, 0x3e1, x13	// Restore CSR

// Testing CSR 0x3e2
	csrr x22, 0x3e2	// Read CSR
	li x11, -1
	csrrw x7, 0x3e2, x11	// Write all 1s to CSR
	csrrw x7, 0x3e2, x0	// Write all 0s to CSR
	csrrs x7, 0x3e2, x11	// Set all CSR bits
	csrrc x7, 0x3e2, x11	// Clear all CSR bits
	csrrw x7, 0x3e2, x22	// Restore CSR

// Testing CSR 0x3e3
	csrr x14, 0x3e3	// Read CSR
	li x17, -1
	csrrw x4, 0x3e3, x17	// Write all 1s to CSR
	csrrw x4, 0x3e3, x0	// Write all 0s to CSR
	csrrs x4, 0x3e3, x17	// Set all CSR bits
	csrrc x4, 0x3e3, x17	// Clear all CSR bits
	csrrw x4, 0x3e3, x14	// Restore CSR

// Testing CSR 0x3e4
	csrr x18, 0x3e4	// Read CSR
	li x4, -1
	csrrw x23, 0x3e4, x4	// Write all 1s to CSR
	csrrw x23, 0x3e4, x0	// Write all 0s to CSR
	csrrs x23, 0x3e4, x4	// Set all CSR bits
	csrrc x23, 0x3e4, x4	// Clear all CSR bits
	csrrw x23, 0x3e4, x18	// Restore CSR

// Testing CSR 0x3e5
	csrr x30, 0x3e5	// Read CSR
	li x16, -1
	csrrw x4, 0x3e5, x16	// Write all 1s to CSR
	csrrw x4, 0x3e5, x0	// Write all 0s to CSR
	csrrs x4, 0x3e5, x16	// Set all CSR bits
	csrrc x4, 0x3e5, x16	// Clear all CSR bits
	csrrw x4, 0x3e5, x30	// Restore CSR

// Testing CSR 0x3e6
	csrr x17, 0x3e6	// Read CSR
	li x29, -1
	csrrw x15, 0x3e6, x29	// Write all 1s to CSR
	csrrw x15, 0x3e6, x0	// Write all 0s to CSR
	csrrs x15, 0x3e6, x29	// Set all CSR bits
	csrrc x15, 0x3e6, x29	// Clear all CSR bits
	csrrw x15, 0x3e6, x17	// Restore CSR

// Testing CSR 0x3e7
	csrr x16, 0x3e7	// Read CSR
	li x6, -1
	csrrw x15, 0x3e7, x6	// Write all 1s to CSR
	csrrw x15, 0x3e7, x0	// Write all 0s to CSR
	csrrs x15, 0x3e7, x6	// Set all CSR bits
	csrrc x15, 0x3e7, x6	// Clear all CSR bits
	csrrw x15, 0x3e7, x16	// Restore CSR

// Testing CSR 0x3e8
	csrr x18, 0x3e8	// Read CSR
	li x11, -1
	csrrw x5, 0x3e8, x11	// Write all 1s to CSR
	csrrw x5, 0x3e8, x0	// Write all 0s to CSR
	csrrs x5, 0x3e8, x11	// Set all CSR bits
	csrrc x5, 0x3e8, x11	// Clear all CSR bits
	csrrw x5, 0x3e8, x18	// Restore CSR

// Testing CSR 0x3e9
	csrr x14, 0x3e9	// Read CSR
	li x9, -1
	csrrw x13, 0x3e9, x9	// Write all 1s to CSR
	csrrw x13, 0x3e9, x0	// Write all 0s to CSR
	csrrs x13, 0x3e9, x9	// Set all CSR bits
	csrrc x13, 0x3e9, x9	// Clear all CSR bits
	csrrw x13, 0x3e9, x14	// Restore CSR

// Testing CSR 0x3ea
	csrr x3, 0x3ea	// Read CSR
	li x19, -1
	csrrw x17, 0x3ea, x19	// Write all 1s to CSR
	csrrw x17, 0x3ea, x0	// Write all 0s to CSR
	csrrs x17, 0x3ea, x19	// Set all CSR bits
	csrrc x17, 0x3ea, x19	// Clear all CSR bits
	csrrw x17, 0x3ea, x3	// Restore CSR

// Testing CSR 0x3eb
	csrr x11, 0x3eb	// Read CSR
	li x27, -1
	csrrw x28, 0x3eb, x27	// Write all 1s to CSR
	csrrw x28, 0x3eb, x0	// Write all 0s to CSR
	csrrs x28, 0x3eb, x27	// Set all CSR bits
	csrrc x28, 0x3eb, x27	// Clear all CSR bits
	csrrw x28, 0x3eb, x11	// Restore CSR

// Testing CSR 0x3ec
	csrr x8, 0x3ec	// Read CSR
	li x15, -1
	csrrw x12, 0x3ec, x15	// Write all 1s to CSR
	csrrw x12, 0x3ec, x0	// Write all 0s to CSR
	csrrs x12, 0x3ec, x15	// Set all CSR bits
	csrrc x12, 0x3ec, x15	// Clear all CSR bits
	csrrw x12, 0x3ec, x8	// Restore CSR

// Testing CSR 0x3ed
	csrr x16, 0x3ed	// Read CSR
	li x25, -1
	csrrw x30, 0x3ed, x25	// Write all 1s to CSR
	csrrw x30, 0x3ed, x0	// Write all 0s to CSR
	csrrs x30, 0x3ed, x25	// Set all CSR bits
	csrrc x30, 0x3ed, x25	// Clear all CSR bits
	csrrw x30, 0x3ed, x16	// Restore CSR

// Testing CSR 0x3ee
	csrr x14, 0x3ee	// Read CSR
	li x1, -1
	csrrw x15, 0x3ee, x1	// Write all 1s to CSR
	csrrw x15, 0x3ee, x0	// Write all 0s to CSR
	csrrs x15, 0x3ee, x1	// Set all CSR bits
	csrrc x15, 0x3ee, x1	// Clear all CSR bits
	csrrw x15, 0x3ee, x14	// Restore CSR

// Testing CSR 0x3ef
	csrr x24, 0x3ef	// Read CSR
	li x29, -1
	csrrw x1, 0x3ef, x29	// Write all 1s to CSR
	csrrw x1, 0x3ef, x0	// Write all 0s to CSR
	csrrs x1, 0x3ef, x29	// Set all CSR bits
	csrrc x1, 0x3ef, x29	// Clear all CSR bits
	csrrw x1, 0x3ef, x24	// Restore CSR

// Testing CSR 0x3f0
	csrr x18, 0x3f0	// Read CSR
	li x13, -1
	csrrw x31, 0x3f0, x13	// Write all 1s to CSR
	csrrw x31, 0x3f0, x0	// Write all 0s to CSR
	csrrs x31, 0x3f0, x13	// Set all CSR bits
	csrrc x31, 0x3f0, x13	// Clear all CSR bits
	csrrw x31, 0x3f0, x18	// Restore CSR

// Testing CSR 0x3f1
	csrr x25, 0x3f1	// Read CSR
	li x8, -1
	csrrw x15, 0x3f1, x8	// Write all 1s to CSR
	csrrw x15, 0x3f1, x0	// Write all 0s to CSR
	csrrs x15, 0x3f1, x8	// Set all CSR bits
	csrrc x15, 0x3f1, x8	// Clear all CSR bits
	csrrw x15, 0x3f1, x25	// Restore CSR

// Testing CSR 0x3f2
	csrr x14, 0x3f2	// Read CSR
	li x8, -1
	csrrw x9, 0x3f2, x8	// Write all 1s to CSR
	csrrw x9, 0x3f2, x0	// Write all 0s to CSR
	csrrs x9, 0x3f2, x8	// Set all CSR bits
	csrrc x9, 0x3f2, x8	// Clear all CSR bits
	csrrw x9, 0x3f2, x14	// Restore CSR

// Testing CSR 0x3f3
	csrr x16, 0x3f3	// Read CSR
	li x8, -1
	csrrw x5, 0x3f3, x8	// Write all 1s to CSR
	csrrw x5, 0x3f3, x0	// Write all 0s to CSR
	csrrs x5, 0x3f3, x8	// Set all CSR bits
	csrrc x5, 0x3f3, x8	// Clear all CSR bits
	csrrw x5, 0x3f3, x16	// Restore CSR

// Testing CSR 0x3f4
	csrr x15, 0x3f4	// Read CSR
	li x10, -1
	csrrw x12, 0x3f4, x10	// Write all 1s to CSR
	csrrw x12, 0x3f4, x0	// Write all 0s to CSR
	csrrs x12, 0x3f4, x10	// Set all CSR bits
	csrrc x12, 0x3f4, x10	// Clear all CSR bits
	csrrw x12, 0x3f4, x15	// Restore CSR

// Testing CSR 0x3f5
	csrr x21, 0x3f5	// Read CSR
	li x16, -1
	csrrw x20, 0x3f5, x16	// Write all 1s to CSR
	csrrw x20, 0x3f5, x0	// Write all 0s to CSR
	csrrs x20, 0x3f5, x16	// Set all CSR bits
	csrrc x20, 0x3f5, x16	// Clear all CSR bits
	csrrw x20, 0x3f5, x21	// Restore CSR

// Testing CSR 0x3f6
	csrr x30, 0x3f6	// Read CSR
	li x27, -1
	csrrw x5, 0x3f6, x27	// Write all 1s to CSR
	csrrw x5, 0x3f6, x0	// Write all 0s to CSR
	csrrs x5, 0x3f6, x27	// Set all CSR bits
	csrrc x5, 0x3f6, x27	// Clear all CSR bits
	csrrw x5, 0x3f6, x30	// Restore CSR

// Testing CSR 0x3f7
	csrr x17, 0x3f7	// Read CSR
	li x22, -1
	csrrw x3, 0x3f7, x22	// Write all 1s to CSR
	csrrw x3, 0x3f7, x0	// Write all 0s to CSR
	csrrs x3, 0x3f7, x22	// Set all CSR bits
	csrrc x3, 0x3f7, x22	// Clear all CSR bits
	csrrw x3, 0x3f7, x17	// Restore CSR

// Testing CSR 0x3f8
	csrr x7, 0x3f8	// Read CSR
	li x10, -1
	csrrw x30, 0x3f8, x10	// Write all 1s to CSR
	csrrw x30, 0x3f8, x0	// Write all 0s to CSR
	csrrs x30, 0x3f8, x10	// Set all CSR bits
	csrrc x30, 0x3f8, x10	// Clear all CSR bits
	csrrw x30, 0x3f8, x7	// Restore CSR

// Testing CSR 0x3f9
	csrr x17, 0x3f9	// Read CSR
	li x21, -1
	csrrw x22, 0x3f9, x21	// Write all 1s to CSR
	csrrw x22, 0x3f9, x0	// Write all 0s to CSR
	csrrs x22, 0x3f9, x21	// Set all CSR bits
	csrrc x22, 0x3f9, x21	// Clear all CSR bits
	csrrw x22, 0x3f9, x17	// Restore CSR

// Testing CSR 0x3fa
	csrr x4, 0x3fa	// Read CSR
	li x31, -1
	csrrw x2, 0x3fa, x31	// Write all 1s to CSR
	csrrw x2, 0x3fa, x0	// Write all 0s to CSR
	csrrs x2, 0x3fa, x31	// Set all CSR bits
	csrrc x2, 0x3fa, x31	// Clear all CSR bits
	csrrw x2, 0x3fa, x4	// Restore CSR

// Testing CSR 0x3fb
	csrr x5, 0x3fb	// Read CSR
	li x11, -1
	csrrw x2, 0x3fb, x11	// Write all 1s to CSR
	csrrw x2, 0x3fb, x0	// Write all 0s to CSR
	csrrs x2, 0x3fb, x11	// Set all CSR bits
	csrrc x2, 0x3fb, x11	// Clear all CSR bits
	csrrw x2, 0x3fb, x5	// Restore CSR

// Testing CSR 0x3fc
	csrr x11, 0x3fc	// Read CSR
	li x28, -1
	csrrw x20, 0x3fc, x28	// Write all 1s to CSR
	csrrw x20, 0x3fc, x0	// Write all 0s to CSR
	csrrs x20, 0x3fc, x28	// Set all CSR bits
	csrrc x20, 0x3fc, x28	// Clear all CSR bits
	csrrw x20, 0x3fc, x11	// Restore CSR

// Testing CSR 0x3fd
	csrr x26, 0x3fd	// Read CSR
	li x6, -1
	csrrw x25, 0x3fd, x6	// Write all 1s to CSR
	csrrw x25, 0x3fd, x0	// Write all 0s to CSR
	csrrs x25, 0x3fd, x6	// Set all CSR bits
	csrrc x25, 0x3fd, x6	// Clear all CSR bits
	csrrw x25, 0x3fd, x26	// Restore CSR

// Testing CSR 0x3fe
	csrr x29, 0x3fe	// Read CSR
	li x15, -1
	csrrw x13, 0x3fe, x15	// Write all 1s to CSR
	csrrw x13, 0x3fe, x0	// Write all 0s to CSR
	csrrs x13, 0x3fe, x15	// Set all CSR bits
	csrrc x13, 0x3fe, x15	// Clear all CSR bits
	csrrw x13, 0x3fe, x29	// Restore CSR

// Testing CSR 0x3ff
	csrr x22, 0x3ff	// Read CSR
	li x7, -1
	csrrw x14, 0x3ff, x7	// Write all 1s to CSR
	csrrw x14, 0x3ff, x0	// Write all 0s to CSR
	csrrs x14, 0x3ff, x7	// Set all CSR bits
	csrrc x14, 0x3ff, x7	// Clear all CSR bits
	csrrw x14, 0x3ff, x22	// Restore CSR

// Testing CSR 0x400
	csrr x16, 0x400	// Read CSR
	li x7, -1
	csrrw x6, 0x400, x7	// Write all 1s to CSR
	csrrw x6, 0x400, x0	// Write all 0s to CSR
	csrrs x6, 0x400, x7	// Set all CSR bits
	csrrc x6, 0x400, x7	// Clear all CSR bits
	csrrw x6, 0x400, x16	// Restore CSR

// Testing CSR 0x401
	csrr x13, 0x401	// Read CSR
	li x2, -1
	csrrw x26, 0x401, x2	// Write all 1s to CSR
	csrrw x26, 0x401, x0	// Write all 0s to CSR
	csrrs x26, 0x401, x2	// Set all CSR bits
	csrrc x26, 0x401, x2	// Clear all CSR bits
	csrrw x26, 0x401, x13	// Restore CSR

// Testing CSR 0x402
	csrr x31, 0x402	// Read CSR
	li x26, -1
	csrrw x25, 0x402, x26	// Write all 1s to CSR
	csrrw x25, 0x402, x0	// Write all 0s to CSR
	csrrs x25, 0x402, x26	// Set all CSR bits
	csrrc x25, 0x402, x26	// Clear all CSR bits
	csrrw x25, 0x402, x31	// Restore CSR

// Testing CSR 0x403
	csrr x31, 0x403	// Read CSR
	li x11, -1
	csrrw x29, 0x403, x11	// Write all 1s to CSR
	csrrw x29, 0x403, x0	// Write all 0s to CSR
	csrrs x29, 0x403, x11	// Set all CSR bits
	csrrc x29, 0x403, x11	// Clear all CSR bits
	csrrw x29, 0x403, x31	// Restore CSR

// Testing CSR 0x404
	csrr x25, 0x404	// Read CSR
	li x22, -1
	csrrw x27, 0x404, x22	// Write all 1s to CSR
	csrrw x27, 0x404, x0	// Write all 0s to CSR
	csrrs x27, 0x404, x22	// Set all CSR bits
	csrrc x27, 0x404, x22	// Clear all CSR bits
	csrrw x27, 0x404, x25	// Restore CSR

// Testing CSR 0x405
	csrr x17, 0x405	// Read CSR
	li x7, -1
	csrrw x24, 0x405, x7	// Write all 1s to CSR
	csrrw x24, 0x405, x0	// Write all 0s to CSR
	csrrs x24, 0x405, x7	// Set all CSR bits
	csrrc x24, 0x405, x7	// Clear all CSR bits
	csrrw x24, 0x405, x17	// Restore CSR

// Testing CSR 0x406
	csrr x11, 0x406	// Read CSR
	li x6, -1
	csrrw x17, 0x406, x6	// Write all 1s to CSR
	csrrw x17, 0x406, x0	// Write all 0s to CSR
	csrrs x17, 0x406, x6	// Set all CSR bits
	csrrc x17, 0x406, x6	// Clear all CSR bits
	csrrw x17, 0x406, x11	// Restore CSR

// Testing CSR 0x407
	csrr x30, 0x407	// Read CSR
	li x18, -1
	csrrw x23, 0x407, x18	// Write all 1s to CSR
	csrrw x23, 0x407, x0	// Write all 0s to CSR
	csrrs x23, 0x407, x18	// Set all CSR bits
	csrrc x23, 0x407, x18	// Clear all CSR bits
	csrrw x23, 0x407, x30	// Restore CSR

// Testing CSR 0x408
	csrr x28, 0x408	// Read CSR
	li x20, -1
	csrrw x19, 0x408, x20	// Write all 1s to CSR
	csrrw x19, 0x408, x0	// Write all 0s to CSR
	csrrs x19, 0x408, x20	// Set all CSR bits
	csrrc x19, 0x408, x20	// Clear all CSR bits
	csrrw x19, 0x408, x28	// Restore CSR

// Testing CSR 0x409
	csrr x14, 0x409	// Read CSR
	li x5, -1
	csrrw x21, 0x409, x5	// Write all 1s to CSR
	csrrw x21, 0x409, x0	// Write all 0s to CSR
	csrrs x21, 0x409, x5	// Set all CSR bits
	csrrc x21, 0x409, x5	// Clear all CSR bits
	csrrw x21, 0x409, x14	// Restore CSR

// Testing CSR 0x40a
	csrr x23, 0x40a	// Read CSR
	li x20, -1
	csrrw x16, 0x40a, x20	// Write all 1s to CSR
	csrrw x16, 0x40a, x0	// Write all 0s to CSR
	csrrs x16, 0x40a, x20	// Set all CSR bits
	csrrc x16, 0x40a, x20	// Clear all CSR bits
	csrrw x16, 0x40a, x23	// Restore CSR

// Testing CSR 0x40b
	csrr x29, 0x40b	// Read CSR
	li x22, -1
	csrrw x19, 0x40b, x22	// Write all 1s to CSR
	csrrw x19, 0x40b, x0	// Write all 0s to CSR
	csrrs x19, 0x40b, x22	// Set all CSR bits
	csrrc x19, 0x40b, x22	// Clear all CSR bits
	csrrw x19, 0x40b, x29	// Restore CSR

// Testing CSR 0x40c
	csrr x30, 0x40c	// Read CSR
	li x7, -1
	csrrw x20, 0x40c, x7	// Write all 1s to CSR
	csrrw x20, 0x40c, x0	// Write all 0s to CSR
	csrrs x20, 0x40c, x7	// Set all CSR bits
	csrrc x20, 0x40c, x7	// Clear all CSR bits
	csrrw x20, 0x40c, x30	// Restore CSR

// Testing CSR 0x40d
	csrr x15, 0x40d	// Read CSR
	li x2, -1
	csrrw x8, 0x40d, x2	// Write all 1s to CSR
	csrrw x8, 0x40d, x0	// Write all 0s to CSR
	csrrs x8, 0x40d, x2	// Set all CSR bits
	csrrc x8, 0x40d, x2	// Clear all CSR bits
	csrrw x8, 0x40d, x15	// Restore CSR

// Testing CSR 0x40e
	csrr x16, 0x40e	// Read CSR
	li x29, -1
	csrrw x20, 0x40e, x29	// Write all 1s to CSR
	csrrw x20, 0x40e, x0	// Write all 0s to CSR
	csrrs x20, 0x40e, x29	// Set all CSR bits
	csrrc x20, 0x40e, x29	// Clear all CSR bits
	csrrw x20, 0x40e, x16	// Restore CSR

// Testing CSR 0x40f
	csrr x27, 0x40f	// Read CSR
	li x11, -1
	csrrw x18, 0x40f, x11	// Write all 1s to CSR
	csrrw x18, 0x40f, x0	// Write all 0s to CSR
	csrrs x18, 0x40f, x11	// Set all CSR bits
	csrrc x18, 0x40f, x11	// Clear all CSR bits
	csrrw x18, 0x40f, x27	// Restore CSR

// Testing CSR 0x410
	csrr x24, 0x410	// Read CSR
	li x7, -1
	csrrw x1, 0x410, x7	// Write all 1s to CSR
	csrrw x1, 0x410, x0	// Write all 0s to CSR
	csrrs x1, 0x410, x7	// Set all CSR bits
	csrrc x1, 0x410, x7	// Clear all CSR bits
	csrrw x1, 0x410, x24	// Restore CSR

// Testing CSR 0x411
	csrr x2, 0x411	// Read CSR
	li x8, -1
	csrrw x5, 0x411, x8	// Write all 1s to CSR
	csrrw x5, 0x411, x0	// Write all 0s to CSR
	csrrs x5, 0x411, x8	// Set all CSR bits
	csrrc x5, 0x411, x8	// Clear all CSR bits
	csrrw x5, 0x411, x2	// Restore CSR

// Testing CSR 0x412
	csrr x15, 0x412	// Read CSR
	li x28, -1
	csrrw x22, 0x412, x28	// Write all 1s to CSR
	csrrw x22, 0x412, x0	// Write all 0s to CSR
	csrrs x22, 0x412, x28	// Set all CSR bits
	csrrc x22, 0x412, x28	// Clear all CSR bits
	csrrw x22, 0x412, x15	// Restore CSR

// Testing CSR 0x413
	csrr x20, 0x413	// Read CSR
	li x8, -1
	csrrw x22, 0x413, x8	// Write all 1s to CSR
	csrrw x22, 0x413, x0	// Write all 0s to CSR
	csrrs x22, 0x413, x8	// Set all CSR bits
	csrrc x22, 0x413, x8	// Clear all CSR bits
	csrrw x22, 0x413, x20	// Restore CSR

// Testing CSR 0x414
	csrr x22, 0x414	// Read CSR
	li x4, -1
	csrrw x28, 0x414, x4	// Write all 1s to CSR
	csrrw x28, 0x414, x0	// Write all 0s to CSR
	csrrs x28, 0x414, x4	// Set all CSR bits
	csrrc x28, 0x414, x4	// Clear all CSR bits
	csrrw x28, 0x414, x22	// Restore CSR

// Testing CSR 0x415
	csrr x31, 0x415	// Read CSR
	li x25, -1
	csrrw x17, 0x415, x25	// Write all 1s to CSR
	csrrw x17, 0x415, x0	// Write all 0s to CSR
	csrrs x17, 0x415, x25	// Set all CSR bits
	csrrc x17, 0x415, x25	// Clear all CSR bits
	csrrw x17, 0x415, x31	// Restore CSR

// Testing CSR 0x416
	csrr x14, 0x416	// Read CSR
	li x30, -1
	csrrw x21, 0x416, x30	// Write all 1s to CSR
	csrrw x21, 0x416, x0	// Write all 0s to CSR
	csrrs x21, 0x416, x30	// Set all CSR bits
	csrrc x21, 0x416, x30	// Clear all CSR bits
	csrrw x21, 0x416, x14	// Restore CSR

// Testing CSR 0x417
	csrr x21, 0x417	// Read CSR
	li x10, -1
	csrrw x29, 0x417, x10	// Write all 1s to CSR
	csrrw x29, 0x417, x0	// Write all 0s to CSR
	csrrs x29, 0x417, x10	// Set all CSR bits
	csrrc x29, 0x417, x10	// Clear all CSR bits
	csrrw x29, 0x417, x21	// Restore CSR

// Testing CSR 0x418
	csrr x22, 0x418	// Read CSR
	li x11, -1
	csrrw x16, 0x418, x11	// Write all 1s to CSR
	csrrw x16, 0x418, x0	// Write all 0s to CSR
	csrrs x16, 0x418, x11	// Set all CSR bits
	csrrc x16, 0x418, x11	// Clear all CSR bits
	csrrw x16, 0x418, x22	// Restore CSR

// Testing CSR 0x419
	csrr x22, 0x419	// Read CSR
	li x7, -1
	csrrw x6, 0x419, x7	// Write all 1s to CSR
	csrrw x6, 0x419, x0	// Write all 0s to CSR
	csrrs x6, 0x419, x7	// Set all CSR bits
	csrrc x6, 0x419, x7	// Clear all CSR bits
	csrrw x6, 0x419, x22	// Restore CSR

// Testing CSR 0x41a
	csrr x12, 0x41a	// Read CSR
	li x18, -1
	csrrw x27, 0x41a, x18	// Write all 1s to CSR
	csrrw x27, 0x41a, x0	// Write all 0s to CSR
	csrrs x27, 0x41a, x18	// Set all CSR bits
	csrrc x27, 0x41a, x18	// Clear all CSR bits
	csrrw x27, 0x41a, x12	// Restore CSR

// Testing CSR 0x41b
	csrr x12, 0x41b	// Read CSR
	li x23, -1
	csrrw x15, 0x41b, x23	// Write all 1s to CSR
	csrrw x15, 0x41b, x0	// Write all 0s to CSR
	csrrs x15, 0x41b, x23	// Set all CSR bits
	csrrc x15, 0x41b, x23	// Clear all CSR bits
	csrrw x15, 0x41b, x12	// Restore CSR

// Testing CSR 0x41c
	csrr x13, 0x41c	// Read CSR
	li x15, -1
	csrrw x22, 0x41c, x15	// Write all 1s to CSR
	csrrw x22, 0x41c, x0	// Write all 0s to CSR
	csrrs x22, 0x41c, x15	// Set all CSR bits
	csrrc x22, 0x41c, x15	// Clear all CSR bits
	csrrw x22, 0x41c, x13	// Restore CSR

// Testing CSR 0x41d
	csrr x11, 0x41d	// Read CSR
	li x28, -1
	csrrw x15, 0x41d, x28	// Write all 1s to CSR
	csrrw x15, 0x41d, x0	// Write all 0s to CSR
	csrrs x15, 0x41d, x28	// Set all CSR bits
	csrrc x15, 0x41d, x28	// Clear all CSR bits
	csrrw x15, 0x41d, x11	// Restore CSR

// Testing CSR 0x41e
	csrr x3, 0x41e	// Read CSR
	li x5, -1
	csrrw x8, 0x41e, x5	// Write all 1s to CSR
	csrrw x8, 0x41e, x0	// Write all 0s to CSR
	csrrs x8, 0x41e, x5	// Set all CSR bits
	csrrc x8, 0x41e, x5	// Clear all CSR bits
	csrrw x8, 0x41e, x3	// Restore CSR

// Testing CSR 0x41f
	csrr x25, 0x41f	// Read CSR
	li x4, -1
	csrrw x5, 0x41f, x4	// Write all 1s to CSR
	csrrw x5, 0x41f, x0	// Write all 0s to CSR
	csrrs x5, 0x41f, x4	// Set all CSR bits
	csrrc x5, 0x41f, x4	// Clear all CSR bits
	csrrw x5, 0x41f, x25	// Restore CSR

// Testing CSR 0x420
	csrr x31, 0x420	// Read CSR
	li x30, -1
	csrrw x13, 0x420, x30	// Write all 1s to CSR
	csrrw x13, 0x420, x0	// Write all 0s to CSR
	csrrs x13, 0x420, x30	// Set all CSR bits
	csrrc x13, 0x420, x30	// Clear all CSR bits
	csrrw x13, 0x420, x31	// Restore CSR

// Testing CSR 0x421
	csrr x31, 0x421	// Read CSR
	li x15, -1
	csrrw x23, 0x421, x15	// Write all 1s to CSR
	csrrw x23, 0x421, x0	// Write all 0s to CSR
	csrrs x23, 0x421, x15	// Set all CSR bits
	csrrc x23, 0x421, x15	// Clear all CSR bits
	csrrw x23, 0x421, x31	// Restore CSR

// Testing CSR 0x422
	csrr x18, 0x422	// Read CSR
	li x7, -1
	csrrw x29, 0x422, x7	// Write all 1s to CSR
	csrrw x29, 0x422, x0	// Write all 0s to CSR
	csrrs x29, 0x422, x7	// Set all CSR bits
	csrrc x29, 0x422, x7	// Clear all CSR bits
	csrrw x29, 0x422, x18	// Restore CSR

// Testing CSR 0x423
	csrr x12, 0x423	// Read CSR
	li x23, -1
	csrrw x2, 0x423, x23	// Write all 1s to CSR
	csrrw x2, 0x423, x0	// Write all 0s to CSR
	csrrs x2, 0x423, x23	// Set all CSR bits
	csrrc x2, 0x423, x23	// Clear all CSR bits
	csrrw x2, 0x423, x12	// Restore CSR

// Testing CSR 0x424
	csrr x1, 0x424	// Read CSR
	li x13, -1
	csrrw x7, 0x424, x13	// Write all 1s to CSR
	csrrw x7, 0x424, x0	// Write all 0s to CSR
	csrrs x7, 0x424, x13	// Set all CSR bits
	csrrc x7, 0x424, x13	// Clear all CSR bits
	csrrw x7, 0x424, x1	// Restore CSR

// Testing CSR 0x425
	csrr x3, 0x425	// Read CSR
	li x28, -1
	csrrw x14, 0x425, x28	// Write all 1s to CSR
	csrrw x14, 0x425, x0	// Write all 0s to CSR
	csrrs x14, 0x425, x28	// Set all CSR bits
	csrrc x14, 0x425, x28	// Clear all CSR bits
	csrrw x14, 0x425, x3	// Restore CSR

// Testing CSR 0x426
	csrr x19, 0x426	// Read CSR
	li x26, -1
	csrrw x28, 0x426, x26	// Write all 1s to CSR
	csrrw x28, 0x426, x0	// Write all 0s to CSR
	csrrs x28, 0x426, x26	// Set all CSR bits
	csrrc x28, 0x426, x26	// Clear all CSR bits
	csrrw x28, 0x426, x19	// Restore CSR

// Testing CSR 0x427
	csrr x14, 0x427	// Read CSR
	li x18, -1
	csrrw x7, 0x427, x18	// Write all 1s to CSR
	csrrw x7, 0x427, x0	// Write all 0s to CSR
	csrrs x7, 0x427, x18	// Set all CSR bits
	csrrc x7, 0x427, x18	// Clear all CSR bits
	csrrw x7, 0x427, x14	// Restore CSR

// Testing CSR 0x428
	csrr x21, 0x428	// Read CSR
	li x1, -1
	csrrw x31, 0x428, x1	// Write all 1s to CSR
	csrrw x31, 0x428, x0	// Write all 0s to CSR
	csrrs x31, 0x428, x1	// Set all CSR bits
	csrrc x31, 0x428, x1	// Clear all CSR bits
	csrrw x31, 0x428, x21	// Restore CSR

// Testing CSR 0x429
	csrr x22, 0x429	// Read CSR
	li x5, -1
	csrrw x17, 0x429, x5	// Write all 1s to CSR
	csrrw x17, 0x429, x0	// Write all 0s to CSR
	csrrs x17, 0x429, x5	// Set all CSR bits
	csrrc x17, 0x429, x5	// Clear all CSR bits
	csrrw x17, 0x429, x22	// Restore CSR

// Testing CSR 0x42a
	csrr x21, 0x42a	// Read CSR
	li x30, -1
	csrrw x16, 0x42a, x30	// Write all 1s to CSR
	csrrw x16, 0x42a, x0	// Write all 0s to CSR
	csrrs x16, 0x42a, x30	// Set all CSR bits
	csrrc x16, 0x42a, x30	// Clear all CSR bits
	csrrw x16, 0x42a, x21	// Restore CSR

// Testing CSR 0x42b
	csrr x10, 0x42b	// Read CSR
	li x13, -1
	csrrw x18, 0x42b, x13	// Write all 1s to CSR
	csrrw x18, 0x42b, x0	// Write all 0s to CSR
	csrrs x18, 0x42b, x13	// Set all CSR bits
	csrrc x18, 0x42b, x13	// Clear all CSR bits
	csrrw x18, 0x42b, x10	// Restore CSR

// Testing CSR 0x42c
	csrr x18, 0x42c	// Read CSR
	li x3, -1
	csrrw x20, 0x42c, x3	// Write all 1s to CSR
	csrrw x20, 0x42c, x0	// Write all 0s to CSR
	csrrs x20, 0x42c, x3	// Set all CSR bits
	csrrc x20, 0x42c, x3	// Clear all CSR bits
	csrrw x20, 0x42c, x18	// Restore CSR

// Testing CSR 0x42d
	csrr x24, 0x42d	// Read CSR
	li x16, -1
	csrrw x25, 0x42d, x16	// Write all 1s to CSR
	csrrw x25, 0x42d, x0	// Write all 0s to CSR
	csrrs x25, 0x42d, x16	// Set all CSR bits
	csrrc x25, 0x42d, x16	// Clear all CSR bits
	csrrw x25, 0x42d, x24	// Restore CSR

// Testing CSR 0x42e
	csrr x1, 0x42e	// Read CSR
	li x7, -1
	csrrw x14, 0x42e, x7	// Write all 1s to CSR
	csrrw x14, 0x42e, x0	// Write all 0s to CSR
	csrrs x14, 0x42e, x7	// Set all CSR bits
	csrrc x14, 0x42e, x7	// Clear all CSR bits
	csrrw x14, 0x42e, x1	// Restore CSR

// Testing CSR 0x42f
	csrr x20, 0x42f	// Read CSR
	li x25, -1
	csrrw x12, 0x42f, x25	// Write all 1s to CSR
	csrrw x12, 0x42f, x0	// Write all 0s to CSR
	csrrs x12, 0x42f, x25	// Set all CSR bits
	csrrc x12, 0x42f, x25	// Clear all CSR bits
	csrrw x12, 0x42f, x20	// Restore CSR

// Testing CSR 0x430
	csrr x10, 0x430	// Read CSR
	li x3, -1
	csrrw x24, 0x430, x3	// Write all 1s to CSR
	csrrw x24, 0x430, x0	// Write all 0s to CSR
	csrrs x24, 0x430, x3	// Set all CSR bits
	csrrc x24, 0x430, x3	// Clear all CSR bits
	csrrw x24, 0x430, x10	// Restore CSR

// Testing CSR 0x431
	csrr x1, 0x431	// Read CSR
	li x25, -1
	csrrw x26, 0x431, x25	// Write all 1s to CSR
	csrrw x26, 0x431, x0	// Write all 0s to CSR
	csrrs x26, 0x431, x25	// Set all CSR bits
	csrrc x26, 0x431, x25	// Clear all CSR bits
	csrrw x26, 0x431, x1	// Restore CSR

// Testing CSR 0x432
	csrr x8, 0x432	// Read CSR
	li x20, -1
	csrrw x31, 0x432, x20	// Write all 1s to CSR
	csrrw x31, 0x432, x0	// Write all 0s to CSR
	csrrs x31, 0x432, x20	// Set all CSR bits
	csrrc x31, 0x432, x20	// Clear all CSR bits
	csrrw x31, 0x432, x8	// Restore CSR

// Testing CSR 0x433
	csrr x28, 0x433	// Read CSR
	li x1, -1
	csrrw x19, 0x433, x1	// Write all 1s to CSR
	csrrw x19, 0x433, x0	// Write all 0s to CSR
	csrrs x19, 0x433, x1	// Set all CSR bits
	csrrc x19, 0x433, x1	// Clear all CSR bits
	csrrw x19, 0x433, x28	// Restore CSR

// Testing CSR 0x434
	csrr x28, 0x434	// Read CSR
	li x31, -1
	csrrw x17, 0x434, x31	// Write all 1s to CSR
	csrrw x17, 0x434, x0	// Write all 0s to CSR
	csrrs x17, 0x434, x31	// Set all CSR bits
	csrrc x17, 0x434, x31	// Clear all CSR bits
	csrrw x17, 0x434, x28	// Restore CSR

// Testing CSR 0x435
	csrr x12, 0x435	// Read CSR
	li x5, -1
	csrrw x15, 0x435, x5	// Write all 1s to CSR
	csrrw x15, 0x435, x0	// Write all 0s to CSR
	csrrs x15, 0x435, x5	// Set all CSR bits
	csrrc x15, 0x435, x5	// Clear all CSR bits
	csrrw x15, 0x435, x12	// Restore CSR

// Testing CSR 0x436
	csrr x9, 0x436	// Read CSR
	li x4, -1
	csrrw x19, 0x436, x4	// Write all 1s to CSR
	csrrw x19, 0x436, x0	// Write all 0s to CSR
	csrrs x19, 0x436, x4	// Set all CSR bits
	csrrc x19, 0x436, x4	// Clear all CSR bits
	csrrw x19, 0x436, x9	// Restore CSR

// Testing CSR 0x437
	csrr x15, 0x437	// Read CSR
	li x9, -1
	csrrw x29, 0x437, x9	// Write all 1s to CSR
	csrrw x29, 0x437, x0	// Write all 0s to CSR
	csrrs x29, 0x437, x9	// Set all CSR bits
	csrrc x29, 0x437, x9	// Clear all CSR bits
	csrrw x29, 0x437, x15	// Restore CSR

// Testing CSR 0x438
	csrr x27, 0x438	// Read CSR
	li x8, -1
	csrrw x13, 0x438, x8	// Write all 1s to CSR
	csrrw x13, 0x438, x0	// Write all 0s to CSR
	csrrs x13, 0x438, x8	// Set all CSR bits
	csrrc x13, 0x438, x8	// Clear all CSR bits
	csrrw x13, 0x438, x27	// Restore CSR

// Testing CSR 0x439
	csrr x13, 0x439	// Read CSR
	li x24, -1
	csrrw x17, 0x439, x24	// Write all 1s to CSR
	csrrw x17, 0x439, x0	// Write all 0s to CSR
	csrrs x17, 0x439, x24	// Set all CSR bits
	csrrc x17, 0x439, x24	// Clear all CSR bits
	csrrw x17, 0x439, x13	// Restore CSR

// Testing CSR 0x43a
	csrr x30, 0x43a	// Read CSR
	li x11, -1
	csrrw x8, 0x43a, x11	// Write all 1s to CSR
	csrrw x8, 0x43a, x0	// Write all 0s to CSR
	csrrs x8, 0x43a, x11	// Set all CSR bits
	csrrc x8, 0x43a, x11	// Clear all CSR bits
	csrrw x8, 0x43a, x30	// Restore CSR

// Testing CSR 0x43b
	csrr x27, 0x43b	// Read CSR
	li x19, -1
	csrrw x9, 0x43b, x19	// Write all 1s to CSR
	csrrw x9, 0x43b, x0	// Write all 0s to CSR
	csrrs x9, 0x43b, x19	// Set all CSR bits
	csrrc x9, 0x43b, x19	// Clear all CSR bits
	csrrw x9, 0x43b, x27	// Restore CSR

// Testing CSR 0x43c
	csrr x30, 0x43c	// Read CSR
	li x3, -1
	csrrw x2, 0x43c, x3	// Write all 1s to CSR
	csrrw x2, 0x43c, x0	// Write all 0s to CSR
	csrrs x2, 0x43c, x3	// Set all CSR bits
	csrrc x2, 0x43c, x3	// Clear all CSR bits
	csrrw x2, 0x43c, x30	// Restore CSR

// Testing CSR 0x43d
	csrr x5, 0x43d	// Read CSR
	li x11, -1
	csrrw x21, 0x43d, x11	// Write all 1s to CSR
	csrrw x21, 0x43d, x0	// Write all 0s to CSR
	csrrs x21, 0x43d, x11	// Set all CSR bits
	csrrc x21, 0x43d, x11	// Clear all CSR bits
	csrrw x21, 0x43d, x5	// Restore CSR

// Testing CSR 0x43e
	csrr x19, 0x43e	// Read CSR
	li x3, -1
	csrrw x16, 0x43e, x3	// Write all 1s to CSR
	csrrw x16, 0x43e, x0	// Write all 0s to CSR
	csrrs x16, 0x43e, x3	// Set all CSR bits
	csrrc x16, 0x43e, x3	// Clear all CSR bits
	csrrw x16, 0x43e, x19	// Restore CSR

// Testing CSR 0x43f
	csrr x31, 0x43f	// Read CSR
	li x17, -1
	csrrw x16, 0x43f, x17	// Write all 1s to CSR
	csrrw x16, 0x43f, x0	// Write all 0s to CSR
	csrrs x16, 0x43f, x17	// Set all CSR bits
	csrrc x16, 0x43f, x17	// Clear all CSR bits
	csrrw x16, 0x43f, x31	// Restore CSR

// Testing CSR 0x440
	csrr x14, 0x440	// Read CSR
	li x11, -1
	csrrw x13, 0x440, x11	// Write all 1s to CSR
	csrrw x13, 0x440, x0	// Write all 0s to CSR
	csrrs x13, 0x440, x11	// Set all CSR bits
	csrrc x13, 0x440, x11	// Clear all CSR bits
	csrrw x13, 0x440, x14	// Restore CSR

// Testing CSR 0x441
	csrr x24, 0x441	// Read CSR
	li x28, -1
	csrrw x1, 0x441, x28	// Write all 1s to CSR
	csrrw x1, 0x441, x0	// Write all 0s to CSR
	csrrs x1, 0x441, x28	// Set all CSR bits
	csrrc x1, 0x441, x28	// Clear all CSR bits
	csrrw x1, 0x441, x24	// Restore CSR

// Testing CSR 0x442
	csrr x4, 0x442	// Read CSR
	li x14, -1
	csrrw x20, 0x442, x14	// Write all 1s to CSR
	csrrw x20, 0x442, x0	// Write all 0s to CSR
	csrrs x20, 0x442, x14	// Set all CSR bits
	csrrc x20, 0x442, x14	// Clear all CSR bits
	csrrw x20, 0x442, x4	// Restore CSR

// Testing CSR 0x443
	csrr x22, 0x443	// Read CSR
	li x30, -1
	csrrw x31, 0x443, x30	// Write all 1s to CSR
	csrrw x31, 0x443, x0	// Write all 0s to CSR
	csrrs x31, 0x443, x30	// Set all CSR bits
	csrrc x31, 0x443, x30	// Clear all CSR bits
	csrrw x31, 0x443, x22	// Restore CSR

// Testing CSR 0x444
	csrr x5, 0x444	// Read CSR
	li x25, -1
	csrrw x29, 0x444, x25	// Write all 1s to CSR
	csrrw x29, 0x444, x0	// Write all 0s to CSR
	csrrs x29, 0x444, x25	// Set all CSR bits
	csrrc x29, 0x444, x25	// Clear all CSR bits
	csrrw x29, 0x444, x5	// Restore CSR

// Testing CSR 0x445
	csrr x1, 0x445	// Read CSR
	li x4, -1
	csrrw x23, 0x445, x4	// Write all 1s to CSR
	csrrw x23, 0x445, x0	// Write all 0s to CSR
	csrrs x23, 0x445, x4	// Set all CSR bits
	csrrc x23, 0x445, x4	// Clear all CSR bits
	csrrw x23, 0x445, x1	// Restore CSR

// Testing CSR 0x446
	csrr x14, 0x446	// Read CSR
	li x8, -1
	csrrw x2, 0x446, x8	// Write all 1s to CSR
	csrrw x2, 0x446, x0	// Write all 0s to CSR
	csrrs x2, 0x446, x8	// Set all CSR bits
	csrrc x2, 0x446, x8	// Clear all CSR bits
	csrrw x2, 0x446, x14	// Restore CSR

// Testing CSR 0x447
	csrr x21, 0x447	// Read CSR
	li x9, -1
	csrrw x13, 0x447, x9	// Write all 1s to CSR
	csrrw x13, 0x447, x0	// Write all 0s to CSR
	csrrs x13, 0x447, x9	// Set all CSR bits
	csrrc x13, 0x447, x9	// Clear all CSR bits
	csrrw x13, 0x447, x21	// Restore CSR

// Testing CSR 0x448
	csrr x4, 0x448	// Read CSR
	li x12, -1
	csrrw x10, 0x448, x12	// Write all 1s to CSR
	csrrw x10, 0x448, x0	// Write all 0s to CSR
	csrrs x10, 0x448, x12	// Set all CSR bits
	csrrc x10, 0x448, x12	// Clear all CSR bits
	csrrw x10, 0x448, x4	// Restore CSR

// Testing CSR 0x449
	csrr x12, 0x449	// Read CSR
	li x20, -1
	csrrw x26, 0x449, x20	// Write all 1s to CSR
	csrrw x26, 0x449, x0	// Write all 0s to CSR
	csrrs x26, 0x449, x20	// Set all CSR bits
	csrrc x26, 0x449, x20	// Clear all CSR bits
	csrrw x26, 0x449, x12	// Restore CSR

// Testing CSR 0x44a
	csrr x21, 0x44a	// Read CSR
	li x7, -1
	csrrw x24, 0x44a, x7	// Write all 1s to CSR
	csrrw x24, 0x44a, x0	// Write all 0s to CSR
	csrrs x24, 0x44a, x7	// Set all CSR bits
	csrrc x24, 0x44a, x7	// Clear all CSR bits
	csrrw x24, 0x44a, x21	// Restore CSR

// Testing CSR 0x44b
	csrr x27, 0x44b	// Read CSR
	li x18, -1
	csrrw x2, 0x44b, x18	// Write all 1s to CSR
	csrrw x2, 0x44b, x0	// Write all 0s to CSR
	csrrs x2, 0x44b, x18	// Set all CSR bits
	csrrc x2, 0x44b, x18	// Clear all CSR bits
	csrrw x2, 0x44b, x27	// Restore CSR

// Testing CSR 0x44c
	csrr x11, 0x44c	// Read CSR
	li x17, -1
	csrrw x18, 0x44c, x17	// Write all 1s to CSR
	csrrw x18, 0x44c, x0	// Write all 0s to CSR
	csrrs x18, 0x44c, x17	// Set all CSR bits
	csrrc x18, 0x44c, x17	// Clear all CSR bits
	csrrw x18, 0x44c, x11	// Restore CSR

// Testing CSR 0x44d
	csrr x1, 0x44d	// Read CSR
	li x6, -1
	csrrw x30, 0x44d, x6	// Write all 1s to CSR
	csrrw x30, 0x44d, x0	// Write all 0s to CSR
	csrrs x30, 0x44d, x6	// Set all CSR bits
	csrrc x30, 0x44d, x6	// Clear all CSR bits
	csrrw x30, 0x44d, x1	// Restore CSR

// Testing CSR 0x44e
	csrr x16, 0x44e	// Read CSR
	li x27, -1
	csrrw x1, 0x44e, x27	// Write all 1s to CSR
	csrrw x1, 0x44e, x0	// Write all 0s to CSR
	csrrs x1, 0x44e, x27	// Set all CSR bits
	csrrc x1, 0x44e, x27	// Clear all CSR bits
	csrrw x1, 0x44e, x16	// Restore CSR

// Testing CSR 0x44f
	csrr x21, 0x44f	// Read CSR
	li x28, -1
	csrrw x9, 0x44f, x28	// Write all 1s to CSR
	csrrw x9, 0x44f, x0	// Write all 0s to CSR
	csrrs x9, 0x44f, x28	// Set all CSR bits
	csrrc x9, 0x44f, x28	// Clear all CSR bits
	csrrw x9, 0x44f, x21	// Restore CSR

// Testing CSR 0x450
	csrr x11, 0x450	// Read CSR
	li x5, -1
	csrrw x12, 0x450, x5	// Write all 1s to CSR
	csrrw x12, 0x450, x0	// Write all 0s to CSR
	csrrs x12, 0x450, x5	// Set all CSR bits
	csrrc x12, 0x450, x5	// Clear all CSR bits
	csrrw x12, 0x450, x11	// Restore CSR

// Testing CSR 0x451
	csrr x4, 0x451	// Read CSR
	li x20, -1
	csrrw x18, 0x451, x20	// Write all 1s to CSR
	csrrw x18, 0x451, x0	// Write all 0s to CSR
	csrrs x18, 0x451, x20	// Set all CSR bits
	csrrc x18, 0x451, x20	// Clear all CSR bits
	csrrw x18, 0x451, x4	// Restore CSR

// Testing CSR 0x452
	csrr x14, 0x452	// Read CSR
	li x31, -1
	csrrw x26, 0x452, x31	// Write all 1s to CSR
	csrrw x26, 0x452, x0	// Write all 0s to CSR
	csrrs x26, 0x452, x31	// Set all CSR bits
	csrrc x26, 0x452, x31	// Clear all CSR bits
	csrrw x26, 0x452, x14	// Restore CSR

// Testing CSR 0x453
	csrr x25, 0x453	// Read CSR
	li x3, -1
	csrrw x9, 0x453, x3	// Write all 1s to CSR
	csrrw x9, 0x453, x0	// Write all 0s to CSR
	csrrs x9, 0x453, x3	// Set all CSR bits
	csrrc x9, 0x453, x3	// Clear all CSR bits
	csrrw x9, 0x453, x25	// Restore CSR

// Testing CSR 0x454
	csrr x19, 0x454	// Read CSR
	li x4, -1
	csrrw x17, 0x454, x4	// Write all 1s to CSR
	csrrw x17, 0x454, x0	// Write all 0s to CSR
	csrrs x17, 0x454, x4	// Set all CSR bits
	csrrc x17, 0x454, x4	// Clear all CSR bits
	csrrw x17, 0x454, x19	// Restore CSR

// Testing CSR 0x455
	csrr x3, 0x455	// Read CSR
	li x28, -1
	csrrw x19, 0x455, x28	// Write all 1s to CSR
	csrrw x19, 0x455, x0	// Write all 0s to CSR
	csrrs x19, 0x455, x28	// Set all CSR bits
	csrrc x19, 0x455, x28	// Clear all CSR bits
	csrrw x19, 0x455, x3	// Restore CSR

// Testing CSR 0x456
	csrr x5, 0x456	// Read CSR
	li x16, -1
	csrrw x2, 0x456, x16	// Write all 1s to CSR
	csrrw x2, 0x456, x0	// Write all 0s to CSR
	csrrs x2, 0x456, x16	// Set all CSR bits
	csrrc x2, 0x456, x16	// Clear all CSR bits
	csrrw x2, 0x456, x5	// Restore CSR

// Testing CSR 0x457
	csrr x17, 0x457	// Read CSR
	li x27, -1
	csrrw x26, 0x457, x27	// Write all 1s to CSR
	csrrw x26, 0x457, x0	// Write all 0s to CSR
	csrrs x26, 0x457, x27	// Set all CSR bits
	csrrc x26, 0x457, x27	// Clear all CSR bits
	csrrw x26, 0x457, x17	// Restore CSR

// Testing CSR 0x458
	csrr x8, 0x458	// Read CSR
	li x12, -1
	csrrw x4, 0x458, x12	// Write all 1s to CSR
	csrrw x4, 0x458, x0	// Write all 0s to CSR
	csrrs x4, 0x458, x12	// Set all CSR bits
	csrrc x4, 0x458, x12	// Clear all CSR bits
	csrrw x4, 0x458, x8	// Restore CSR

// Testing CSR 0x459
	csrr x18, 0x459	// Read CSR
	li x27, -1
	csrrw x23, 0x459, x27	// Write all 1s to CSR
	csrrw x23, 0x459, x0	// Write all 0s to CSR
	csrrs x23, 0x459, x27	// Set all CSR bits
	csrrc x23, 0x459, x27	// Clear all CSR bits
	csrrw x23, 0x459, x18	// Restore CSR

// Testing CSR 0x45a
	csrr x7, 0x45a	// Read CSR
	li x6, -1
	csrrw x23, 0x45a, x6	// Write all 1s to CSR
	csrrw x23, 0x45a, x0	// Write all 0s to CSR
	csrrs x23, 0x45a, x6	// Set all CSR bits
	csrrc x23, 0x45a, x6	// Clear all CSR bits
	csrrw x23, 0x45a, x7	// Restore CSR

// Testing CSR 0x45b
	csrr x22, 0x45b	// Read CSR
	li x31, -1
	csrrw x8, 0x45b, x31	// Write all 1s to CSR
	csrrw x8, 0x45b, x0	// Write all 0s to CSR
	csrrs x8, 0x45b, x31	// Set all CSR bits
	csrrc x8, 0x45b, x31	// Clear all CSR bits
	csrrw x8, 0x45b, x22	// Restore CSR

// Testing CSR 0x45c
	csrr x13, 0x45c	// Read CSR
	li x7, -1
	csrrw x20, 0x45c, x7	// Write all 1s to CSR
	csrrw x20, 0x45c, x0	// Write all 0s to CSR
	csrrs x20, 0x45c, x7	// Set all CSR bits
	csrrc x20, 0x45c, x7	// Clear all CSR bits
	csrrw x20, 0x45c, x13	// Restore CSR

// Testing CSR 0x45d
	csrr x23, 0x45d	// Read CSR
	li x24, -1
	csrrw x15, 0x45d, x24	// Write all 1s to CSR
	csrrw x15, 0x45d, x0	// Write all 0s to CSR
	csrrs x15, 0x45d, x24	// Set all CSR bits
	csrrc x15, 0x45d, x24	// Clear all CSR bits
	csrrw x15, 0x45d, x23	// Restore CSR

// Testing CSR 0x45e
	csrr x12, 0x45e	// Read CSR
	li x6, -1
	csrrw x9, 0x45e, x6	// Write all 1s to CSR
	csrrw x9, 0x45e, x0	// Write all 0s to CSR
	csrrs x9, 0x45e, x6	// Set all CSR bits
	csrrc x9, 0x45e, x6	// Clear all CSR bits
	csrrw x9, 0x45e, x12	// Restore CSR

// Testing CSR 0x45f
	csrr x24, 0x45f	// Read CSR
	li x29, -1
	csrrw x12, 0x45f, x29	// Write all 1s to CSR
	csrrw x12, 0x45f, x0	// Write all 0s to CSR
	csrrs x12, 0x45f, x29	// Set all CSR bits
	csrrc x12, 0x45f, x29	// Clear all CSR bits
	csrrw x12, 0x45f, x24	// Restore CSR

// Testing CSR 0x460
	csrr x18, 0x460	// Read CSR
	li x28, -1
	csrrw x7, 0x460, x28	// Write all 1s to CSR
	csrrw x7, 0x460, x0	// Write all 0s to CSR
	csrrs x7, 0x460, x28	// Set all CSR bits
	csrrc x7, 0x460, x28	// Clear all CSR bits
	csrrw x7, 0x460, x18	// Restore CSR

// Testing CSR 0x461
	csrr x7, 0x461	// Read CSR
	li x15, -1
	csrrw x27, 0x461, x15	// Write all 1s to CSR
	csrrw x27, 0x461, x0	// Write all 0s to CSR
	csrrs x27, 0x461, x15	// Set all CSR bits
	csrrc x27, 0x461, x15	// Clear all CSR bits
	csrrw x27, 0x461, x7	// Restore CSR

// Testing CSR 0x462
	csrr x11, 0x462	// Read CSR
	li x5, -1
	csrrw x9, 0x462, x5	// Write all 1s to CSR
	csrrw x9, 0x462, x0	// Write all 0s to CSR
	csrrs x9, 0x462, x5	// Set all CSR bits
	csrrc x9, 0x462, x5	// Clear all CSR bits
	csrrw x9, 0x462, x11	// Restore CSR

// Testing CSR 0x463
	csrr x18, 0x463	// Read CSR
	li x22, -1
	csrrw x25, 0x463, x22	// Write all 1s to CSR
	csrrw x25, 0x463, x0	// Write all 0s to CSR
	csrrs x25, 0x463, x22	// Set all CSR bits
	csrrc x25, 0x463, x22	// Clear all CSR bits
	csrrw x25, 0x463, x18	// Restore CSR

// Testing CSR 0x464
	csrr x25, 0x464	// Read CSR
	li x1, -1
	csrrw x3, 0x464, x1	// Write all 1s to CSR
	csrrw x3, 0x464, x0	// Write all 0s to CSR
	csrrs x3, 0x464, x1	// Set all CSR bits
	csrrc x3, 0x464, x1	// Clear all CSR bits
	csrrw x3, 0x464, x25	// Restore CSR

// Testing CSR 0x465
	csrr x22, 0x465	// Read CSR
	li x27, -1
	csrrw x11, 0x465, x27	// Write all 1s to CSR
	csrrw x11, 0x465, x0	// Write all 0s to CSR
	csrrs x11, 0x465, x27	// Set all CSR bits
	csrrc x11, 0x465, x27	// Clear all CSR bits
	csrrw x11, 0x465, x22	// Restore CSR

// Testing CSR 0x466
	csrr x10, 0x466	// Read CSR
	li x28, -1
	csrrw x23, 0x466, x28	// Write all 1s to CSR
	csrrw x23, 0x466, x0	// Write all 0s to CSR
	csrrs x23, 0x466, x28	// Set all CSR bits
	csrrc x23, 0x466, x28	// Clear all CSR bits
	csrrw x23, 0x466, x10	// Restore CSR

// Testing CSR 0x467
	csrr x26, 0x467	// Read CSR
	li x31, -1
	csrrw x11, 0x467, x31	// Write all 1s to CSR
	csrrw x11, 0x467, x0	// Write all 0s to CSR
	csrrs x11, 0x467, x31	// Set all CSR bits
	csrrc x11, 0x467, x31	// Clear all CSR bits
	csrrw x11, 0x467, x26	// Restore CSR

// Testing CSR 0x468
	csrr x2, 0x468	// Read CSR
	li x3, -1
	csrrw x20, 0x468, x3	// Write all 1s to CSR
	csrrw x20, 0x468, x0	// Write all 0s to CSR
	csrrs x20, 0x468, x3	// Set all CSR bits
	csrrc x20, 0x468, x3	// Clear all CSR bits
	csrrw x20, 0x468, x2	// Restore CSR

// Testing CSR 0x469
	csrr x1, 0x469	// Read CSR
	li x10, -1
	csrrw x26, 0x469, x10	// Write all 1s to CSR
	csrrw x26, 0x469, x0	// Write all 0s to CSR
	csrrs x26, 0x469, x10	// Set all CSR bits
	csrrc x26, 0x469, x10	// Clear all CSR bits
	csrrw x26, 0x469, x1	// Restore CSR

// Testing CSR 0x46a
	csrr x4, 0x46a	// Read CSR
	li x6, -1
	csrrw x23, 0x46a, x6	// Write all 1s to CSR
	csrrw x23, 0x46a, x0	// Write all 0s to CSR
	csrrs x23, 0x46a, x6	// Set all CSR bits
	csrrc x23, 0x46a, x6	// Clear all CSR bits
	csrrw x23, 0x46a, x4	// Restore CSR

// Testing CSR 0x46b
	csrr x9, 0x46b	// Read CSR
	li x7, -1
	csrrw x17, 0x46b, x7	// Write all 1s to CSR
	csrrw x17, 0x46b, x0	// Write all 0s to CSR
	csrrs x17, 0x46b, x7	// Set all CSR bits
	csrrc x17, 0x46b, x7	// Clear all CSR bits
	csrrw x17, 0x46b, x9	// Restore CSR

// Testing CSR 0x46c
	csrr x18, 0x46c	// Read CSR
	li x12, -1
	csrrw x28, 0x46c, x12	// Write all 1s to CSR
	csrrw x28, 0x46c, x0	// Write all 0s to CSR
	csrrs x28, 0x46c, x12	// Set all CSR bits
	csrrc x28, 0x46c, x12	// Clear all CSR bits
	csrrw x28, 0x46c, x18	// Restore CSR

// Testing CSR 0x46d
	csrr x15, 0x46d	// Read CSR
	li x3, -1
	csrrw x14, 0x46d, x3	// Write all 1s to CSR
	csrrw x14, 0x46d, x0	// Write all 0s to CSR
	csrrs x14, 0x46d, x3	// Set all CSR bits
	csrrc x14, 0x46d, x3	// Clear all CSR bits
	csrrw x14, 0x46d, x15	// Restore CSR

// Testing CSR 0x46e
	csrr x17, 0x46e	// Read CSR
	li x18, -1
	csrrw x27, 0x46e, x18	// Write all 1s to CSR
	csrrw x27, 0x46e, x0	// Write all 0s to CSR
	csrrs x27, 0x46e, x18	// Set all CSR bits
	csrrc x27, 0x46e, x18	// Clear all CSR bits
	csrrw x27, 0x46e, x17	// Restore CSR

// Testing CSR 0x46f
	csrr x14, 0x46f	// Read CSR
	li x4, -1
	csrrw x3, 0x46f, x4	// Write all 1s to CSR
	csrrw x3, 0x46f, x0	// Write all 0s to CSR
	csrrs x3, 0x46f, x4	// Set all CSR bits
	csrrc x3, 0x46f, x4	// Clear all CSR bits
	csrrw x3, 0x46f, x14	// Restore CSR

// Testing CSR 0x470
	csrr x19, 0x470	// Read CSR
	li x15, -1
	csrrw x11, 0x470, x15	// Write all 1s to CSR
	csrrw x11, 0x470, x0	// Write all 0s to CSR
	csrrs x11, 0x470, x15	// Set all CSR bits
	csrrc x11, 0x470, x15	// Clear all CSR bits
	csrrw x11, 0x470, x19	// Restore CSR

// Testing CSR 0x471
	csrr x6, 0x471	// Read CSR
	li x10, -1
	csrrw x8, 0x471, x10	// Write all 1s to CSR
	csrrw x8, 0x471, x0	// Write all 0s to CSR
	csrrs x8, 0x471, x10	// Set all CSR bits
	csrrc x8, 0x471, x10	// Clear all CSR bits
	csrrw x8, 0x471, x6	// Restore CSR

// Testing CSR 0x472
	csrr x21, 0x472	// Read CSR
	li x14, -1
	csrrw x22, 0x472, x14	// Write all 1s to CSR
	csrrw x22, 0x472, x0	// Write all 0s to CSR
	csrrs x22, 0x472, x14	// Set all CSR bits
	csrrc x22, 0x472, x14	// Clear all CSR bits
	csrrw x22, 0x472, x21	// Restore CSR

// Testing CSR 0x473
	csrr x23, 0x473	// Read CSR
	li x10, -1
	csrrw x2, 0x473, x10	// Write all 1s to CSR
	csrrw x2, 0x473, x0	// Write all 0s to CSR
	csrrs x2, 0x473, x10	// Set all CSR bits
	csrrc x2, 0x473, x10	// Clear all CSR bits
	csrrw x2, 0x473, x23	// Restore CSR

// Testing CSR 0x474
	csrr x1, 0x474	// Read CSR
	li x27, -1
	csrrw x21, 0x474, x27	// Write all 1s to CSR
	csrrw x21, 0x474, x0	// Write all 0s to CSR
	csrrs x21, 0x474, x27	// Set all CSR bits
	csrrc x21, 0x474, x27	// Clear all CSR bits
	csrrw x21, 0x474, x1	// Restore CSR

// Testing CSR 0x475
	csrr x28, 0x475	// Read CSR
	li x9, -1
	csrrw x3, 0x475, x9	// Write all 1s to CSR
	csrrw x3, 0x475, x0	// Write all 0s to CSR
	csrrs x3, 0x475, x9	// Set all CSR bits
	csrrc x3, 0x475, x9	// Clear all CSR bits
	csrrw x3, 0x475, x28	// Restore CSR

// Testing CSR 0x476
	csrr x28, 0x476	// Read CSR
	li x22, -1
	csrrw x11, 0x476, x22	// Write all 1s to CSR
	csrrw x11, 0x476, x0	// Write all 0s to CSR
	csrrs x11, 0x476, x22	// Set all CSR bits
	csrrc x11, 0x476, x22	// Clear all CSR bits
	csrrw x11, 0x476, x28	// Restore CSR

// Testing CSR 0x477
	csrr x11, 0x477	// Read CSR
	li x18, -1
	csrrw x21, 0x477, x18	// Write all 1s to CSR
	csrrw x21, 0x477, x0	// Write all 0s to CSR
	csrrs x21, 0x477, x18	// Set all CSR bits
	csrrc x21, 0x477, x18	// Clear all CSR bits
	csrrw x21, 0x477, x11	// Restore CSR

// Testing CSR 0x478
	csrr x10, 0x478	// Read CSR
	li x2, -1
	csrrw x26, 0x478, x2	// Write all 1s to CSR
	csrrw x26, 0x478, x0	// Write all 0s to CSR
	csrrs x26, 0x478, x2	// Set all CSR bits
	csrrc x26, 0x478, x2	// Clear all CSR bits
	csrrw x26, 0x478, x10	// Restore CSR

// Testing CSR 0x479
	csrr x23, 0x479	// Read CSR
	li x8, -1
	csrrw x28, 0x479, x8	// Write all 1s to CSR
	csrrw x28, 0x479, x0	// Write all 0s to CSR
	csrrs x28, 0x479, x8	// Set all CSR bits
	csrrc x28, 0x479, x8	// Clear all CSR bits
	csrrw x28, 0x479, x23	// Restore CSR

// Testing CSR 0x47a
	csrr x29, 0x47a	// Read CSR
	li x23, -1
	csrrw x17, 0x47a, x23	// Write all 1s to CSR
	csrrw x17, 0x47a, x0	// Write all 0s to CSR
	csrrs x17, 0x47a, x23	// Set all CSR bits
	csrrc x17, 0x47a, x23	// Clear all CSR bits
	csrrw x17, 0x47a, x29	// Restore CSR

// Testing CSR 0x47b
	csrr x5, 0x47b	// Read CSR
	li x9, -1
	csrrw x20, 0x47b, x9	// Write all 1s to CSR
	csrrw x20, 0x47b, x0	// Write all 0s to CSR
	csrrs x20, 0x47b, x9	// Set all CSR bits
	csrrc x20, 0x47b, x9	// Clear all CSR bits
	csrrw x20, 0x47b, x5	// Restore CSR

// Testing CSR 0x47c
	csrr x2, 0x47c	// Read CSR
	li x26, -1
	csrrw x13, 0x47c, x26	// Write all 1s to CSR
	csrrw x13, 0x47c, x0	// Write all 0s to CSR
	csrrs x13, 0x47c, x26	// Set all CSR bits
	csrrc x13, 0x47c, x26	// Clear all CSR bits
	csrrw x13, 0x47c, x2	// Restore CSR

// Testing CSR 0x47d
	csrr x14, 0x47d	// Read CSR
	li x9, -1
	csrrw x19, 0x47d, x9	// Write all 1s to CSR
	csrrw x19, 0x47d, x0	// Write all 0s to CSR
	csrrs x19, 0x47d, x9	// Set all CSR bits
	csrrc x19, 0x47d, x9	// Clear all CSR bits
	csrrw x19, 0x47d, x14	// Restore CSR

// Testing CSR 0x47e
	csrr x8, 0x47e	// Read CSR
	li x9, -1
	csrrw x31, 0x47e, x9	// Write all 1s to CSR
	csrrw x31, 0x47e, x0	// Write all 0s to CSR
	csrrs x31, 0x47e, x9	// Set all CSR bits
	csrrc x31, 0x47e, x9	// Clear all CSR bits
	csrrw x31, 0x47e, x8	// Restore CSR

// Testing CSR 0x47f
	csrr x11, 0x47f	// Read CSR
	li x30, -1
	csrrw x26, 0x47f, x30	// Write all 1s to CSR
	csrrw x26, 0x47f, x0	// Write all 0s to CSR
	csrrs x26, 0x47f, x30	// Set all CSR bits
	csrrc x26, 0x47f, x30	// Clear all CSR bits
	csrrw x26, 0x47f, x11	// Restore CSR

// Testing CSR 0x480
	csrr x18, 0x480	// Read CSR
	li x16, -1
	csrrw x29, 0x480, x16	// Write all 1s to CSR
	csrrw x29, 0x480, x0	// Write all 0s to CSR
	csrrs x29, 0x480, x16	// Set all CSR bits
	csrrc x29, 0x480, x16	// Clear all CSR bits
	csrrw x29, 0x480, x18	// Restore CSR

// Testing CSR 0x481
	csrr x15, 0x481	// Read CSR
	li x23, -1
	csrrw x4, 0x481, x23	// Write all 1s to CSR
	csrrw x4, 0x481, x0	// Write all 0s to CSR
	csrrs x4, 0x481, x23	// Set all CSR bits
	csrrc x4, 0x481, x23	// Clear all CSR bits
	csrrw x4, 0x481, x15	// Restore CSR

// Testing CSR 0x482
	csrr x14, 0x482	// Read CSR
	li x12, -1
	csrrw x6, 0x482, x12	// Write all 1s to CSR
	csrrw x6, 0x482, x0	// Write all 0s to CSR
	csrrs x6, 0x482, x12	// Set all CSR bits
	csrrc x6, 0x482, x12	// Clear all CSR bits
	csrrw x6, 0x482, x14	// Restore CSR

// Testing CSR 0x483
	csrr x17, 0x483	// Read CSR
	li x2, -1
	csrrw x8, 0x483, x2	// Write all 1s to CSR
	csrrw x8, 0x483, x0	// Write all 0s to CSR
	csrrs x8, 0x483, x2	// Set all CSR bits
	csrrc x8, 0x483, x2	// Clear all CSR bits
	csrrw x8, 0x483, x17	// Restore CSR

// Testing CSR 0x484
	csrr x23, 0x484	// Read CSR
	li x26, -1
	csrrw x16, 0x484, x26	// Write all 1s to CSR
	csrrw x16, 0x484, x0	// Write all 0s to CSR
	csrrs x16, 0x484, x26	// Set all CSR bits
	csrrc x16, 0x484, x26	// Clear all CSR bits
	csrrw x16, 0x484, x23	// Restore CSR

// Testing CSR 0x485
	csrr x13, 0x485	// Read CSR
	li x1, -1
	csrrw x8, 0x485, x1	// Write all 1s to CSR
	csrrw x8, 0x485, x0	// Write all 0s to CSR
	csrrs x8, 0x485, x1	// Set all CSR bits
	csrrc x8, 0x485, x1	// Clear all CSR bits
	csrrw x8, 0x485, x13	// Restore CSR

// Testing CSR 0x486
	csrr x3, 0x486	// Read CSR
	li x10, -1
	csrrw x4, 0x486, x10	// Write all 1s to CSR
	csrrw x4, 0x486, x0	// Write all 0s to CSR
	csrrs x4, 0x486, x10	// Set all CSR bits
	csrrc x4, 0x486, x10	// Clear all CSR bits
	csrrw x4, 0x486, x3	// Restore CSR

// Testing CSR 0x487
	csrr x27, 0x487	// Read CSR
	li x6, -1
	csrrw x29, 0x487, x6	// Write all 1s to CSR
	csrrw x29, 0x487, x0	// Write all 0s to CSR
	csrrs x29, 0x487, x6	// Set all CSR bits
	csrrc x29, 0x487, x6	// Clear all CSR bits
	csrrw x29, 0x487, x27	// Restore CSR

// Testing CSR 0x488
	csrr x5, 0x488	// Read CSR
	li x31, -1
	csrrw x15, 0x488, x31	// Write all 1s to CSR
	csrrw x15, 0x488, x0	// Write all 0s to CSR
	csrrs x15, 0x488, x31	// Set all CSR bits
	csrrc x15, 0x488, x31	// Clear all CSR bits
	csrrw x15, 0x488, x5	// Restore CSR

// Testing CSR 0x489
	csrr x1, 0x489	// Read CSR
	li x29, -1
	csrrw x25, 0x489, x29	// Write all 1s to CSR
	csrrw x25, 0x489, x0	// Write all 0s to CSR
	csrrs x25, 0x489, x29	// Set all CSR bits
	csrrc x25, 0x489, x29	// Clear all CSR bits
	csrrw x25, 0x489, x1	// Restore CSR

// Testing CSR 0x48a
	csrr x12, 0x48a	// Read CSR
	li x17, -1
	csrrw x14, 0x48a, x17	// Write all 1s to CSR
	csrrw x14, 0x48a, x0	// Write all 0s to CSR
	csrrs x14, 0x48a, x17	// Set all CSR bits
	csrrc x14, 0x48a, x17	// Clear all CSR bits
	csrrw x14, 0x48a, x12	// Restore CSR

// Testing CSR 0x48b
	csrr x4, 0x48b	// Read CSR
	li x17, -1
	csrrw x8, 0x48b, x17	// Write all 1s to CSR
	csrrw x8, 0x48b, x0	// Write all 0s to CSR
	csrrs x8, 0x48b, x17	// Set all CSR bits
	csrrc x8, 0x48b, x17	// Clear all CSR bits
	csrrw x8, 0x48b, x4	// Restore CSR

// Testing CSR 0x48c
	csrr x16, 0x48c	// Read CSR
	li x10, -1
	csrrw x9, 0x48c, x10	// Write all 1s to CSR
	csrrw x9, 0x48c, x0	// Write all 0s to CSR
	csrrs x9, 0x48c, x10	// Set all CSR bits
	csrrc x9, 0x48c, x10	// Clear all CSR bits
	csrrw x9, 0x48c, x16	// Restore CSR

// Testing CSR 0x48d
	csrr x13, 0x48d	// Read CSR
	li x14, -1
	csrrw x16, 0x48d, x14	// Write all 1s to CSR
	csrrw x16, 0x48d, x0	// Write all 0s to CSR
	csrrs x16, 0x48d, x14	// Set all CSR bits
	csrrc x16, 0x48d, x14	// Clear all CSR bits
	csrrw x16, 0x48d, x13	// Restore CSR

// Testing CSR 0x48e
	csrr x23, 0x48e	// Read CSR
	li x30, -1
	csrrw x2, 0x48e, x30	// Write all 1s to CSR
	csrrw x2, 0x48e, x0	// Write all 0s to CSR
	csrrs x2, 0x48e, x30	// Set all CSR bits
	csrrc x2, 0x48e, x30	// Clear all CSR bits
	csrrw x2, 0x48e, x23	// Restore CSR

// Testing CSR 0x48f
	csrr x6, 0x48f	// Read CSR
	li x23, -1
	csrrw x29, 0x48f, x23	// Write all 1s to CSR
	csrrw x29, 0x48f, x0	// Write all 0s to CSR
	csrrs x29, 0x48f, x23	// Set all CSR bits
	csrrc x29, 0x48f, x23	// Clear all CSR bits
	csrrw x29, 0x48f, x6	// Restore CSR

// Testing CSR 0x490
	csrr x28, 0x490	// Read CSR
	li x17, -1
	csrrw x12, 0x490, x17	// Write all 1s to CSR
	csrrw x12, 0x490, x0	// Write all 0s to CSR
	csrrs x12, 0x490, x17	// Set all CSR bits
	csrrc x12, 0x490, x17	// Clear all CSR bits
	csrrw x12, 0x490, x28	// Restore CSR

// Testing CSR 0x491
	csrr x7, 0x491	// Read CSR
	li x8, -1
	csrrw x5, 0x491, x8	// Write all 1s to CSR
	csrrw x5, 0x491, x0	// Write all 0s to CSR
	csrrs x5, 0x491, x8	// Set all CSR bits
	csrrc x5, 0x491, x8	// Clear all CSR bits
	csrrw x5, 0x491, x7	// Restore CSR

// Testing CSR 0x492
	csrr x8, 0x492	// Read CSR
	li x26, -1
	csrrw x10, 0x492, x26	// Write all 1s to CSR
	csrrw x10, 0x492, x0	// Write all 0s to CSR
	csrrs x10, 0x492, x26	// Set all CSR bits
	csrrc x10, 0x492, x26	// Clear all CSR bits
	csrrw x10, 0x492, x8	// Restore CSR

// Testing CSR 0x493
	csrr x26, 0x493	// Read CSR
	li x5, -1
	csrrw x6, 0x493, x5	// Write all 1s to CSR
	csrrw x6, 0x493, x0	// Write all 0s to CSR
	csrrs x6, 0x493, x5	// Set all CSR bits
	csrrc x6, 0x493, x5	// Clear all CSR bits
	csrrw x6, 0x493, x26	// Restore CSR

// Testing CSR 0x494
	csrr x18, 0x494	// Read CSR
	li x9, -1
	csrrw x1, 0x494, x9	// Write all 1s to CSR
	csrrw x1, 0x494, x0	// Write all 0s to CSR
	csrrs x1, 0x494, x9	// Set all CSR bits
	csrrc x1, 0x494, x9	// Clear all CSR bits
	csrrw x1, 0x494, x18	// Restore CSR

// Testing CSR 0x495
	csrr x6, 0x495	// Read CSR
	li x8, -1
	csrrw x28, 0x495, x8	// Write all 1s to CSR
	csrrw x28, 0x495, x0	// Write all 0s to CSR
	csrrs x28, 0x495, x8	// Set all CSR bits
	csrrc x28, 0x495, x8	// Clear all CSR bits
	csrrw x28, 0x495, x6	// Restore CSR

// Testing CSR 0x496
	csrr x27, 0x496	// Read CSR
	li x24, -1
	csrrw x14, 0x496, x24	// Write all 1s to CSR
	csrrw x14, 0x496, x0	// Write all 0s to CSR
	csrrs x14, 0x496, x24	// Set all CSR bits
	csrrc x14, 0x496, x24	// Clear all CSR bits
	csrrw x14, 0x496, x27	// Restore CSR

// Testing CSR 0x497
	csrr x30, 0x497	// Read CSR
	li x29, -1
	csrrw x23, 0x497, x29	// Write all 1s to CSR
	csrrw x23, 0x497, x0	// Write all 0s to CSR
	csrrs x23, 0x497, x29	// Set all CSR bits
	csrrc x23, 0x497, x29	// Clear all CSR bits
	csrrw x23, 0x497, x30	// Restore CSR

// Testing CSR 0x498
	csrr x31, 0x498	// Read CSR
	li x6, -1
	csrrw x8, 0x498, x6	// Write all 1s to CSR
	csrrw x8, 0x498, x0	// Write all 0s to CSR
	csrrs x8, 0x498, x6	// Set all CSR bits
	csrrc x8, 0x498, x6	// Clear all CSR bits
	csrrw x8, 0x498, x31	// Restore CSR

// Testing CSR 0x499
	csrr x25, 0x499	// Read CSR
	li x18, -1
	csrrw x5, 0x499, x18	// Write all 1s to CSR
	csrrw x5, 0x499, x0	// Write all 0s to CSR
	csrrs x5, 0x499, x18	// Set all CSR bits
	csrrc x5, 0x499, x18	// Clear all CSR bits
	csrrw x5, 0x499, x25	// Restore CSR

// Testing CSR 0x49a
	csrr x29, 0x49a	// Read CSR
	li x27, -1
	csrrw x19, 0x49a, x27	// Write all 1s to CSR
	csrrw x19, 0x49a, x0	// Write all 0s to CSR
	csrrs x19, 0x49a, x27	// Set all CSR bits
	csrrc x19, 0x49a, x27	// Clear all CSR bits
	csrrw x19, 0x49a, x29	// Restore CSR

// Testing CSR 0x49b
	csrr x22, 0x49b	// Read CSR
	li x6, -1
	csrrw x24, 0x49b, x6	// Write all 1s to CSR
	csrrw x24, 0x49b, x0	// Write all 0s to CSR
	csrrs x24, 0x49b, x6	// Set all CSR bits
	csrrc x24, 0x49b, x6	// Clear all CSR bits
	csrrw x24, 0x49b, x22	// Restore CSR

// Testing CSR 0x49c
	csrr x8, 0x49c	// Read CSR
	li x17, -1
	csrrw x25, 0x49c, x17	// Write all 1s to CSR
	csrrw x25, 0x49c, x0	// Write all 0s to CSR
	csrrs x25, 0x49c, x17	// Set all CSR bits
	csrrc x25, 0x49c, x17	// Clear all CSR bits
	csrrw x25, 0x49c, x8	// Restore CSR

// Testing CSR 0x49d
	csrr x10, 0x49d	// Read CSR
	li x26, -1
	csrrw x28, 0x49d, x26	// Write all 1s to CSR
	csrrw x28, 0x49d, x0	// Write all 0s to CSR
	csrrs x28, 0x49d, x26	// Set all CSR bits
	csrrc x28, 0x49d, x26	// Clear all CSR bits
	csrrw x28, 0x49d, x10	// Restore CSR

// Testing CSR 0x49e
	csrr x28, 0x49e	// Read CSR
	li x26, -1
	csrrw x23, 0x49e, x26	// Write all 1s to CSR
	csrrw x23, 0x49e, x0	// Write all 0s to CSR
	csrrs x23, 0x49e, x26	// Set all CSR bits
	csrrc x23, 0x49e, x26	// Clear all CSR bits
	csrrw x23, 0x49e, x28	// Restore CSR

// Testing CSR 0x49f
	csrr x24, 0x49f	// Read CSR
	li x1, -1
	csrrw x15, 0x49f, x1	// Write all 1s to CSR
	csrrw x15, 0x49f, x0	// Write all 0s to CSR
	csrrs x15, 0x49f, x1	// Set all CSR bits
	csrrc x15, 0x49f, x1	// Clear all CSR bits
	csrrw x15, 0x49f, x24	// Restore CSR

// Testing CSR 0x4a0
	csrr x26, 0x4a0	// Read CSR
	li x29, -1
	csrrw x28, 0x4a0, x29	// Write all 1s to CSR
	csrrw x28, 0x4a0, x0	// Write all 0s to CSR
	csrrs x28, 0x4a0, x29	// Set all CSR bits
	csrrc x28, 0x4a0, x29	// Clear all CSR bits
	csrrw x28, 0x4a0, x26	// Restore CSR

// Testing CSR 0x4a1
	csrr x7, 0x4a1	// Read CSR
	li x2, -1
	csrrw x14, 0x4a1, x2	// Write all 1s to CSR
	csrrw x14, 0x4a1, x0	// Write all 0s to CSR
	csrrs x14, 0x4a1, x2	// Set all CSR bits
	csrrc x14, 0x4a1, x2	// Clear all CSR bits
	csrrw x14, 0x4a1, x7	// Restore CSR

// Testing CSR 0x4a2
	csrr x6, 0x4a2	// Read CSR
	li x13, -1
	csrrw x17, 0x4a2, x13	// Write all 1s to CSR
	csrrw x17, 0x4a2, x0	// Write all 0s to CSR
	csrrs x17, 0x4a2, x13	// Set all CSR bits
	csrrc x17, 0x4a2, x13	// Clear all CSR bits
	csrrw x17, 0x4a2, x6	// Restore CSR

// Testing CSR 0x4a3
	csrr x13, 0x4a3	// Read CSR
	li x7, -1
	csrrw x18, 0x4a3, x7	// Write all 1s to CSR
	csrrw x18, 0x4a3, x0	// Write all 0s to CSR
	csrrs x18, 0x4a3, x7	// Set all CSR bits
	csrrc x18, 0x4a3, x7	// Clear all CSR bits
	csrrw x18, 0x4a3, x13	// Restore CSR

// Testing CSR 0x4a4
	csrr x17, 0x4a4	// Read CSR
	li x16, -1
	csrrw x4, 0x4a4, x16	// Write all 1s to CSR
	csrrw x4, 0x4a4, x0	// Write all 0s to CSR
	csrrs x4, 0x4a4, x16	// Set all CSR bits
	csrrc x4, 0x4a4, x16	// Clear all CSR bits
	csrrw x4, 0x4a4, x17	// Restore CSR

// Testing CSR 0x4a5
	csrr x5, 0x4a5	// Read CSR
	li x28, -1
	csrrw x3, 0x4a5, x28	// Write all 1s to CSR
	csrrw x3, 0x4a5, x0	// Write all 0s to CSR
	csrrs x3, 0x4a5, x28	// Set all CSR bits
	csrrc x3, 0x4a5, x28	// Clear all CSR bits
	csrrw x3, 0x4a5, x5	// Restore CSR

// Testing CSR 0x4a6
	csrr x18, 0x4a6	// Read CSR
	li x1, -1
	csrrw x29, 0x4a6, x1	// Write all 1s to CSR
	csrrw x29, 0x4a6, x0	// Write all 0s to CSR
	csrrs x29, 0x4a6, x1	// Set all CSR bits
	csrrc x29, 0x4a6, x1	// Clear all CSR bits
	csrrw x29, 0x4a6, x18	// Restore CSR

// Testing CSR 0x4a7
	csrr x27, 0x4a7	// Read CSR
	li x29, -1
	csrrw x3, 0x4a7, x29	// Write all 1s to CSR
	csrrw x3, 0x4a7, x0	// Write all 0s to CSR
	csrrs x3, 0x4a7, x29	// Set all CSR bits
	csrrc x3, 0x4a7, x29	// Clear all CSR bits
	csrrw x3, 0x4a7, x27	// Restore CSR

// Testing CSR 0x4a8
	csrr x1, 0x4a8	// Read CSR
	li x31, -1
	csrrw x24, 0x4a8, x31	// Write all 1s to CSR
	csrrw x24, 0x4a8, x0	// Write all 0s to CSR
	csrrs x24, 0x4a8, x31	// Set all CSR bits
	csrrc x24, 0x4a8, x31	// Clear all CSR bits
	csrrw x24, 0x4a8, x1	// Restore CSR

// Testing CSR 0x4a9
	csrr x8, 0x4a9	// Read CSR
	li x24, -1
	csrrw x13, 0x4a9, x24	// Write all 1s to CSR
	csrrw x13, 0x4a9, x0	// Write all 0s to CSR
	csrrs x13, 0x4a9, x24	// Set all CSR bits
	csrrc x13, 0x4a9, x24	// Clear all CSR bits
	csrrw x13, 0x4a9, x8	// Restore CSR

// Testing CSR 0x4aa
	csrr x15, 0x4aa	// Read CSR
	li x22, -1
	csrrw x9, 0x4aa, x22	// Write all 1s to CSR
	csrrw x9, 0x4aa, x0	// Write all 0s to CSR
	csrrs x9, 0x4aa, x22	// Set all CSR bits
	csrrc x9, 0x4aa, x22	// Clear all CSR bits
	csrrw x9, 0x4aa, x15	// Restore CSR

// Testing CSR 0x4ab
	csrr x14, 0x4ab	// Read CSR
	li x12, -1
	csrrw x22, 0x4ab, x12	// Write all 1s to CSR
	csrrw x22, 0x4ab, x0	// Write all 0s to CSR
	csrrs x22, 0x4ab, x12	// Set all CSR bits
	csrrc x22, 0x4ab, x12	// Clear all CSR bits
	csrrw x22, 0x4ab, x14	// Restore CSR

// Testing CSR 0x4ac
	csrr x13, 0x4ac	// Read CSR
	li x9, -1
	csrrw x24, 0x4ac, x9	// Write all 1s to CSR
	csrrw x24, 0x4ac, x0	// Write all 0s to CSR
	csrrs x24, 0x4ac, x9	// Set all CSR bits
	csrrc x24, 0x4ac, x9	// Clear all CSR bits
	csrrw x24, 0x4ac, x13	// Restore CSR

// Testing CSR 0x4ad
	csrr x3, 0x4ad	// Read CSR
	li x29, -1
	csrrw x25, 0x4ad, x29	// Write all 1s to CSR
	csrrw x25, 0x4ad, x0	// Write all 0s to CSR
	csrrs x25, 0x4ad, x29	// Set all CSR bits
	csrrc x25, 0x4ad, x29	// Clear all CSR bits
	csrrw x25, 0x4ad, x3	// Restore CSR

// Testing CSR 0x4ae
	csrr x6, 0x4ae	// Read CSR
	li x19, -1
	csrrw x8, 0x4ae, x19	// Write all 1s to CSR
	csrrw x8, 0x4ae, x0	// Write all 0s to CSR
	csrrs x8, 0x4ae, x19	// Set all CSR bits
	csrrc x8, 0x4ae, x19	// Clear all CSR bits
	csrrw x8, 0x4ae, x6	// Restore CSR

// Testing CSR 0x4af
	csrr x24, 0x4af	// Read CSR
	li x7, -1
	csrrw x28, 0x4af, x7	// Write all 1s to CSR
	csrrw x28, 0x4af, x0	// Write all 0s to CSR
	csrrs x28, 0x4af, x7	// Set all CSR bits
	csrrc x28, 0x4af, x7	// Clear all CSR bits
	csrrw x28, 0x4af, x24	// Restore CSR

// Testing CSR 0x4b0
	csrr x2, 0x4b0	// Read CSR
	li x25, -1
	csrrw x28, 0x4b0, x25	// Write all 1s to CSR
	csrrw x28, 0x4b0, x0	// Write all 0s to CSR
	csrrs x28, 0x4b0, x25	// Set all CSR bits
	csrrc x28, 0x4b0, x25	// Clear all CSR bits
	csrrw x28, 0x4b0, x2	// Restore CSR

// Testing CSR 0x4b1
	csrr x2, 0x4b1	// Read CSR
	li x17, -1
	csrrw x26, 0x4b1, x17	// Write all 1s to CSR
	csrrw x26, 0x4b1, x0	// Write all 0s to CSR
	csrrs x26, 0x4b1, x17	// Set all CSR bits
	csrrc x26, 0x4b1, x17	// Clear all CSR bits
	csrrw x26, 0x4b1, x2	// Restore CSR

// Testing CSR 0x4b2
	csrr x3, 0x4b2	// Read CSR
	li x23, -1
	csrrw x15, 0x4b2, x23	// Write all 1s to CSR
	csrrw x15, 0x4b2, x0	// Write all 0s to CSR
	csrrs x15, 0x4b2, x23	// Set all CSR bits
	csrrc x15, 0x4b2, x23	// Clear all CSR bits
	csrrw x15, 0x4b2, x3	// Restore CSR

// Testing CSR 0x4b3
	csrr x8, 0x4b3	// Read CSR
	li x15, -1
	csrrw x23, 0x4b3, x15	// Write all 1s to CSR
	csrrw x23, 0x4b3, x0	// Write all 0s to CSR
	csrrs x23, 0x4b3, x15	// Set all CSR bits
	csrrc x23, 0x4b3, x15	// Clear all CSR bits
	csrrw x23, 0x4b3, x8	// Restore CSR

// Testing CSR 0x4b4
	csrr x25, 0x4b4	// Read CSR
	li x29, -1
	csrrw x22, 0x4b4, x29	// Write all 1s to CSR
	csrrw x22, 0x4b4, x0	// Write all 0s to CSR
	csrrs x22, 0x4b4, x29	// Set all CSR bits
	csrrc x22, 0x4b4, x29	// Clear all CSR bits
	csrrw x22, 0x4b4, x25	// Restore CSR

// Testing CSR 0x4b5
	csrr x5, 0x4b5	// Read CSR
	li x20, -1
	csrrw x21, 0x4b5, x20	// Write all 1s to CSR
	csrrw x21, 0x4b5, x0	// Write all 0s to CSR
	csrrs x21, 0x4b5, x20	// Set all CSR bits
	csrrc x21, 0x4b5, x20	// Clear all CSR bits
	csrrw x21, 0x4b5, x5	// Restore CSR

// Testing CSR 0x4b6
	csrr x29, 0x4b6	// Read CSR
	li x17, -1
	csrrw x10, 0x4b6, x17	// Write all 1s to CSR
	csrrw x10, 0x4b6, x0	// Write all 0s to CSR
	csrrs x10, 0x4b6, x17	// Set all CSR bits
	csrrc x10, 0x4b6, x17	// Clear all CSR bits
	csrrw x10, 0x4b6, x29	// Restore CSR

// Testing CSR 0x4b7
	csrr x1, 0x4b7	// Read CSR
	li x20, -1
	csrrw x5, 0x4b7, x20	// Write all 1s to CSR
	csrrw x5, 0x4b7, x0	// Write all 0s to CSR
	csrrs x5, 0x4b7, x20	// Set all CSR bits
	csrrc x5, 0x4b7, x20	// Clear all CSR bits
	csrrw x5, 0x4b7, x1	// Restore CSR

// Testing CSR 0x4b8
	csrr x12, 0x4b8	// Read CSR
	li x22, -1
	csrrw x27, 0x4b8, x22	// Write all 1s to CSR
	csrrw x27, 0x4b8, x0	// Write all 0s to CSR
	csrrs x27, 0x4b8, x22	// Set all CSR bits
	csrrc x27, 0x4b8, x22	// Clear all CSR bits
	csrrw x27, 0x4b8, x12	// Restore CSR

// Testing CSR 0x4b9
	csrr x31, 0x4b9	// Read CSR
	li x10, -1
	csrrw x17, 0x4b9, x10	// Write all 1s to CSR
	csrrw x17, 0x4b9, x0	// Write all 0s to CSR
	csrrs x17, 0x4b9, x10	// Set all CSR bits
	csrrc x17, 0x4b9, x10	// Clear all CSR bits
	csrrw x17, 0x4b9, x31	// Restore CSR

// Testing CSR 0x4ba
	csrr x21, 0x4ba	// Read CSR
	li x23, -1
	csrrw x9, 0x4ba, x23	// Write all 1s to CSR
	csrrw x9, 0x4ba, x0	// Write all 0s to CSR
	csrrs x9, 0x4ba, x23	// Set all CSR bits
	csrrc x9, 0x4ba, x23	// Clear all CSR bits
	csrrw x9, 0x4ba, x21	// Restore CSR

// Testing CSR 0x4bb
	csrr x5, 0x4bb	// Read CSR
	li x1, -1
	csrrw x16, 0x4bb, x1	// Write all 1s to CSR
	csrrw x16, 0x4bb, x0	// Write all 0s to CSR
	csrrs x16, 0x4bb, x1	// Set all CSR bits
	csrrc x16, 0x4bb, x1	// Clear all CSR bits
	csrrw x16, 0x4bb, x5	// Restore CSR

// Testing CSR 0x4bc
	csrr x26, 0x4bc	// Read CSR
	li x24, -1
	csrrw x30, 0x4bc, x24	// Write all 1s to CSR
	csrrw x30, 0x4bc, x0	// Write all 0s to CSR
	csrrs x30, 0x4bc, x24	// Set all CSR bits
	csrrc x30, 0x4bc, x24	// Clear all CSR bits
	csrrw x30, 0x4bc, x26	// Restore CSR

// Testing CSR 0x4bd
	csrr x27, 0x4bd	// Read CSR
	li x28, -1
	csrrw x7, 0x4bd, x28	// Write all 1s to CSR
	csrrw x7, 0x4bd, x0	// Write all 0s to CSR
	csrrs x7, 0x4bd, x28	// Set all CSR bits
	csrrc x7, 0x4bd, x28	// Clear all CSR bits
	csrrw x7, 0x4bd, x27	// Restore CSR

// Testing CSR 0x4be
	csrr x20, 0x4be	// Read CSR
	li x13, -1
	csrrw x11, 0x4be, x13	// Write all 1s to CSR
	csrrw x11, 0x4be, x0	// Write all 0s to CSR
	csrrs x11, 0x4be, x13	// Set all CSR bits
	csrrc x11, 0x4be, x13	// Clear all CSR bits
	csrrw x11, 0x4be, x20	// Restore CSR

// Testing CSR 0x4bf
	csrr x16, 0x4bf	// Read CSR
	li x10, -1
	csrrw x15, 0x4bf, x10	// Write all 1s to CSR
	csrrw x15, 0x4bf, x0	// Write all 0s to CSR
	csrrs x15, 0x4bf, x10	// Set all CSR bits
	csrrc x15, 0x4bf, x10	// Clear all CSR bits
	csrrw x15, 0x4bf, x16	// Restore CSR

// Testing CSR 0x4c0
	csrr x5, 0x4c0	// Read CSR
	li x16, -1
	csrrw x27, 0x4c0, x16	// Write all 1s to CSR
	csrrw x27, 0x4c0, x0	// Write all 0s to CSR
	csrrs x27, 0x4c0, x16	// Set all CSR bits
	csrrc x27, 0x4c0, x16	// Clear all CSR bits
	csrrw x27, 0x4c0, x5	// Restore CSR

// Testing CSR 0x4c1
	csrr x10, 0x4c1	// Read CSR
	li x31, -1
	csrrw x26, 0x4c1, x31	// Write all 1s to CSR
	csrrw x26, 0x4c1, x0	// Write all 0s to CSR
	csrrs x26, 0x4c1, x31	// Set all CSR bits
	csrrc x26, 0x4c1, x31	// Clear all CSR bits
	csrrw x26, 0x4c1, x10	// Restore CSR

// Testing CSR 0x4c2
	csrr x23, 0x4c2	// Read CSR
	li x30, -1
	csrrw x11, 0x4c2, x30	// Write all 1s to CSR
	csrrw x11, 0x4c2, x0	// Write all 0s to CSR
	csrrs x11, 0x4c2, x30	// Set all CSR bits
	csrrc x11, 0x4c2, x30	// Clear all CSR bits
	csrrw x11, 0x4c2, x23	// Restore CSR

// Testing CSR 0x4c3
	csrr x12, 0x4c3	// Read CSR
	li x28, -1
	csrrw x21, 0x4c3, x28	// Write all 1s to CSR
	csrrw x21, 0x4c3, x0	// Write all 0s to CSR
	csrrs x21, 0x4c3, x28	// Set all CSR bits
	csrrc x21, 0x4c3, x28	// Clear all CSR bits
	csrrw x21, 0x4c3, x12	// Restore CSR

// Testing CSR 0x4c4
	csrr x20, 0x4c4	// Read CSR
	li x13, -1
	csrrw x19, 0x4c4, x13	// Write all 1s to CSR
	csrrw x19, 0x4c4, x0	// Write all 0s to CSR
	csrrs x19, 0x4c4, x13	// Set all CSR bits
	csrrc x19, 0x4c4, x13	// Clear all CSR bits
	csrrw x19, 0x4c4, x20	// Restore CSR

// Testing CSR 0x4c5
	csrr x13, 0x4c5	// Read CSR
	li x23, -1
	csrrw x29, 0x4c5, x23	// Write all 1s to CSR
	csrrw x29, 0x4c5, x0	// Write all 0s to CSR
	csrrs x29, 0x4c5, x23	// Set all CSR bits
	csrrc x29, 0x4c5, x23	// Clear all CSR bits
	csrrw x29, 0x4c5, x13	// Restore CSR

// Testing CSR 0x4c6
	csrr x17, 0x4c6	// Read CSR
	li x10, -1
	csrrw x22, 0x4c6, x10	// Write all 1s to CSR
	csrrw x22, 0x4c6, x0	// Write all 0s to CSR
	csrrs x22, 0x4c6, x10	// Set all CSR bits
	csrrc x22, 0x4c6, x10	// Clear all CSR bits
	csrrw x22, 0x4c6, x17	// Restore CSR

// Testing CSR 0x4c7
	csrr x27, 0x4c7	// Read CSR
	li x25, -1
	csrrw x19, 0x4c7, x25	// Write all 1s to CSR
	csrrw x19, 0x4c7, x0	// Write all 0s to CSR
	csrrs x19, 0x4c7, x25	// Set all CSR bits
	csrrc x19, 0x4c7, x25	// Clear all CSR bits
	csrrw x19, 0x4c7, x27	// Restore CSR

// Testing CSR 0x4c8
	csrr x27, 0x4c8	// Read CSR
	li x8, -1
	csrrw x7, 0x4c8, x8	// Write all 1s to CSR
	csrrw x7, 0x4c8, x0	// Write all 0s to CSR
	csrrs x7, 0x4c8, x8	// Set all CSR bits
	csrrc x7, 0x4c8, x8	// Clear all CSR bits
	csrrw x7, 0x4c8, x27	// Restore CSR

// Testing CSR 0x4c9
	csrr x14, 0x4c9	// Read CSR
	li x7, -1
	csrrw x9, 0x4c9, x7	// Write all 1s to CSR
	csrrw x9, 0x4c9, x0	// Write all 0s to CSR
	csrrs x9, 0x4c9, x7	// Set all CSR bits
	csrrc x9, 0x4c9, x7	// Clear all CSR bits
	csrrw x9, 0x4c9, x14	// Restore CSR

// Testing CSR 0x4ca
	csrr x17, 0x4ca	// Read CSR
	li x6, -1
	csrrw x5, 0x4ca, x6	// Write all 1s to CSR
	csrrw x5, 0x4ca, x0	// Write all 0s to CSR
	csrrs x5, 0x4ca, x6	// Set all CSR bits
	csrrc x5, 0x4ca, x6	// Clear all CSR bits
	csrrw x5, 0x4ca, x17	// Restore CSR

// Testing CSR 0x4cb
	csrr x26, 0x4cb	// Read CSR
	li x20, -1
	csrrw x17, 0x4cb, x20	// Write all 1s to CSR
	csrrw x17, 0x4cb, x0	// Write all 0s to CSR
	csrrs x17, 0x4cb, x20	// Set all CSR bits
	csrrc x17, 0x4cb, x20	// Clear all CSR bits
	csrrw x17, 0x4cb, x26	// Restore CSR

// Testing CSR 0x4cc
	csrr x25, 0x4cc	// Read CSR
	li x29, -1
	csrrw x18, 0x4cc, x29	// Write all 1s to CSR
	csrrw x18, 0x4cc, x0	// Write all 0s to CSR
	csrrs x18, 0x4cc, x29	// Set all CSR bits
	csrrc x18, 0x4cc, x29	// Clear all CSR bits
	csrrw x18, 0x4cc, x25	// Restore CSR

// Testing CSR 0x4cd
	csrr x25, 0x4cd	// Read CSR
	li x30, -1
	csrrw x17, 0x4cd, x30	// Write all 1s to CSR
	csrrw x17, 0x4cd, x0	// Write all 0s to CSR
	csrrs x17, 0x4cd, x30	// Set all CSR bits
	csrrc x17, 0x4cd, x30	// Clear all CSR bits
	csrrw x17, 0x4cd, x25	// Restore CSR

// Testing CSR 0x4ce
	csrr x27, 0x4ce	// Read CSR
	li x16, -1
	csrrw x21, 0x4ce, x16	// Write all 1s to CSR
	csrrw x21, 0x4ce, x0	// Write all 0s to CSR
	csrrs x21, 0x4ce, x16	// Set all CSR bits
	csrrc x21, 0x4ce, x16	// Clear all CSR bits
	csrrw x21, 0x4ce, x27	// Restore CSR

// Testing CSR 0x4cf
	csrr x30, 0x4cf	// Read CSR
	li x11, -1
	csrrw x9, 0x4cf, x11	// Write all 1s to CSR
	csrrw x9, 0x4cf, x0	// Write all 0s to CSR
	csrrs x9, 0x4cf, x11	// Set all CSR bits
	csrrc x9, 0x4cf, x11	// Clear all CSR bits
	csrrw x9, 0x4cf, x30	// Restore CSR

// Testing CSR 0x4d0
	csrr x14, 0x4d0	// Read CSR
	li x10, -1
	csrrw x15, 0x4d0, x10	// Write all 1s to CSR
	csrrw x15, 0x4d0, x0	// Write all 0s to CSR
	csrrs x15, 0x4d0, x10	// Set all CSR bits
	csrrc x15, 0x4d0, x10	// Clear all CSR bits
	csrrw x15, 0x4d0, x14	// Restore CSR

// Testing CSR 0x4d1
	csrr x30, 0x4d1	// Read CSR
	li x21, -1
	csrrw x17, 0x4d1, x21	// Write all 1s to CSR
	csrrw x17, 0x4d1, x0	// Write all 0s to CSR
	csrrs x17, 0x4d1, x21	// Set all CSR bits
	csrrc x17, 0x4d1, x21	// Clear all CSR bits
	csrrw x17, 0x4d1, x30	// Restore CSR

// Testing CSR 0x4d2
	csrr x2, 0x4d2	// Read CSR
	li x26, -1
	csrrw x24, 0x4d2, x26	// Write all 1s to CSR
	csrrw x24, 0x4d2, x0	// Write all 0s to CSR
	csrrs x24, 0x4d2, x26	// Set all CSR bits
	csrrc x24, 0x4d2, x26	// Clear all CSR bits
	csrrw x24, 0x4d2, x2	// Restore CSR

// Testing CSR 0x4d3
	csrr x7, 0x4d3	// Read CSR
	li x31, -1
	csrrw x9, 0x4d3, x31	// Write all 1s to CSR
	csrrw x9, 0x4d3, x0	// Write all 0s to CSR
	csrrs x9, 0x4d3, x31	// Set all CSR bits
	csrrc x9, 0x4d3, x31	// Clear all CSR bits
	csrrw x9, 0x4d3, x7	// Restore CSR

// Testing CSR 0x4d4
	csrr x15, 0x4d4	// Read CSR
	li x23, -1
	csrrw x3, 0x4d4, x23	// Write all 1s to CSR
	csrrw x3, 0x4d4, x0	// Write all 0s to CSR
	csrrs x3, 0x4d4, x23	// Set all CSR bits
	csrrc x3, 0x4d4, x23	// Clear all CSR bits
	csrrw x3, 0x4d4, x15	// Restore CSR

// Testing CSR 0x4d5
	csrr x1, 0x4d5	// Read CSR
	li x7, -1
	csrrw x20, 0x4d5, x7	// Write all 1s to CSR
	csrrw x20, 0x4d5, x0	// Write all 0s to CSR
	csrrs x20, 0x4d5, x7	// Set all CSR bits
	csrrc x20, 0x4d5, x7	// Clear all CSR bits
	csrrw x20, 0x4d5, x1	// Restore CSR

// Testing CSR 0x4d6
	csrr x4, 0x4d6	// Read CSR
	li x28, -1
	csrrw x9, 0x4d6, x28	// Write all 1s to CSR
	csrrw x9, 0x4d6, x0	// Write all 0s to CSR
	csrrs x9, 0x4d6, x28	// Set all CSR bits
	csrrc x9, 0x4d6, x28	// Clear all CSR bits
	csrrw x9, 0x4d6, x4	// Restore CSR

// Testing CSR 0x4d7
	csrr x26, 0x4d7	// Read CSR
	li x31, -1
	csrrw x1, 0x4d7, x31	// Write all 1s to CSR
	csrrw x1, 0x4d7, x0	// Write all 0s to CSR
	csrrs x1, 0x4d7, x31	// Set all CSR bits
	csrrc x1, 0x4d7, x31	// Clear all CSR bits
	csrrw x1, 0x4d7, x26	// Restore CSR

// Testing CSR 0x4d8
	csrr x27, 0x4d8	// Read CSR
	li x28, -1
	csrrw x7, 0x4d8, x28	// Write all 1s to CSR
	csrrw x7, 0x4d8, x0	// Write all 0s to CSR
	csrrs x7, 0x4d8, x28	// Set all CSR bits
	csrrc x7, 0x4d8, x28	// Clear all CSR bits
	csrrw x7, 0x4d8, x27	// Restore CSR

// Testing CSR 0x4d9
	csrr x31, 0x4d9	// Read CSR
	li x29, -1
	csrrw x6, 0x4d9, x29	// Write all 1s to CSR
	csrrw x6, 0x4d9, x0	// Write all 0s to CSR
	csrrs x6, 0x4d9, x29	// Set all CSR bits
	csrrc x6, 0x4d9, x29	// Clear all CSR bits
	csrrw x6, 0x4d9, x31	// Restore CSR

// Testing CSR 0x4da
	csrr x20, 0x4da	// Read CSR
	li x6, -1
	csrrw x30, 0x4da, x6	// Write all 1s to CSR
	csrrw x30, 0x4da, x0	// Write all 0s to CSR
	csrrs x30, 0x4da, x6	// Set all CSR bits
	csrrc x30, 0x4da, x6	// Clear all CSR bits
	csrrw x30, 0x4da, x20	// Restore CSR

// Testing CSR 0x4db
	csrr x31, 0x4db	// Read CSR
	li x22, -1
	csrrw x12, 0x4db, x22	// Write all 1s to CSR
	csrrw x12, 0x4db, x0	// Write all 0s to CSR
	csrrs x12, 0x4db, x22	// Set all CSR bits
	csrrc x12, 0x4db, x22	// Clear all CSR bits
	csrrw x12, 0x4db, x31	// Restore CSR

// Testing CSR 0x4dc
	csrr x20, 0x4dc	// Read CSR
	li x26, -1
	csrrw x9, 0x4dc, x26	// Write all 1s to CSR
	csrrw x9, 0x4dc, x0	// Write all 0s to CSR
	csrrs x9, 0x4dc, x26	// Set all CSR bits
	csrrc x9, 0x4dc, x26	// Clear all CSR bits
	csrrw x9, 0x4dc, x20	// Restore CSR

// Testing CSR 0x4dd
	csrr x1, 0x4dd	// Read CSR
	li x22, -1
	csrrw x20, 0x4dd, x22	// Write all 1s to CSR
	csrrw x20, 0x4dd, x0	// Write all 0s to CSR
	csrrs x20, 0x4dd, x22	// Set all CSR bits
	csrrc x20, 0x4dd, x22	// Clear all CSR bits
	csrrw x20, 0x4dd, x1	// Restore CSR

// Testing CSR 0x4de
	csrr x30, 0x4de	// Read CSR
	li x27, -1
	csrrw x6, 0x4de, x27	// Write all 1s to CSR
	csrrw x6, 0x4de, x0	// Write all 0s to CSR
	csrrs x6, 0x4de, x27	// Set all CSR bits
	csrrc x6, 0x4de, x27	// Clear all CSR bits
	csrrw x6, 0x4de, x30	// Restore CSR

// Testing CSR 0x4df
	csrr x28, 0x4df	// Read CSR
	li x10, -1
	csrrw x31, 0x4df, x10	// Write all 1s to CSR
	csrrw x31, 0x4df, x0	// Write all 0s to CSR
	csrrs x31, 0x4df, x10	// Set all CSR bits
	csrrc x31, 0x4df, x10	// Clear all CSR bits
	csrrw x31, 0x4df, x28	// Restore CSR

// Testing CSR 0x4e0
	csrr x27, 0x4e0	// Read CSR
	li x8, -1
	csrrw x13, 0x4e0, x8	// Write all 1s to CSR
	csrrw x13, 0x4e0, x0	// Write all 0s to CSR
	csrrs x13, 0x4e0, x8	// Set all CSR bits
	csrrc x13, 0x4e0, x8	// Clear all CSR bits
	csrrw x13, 0x4e0, x27	// Restore CSR

// Testing CSR 0x4e1
	csrr x27, 0x4e1	// Read CSR
	li x16, -1
	csrrw x24, 0x4e1, x16	// Write all 1s to CSR
	csrrw x24, 0x4e1, x0	// Write all 0s to CSR
	csrrs x24, 0x4e1, x16	// Set all CSR bits
	csrrc x24, 0x4e1, x16	// Clear all CSR bits
	csrrw x24, 0x4e1, x27	// Restore CSR

// Testing CSR 0x4e2
	csrr x12, 0x4e2	// Read CSR
	li x28, -1
	csrrw x3, 0x4e2, x28	// Write all 1s to CSR
	csrrw x3, 0x4e2, x0	// Write all 0s to CSR
	csrrs x3, 0x4e2, x28	// Set all CSR bits
	csrrc x3, 0x4e2, x28	// Clear all CSR bits
	csrrw x3, 0x4e2, x12	// Restore CSR

// Testing CSR 0x4e3
	csrr x19, 0x4e3	// Read CSR
	li x14, -1
	csrrw x26, 0x4e3, x14	// Write all 1s to CSR
	csrrw x26, 0x4e3, x0	// Write all 0s to CSR
	csrrs x26, 0x4e3, x14	// Set all CSR bits
	csrrc x26, 0x4e3, x14	// Clear all CSR bits
	csrrw x26, 0x4e3, x19	// Restore CSR

// Testing CSR 0x4e4
	csrr x4, 0x4e4	// Read CSR
	li x23, -1
	csrrw x1, 0x4e4, x23	// Write all 1s to CSR
	csrrw x1, 0x4e4, x0	// Write all 0s to CSR
	csrrs x1, 0x4e4, x23	// Set all CSR bits
	csrrc x1, 0x4e4, x23	// Clear all CSR bits
	csrrw x1, 0x4e4, x4	// Restore CSR

// Testing CSR 0x4e5
	csrr x25, 0x4e5	// Read CSR
	li x6, -1
	csrrw x1, 0x4e5, x6	// Write all 1s to CSR
	csrrw x1, 0x4e5, x0	// Write all 0s to CSR
	csrrs x1, 0x4e5, x6	// Set all CSR bits
	csrrc x1, 0x4e5, x6	// Clear all CSR bits
	csrrw x1, 0x4e5, x25	// Restore CSR

// Testing CSR 0x4e6
	csrr x20, 0x4e6	// Read CSR
	li x18, -1
	csrrw x9, 0x4e6, x18	// Write all 1s to CSR
	csrrw x9, 0x4e6, x0	// Write all 0s to CSR
	csrrs x9, 0x4e6, x18	// Set all CSR bits
	csrrc x9, 0x4e6, x18	// Clear all CSR bits
	csrrw x9, 0x4e6, x20	// Restore CSR

// Testing CSR 0x4e7
	csrr x12, 0x4e7	// Read CSR
	li x24, -1
	csrrw x7, 0x4e7, x24	// Write all 1s to CSR
	csrrw x7, 0x4e7, x0	// Write all 0s to CSR
	csrrs x7, 0x4e7, x24	// Set all CSR bits
	csrrc x7, 0x4e7, x24	// Clear all CSR bits
	csrrw x7, 0x4e7, x12	// Restore CSR

// Testing CSR 0x4e8
	csrr x28, 0x4e8	// Read CSR
	li x30, -1
	csrrw x13, 0x4e8, x30	// Write all 1s to CSR
	csrrw x13, 0x4e8, x0	// Write all 0s to CSR
	csrrs x13, 0x4e8, x30	// Set all CSR bits
	csrrc x13, 0x4e8, x30	// Clear all CSR bits
	csrrw x13, 0x4e8, x28	// Restore CSR

// Testing CSR 0x4e9
	csrr x7, 0x4e9	// Read CSR
	li x11, -1
	csrrw x6, 0x4e9, x11	// Write all 1s to CSR
	csrrw x6, 0x4e9, x0	// Write all 0s to CSR
	csrrs x6, 0x4e9, x11	// Set all CSR bits
	csrrc x6, 0x4e9, x11	// Clear all CSR bits
	csrrw x6, 0x4e9, x7	// Restore CSR

// Testing CSR 0x4ea
	csrr x26, 0x4ea	// Read CSR
	li x6, -1
	csrrw x16, 0x4ea, x6	// Write all 1s to CSR
	csrrw x16, 0x4ea, x0	// Write all 0s to CSR
	csrrs x16, 0x4ea, x6	// Set all CSR bits
	csrrc x16, 0x4ea, x6	// Clear all CSR bits
	csrrw x16, 0x4ea, x26	// Restore CSR

// Testing CSR 0x4eb
	csrr x22, 0x4eb	// Read CSR
	li x5, -1
	csrrw x20, 0x4eb, x5	// Write all 1s to CSR
	csrrw x20, 0x4eb, x0	// Write all 0s to CSR
	csrrs x20, 0x4eb, x5	// Set all CSR bits
	csrrc x20, 0x4eb, x5	// Clear all CSR bits
	csrrw x20, 0x4eb, x22	// Restore CSR

// Testing CSR 0x4ec
	csrr x19, 0x4ec	// Read CSR
	li x17, -1
	csrrw x14, 0x4ec, x17	// Write all 1s to CSR
	csrrw x14, 0x4ec, x0	// Write all 0s to CSR
	csrrs x14, 0x4ec, x17	// Set all CSR bits
	csrrc x14, 0x4ec, x17	// Clear all CSR bits
	csrrw x14, 0x4ec, x19	// Restore CSR

// Testing CSR 0x4ed
	csrr x19, 0x4ed	// Read CSR
	li x21, -1
	csrrw x31, 0x4ed, x21	// Write all 1s to CSR
	csrrw x31, 0x4ed, x0	// Write all 0s to CSR
	csrrs x31, 0x4ed, x21	// Set all CSR bits
	csrrc x31, 0x4ed, x21	// Clear all CSR bits
	csrrw x31, 0x4ed, x19	// Restore CSR

// Testing CSR 0x4ee
	csrr x30, 0x4ee	// Read CSR
	li x28, -1
	csrrw x8, 0x4ee, x28	// Write all 1s to CSR
	csrrw x8, 0x4ee, x0	// Write all 0s to CSR
	csrrs x8, 0x4ee, x28	// Set all CSR bits
	csrrc x8, 0x4ee, x28	// Clear all CSR bits
	csrrw x8, 0x4ee, x30	// Restore CSR

// Testing CSR 0x4ef
	csrr x29, 0x4ef	// Read CSR
	li x1, -1
	csrrw x2, 0x4ef, x1	// Write all 1s to CSR
	csrrw x2, 0x4ef, x0	// Write all 0s to CSR
	csrrs x2, 0x4ef, x1	// Set all CSR bits
	csrrc x2, 0x4ef, x1	// Clear all CSR bits
	csrrw x2, 0x4ef, x29	// Restore CSR

// Testing CSR 0x4f0
	csrr x14, 0x4f0	// Read CSR
	li x29, -1
	csrrw x20, 0x4f0, x29	// Write all 1s to CSR
	csrrw x20, 0x4f0, x0	// Write all 0s to CSR
	csrrs x20, 0x4f0, x29	// Set all CSR bits
	csrrc x20, 0x4f0, x29	// Clear all CSR bits
	csrrw x20, 0x4f0, x14	// Restore CSR

// Testing CSR 0x4f1
	csrr x2, 0x4f1	// Read CSR
	li x21, -1
	csrrw x30, 0x4f1, x21	// Write all 1s to CSR
	csrrw x30, 0x4f1, x0	// Write all 0s to CSR
	csrrs x30, 0x4f1, x21	// Set all CSR bits
	csrrc x30, 0x4f1, x21	// Clear all CSR bits
	csrrw x30, 0x4f1, x2	// Restore CSR

// Testing CSR 0x4f2
	csrr x5, 0x4f2	// Read CSR
	li x17, -1
	csrrw x3, 0x4f2, x17	// Write all 1s to CSR
	csrrw x3, 0x4f2, x0	// Write all 0s to CSR
	csrrs x3, 0x4f2, x17	// Set all CSR bits
	csrrc x3, 0x4f2, x17	// Clear all CSR bits
	csrrw x3, 0x4f2, x5	// Restore CSR

// Testing CSR 0x4f3
	csrr x14, 0x4f3	// Read CSR
	li x10, -1
	csrrw x11, 0x4f3, x10	// Write all 1s to CSR
	csrrw x11, 0x4f3, x0	// Write all 0s to CSR
	csrrs x11, 0x4f3, x10	// Set all CSR bits
	csrrc x11, 0x4f3, x10	// Clear all CSR bits
	csrrw x11, 0x4f3, x14	// Restore CSR

// Testing CSR 0x4f4
	csrr x21, 0x4f4	// Read CSR
	li x30, -1
	csrrw x27, 0x4f4, x30	// Write all 1s to CSR
	csrrw x27, 0x4f4, x0	// Write all 0s to CSR
	csrrs x27, 0x4f4, x30	// Set all CSR bits
	csrrc x27, 0x4f4, x30	// Clear all CSR bits
	csrrw x27, 0x4f4, x21	// Restore CSR

// Testing CSR 0x4f5
	csrr x20, 0x4f5	// Read CSR
	li x7, -1
	csrrw x23, 0x4f5, x7	// Write all 1s to CSR
	csrrw x23, 0x4f5, x0	// Write all 0s to CSR
	csrrs x23, 0x4f5, x7	// Set all CSR bits
	csrrc x23, 0x4f5, x7	// Clear all CSR bits
	csrrw x23, 0x4f5, x20	// Restore CSR

// Testing CSR 0x4f6
	csrr x2, 0x4f6	// Read CSR
	li x11, -1
	csrrw x5, 0x4f6, x11	// Write all 1s to CSR
	csrrw x5, 0x4f6, x0	// Write all 0s to CSR
	csrrs x5, 0x4f6, x11	// Set all CSR bits
	csrrc x5, 0x4f6, x11	// Clear all CSR bits
	csrrw x5, 0x4f6, x2	// Restore CSR

// Testing CSR 0x4f7
	csrr x11, 0x4f7	// Read CSR
	li x22, -1
	csrrw x24, 0x4f7, x22	// Write all 1s to CSR
	csrrw x24, 0x4f7, x0	// Write all 0s to CSR
	csrrs x24, 0x4f7, x22	// Set all CSR bits
	csrrc x24, 0x4f7, x22	// Clear all CSR bits
	csrrw x24, 0x4f7, x11	// Restore CSR

// Testing CSR 0x4f8
	csrr x9, 0x4f8	// Read CSR
	li x16, -1
	csrrw x20, 0x4f8, x16	// Write all 1s to CSR
	csrrw x20, 0x4f8, x0	// Write all 0s to CSR
	csrrs x20, 0x4f8, x16	// Set all CSR bits
	csrrc x20, 0x4f8, x16	// Clear all CSR bits
	csrrw x20, 0x4f8, x9	// Restore CSR

// Testing CSR 0x4f9
	csrr x30, 0x4f9	// Read CSR
	li x11, -1
	csrrw x9, 0x4f9, x11	// Write all 1s to CSR
	csrrw x9, 0x4f9, x0	// Write all 0s to CSR
	csrrs x9, 0x4f9, x11	// Set all CSR bits
	csrrc x9, 0x4f9, x11	// Clear all CSR bits
	csrrw x9, 0x4f9, x30	// Restore CSR

// Testing CSR 0x4fa
	csrr x29, 0x4fa	// Read CSR
	li x21, -1
	csrrw x3, 0x4fa, x21	// Write all 1s to CSR
	csrrw x3, 0x4fa, x0	// Write all 0s to CSR
	csrrs x3, 0x4fa, x21	// Set all CSR bits
	csrrc x3, 0x4fa, x21	// Clear all CSR bits
	csrrw x3, 0x4fa, x29	// Restore CSR

// Testing CSR 0x4fb
	csrr x15, 0x4fb	// Read CSR
	li x26, -1
	csrrw x25, 0x4fb, x26	// Write all 1s to CSR
	csrrw x25, 0x4fb, x0	// Write all 0s to CSR
	csrrs x25, 0x4fb, x26	// Set all CSR bits
	csrrc x25, 0x4fb, x26	// Clear all CSR bits
	csrrw x25, 0x4fb, x15	// Restore CSR

// Testing CSR 0x4fc
	csrr x6, 0x4fc	// Read CSR
	li x29, -1
	csrrw x4, 0x4fc, x29	// Write all 1s to CSR
	csrrw x4, 0x4fc, x0	// Write all 0s to CSR
	csrrs x4, 0x4fc, x29	// Set all CSR bits
	csrrc x4, 0x4fc, x29	// Clear all CSR bits
	csrrw x4, 0x4fc, x6	// Restore CSR

// Testing CSR 0x4fd
	csrr x17, 0x4fd	// Read CSR
	li x9, -1
	csrrw x18, 0x4fd, x9	// Write all 1s to CSR
	csrrw x18, 0x4fd, x0	// Write all 0s to CSR
	csrrs x18, 0x4fd, x9	// Set all CSR bits
	csrrc x18, 0x4fd, x9	// Clear all CSR bits
	csrrw x18, 0x4fd, x17	// Restore CSR

// Testing CSR 0x4fe
	csrr x23, 0x4fe	// Read CSR
	li x13, -1
	csrrw x20, 0x4fe, x13	// Write all 1s to CSR
	csrrw x20, 0x4fe, x0	// Write all 0s to CSR
	csrrs x20, 0x4fe, x13	// Set all CSR bits
	csrrc x20, 0x4fe, x13	// Clear all CSR bits
	csrrw x20, 0x4fe, x23	// Restore CSR

// Testing CSR 0x4ff
	csrr x15, 0x4ff	// Read CSR
	li x14, -1
	csrrw x22, 0x4ff, x14	// Write all 1s to CSR
	csrrw x22, 0x4ff, x0	// Write all 0s to CSR
	csrrs x22, 0x4ff, x14	// Set all CSR bits
	csrrc x22, 0x4ff, x14	// Clear all CSR bits
	csrrw x22, 0x4ff, x15	// Restore CSR

// Testing CSR 0x500
	csrr x6, 0x500	// Read CSR
	li x20, -1
	csrrw x30, 0x500, x20	// Write all 1s to CSR
	csrrw x30, 0x500, x0	// Write all 0s to CSR
	csrrs x30, 0x500, x20	// Set all CSR bits
	csrrc x30, 0x500, x20	// Clear all CSR bits
	csrrw x30, 0x500, x6	// Restore CSR

// Testing CSR 0x501
	csrr x14, 0x501	// Read CSR
	li x25, -1
	csrrw x5, 0x501, x25	// Write all 1s to CSR
	csrrw x5, 0x501, x0	// Write all 0s to CSR
	csrrs x5, 0x501, x25	// Set all CSR bits
	csrrc x5, 0x501, x25	// Clear all CSR bits
	csrrw x5, 0x501, x14	// Restore CSR

// Testing CSR 0x502
	csrr x22, 0x502	// Read CSR
	li x31, -1
	csrrw x27, 0x502, x31	// Write all 1s to CSR
	csrrw x27, 0x502, x0	// Write all 0s to CSR
	csrrs x27, 0x502, x31	// Set all CSR bits
	csrrc x27, 0x502, x31	// Clear all CSR bits
	csrrw x27, 0x502, x22	// Restore CSR

// Testing CSR 0x503
	csrr x25, 0x503	// Read CSR
	li x26, -1
	csrrw x4, 0x503, x26	// Write all 1s to CSR
	csrrw x4, 0x503, x0	// Write all 0s to CSR
	csrrs x4, 0x503, x26	// Set all CSR bits
	csrrc x4, 0x503, x26	// Clear all CSR bits
	csrrw x4, 0x503, x25	// Restore CSR

// Testing CSR 0x504
	csrr x19, 0x504	// Read CSR
	li x25, -1
	csrrw x4, 0x504, x25	// Write all 1s to CSR
	csrrw x4, 0x504, x0	// Write all 0s to CSR
	csrrs x4, 0x504, x25	// Set all CSR bits
	csrrc x4, 0x504, x25	// Clear all CSR bits
	csrrw x4, 0x504, x19	// Restore CSR

// Testing CSR 0x505
	csrr x27, 0x505	// Read CSR
	li x6, -1
	csrrw x24, 0x505, x6	// Write all 1s to CSR
	csrrw x24, 0x505, x0	// Write all 0s to CSR
	csrrs x24, 0x505, x6	// Set all CSR bits
	csrrc x24, 0x505, x6	// Clear all CSR bits
	csrrw x24, 0x505, x27	// Restore CSR

// Testing CSR 0x506
	csrr x31, 0x506	// Read CSR
	li x16, -1
	csrrw x10, 0x506, x16	// Write all 1s to CSR
	csrrw x10, 0x506, x0	// Write all 0s to CSR
	csrrs x10, 0x506, x16	// Set all CSR bits
	csrrc x10, 0x506, x16	// Clear all CSR bits
	csrrw x10, 0x506, x31	// Restore CSR

// Testing CSR 0x507
	csrr x22, 0x507	// Read CSR
	li x24, -1
	csrrw x4, 0x507, x24	// Write all 1s to CSR
	csrrw x4, 0x507, x0	// Write all 0s to CSR
	csrrs x4, 0x507, x24	// Set all CSR bits
	csrrc x4, 0x507, x24	// Clear all CSR bits
	csrrw x4, 0x507, x22	// Restore CSR

// Testing CSR 0x508
	csrr x22, 0x508	// Read CSR
	li x25, -1
	csrrw x14, 0x508, x25	// Write all 1s to CSR
	csrrw x14, 0x508, x0	// Write all 0s to CSR
	csrrs x14, 0x508, x25	// Set all CSR bits
	csrrc x14, 0x508, x25	// Clear all CSR bits
	csrrw x14, 0x508, x22	// Restore CSR

// Testing CSR 0x509
	csrr x9, 0x509	// Read CSR
	li x4, -1
	csrrw x26, 0x509, x4	// Write all 1s to CSR
	csrrw x26, 0x509, x0	// Write all 0s to CSR
	csrrs x26, 0x509, x4	// Set all CSR bits
	csrrc x26, 0x509, x4	// Clear all CSR bits
	csrrw x26, 0x509, x9	// Restore CSR

// Testing CSR 0x50a
	csrr x21, 0x50a	// Read CSR
	li x12, -1
	csrrw x17, 0x50a, x12	// Write all 1s to CSR
	csrrw x17, 0x50a, x0	// Write all 0s to CSR
	csrrs x17, 0x50a, x12	// Set all CSR bits
	csrrc x17, 0x50a, x12	// Clear all CSR bits
	csrrw x17, 0x50a, x21	// Restore CSR

// Testing CSR 0x50b
	csrr x27, 0x50b	// Read CSR
	li x18, -1
	csrrw x26, 0x50b, x18	// Write all 1s to CSR
	csrrw x26, 0x50b, x0	// Write all 0s to CSR
	csrrs x26, 0x50b, x18	// Set all CSR bits
	csrrc x26, 0x50b, x18	// Clear all CSR bits
	csrrw x26, 0x50b, x27	// Restore CSR

// Testing CSR 0x50c
	csrr x3, 0x50c	// Read CSR
	li x1, -1
	csrrw x2, 0x50c, x1	// Write all 1s to CSR
	csrrw x2, 0x50c, x0	// Write all 0s to CSR
	csrrs x2, 0x50c, x1	// Set all CSR bits
	csrrc x2, 0x50c, x1	// Clear all CSR bits
	csrrw x2, 0x50c, x3	// Restore CSR

// Testing CSR 0x50d
	csrr x20, 0x50d	// Read CSR
	li x1, -1
	csrrw x25, 0x50d, x1	// Write all 1s to CSR
	csrrw x25, 0x50d, x0	// Write all 0s to CSR
	csrrs x25, 0x50d, x1	// Set all CSR bits
	csrrc x25, 0x50d, x1	// Clear all CSR bits
	csrrw x25, 0x50d, x20	// Restore CSR

// Testing CSR 0x50e
	csrr x31, 0x50e	// Read CSR
	li x5, -1
	csrrw x29, 0x50e, x5	// Write all 1s to CSR
	csrrw x29, 0x50e, x0	// Write all 0s to CSR
	csrrs x29, 0x50e, x5	// Set all CSR bits
	csrrc x29, 0x50e, x5	// Clear all CSR bits
	csrrw x29, 0x50e, x31	// Restore CSR

// Testing CSR 0x50f
	csrr x4, 0x50f	// Read CSR
	li x14, -1
	csrrw x13, 0x50f, x14	// Write all 1s to CSR
	csrrw x13, 0x50f, x0	// Write all 0s to CSR
	csrrs x13, 0x50f, x14	// Set all CSR bits
	csrrc x13, 0x50f, x14	// Clear all CSR bits
	csrrw x13, 0x50f, x4	// Restore CSR

// Testing CSR 0x510
	csrr x26, 0x510	// Read CSR
	li x16, -1
	csrrw x29, 0x510, x16	// Write all 1s to CSR
	csrrw x29, 0x510, x0	// Write all 0s to CSR
	csrrs x29, 0x510, x16	// Set all CSR bits
	csrrc x29, 0x510, x16	// Clear all CSR bits
	csrrw x29, 0x510, x26	// Restore CSR

// Testing CSR 0x511
	csrr x1, 0x511	// Read CSR
	li x11, -1
	csrrw x21, 0x511, x11	// Write all 1s to CSR
	csrrw x21, 0x511, x0	// Write all 0s to CSR
	csrrs x21, 0x511, x11	// Set all CSR bits
	csrrc x21, 0x511, x11	// Clear all CSR bits
	csrrw x21, 0x511, x1	// Restore CSR

// Testing CSR 0x512
	csrr x27, 0x512	// Read CSR
	li x5, -1
	csrrw x3, 0x512, x5	// Write all 1s to CSR
	csrrw x3, 0x512, x0	// Write all 0s to CSR
	csrrs x3, 0x512, x5	// Set all CSR bits
	csrrc x3, 0x512, x5	// Clear all CSR bits
	csrrw x3, 0x512, x27	// Restore CSR

// Testing CSR 0x513
	csrr x23, 0x513	// Read CSR
	li x13, -1
	csrrw x21, 0x513, x13	// Write all 1s to CSR
	csrrw x21, 0x513, x0	// Write all 0s to CSR
	csrrs x21, 0x513, x13	// Set all CSR bits
	csrrc x21, 0x513, x13	// Clear all CSR bits
	csrrw x21, 0x513, x23	// Restore CSR

// Testing CSR 0x514
	csrr x19, 0x514	// Read CSR
	li x24, -1
	csrrw x8, 0x514, x24	// Write all 1s to CSR
	csrrw x8, 0x514, x0	// Write all 0s to CSR
	csrrs x8, 0x514, x24	// Set all CSR bits
	csrrc x8, 0x514, x24	// Clear all CSR bits
	csrrw x8, 0x514, x19	// Restore CSR

// Testing CSR 0x515
	csrr x2, 0x515	// Read CSR
	li x7, -1
	csrrw x14, 0x515, x7	// Write all 1s to CSR
	csrrw x14, 0x515, x0	// Write all 0s to CSR
	csrrs x14, 0x515, x7	// Set all CSR bits
	csrrc x14, 0x515, x7	// Clear all CSR bits
	csrrw x14, 0x515, x2	// Restore CSR

// Testing CSR 0x516
	csrr x30, 0x516	// Read CSR
	li x1, -1
	csrrw x29, 0x516, x1	// Write all 1s to CSR
	csrrw x29, 0x516, x0	// Write all 0s to CSR
	csrrs x29, 0x516, x1	// Set all CSR bits
	csrrc x29, 0x516, x1	// Clear all CSR bits
	csrrw x29, 0x516, x30	// Restore CSR

// Testing CSR 0x517
	csrr x2, 0x517	// Read CSR
	li x20, -1
	csrrw x26, 0x517, x20	// Write all 1s to CSR
	csrrw x26, 0x517, x0	// Write all 0s to CSR
	csrrs x26, 0x517, x20	// Set all CSR bits
	csrrc x26, 0x517, x20	// Clear all CSR bits
	csrrw x26, 0x517, x2	// Restore CSR

// Testing CSR 0x518
	csrr x13, 0x518	// Read CSR
	li x5, -1
	csrrw x18, 0x518, x5	// Write all 1s to CSR
	csrrw x18, 0x518, x0	// Write all 0s to CSR
	csrrs x18, 0x518, x5	// Set all CSR bits
	csrrc x18, 0x518, x5	// Clear all CSR bits
	csrrw x18, 0x518, x13	// Restore CSR

// Testing CSR 0x519
	csrr x24, 0x519	// Read CSR
	li x23, -1
	csrrw x10, 0x519, x23	// Write all 1s to CSR
	csrrw x10, 0x519, x0	// Write all 0s to CSR
	csrrs x10, 0x519, x23	// Set all CSR bits
	csrrc x10, 0x519, x23	// Clear all CSR bits
	csrrw x10, 0x519, x24	// Restore CSR

// Testing CSR 0x51a
	csrr x14, 0x51a	// Read CSR
	li x13, -1
	csrrw x29, 0x51a, x13	// Write all 1s to CSR
	csrrw x29, 0x51a, x0	// Write all 0s to CSR
	csrrs x29, 0x51a, x13	// Set all CSR bits
	csrrc x29, 0x51a, x13	// Clear all CSR bits
	csrrw x29, 0x51a, x14	// Restore CSR

// Testing CSR 0x51b
	csrr x31, 0x51b	// Read CSR
	li x27, -1
	csrrw x18, 0x51b, x27	// Write all 1s to CSR
	csrrw x18, 0x51b, x0	// Write all 0s to CSR
	csrrs x18, 0x51b, x27	// Set all CSR bits
	csrrc x18, 0x51b, x27	// Clear all CSR bits
	csrrw x18, 0x51b, x31	// Restore CSR

// Testing CSR 0x51c
	csrr x2, 0x51c	// Read CSR
	li x24, -1
	csrrw x27, 0x51c, x24	// Write all 1s to CSR
	csrrw x27, 0x51c, x0	// Write all 0s to CSR
	csrrs x27, 0x51c, x24	// Set all CSR bits
	csrrc x27, 0x51c, x24	// Clear all CSR bits
	csrrw x27, 0x51c, x2	// Restore CSR

// Testing CSR 0x51d
	csrr x15, 0x51d	// Read CSR
	li x29, -1
	csrrw x18, 0x51d, x29	// Write all 1s to CSR
	csrrw x18, 0x51d, x0	// Write all 0s to CSR
	csrrs x18, 0x51d, x29	// Set all CSR bits
	csrrc x18, 0x51d, x29	// Clear all CSR bits
	csrrw x18, 0x51d, x15	// Restore CSR

// Testing CSR 0x51e
	csrr x5, 0x51e	// Read CSR
	li x18, -1
	csrrw x31, 0x51e, x18	// Write all 1s to CSR
	csrrw x31, 0x51e, x0	// Write all 0s to CSR
	csrrs x31, 0x51e, x18	// Set all CSR bits
	csrrc x31, 0x51e, x18	// Clear all CSR bits
	csrrw x31, 0x51e, x5	// Restore CSR

// Testing CSR 0x51f
	csrr x29, 0x51f	// Read CSR
	li x5, -1
	csrrw x21, 0x51f, x5	// Write all 1s to CSR
	csrrw x21, 0x51f, x0	// Write all 0s to CSR
	csrrs x21, 0x51f, x5	// Set all CSR bits
	csrrc x21, 0x51f, x5	// Clear all CSR bits
	csrrw x21, 0x51f, x29	// Restore CSR

// Testing CSR 0x520
	csrr x7, 0x520	// Read CSR
	li x19, -1
	csrrw x31, 0x520, x19	// Write all 1s to CSR
	csrrw x31, 0x520, x0	// Write all 0s to CSR
	csrrs x31, 0x520, x19	// Set all CSR bits
	csrrc x31, 0x520, x19	// Clear all CSR bits
	csrrw x31, 0x520, x7	// Restore CSR

// Testing CSR 0x521
	csrr x6, 0x521	// Read CSR
	li x27, -1
	csrrw x3, 0x521, x27	// Write all 1s to CSR
	csrrw x3, 0x521, x0	// Write all 0s to CSR
	csrrs x3, 0x521, x27	// Set all CSR bits
	csrrc x3, 0x521, x27	// Clear all CSR bits
	csrrw x3, 0x521, x6	// Restore CSR

// Testing CSR 0x522
	csrr x19, 0x522	// Read CSR
	li x16, -1
	csrrw x10, 0x522, x16	// Write all 1s to CSR
	csrrw x10, 0x522, x0	// Write all 0s to CSR
	csrrs x10, 0x522, x16	// Set all CSR bits
	csrrc x10, 0x522, x16	// Clear all CSR bits
	csrrw x10, 0x522, x19	// Restore CSR

// Testing CSR 0x523
	csrr x9, 0x523	// Read CSR
	li x13, -1
	csrrw x7, 0x523, x13	// Write all 1s to CSR
	csrrw x7, 0x523, x0	// Write all 0s to CSR
	csrrs x7, 0x523, x13	// Set all CSR bits
	csrrc x7, 0x523, x13	// Clear all CSR bits
	csrrw x7, 0x523, x9	// Restore CSR

// Testing CSR 0x524
	csrr x22, 0x524	// Read CSR
	li x1, -1
	csrrw x28, 0x524, x1	// Write all 1s to CSR
	csrrw x28, 0x524, x0	// Write all 0s to CSR
	csrrs x28, 0x524, x1	// Set all CSR bits
	csrrc x28, 0x524, x1	// Clear all CSR bits
	csrrw x28, 0x524, x22	// Restore CSR

// Testing CSR 0x525
	csrr x21, 0x525	// Read CSR
	li x28, -1
	csrrw x2, 0x525, x28	// Write all 1s to CSR
	csrrw x2, 0x525, x0	// Write all 0s to CSR
	csrrs x2, 0x525, x28	// Set all CSR bits
	csrrc x2, 0x525, x28	// Clear all CSR bits
	csrrw x2, 0x525, x21	// Restore CSR

// Testing CSR 0x526
	csrr x17, 0x526	// Read CSR
	li x25, -1
	csrrw x3, 0x526, x25	// Write all 1s to CSR
	csrrw x3, 0x526, x0	// Write all 0s to CSR
	csrrs x3, 0x526, x25	// Set all CSR bits
	csrrc x3, 0x526, x25	// Clear all CSR bits
	csrrw x3, 0x526, x17	// Restore CSR

// Testing CSR 0x527
	csrr x29, 0x527	// Read CSR
	li x1, -1
	csrrw x21, 0x527, x1	// Write all 1s to CSR
	csrrw x21, 0x527, x0	// Write all 0s to CSR
	csrrs x21, 0x527, x1	// Set all CSR bits
	csrrc x21, 0x527, x1	// Clear all CSR bits
	csrrw x21, 0x527, x29	// Restore CSR

// Testing CSR 0x528
	csrr x10, 0x528	// Read CSR
	li x5, -1
	csrrw x25, 0x528, x5	// Write all 1s to CSR
	csrrw x25, 0x528, x0	// Write all 0s to CSR
	csrrs x25, 0x528, x5	// Set all CSR bits
	csrrc x25, 0x528, x5	// Clear all CSR bits
	csrrw x25, 0x528, x10	// Restore CSR

// Testing CSR 0x529
	csrr x5, 0x529	// Read CSR
	li x27, -1
	csrrw x25, 0x529, x27	// Write all 1s to CSR
	csrrw x25, 0x529, x0	// Write all 0s to CSR
	csrrs x25, 0x529, x27	// Set all CSR bits
	csrrc x25, 0x529, x27	// Clear all CSR bits
	csrrw x25, 0x529, x5	// Restore CSR

// Testing CSR 0x52a
	csrr x17, 0x52a	// Read CSR
	li x5, -1
	csrrw x31, 0x52a, x5	// Write all 1s to CSR
	csrrw x31, 0x52a, x0	// Write all 0s to CSR
	csrrs x31, 0x52a, x5	// Set all CSR bits
	csrrc x31, 0x52a, x5	// Clear all CSR bits
	csrrw x31, 0x52a, x17	// Restore CSR

// Testing CSR 0x52b
	csrr x4, 0x52b	// Read CSR
	li x31, -1
	csrrw x11, 0x52b, x31	// Write all 1s to CSR
	csrrw x11, 0x52b, x0	// Write all 0s to CSR
	csrrs x11, 0x52b, x31	// Set all CSR bits
	csrrc x11, 0x52b, x31	// Clear all CSR bits
	csrrw x11, 0x52b, x4	// Restore CSR

// Testing CSR 0x52c
	csrr x1, 0x52c	// Read CSR
	li x24, -1
	csrrw x27, 0x52c, x24	// Write all 1s to CSR
	csrrw x27, 0x52c, x0	// Write all 0s to CSR
	csrrs x27, 0x52c, x24	// Set all CSR bits
	csrrc x27, 0x52c, x24	// Clear all CSR bits
	csrrw x27, 0x52c, x1	// Restore CSR

// Testing CSR 0x52d
	csrr x11, 0x52d	// Read CSR
	li x27, -1
	csrrw x5, 0x52d, x27	// Write all 1s to CSR
	csrrw x5, 0x52d, x0	// Write all 0s to CSR
	csrrs x5, 0x52d, x27	// Set all CSR bits
	csrrc x5, 0x52d, x27	// Clear all CSR bits
	csrrw x5, 0x52d, x11	// Restore CSR

// Testing CSR 0x52e
	csrr x11, 0x52e	// Read CSR
	li x19, -1
	csrrw x25, 0x52e, x19	// Write all 1s to CSR
	csrrw x25, 0x52e, x0	// Write all 0s to CSR
	csrrs x25, 0x52e, x19	// Set all CSR bits
	csrrc x25, 0x52e, x19	// Clear all CSR bits
	csrrw x25, 0x52e, x11	// Restore CSR

// Testing CSR 0x52f
	csrr x3, 0x52f	// Read CSR
	li x7, -1
	csrrw x12, 0x52f, x7	// Write all 1s to CSR
	csrrw x12, 0x52f, x0	// Write all 0s to CSR
	csrrs x12, 0x52f, x7	// Set all CSR bits
	csrrc x12, 0x52f, x7	// Clear all CSR bits
	csrrw x12, 0x52f, x3	// Restore CSR

// Testing CSR 0x530
	csrr x9, 0x530	// Read CSR
	li x15, -1
	csrrw x11, 0x530, x15	// Write all 1s to CSR
	csrrw x11, 0x530, x0	// Write all 0s to CSR
	csrrs x11, 0x530, x15	// Set all CSR bits
	csrrc x11, 0x530, x15	// Clear all CSR bits
	csrrw x11, 0x530, x9	// Restore CSR

// Testing CSR 0x531
	csrr x22, 0x531	// Read CSR
	li x16, -1
	csrrw x18, 0x531, x16	// Write all 1s to CSR
	csrrw x18, 0x531, x0	// Write all 0s to CSR
	csrrs x18, 0x531, x16	// Set all CSR bits
	csrrc x18, 0x531, x16	// Clear all CSR bits
	csrrw x18, 0x531, x22	// Restore CSR

// Testing CSR 0x532
	csrr x17, 0x532	// Read CSR
	li x3, -1
	csrrw x11, 0x532, x3	// Write all 1s to CSR
	csrrw x11, 0x532, x0	// Write all 0s to CSR
	csrrs x11, 0x532, x3	// Set all CSR bits
	csrrc x11, 0x532, x3	// Clear all CSR bits
	csrrw x11, 0x532, x17	// Restore CSR

// Testing CSR 0x533
	csrr x15, 0x533	// Read CSR
	li x13, -1
	csrrw x25, 0x533, x13	// Write all 1s to CSR
	csrrw x25, 0x533, x0	// Write all 0s to CSR
	csrrs x25, 0x533, x13	// Set all CSR bits
	csrrc x25, 0x533, x13	// Clear all CSR bits
	csrrw x25, 0x533, x15	// Restore CSR

// Testing CSR 0x534
	csrr x13, 0x534	// Read CSR
	li x18, -1
	csrrw x16, 0x534, x18	// Write all 1s to CSR
	csrrw x16, 0x534, x0	// Write all 0s to CSR
	csrrs x16, 0x534, x18	// Set all CSR bits
	csrrc x16, 0x534, x18	// Clear all CSR bits
	csrrw x16, 0x534, x13	// Restore CSR

// Testing CSR 0x535
	csrr x18, 0x535	// Read CSR
	li x14, -1
	csrrw x17, 0x535, x14	// Write all 1s to CSR
	csrrw x17, 0x535, x0	// Write all 0s to CSR
	csrrs x17, 0x535, x14	// Set all CSR bits
	csrrc x17, 0x535, x14	// Clear all CSR bits
	csrrw x17, 0x535, x18	// Restore CSR

// Testing CSR 0x536
	csrr x3, 0x536	// Read CSR
	li x30, -1
	csrrw x8, 0x536, x30	// Write all 1s to CSR
	csrrw x8, 0x536, x0	// Write all 0s to CSR
	csrrs x8, 0x536, x30	// Set all CSR bits
	csrrc x8, 0x536, x30	// Clear all CSR bits
	csrrw x8, 0x536, x3	// Restore CSR

// Testing CSR 0x537
	csrr x5, 0x537	// Read CSR
	li x21, -1
	csrrw x13, 0x537, x21	// Write all 1s to CSR
	csrrw x13, 0x537, x0	// Write all 0s to CSR
	csrrs x13, 0x537, x21	// Set all CSR bits
	csrrc x13, 0x537, x21	// Clear all CSR bits
	csrrw x13, 0x537, x5	// Restore CSR

// Testing CSR 0x538
	csrr x27, 0x538	// Read CSR
	li x28, -1
	csrrw x17, 0x538, x28	// Write all 1s to CSR
	csrrw x17, 0x538, x0	// Write all 0s to CSR
	csrrs x17, 0x538, x28	// Set all CSR bits
	csrrc x17, 0x538, x28	// Clear all CSR bits
	csrrw x17, 0x538, x27	// Restore CSR

// Testing CSR 0x539
	csrr x11, 0x539	// Read CSR
	li x5, -1
	csrrw x29, 0x539, x5	// Write all 1s to CSR
	csrrw x29, 0x539, x0	// Write all 0s to CSR
	csrrs x29, 0x539, x5	// Set all CSR bits
	csrrc x29, 0x539, x5	// Clear all CSR bits
	csrrw x29, 0x539, x11	// Restore CSR

// Testing CSR 0x53a
	csrr x3, 0x53a	// Read CSR
	li x5, -1
	csrrw x2, 0x53a, x5	// Write all 1s to CSR
	csrrw x2, 0x53a, x0	// Write all 0s to CSR
	csrrs x2, 0x53a, x5	// Set all CSR bits
	csrrc x2, 0x53a, x5	// Clear all CSR bits
	csrrw x2, 0x53a, x3	// Restore CSR

// Testing CSR 0x53b
	csrr x13, 0x53b	// Read CSR
	li x21, -1
	csrrw x19, 0x53b, x21	// Write all 1s to CSR
	csrrw x19, 0x53b, x0	// Write all 0s to CSR
	csrrs x19, 0x53b, x21	// Set all CSR bits
	csrrc x19, 0x53b, x21	// Clear all CSR bits
	csrrw x19, 0x53b, x13	// Restore CSR

// Testing CSR 0x53c
	csrr x4, 0x53c	// Read CSR
	li x22, -1
	csrrw x3, 0x53c, x22	// Write all 1s to CSR
	csrrw x3, 0x53c, x0	// Write all 0s to CSR
	csrrs x3, 0x53c, x22	// Set all CSR bits
	csrrc x3, 0x53c, x22	// Clear all CSR bits
	csrrw x3, 0x53c, x4	// Restore CSR

// Testing CSR 0x53d
	csrr x17, 0x53d	// Read CSR
	li x9, -1
	csrrw x19, 0x53d, x9	// Write all 1s to CSR
	csrrw x19, 0x53d, x0	// Write all 0s to CSR
	csrrs x19, 0x53d, x9	// Set all CSR bits
	csrrc x19, 0x53d, x9	// Clear all CSR bits
	csrrw x19, 0x53d, x17	// Restore CSR

// Testing CSR 0x53e
	csrr x10, 0x53e	// Read CSR
	li x12, -1
	csrrw x31, 0x53e, x12	// Write all 1s to CSR
	csrrw x31, 0x53e, x0	// Write all 0s to CSR
	csrrs x31, 0x53e, x12	// Set all CSR bits
	csrrc x31, 0x53e, x12	// Clear all CSR bits
	csrrw x31, 0x53e, x10	// Restore CSR

// Testing CSR 0x53f
	csrr x22, 0x53f	// Read CSR
	li x28, -1
	csrrw x24, 0x53f, x28	// Write all 1s to CSR
	csrrw x24, 0x53f, x0	// Write all 0s to CSR
	csrrs x24, 0x53f, x28	// Set all CSR bits
	csrrc x24, 0x53f, x28	// Clear all CSR bits
	csrrw x24, 0x53f, x22	// Restore CSR

// Testing CSR 0x540
	csrr x16, 0x540	// Read CSR
	li x13, -1
	csrrw x19, 0x540, x13	// Write all 1s to CSR
	csrrw x19, 0x540, x0	// Write all 0s to CSR
	csrrs x19, 0x540, x13	// Set all CSR bits
	csrrc x19, 0x540, x13	// Clear all CSR bits
	csrrw x19, 0x540, x16	// Restore CSR

// Testing CSR 0x541
	csrr x27, 0x541	// Read CSR
	li x11, -1
	csrrw x24, 0x541, x11	// Write all 1s to CSR
	csrrw x24, 0x541, x0	// Write all 0s to CSR
	csrrs x24, 0x541, x11	// Set all CSR bits
	csrrc x24, 0x541, x11	// Clear all CSR bits
	csrrw x24, 0x541, x27	// Restore CSR

// Testing CSR 0x542
	csrr x22, 0x542	// Read CSR
	li x29, -1
	csrrw x20, 0x542, x29	// Write all 1s to CSR
	csrrw x20, 0x542, x0	// Write all 0s to CSR
	csrrs x20, 0x542, x29	// Set all CSR bits
	csrrc x20, 0x542, x29	// Clear all CSR bits
	csrrw x20, 0x542, x22	// Restore CSR

// Testing CSR 0x543
	csrr x15, 0x543	// Read CSR
	li x17, -1
	csrrw x12, 0x543, x17	// Write all 1s to CSR
	csrrw x12, 0x543, x0	// Write all 0s to CSR
	csrrs x12, 0x543, x17	// Set all CSR bits
	csrrc x12, 0x543, x17	// Clear all CSR bits
	csrrw x12, 0x543, x15	// Restore CSR

// Testing CSR 0x544
	csrr x8, 0x544	// Read CSR
	li x25, -1
	csrrw x17, 0x544, x25	// Write all 1s to CSR
	csrrw x17, 0x544, x0	// Write all 0s to CSR
	csrrs x17, 0x544, x25	// Set all CSR bits
	csrrc x17, 0x544, x25	// Clear all CSR bits
	csrrw x17, 0x544, x8	// Restore CSR

// Testing CSR 0x545
	csrr x2, 0x545	// Read CSR
	li x24, -1
	csrrw x13, 0x545, x24	// Write all 1s to CSR
	csrrw x13, 0x545, x0	// Write all 0s to CSR
	csrrs x13, 0x545, x24	// Set all CSR bits
	csrrc x13, 0x545, x24	// Clear all CSR bits
	csrrw x13, 0x545, x2	// Restore CSR

// Testing CSR 0x546
	csrr x26, 0x546	// Read CSR
	li x12, -1
	csrrw x11, 0x546, x12	// Write all 1s to CSR
	csrrw x11, 0x546, x0	// Write all 0s to CSR
	csrrs x11, 0x546, x12	// Set all CSR bits
	csrrc x11, 0x546, x12	// Clear all CSR bits
	csrrw x11, 0x546, x26	// Restore CSR

// Testing CSR 0x547
	csrr x26, 0x547	// Read CSR
	li x17, -1
	csrrw x1, 0x547, x17	// Write all 1s to CSR
	csrrw x1, 0x547, x0	// Write all 0s to CSR
	csrrs x1, 0x547, x17	// Set all CSR bits
	csrrc x1, 0x547, x17	// Clear all CSR bits
	csrrw x1, 0x547, x26	// Restore CSR

// Testing CSR 0x548
	csrr x8, 0x548	// Read CSR
	li x19, -1
	csrrw x3, 0x548, x19	// Write all 1s to CSR
	csrrw x3, 0x548, x0	// Write all 0s to CSR
	csrrs x3, 0x548, x19	// Set all CSR bits
	csrrc x3, 0x548, x19	// Clear all CSR bits
	csrrw x3, 0x548, x8	// Restore CSR

// Testing CSR 0x549
	csrr x16, 0x549	// Read CSR
	li x4, -1
	csrrw x12, 0x549, x4	// Write all 1s to CSR
	csrrw x12, 0x549, x0	// Write all 0s to CSR
	csrrs x12, 0x549, x4	// Set all CSR bits
	csrrc x12, 0x549, x4	// Clear all CSR bits
	csrrw x12, 0x549, x16	// Restore CSR

// Testing CSR 0x54a
	csrr x14, 0x54a	// Read CSR
	li x25, -1
	csrrw x20, 0x54a, x25	// Write all 1s to CSR
	csrrw x20, 0x54a, x0	// Write all 0s to CSR
	csrrs x20, 0x54a, x25	// Set all CSR bits
	csrrc x20, 0x54a, x25	// Clear all CSR bits
	csrrw x20, 0x54a, x14	// Restore CSR

// Testing CSR 0x54b
	csrr x8, 0x54b	// Read CSR
	li x18, -1
	csrrw x1, 0x54b, x18	// Write all 1s to CSR
	csrrw x1, 0x54b, x0	// Write all 0s to CSR
	csrrs x1, 0x54b, x18	// Set all CSR bits
	csrrc x1, 0x54b, x18	// Clear all CSR bits
	csrrw x1, 0x54b, x8	// Restore CSR

// Testing CSR 0x54c
	csrr x17, 0x54c	// Read CSR
	li x2, -1
	csrrw x4, 0x54c, x2	// Write all 1s to CSR
	csrrw x4, 0x54c, x0	// Write all 0s to CSR
	csrrs x4, 0x54c, x2	// Set all CSR bits
	csrrc x4, 0x54c, x2	// Clear all CSR bits
	csrrw x4, 0x54c, x17	// Restore CSR

// Testing CSR 0x54d
	csrr x19, 0x54d	// Read CSR
	li x12, -1
	csrrw x2, 0x54d, x12	// Write all 1s to CSR
	csrrw x2, 0x54d, x0	// Write all 0s to CSR
	csrrs x2, 0x54d, x12	// Set all CSR bits
	csrrc x2, 0x54d, x12	// Clear all CSR bits
	csrrw x2, 0x54d, x19	// Restore CSR

// Testing CSR 0x54e
	csrr x31, 0x54e	// Read CSR
	li x12, -1
	csrrw x6, 0x54e, x12	// Write all 1s to CSR
	csrrw x6, 0x54e, x0	// Write all 0s to CSR
	csrrs x6, 0x54e, x12	// Set all CSR bits
	csrrc x6, 0x54e, x12	// Clear all CSR bits
	csrrw x6, 0x54e, x31	// Restore CSR

// Testing CSR 0x54f
	csrr x11, 0x54f	// Read CSR
	li x9, -1
	csrrw x16, 0x54f, x9	// Write all 1s to CSR
	csrrw x16, 0x54f, x0	// Write all 0s to CSR
	csrrs x16, 0x54f, x9	// Set all CSR bits
	csrrc x16, 0x54f, x9	// Clear all CSR bits
	csrrw x16, 0x54f, x11	// Restore CSR

// Testing CSR 0x550
	csrr x16, 0x550	// Read CSR
	li x25, -1
	csrrw x30, 0x550, x25	// Write all 1s to CSR
	csrrw x30, 0x550, x0	// Write all 0s to CSR
	csrrs x30, 0x550, x25	// Set all CSR bits
	csrrc x30, 0x550, x25	// Clear all CSR bits
	csrrw x30, 0x550, x16	// Restore CSR

// Testing CSR 0x551
	csrr x29, 0x551	// Read CSR
	li x31, -1
	csrrw x14, 0x551, x31	// Write all 1s to CSR
	csrrw x14, 0x551, x0	// Write all 0s to CSR
	csrrs x14, 0x551, x31	// Set all CSR bits
	csrrc x14, 0x551, x31	// Clear all CSR bits
	csrrw x14, 0x551, x29	// Restore CSR

// Testing CSR 0x552
	csrr x1, 0x552	// Read CSR
	li x26, -1
	csrrw x21, 0x552, x26	// Write all 1s to CSR
	csrrw x21, 0x552, x0	// Write all 0s to CSR
	csrrs x21, 0x552, x26	// Set all CSR bits
	csrrc x21, 0x552, x26	// Clear all CSR bits
	csrrw x21, 0x552, x1	// Restore CSR

// Testing CSR 0x553
	csrr x25, 0x553	// Read CSR
	li x8, -1
	csrrw x21, 0x553, x8	// Write all 1s to CSR
	csrrw x21, 0x553, x0	// Write all 0s to CSR
	csrrs x21, 0x553, x8	// Set all CSR bits
	csrrc x21, 0x553, x8	// Clear all CSR bits
	csrrw x21, 0x553, x25	// Restore CSR

// Testing CSR 0x554
	csrr x21, 0x554	// Read CSR
	li x16, -1
	csrrw x24, 0x554, x16	// Write all 1s to CSR
	csrrw x24, 0x554, x0	// Write all 0s to CSR
	csrrs x24, 0x554, x16	// Set all CSR bits
	csrrc x24, 0x554, x16	// Clear all CSR bits
	csrrw x24, 0x554, x21	// Restore CSR

// Testing CSR 0x555
	csrr x24, 0x555	// Read CSR
	li x29, -1
	csrrw x12, 0x555, x29	// Write all 1s to CSR
	csrrw x12, 0x555, x0	// Write all 0s to CSR
	csrrs x12, 0x555, x29	// Set all CSR bits
	csrrc x12, 0x555, x29	// Clear all CSR bits
	csrrw x12, 0x555, x24	// Restore CSR

// Testing CSR 0x556
	csrr x22, 0x556	// Read CSR
	li x26, -1
	csrrw x28, 0x556, x26	// Write all 1s to CSR
	csrrw x28, 0x556, x0	// Write all 0s to CSR
	csrrs x28, 0x556, x26	// Set all CSR bits
	csrrc x28, 0x556, x26	// Clear all CSR bits
	csrrw x28, 0x556, x22	// Restore CSR

// Testing CSR 0x557
	csrr x27, 0x557	// Read CSR
	li x26, -1
	csrrw x24, 0x557, x26	// Write all 1s to CSR
	csrrw x24, 0x557, x0	// Write all 0s to CSR
	csrrs x24, 0x557, x26	// Set all CSR bits
	csrrc x24, 0x557, x26	// Clear all CSR bits
	csrrw x24, 0x557, x27	// Restore CSR

// Testing CSR 0x558
	csrr x6, 0x558	// Read CSR
	li x30, -1
	csrrw x2, 0x558, x30	// Write all 1s to CSR
	csrrw x2, 0x558, x0	// Write all 0s to CSR
	csrrs x2, 0x558, x30	// Set all CSR bits
	csrrc x2, 0x558, x30	// Clear all CSR bits
	csrrw x2, 0x558, x6	// Restore CSR

// Testing CSR 0x559
	csrr x25, 0x559	// Read CSR
	li x24, -1
	csrrw x16, 0x559, x24	// Write all 1s to CSR
	csrrw x16, 0x559, x0	// Write all 0s to CSR
	csrrs x16, 0x559, x24	// Set all CSR bits
	csrrc x16, 0x559, x24	// Clear all CSR bits
	csrrw x16, 0x559, x25	// Restore CSR

// Testing CSR 0x55a
	csrr x17, 0x55a	// Read CSR
	li x22, -1
	csrrw x30, 0x55a, x22	// Write all 1s to CSR
	csrrw x30, 0x55a, x0	// Write all 0s to CSR
	csrrs x30, 0x55a, x22	// Set all CSR bits
	csrrc x30, 0x55a, x22	// Clear all CSR bits
	csrrw x30, 0x55a, x17	// Restore CSR

// Testing CSR 0x55b
	csrr x6, 0x55b	// Read CSR
	li x27, -1
	csrrw x13, 0x55b, x27	// Write all 1s to CSR
	csrrw x13, 0x55b, x0	// Write all 0s to CSR
	csrrs x13, 0x55b, x27	// Set all CSR bits
	csrrc x13, 0x55b, x27	// Clear all CSR bits
	csrrw x13, 0x55b, x6	// Restore CSR

// Testing CSR 0x55c
	csrr x23, 0x55c	// Read CSR
	li x10, -1
	csrrw x22, 0x55c, x10	// Write all 1s to CSR
	csrrw x22, 0x55c, x0	// Write all 0s to CSR
	csrrs x22, 0x55c, x10	// Set all CSR bits
	csrrc x22, 0x55c, x10	// Clear all CSR bits
	csrrw x22, 0x55c, x23	// Restore CSR

// Testing CSR 0x55d
	csrr x29, 0x55d	// Read CSR
	li x19, -1
	csrrw x16, 0x55d, x19	// Write all 1s to CSR
	csrrw x16, 0x55d, x0	// Write all 0s to CSR
	csrrs x16, 0x55d, x19	// Set all CSR bits
	csrrc x16, 0x55d, x19	// Clear all CSR bits
	csrrw x16, 0x55d, x29	// Restore CSR

// Testing CSR 0x55e
	csrr x7, 0x55e	// Read CSR
	li x30, -1
	csrrw x1, 0x55e, x30	// Write all 1s to CSR
	csrrw x1, 0x55e, x0	// Write all 0s to CSR
	csrrs x1, 0x55e, x30	// Set all CSR bits
	csrrc x1, 0x55e, x30	// Clear all CSR bits
	csrrw x1, 0x55e, x7	// Restore CSR

// Testing CSR 0x55f
	csrr x23, 0x55f	// Read CSR
	li x15, -1
	csrrw x20, 0x55f, x15	// Write all 1s to CSR
	csrrw x20, 0x55f, x0	// Write all 0s to CSR
	csrrs x20, 0x55f, x15	// Set all CSR bits
	csrrc x20, 0x55f, x15	// Clear all CSR bits
	csrrw x20, 0x55f, x23	// Restore CSR

// Testing CSR 0x560
	csrr x20, 0x560	// Read CSR
	li x27, -1
	csrrw x22, 0x560, x27	// Write all 1s to CSR
	csrrw x22, 0x560, x0	// Write all 0s to CSR
	csrrs x22, 0x560, x27	// Set all CSR bits
	csrrc x22, 0x560, x27	// Clear all CSR bits
	csrrw x22, 0x560, x20	// Restore CSR

// Testing CSR 0x561
	csrr x6, 0x561	// Read CSR
	li x20, -1
	csrrw x15, 0x561, x20	// Write all 1s to CSR
	csrrw x15, 0x561, x0	// Write all 0s to CSR
	csrrs x15, 0x561, x20	// Set all CSR bits
	csrrc x15, 0x561, x20	// Clear all CSR bits
	csrrw x15, 0x561, x6	// Restore CSR

// Testing CSR 0x562
	csrr x11, 0x562	// Read CSR
	li x19, -1
	csrrw x14, 0x562, x19	// Write all 1s to CSR
	csrrw x14, 0x562, x0	// Write all 0s to CSR
	csrrs x14, 0x562, x19	// Set all CSR bits
	csrrc x14, 0x562, x19	// Clear all CSR bits
	csrrw x14, 0x562, x11	// Restore CSR

// Testing CSR 0x563
	csrr x19, 0x563	// Read CSR
	li x25, -1
	csrrw x28, 0x563, x25	// Write all 1s to CSR
	csrrw x28, 0x563, x0	// Write all 0s to CSR
	csrrs x28, 0x563, x25	// Set all CSR bits
	csrrc x28, 0x563, x25	// Clear all CSR bits
	csrrw x28, 0x563, x19	// Restore CSR

// Testing CSR 0x564
	csrr x28, 0x564	// Read CSR
	li x21, -1
	csrrw x5, 0x564, x21	// Write all 1s to CSR
	csrrw x5, 0x564, x0	// Write all 0s to CSR
	csrrs x5, 0x564, x21	// Set all CSR bits
	csrrc x5, 0x564, x21	// Clear all CSR bits
	csrrw x5, 0x564, x28	// Restore CSR

// Testing CSR 0x565
	csrr x17, 0x565	// Read CSR
	li x14, -1
	csrrw x13, 0x565, x14	// Write all 1s to CSR
	csrrw x13, 0x565, x0	// Write all 0s to CSR
	csrrs x13, 0x565, x14	// Set all CSR bits
	csrrc x13, 0x565, x14	// Clear all CSR bits
	csrrw x13, 0x565, x17	// Restore CSR

// Testing CSR 0x566
	csrr x8, 0x566	// Read CSR
	li x12, -1
	csrrw x13, 0x566, x12	// Write all 1s to CSR
	csrrw x13, 0x566, x0	// Write all 0s to CSR
	csrrs x13, 0x566, x12	// Set all CSR bits
	csrrc x13, 0x566, x12	// Clear all CSR bits
	csrrw x13, 0x566, x8	// Restore CSR

// Testing CSR 0x567
	csrr x10, 0x567	// Read CSR
	li x8, -1
	csrrw x7, 0x567, x8	// Write all 1s to CSR
	csrrw x7, 0x567, x0	// Write all 0s to CSR
	csrrs x7, 0x567, x8	// Set all CSR bits
	csrrc x7, 0x567, x8	// Clear all CSR bits
	csrrw x7, 0x567, x10	// Restore CSR

// Testing CSR 0x568
	csrr x9, 0x568	// Read CSR
	li x31, -1
	csrrw x8, 0x568, x31	// Write all 1s to CSR
	csrrw x8, 0x568, x0	// Write all 0s to CSR
	csrrs x8, 0x568, x31	// Set all CSR bits
	csrrc x8, 0x568, x31	// Clear all CSR bits
	csrrw x8, 0x568, x9	// Restore CSR

// Testing CSR 0x569
	csrr x18, 0x569	// Read CSR
	li x19, -1
	csrrw x28, 0x569, x19	// Write all 1s to CSR
	csrrw x28, 0x569, x0	// Write all 0s to CSR
	csrrs x28, 0x569, x19	// Set all CSR bits
	csrrc x28, 0x569, x19	// Clear all CSR bits
	csrrw x28, 0x569, x18	// Restore CSR

// Testing CSR 0x56a
	csrr x30, 0x56a	// Read CSR
	li x29, -1
	csrrw x12, 0x56a, x29	// Write all 1s to CSR
	csrrw x12, 0x56a, x0	// Write all 0s to CSR
	csrrs x12, 0x56a, x29	// Set all CSR bits
	csrrc x12, 0x56a, x29	// Clear all CSR bits
	csrrw x12, 0x56a, x30	// Restore CSR

// Testing CSR 0x56b
	csrr x31, 0x56b	// Read CSR
	li x15, -1
	csrrw x8, 0x56b, x15	// Write all 1s to CSR
	csrrw x8, 0x56b, x0	// Write all 0s to CSR
	csrrs x8, 0x56b, x15	// Set all CSR bits
	csrrc x8, 0x56b, x15	// Clear all CSR bits
	csrrw x8, 0x56b, x31	// Restore CSR

// Testing CSR 0x56c
	csrr x20, 0x56c	// Read CSR
	li x11, -1
	csrrw x21, 0x56c, x11	// Write all 1s to CSR
	csrrw x21, 0x56c, x0	// Write all 0s to CSR
	csrrs x21, 0x56c, x11	// Set all CSR bits
	csrrc x21, 0x56c, x11	// Clear all CSR bits
	csrrw x21, 0x56c, x20	// Restore CSR

// Testing CSR 0x56d
	csrr x5, 0x56d	// Read CSR
	li x11, -1
	csrrw x8, 0x56d, x11	// Write all 1s to CSR
	csrrw x8, 0x56d, x0	// Write all 0s to CSR
	csrrs x8, 0x56d, x11	// Set all CSR bits
	csrrc x8, 0x56d, x11	// Clear all CSR bits
	csrrw x8, 0x56d, x5	// Restore CSR

// Testing CSR 0x56e
	csrr x5, 0x56e	// Read CSR
	li x28, -1
	csrrw x25, 0x56e, x28	// Write all 1s to CSR
	csrrw x25, 0x56e, x0	// Write all 0s to CSR
	csrrs x25, 0x56e, x28	// Set all CSR bits
	csrrc x25, 0x56e, x28	// Clear all CSR bits
	csrrw x25, 0x56e, x5	// Restore CSR

// Testing CSR 0x56f
	csrr x9, 0x56f	// Read CSR
	li x18, -1
	csrrw x6, 0x56f, x18	// Write all 1s to CSR
	csrrw x6, 0x56f, x0	// Write all 0s to CSR
	csrrs x6, 0x56f, x18	// Set all CSR bits
	csrrc x6, 0x56f, x18	// Clear all CSR bits
	csrrw x6, 0x56f, x9	// Restore CSR

// Testing CSR 0x570
	csrr x18, 0x570	// Read CSR
	li x23, -1
	csrrw x20, 0x570, x23	// Write all 1s to CSR
	csrrw x20, 0x570, x0	// Write all 0s to CSR
	csrrs x20, 0x570, x23	// Set all CSR bits
	csrrc x20, 0x570, x23	// Clear all CSR bits
	csrrw x20, 0x570, x18	// Restore CSR

// Testing CSR 0x571
	csrr x4, 0x571	// Read CSR
	li x29, -1
	csrrw x30, 0x571, x29	// Write all 1s to CSR
	csrrw x30, 0x571, x0	// Write all 0s to CSR
	csrrs x30, 0x571, x29	// Set all CSR bits
	csrrc x30, 0x571, x29	// Clear all CSR bits
	csrrw x30, 0x571, x4	// Restore CSR

// Testing CSR 0x572
	csrr x15, 0x572	// Read CSR
	li x16, -1
	csrrw x7, 0x572, x16	// Write all 1s to CSR
	csrrw x7, 0x572, x0	// Write all 0s to CSR
	csrrs x7, 0x572, x16	// Set all CSR bits
	csrrc x7, 0x572, x16	// Clear all CSR bits
	csrrw x7, 0x572, x15	// Restore CSR

// Testing CSR 0x573
	csrr x23, 0x573	// Read CSR
	li x6, -1
	csrrw x20, 0x573, x6	// Write all 1s to CSR
	csrrw x20, 0x573, x0	// Write all 0s to CSR
	csrrs x20, 0x573, x6	// Set all CSR bits
	csrrc x20, 0x573, x6	// Clear all CSR bits
	csrrw x20, 0x573, x23	// Restore CSR

// Testing CSR 0x574
	csrr x12, 0x574	// Read CSR
	li x20, -1
	csrrw x8, 0x574, x20	// Write all 1s to CSR
	csrrw x8, 0x574, x0	// Write all 0s to CSR
	csrrs x8, 0x574, x20	// Set all CSR bits
	csrrc x8, 0x574, x20	// Clear all CSR bits
	csrrw x8, 0x574, x12	// Restore CSR

// Testing CSR 0x575
	csrr x23, 0x575	// Read CSR
	li x26, -1
	csrrw x3, 0x575, x26	// Write all 1s to CSR
	csrrw x3, 0x575, x0	// Write all 0s to CSR
	csrrs x3, 0x575, x26	// Set all CSR bits
	csrrc x3, 0x575, x26	// Clear all CSR bits
	csrrw x3, 0x575, x23	// Restore CSR

// Testing CSR 0x576
	csrr x18, 0x576	// Read CSR
	li x16, -1
	csrrw x29, 0x576, x16	// Write all 1s to CSR
	csrrw x29, 0x576, x0	// Write all 0s to CSR
	csrrs x29, 0x576, x16	// Set all CSR bits
	csrrc x29, 0x576, x16	// Clear all CSR bits
	csrrw x29, 0x576, x18	// Restore CSR

// Testing CSR 0x577
	csrr x7, 0x577	// Read CSR
	li x10, -1
	csrrw x13, 0x577, x10	// Write all 1s to CSR
	csrrw x13, 0x577, x0	// Write all 0s to CSR
	csrrs x13, 0x577, x10	// Set all CSR bits
	csrrc x13, 0x577, x10	// Clear all CSR bits
	csrrw x13, 0x577, x7	// Restore CSR

// Testing CSR 0x578
	csrr x9, 0x578	// Read CSR
	li x17, -1
	csrrw x7, 0x578, x17	// Write all 1s to CSR
	csrrw x7, 0x578, x0	// Write all 0s to CSR
	csrrs x7, 0x578, x17	// Set all CSR bits
	csrrc x7, 0x578, x17	// Clear all CSR bits
	csrrw x7, 0x578, x9	// Restore CSR

// Testing CSR 0x579
	csrr x12, 0x579	// Read CSR
	li x28, -1
	csrrw x14, 0x579, x28	// Write all 1s to CSR
	csrrw x14, 0x579, x0	// Write all 0s to CSR
	csrrs x14, 0x579, x28	// Set all CSR bits
	csrrc x14, 0x579, x28	// Clear all CSR bits
	csrrw x14, 0x579, x12	// Restore CSR

// Testing CSR 0x57a
	csrr x11, 0x57a	// Read CSR
	li x24, -1
	csrrw x1, 0x57a, x24	// Write all 1s to CSR
	csrrw x1, 0x57a, x0	// Write all 0s to CSR
	csrrs x1, 0x57a, x24	// Set all CSR bits
	csrrc x1, 0x57a, x24	// Clear all CSR bits
	csrrw x1, 0x57a, x11	// Restore CSR

// Testing CSR 0x57b
	csrr x2, 0x57b	// Read CSR
	li x7, -1
	csrrw x31, 0x57b, x7	// Write all 1s to CSR
	csrrw x31, 0x57b, x0	// Write all 0s to CSR
	csrrs x31, 0x57b, x7	// Set all CSR bits
	csrrc x31, 0x57b, x7	// Clear all CSR bits
	csrrw x31, 0x57b, x2	// Restore CSR

// Testing CSR 0x57c
	csrr x7, 0x57c	// Read CSR
	li x20, -1
	csrrw x27, 0x57c, x20	// Write all 1s to CSR
	csrrw x27, 0x57c, x0	// Write all 0s to CSR
	csrrs x27, 0x57c, x20	// Set all CSR bits
	csrrc x27, 0x57c, x20	// Clear all CSR bits
	csrrw x27, 0x57c, x7	// Restore CSR

// Testing CSR 0x57d
	csrr x6, 0x57d	// Read CSR
	li x28, -1
	csrrw x18, 0x57d, x28	// Write all 1s to CSR
	csrrw x18, 0x57d, x0	// Write all 0s to CSR
	csrrs x18, 0x57d, x28	// Set all CSR bits
	csrrc x18, 0x57d, x28	// Clear all CSR bits
	csrrw x18, 0x57d, x6	// Restore CSR

// Testing CSR 0x57e
	csrr x15, 0x57e	// Read CSR
	li x3, -1
	csrrw x9, 0x57e, x3	// Write all 1s to CSR
	csrrw x9, 0x57e, x0	// Write all 0s to CSR
	csrrs x9, 0x57e, x3	// Set all CSR bits
	csrrc x9, 0x57e, x3	// Clear all CSR bits
	csrrw x9, 0x57e, x15	// Restore CSR

// Testing CSR 0x57f
	csrr x17, 0x57f	// Read CSR
	li x10, -1
	csrrw x23, 0x57f, x10	// Write all 1s to CSR
	csrrw x23, 0x57f, x0	// Write all 0s to CSR
	csrrs x23, 0x57f, x10	// Set all CSR bits
	csrrc x23, 0x57f, x10	// Clear all CSR bits
	csrrw x23, 0x57f, x17	// Restore CSR

// Testing CSR 0x580
	csrr x16, 0x580	// Read CSR
	li x14, -1
	csrrw x27, 0x580, x14	// Write all 1s to CSR
	csrrw x27, 0x580, x0	// Write all 0s to CSR
	csrrs x27, 0x580, x14	// Set all CSR bits
	csrrc x27, 0x580, x14	// Clear all CSR bits
	csrrw x27, 0x580, x16	// Restore CSR

// Testing CSR 0x581
	csrr x11, 0x581	// Read CSR
	li x28, -1
	csrrw x22, 0x581, x28	// Write all 1s to CSR
	csrrw x22, 0x581, x0	// Write all 0s to CSR
	csrrs x22, 0x581, x28	// Set all CSR bits
	csrrc x22, 0x581, x28	// Clear all CSR bits
	csrrw x22, 0x581, x11	// Restore CSR

// Testing CSR 0x582
	csrr x24, 0x582	// Read CSR
	li x30, -1
	csrrw x23, 0x582, x30	// Write all 1s to CSR
	csrrw x23, 0x582, x0	// Write all 0s to CSR
	csrrs x23, 0x582, x30	// Set all CSR bits
	csrrc x23, 0x582, x30	// Clear all CSR bits
	csrrw x23, 0x582, x24	// Restore CSR

// Testing CSR 0x583
	csrr x28, 0x583	// Read CSR
	li x23, -1
	csrrw x13, 0x583, x23	// Write all 1s to CSR
	csrrw x13, 0x583, x0	// Write all 0s to CSR
	csrrs x13, 0x583, x23	// Set all CSR bits
	csrrc x13, 0x583, x23	// Clear all CSR bits
	csrrw x13, 0x583, x28	// Restore CSR

// Testing CSR 0x584
	csrr x2, 0x584	// Read CSR
	li x28, -1
	csrrw x30, 0x584, x28	// Write all 1s to CSR
	csrrw x30, 0x584, x0	// Write all 0s to CSR
	csrrs x30, 0x584, x28	// Set all CSR bits
	csrrc x30, 0x584, x28	// Clear all CSR bits
	csrrw x30, 0x584, x2	// Restore CSR

// Testing CSR 0x585
	csrr x4, 0x585	// Read CSR
	li x29, -1
	csrrw x2, 0x585, x29	// Write all 1s to CSR
	csrrw x2, 0x585, x0	// Write all 0s to CSR
	csrrs x2, 0x585, x29	// Set all CSR bits
	csrrc x2, 0x585, x29	// Clear all CSR bits
	csrrw x2, 0x585, x4	// Restore CSR

// Testing CSR 0x586
	csrr x11, 0x586	// Read CSR
	li x6, -1
	csrrw x25, 0x586, x6	// Write all 1s to CSR
	csrrw x25, 0x586, x0	// Write all 0s to CSR
	csrrs x25, 0x586, x6	// Set all CSR bits
	csrrc x25, 0x586, x6	// Clear all CSR bits
	csrrw x25, 0x586, x11	// Restore CSR

// Testing CSR 0x587
	csrr x9, 0x587	// Read CSR
	li x20, -1
	csrrw x24, 0x587, x20	// Write all 1s to CSR
	csrrw x24, 0x587, x0	// Write all 0s to CSR
	csrrs x24, 0x587, x20	// Set all CSR bits
	csrrc x24, 0x587, x20	// Clear all CSR bits
	csrrw x24, 0x587, x9	// Restore CSR

// Testing CSR 0x588
	csrr x18, 0x588	// Read CSR
	li x15, -1
	csrrw x10, 0x588, x15	// Write all 1s to CSR
	csrrw x10, 0x588, x0	// Write all 0s to CSR
	csrrs x10, 0x588, x15	// Set all CSR bits
	csrrc x10, 0x588, x15	// Clear all CSR bits
	csrrw x10, 0x588, x18	// Restore CSR

// Testing CSR 0x589
	csrr x18, 0x589	// Read CSR
	li x29, -1
	csrrw x14, 0x589, x29	// Write all 1s to CSR
	csrrw x14, 0x589, x0	// Write all 0s to CSR
	csrrs x14, 0x589, x29	// Set all CSR bits
	csrrc x14, 0x589, x29	// Clear all CSR bits
	csrrw x14, 0x589, x18	// Restore CSR

// Testing CSR 0x58a
	csrr x28, 0x58a	// Read CSR
	li x30, -1
	csrrw x16, 0x58a, x30	// Write all 1s to CSR
	csrrw x16, 0x58a, x0	// Write all 0s to CSR
	csrrs x16, 0x58a, x30	// Set all CSR bits
	csrrc x16, 0x58a, x30	// Clear all CSR bits
	csrrw x16, 0x58a, x28	// Restore CSR

// Testing CSR 0x58b
	csrr x12, 0x58b	// Read CSR
	li x8, -1
	csrrw x31, 0x58b, x8	// Write all 1s to CSR
	csrrw x31, 0x58b, x0	// Write all 0s to CSR
	csrrs x31, 0x58b, x8	// Set all CSR bits
	csrrc x31, 0x58b, x8	// Clear all CSR bits
	csrrw x31, 0x58b, x12	// Restore CSR

// Testing CSR 0x58c
	csrr x22, 0x58c	// Read CSR
	li x3, -1
	csrrw x24, 0x58c, x3	// Write all 1s to CSR
	csrrw x24, 0x58c, x0	// Write all 0s to CSR
	csrrs x24, 0x58c, x3	// Set all CSR bits
	csrrc x24, 0x58c, x3	// Clear all CSR bits
	csrrw x24, 0x58c, x22	// Restore CSR

// Testing CSR 0x58d
	csrr x3, 0x58d	// Read CSR
	li x26, -1
	csrrw x21, 0x58d, x26	// Write all 1s to CSR
	csrrw x21, 0x58d, x0	// Write all 0s to CSR
	csrrs x21, 0x58d, x26	// Set all CSR bits
	csrrc x21, 0x58d, x26	// Clear all CSR bits
	csrrw x21, 0x58d, x3	// Restore CSR

// Testing CSR 0x58e
	csrr x3, 0x58e	// Read CSR
	li x17, -1
	csrrw x1, 0x58e, x17	// Write all 1s to CSR
	csrrw x1, 0x58e, x0	// Write all 0s to CSR
	csrrs x1, 0x58e, x17	// Set all CSR bits
	csrrc x1, 0x58e, x17	// Clear all CSR bits
	csrrw x1, 0x58e, x3	// Restore CSR

// Testing CSR 0x58f
	csrr x28, 0x58f	// Read CSR
	li x22, -1
	csrrw x19, 0x58f, x22	// Write all 1s to CSR
	csrrw x19, 0x58f, x0	// Write all 0s to CSR
	csrrs x19, 0x58f, x22	// Set all CSR bits
	csrrc x19, 0x58f, x22	// Clear all CSR bits
	csrrw x19, 0x58f, x28	// Restore CSR

// Testing CSR 0x590
	csrr x17, 0x590	// Read CSR
	li x11, -1
	csrrw x31, 0x590, x11	// Write all 1s to CSR
	csrrw x31, 0x590, x0	// Write all 0s to CSR
	csrrs x31, 0x590, x11	// Set all CSR bits
	csrrc x31, 0x590, x11	// Clear all CSR bits
	csrrw x31, 0x590, x17	// Restore CSR

// Testing CSR 0x591
	csrr x24, 0x591	// Read CSR
	li x27, -1
	csrrw x20, 0x591, x27	// Write all 1s to CSR
	csrrw x20, 0x591, x0	// Write all 0s to CSR
	csrrs x20, 0x591, x27	// Set all CSR bits
	csrrc x20, 0x591, x27	// Clear all CSR bits
	csrrw x20, 0x591, x24	// Restore CSR

// Testing CSR 0x592
	csrr x4, 0x592	// Read CSR
	li x29, -1
	csrrw x19, 0x592, x29	// Write all 1s to CSR
	csrrw x19, 0x592, x0	// Write all 0s to CSR
	csrrs x19, 0x592, x29	// Set all CSR bits
	csrrc x19, 0x592, x29	// Clear all CSR bits
	csrrw x19, 0x592, x4	// Restore CSR

// Testing CSR 0x593
	csrr x8, 0x593	// Read CSR
	li x1, -1
	csrrw x2, 0x593, x1	// Write all 1s to CSR
	csrrw x2, 0x593, x0	// Write all 0s to CSR
	csrrs x2, 0x593, x1	// Set all CSR bits
	csrrc x2, 0x593, x1	// Clear all CSR bits
	csrrw x2, 0x593, x8	// Restore CSR

// Testing CSR 0x594
	csrr x26, 0x594	// Read CSR
	li x4, -1
	csrrw x27, 0x594, x4	// Write all 1s to CSR
	csrrw x27, 0x594, x0	// Write all 0s to CSR
	csrrs x27, 0x594, x4	// Set all CSR bits
	csrrc x27, 0x594, x4	// Clear all CSR bits
	csrrw x27, 0x594, x26	// Restore CSR

// Testing CSR 0x595
	csrr x30, 0x595	// Read CSR
	li x24, -1
	csrrw x10, 0x595, x24	// Write all 1s to CSR
	csrrw x10, 0x595, x0	// Write all 0s to CSR
	csrrs x10, 0x595, x24	// Set all CSR bits
	csrrc x10, 0x595, x24	// Clear all CSR bits
	csrrw x10, 0x595, x30	// Restore CSR

// Testing CSR 0x596
	csrr x3, 0x596	// Read CSR
	li x27, -1
	csrrw x19, 0x596, x27	// Write all 1s to CSR
	csrrw x19, 0x596, x0	// Write all 0s to CSR
	csrrs x19, 0x596, x27	// Set all CSR bits
	csrrc x19, 0x596, x27	// Clear all CSR bits
	csrrw x19, 0x596, x3	// Restore CSR

// Testing CSR 0x597
	csrr x28, 0x597	// Read CSR
	li x13, -1
	csrrw x23, 0x597, x13	// Write all 1s to CSR
	csrrw x23, 0x597, x0	// Write all 0s to CSR
	csrrs x23, 0x597, x13	// Set all CSR bits
	csrrc x23, 0x597, x13	// Clear all CSR bits
	csrrw x23, 0x597, x28	// Restore CSR

// Testing CSR 0x598
	csrr x5, 0x598	// Read CSR
	li x25, -1
	csrrw x29, 0x598, x25	// Write all 1s to CSR
	csrrw x29, 0x598, x0	// Write all 0s to CSR
	csrrs x29, 0x598, x25	// Set all CSR bits
	csrrc x29, 0x598, x25	// Clear all CSR bits
	csrrw x29, 0x598, x5	// Restore CSR

// Testing CSR 0x599
	csrr x19, 0x599	// Read CSR
	li x31, -1
	csrrw x30, 0x599, x31	// Write all 1s to CSR
	csrrw x30, 0x599, x0	// Write all 0s to CSR
	csrrs x30, 0x599, x31	// Set all CSR bits
	csrrc x30, 0x599, x31	// Clear all CSR bits
	csrrw x30, 0x599, x19	// Restore CSR

// Testing CSR 0x59a
	csrr x30, 0x59a	// Read CSR
	li x20, -1
	csrrw x17, 0x59a, x20	// Write all 1s to CSR
	csrrw x17, 0x59a, x0	// Write all 0s to CSR
	csrrs x17, 0x59a, x20	// Set all CSR bits
	csrrc x17, 0x59a, x20	// Clear all CSR bits
	csrrw x17, 0x59a, x30	// Restore CSR

// Testing CSR 0x59b
	csrr x31, 0x59b	// Read CSR
	li x28, -1
	csrrw x29, 0x59b, x28	// Write all 1s to CSR
	csrrw x29, 0x59b, x0	// Write all 0s to CSR
	csrrs x29, 0x59b, x28	// Set all CSR bits
	csrrc x29, 0x59b, x28	// Clear all CSR bits
	csrrw x29, 0x59b, x31	// Restore CSR

// Testing CSR 0x59c
	csrr x7, 0x59c	// Read CSR
	li x9, -1
	csrrw x10, 0x59c, x9	// Write all 1s to CSR
	csrrw x10, 0x59c, x0	// Write all 0s to CSR
	csrrs x10, 0x59c, x9	// Set all CSR bits
	csrrc x10, 0x59c, x9	// Clear all CSR bits
	csrrw x10, 0x59c, x7	// Restore CSR

// Testing CSR 0x59d
	csrr x6, 0x59d	// Read CSR
	li x30, -1
	csrrw x19, 0x59d, x30	// Write all 1s to CSR
	csrrw x19, 0x59d, x0	// Write all 0s to CSR
	csrrs x19, 0x59d, x30	// Set all CSR bits
	csrrc x19, 0x59d, x30	// Clear all CSR bits
	csrrw x19, 0x59d, x6	// Restore CSR

// Testing CSR 0x59e
	csrr x31, 0x59e	// Read CSR
	li x8, -1
	csrrw x5, 0x59e, x8	// Write all 1s to CSR
	csrrw x5, 0x59e, x0	// Write all 0s to CSR
	csrrs x5, 0x59e, x8	// Set all CSR bits
	csrrc x5, 0x59e, x8	// Clear all CSR bits
	csrrw x5, 0x59e, x31	// Restore CSR

// Testing CSR 0x59f
	csrr x5, 0x59f	// Read CSR
	li x29, -1
	csrrw x8, 0x59f, x29	// Write all 1s to CSR
	csrrw x8, 0x59f, x0	// Write all 0s to CSR
	csrrs x8, 0x59f, x29	// Set all CSR bits
	csrrc x8, 0x59f, x29	// Clear all CSR bits
	csrrw x8, 0x59f, x5	// Restore CSR

// Testing CSR 0x5a0
	csrr x9, 0x5a0	// Read CSR
	li x16, -1
	csrrw x26, 0x5a0, x16	// Write all 1s to CSR
	csrrw x26, 0x5a0, x0	// Write all 0s to CSR
	csrrs x26, 0x5a0, x16	// Set all CSR bits
	csrrc x26, 0x5a0, x16	// Clear all CSR bits
	csrrw x26, 0x5a0, x9	// Restore CSR

// Testing CSR 0x5a1
	csrr x10, 0x5a1	// Read CSR
	li x5, -1
	csrrw x24, 0x5a1, x5	// Write all 1s to CSR
	csrrw x24, 0x5a1, x0	// Write all 0s to CSR
	csrrs x24, 0x5a1, x5	// Set all CSR bits
	csrrc x24, 0x5a1, x5	// Clear all CSR bits
	csrrw x24, 0x5a1, x10	// Restore CSR

// Testing CSR 0x5a2
	csrr x20, 0x5a2	// Read CSR
	li x9, -1
	csrrw x7, 0x5a2, x9	// Write all 1s to CSR
	csrrw x7, 0x5a2, x0	// Write all 0s to CSR
	csrrs x7, 0x5a2, x9	// Set all CSR bits
	csrrc x7, 0x5a2, x9	// Clear all CSR bits
	csrrw x7, 0x5a2, x20	// Restore CSR

// Testing CSR 0x5a3
	csrr x3, 0x5a3	// Read CSR
	li x5, -1
	csrrw x29, 0x5a3, x5	// Write all 1s to CSR
	csrrw x29, 0x5a3, x0	// Write all 0s to CSR
	csrrs x29, 0x5a3, x5	// Set all CSR bits
	csrrc x29, 0x5a3, x5	// Clear all CSR bits
	csrrw x29, 0x5a3, x3	// Restore CSR

// Testing CSR 0x5a4
	csrr x27, 0x5a4	// Read CSR
	li x22, -1
	csrrw x14, 0x5a4, x22	// Write all 1s to CSR
	csrrw x14, 0x5a4, x0	// Write all 0s to CSR
	csrrs x14, 0x5a4, x22	// Set all CSR bits
	csrrc x14, 0x5a4, x22	// Clear all CSR bits
	csrrw x14, 0x5a4, x27	// Restore CSR

// Testing CSR 0x5a5
	csrr x31, 0x5a5	// Read CSR
	li x6, -1
	csrrw x7, 0x5a5, x6	// Write all 1s to CSR
	csrrw x7, 0x5a5, x0	// Write all 0s to CSR
	csrrs x7, 0x5a5, x6	// Set all CSR bits
	csrrc x7, 0x5a5, x6	// Clear all CSR bits
	csrrw x7, 0x5a5, x31	// Restore CSR

// Testing CSR 0x5a6
	csrr x28, 0x5a6	// Read CSR
	li x19, -1
	csrrw x1, 0x5a6, x19	// Write all 1s to CSR
	csrrw x1, 0x5a6, x0	// Write all 0s to CSR
	csrrs x1, 0x5a6, x19	// Set all CSR bits
	csrrc x1, 0x5a6, x19	// Clear all CSR bits
	csrrw x1, 0x5a6, x28	// Restore CSR

// Testing CSR 0x5a7
	csrr x12, 0x5a7	// Read CSR
	li x18, -1
	csrrw x22, 0x5a7, x18	// Write all 1s to CSR
	csrrw x22, 0x5a7, x0	// Write all 0s to CSR
	csrrs x22, 0x5a7, x18	// Set all CSR bits
	csrrc x22, 0x5a7, x18	// Clear all CSR bits
	csrrw x22, 0x5a7, x12	// Restore CSR

// Testing CSR 0x5a8
	csrr x16, 0x5a8	// Read CSR
	li x22, -1
	csrrw x5, 0x5a8, x22	// Write all 1s to CSR
	csrrw x5, 0x5a8, x0	// Write all 0s to CSR
	csrrs x5, 0x5a8, x22	// Set all CSR bits
	csrrc x5, 0x5a8, x22	// Clear all CSR bits
	csrrw x5, 0x5a8, x16	// Restore CSR

// Testing CSR 0x5a9
	csrr x25, 0x5a9	// Read CSR
	li x27, -1
	csrrw x24, 0x5a9, x27	// Write all 1s to CSR
	csrrw x24, 0x5a9, x0	// Write all 0s to CSR
	csrrs x24, 0x5a9, x27	// Set all CSR bits
	csrrc x24, 0x5a9, x27	// Clear all CSR bits
	csrrw x24, 0x5a9, x25	// Restore CSR

// Testing CSR 0x5aa
	csrr x9, 0x5aa	// Read CSR
	li x3, -1
	csrrw x29, 0x5aa, x3	// Write all 1s to CSR
	csrrw x29, 0x5aa, x0	// Write all 0s to CSR
	csrrs x29, 0x5aa, x3	// Set all CSR bits
	csrrc x29, 0x5aa, x3	// Clear all CSR bits
	csrrw x29, 0x5aa, x9	// Restore CSR

// Testing CSR 0x5ab
	csrr x24, 0x5ab	// Read CSR
	li x23, -1
	csrrw x20, 0x5ab, x23	// Write all 1s to CSR
	csrrw x20, 0x5ab, x0	// Write all 0s to CSR
	csrrs x20, 0x5ab, x23	// Set all CSR bits
	csrrc x20, 0x5ab, x23	// Clear all CSR bits
	csrrw x20, 0x5ab, x24	// Restore CSR

// Testing CSR 0x5ac
	csrr x28, 0x5ac	// Read CSR
	li x23, -1
	csrrw x9, 0x5ac, x23	// Write all 1s to CSR
	csrrw x9, 0x5ac, x0	// Write all 0s to CSR
	csrrs x9, 0x5ac, x23	// Set all CSR bits
	csrrc x9, 0x5ac, x23	// Clear all CSR bits
	csrrw x9, 0x5ac, x28	// Restore CSR

// Testing CSR 0x5ad
	csrr x26, 0x5ad	// Read CSR
	li x20, -1
	csrrw x24, 0x5ad, x20	// Write all 1s to CSR
	csrrw x24, 0x5ad, x0	// Write all 0s to CSR
	csrrs x24, 0x5ad, x20	// Set all CSR bits
	csrrc x24, 0x5ad, x20	// Clear all CSR bits
	csrrw x24, 0x5ad, x26	// Restore CSR

// Testing CSR 0x5ae
	csrr x8, 0x5ae	// Read CSR
	li x1, -1
	csrrw x29, 0x5ae, x1	// Write all 1s to CSR
	csrrw x29, 0x5ae, x0	// Write all 0s to CSR
	csrrs x29, 0x5ae, x1	// Set all CSR bits
	csrrc x29, 0x5ae, x1	// Clear all CSR bits
	csrrw x29, 0x5ae, x8	// Restore CSR

// Testing CSR 0x5af
	csrr x5, 0x5af	// Read CSR
	li x27, -1
	csrrw x7, 0x5af, x27	// Write all 1s to CSR
	csrrw x7, 0x5af, x0	// Write all 0s to CSR
	csrrs x7, 0x5af, x27	// Set all CSR bits
	csrrc x7, 0x5af, x27	// Clear all CSR bits
	csrrw x7, 0x5af, x5	// Restore CSR

// Testing CSR 0x5b0
	csrr x24, 0x5b0	// Read CSR
	li x19, -1
	csrrw x22, 0x5b0, x19	// Write all 1s to CSR
	csrrw x22, 0x5b0, x0	// Write all 0s to CSR
	csrrs x22, 0x5b0, x19	// Set all CSR bits
	csrrc x22, 0x5b0, x19	// Clear all CSR bits
	csrrw x22, 0x5b0, x24	// Restore CSR

// Testing CSR 0x5b1
	csrr x1, 0x5b1	// Read CSR
	li x14, -1
	csrrw x5, 0x5b1, x14	// Write all 1s to CSR
	csrrw x5, 0x5b1, x0	// Write all 0s to CSR
	csrrs x5, 0x5b1, x14	// Set all CSR bits
	csrrc x5, 0x5b1, x14	// Clear all CSR bits
	csrrw x5, 0x5b1, x1	// Restore CSR

// Testing CSR 0x5b2
	csrr x5, 0x5b2	// Read CSR
	li x16, -1
	csrrw x18, 0x5b2, x16	// Write all 1s to CSR
	csrrw x18, 0x5b2, x0	// Write all 0s to CSR
	csrrs x18, 0x5b2, x16	// Set all CSR bits
	csrrc x18, 0x5b2, x16	// Clear all CSR bits
	csrrw x18, 0x5b2, x5	// Restore CSR

// Testing CSR 0x5b3
	csrr x2, 0x5b3	// Read CSR
	li x17, -1
	csrrw x11, 0x5b3, x17	// Write all 1s to CSR
	csrrw x11, 0x5b3, x0	// Write all 0s to CSR
	csrrs x11, 0x5b3, x17	// Set all CSR bits
	csrrc x11, 0x5b3, x17	// Clear all CSR bits
	csrrw x11, 0x5b3, x2	// Restore CSR

// Testing CSR 0x5b4
	csrr x31, 0x5b4	// Read CSR
	li x8, -1
	csrrw x22, 0x5b4, x8	// Write all 1s to CSR
	csrrw x22, 0x5b4, x0	// Write all 0s to CSR
	csrrs x22, 0x5b4, x8	// Set all CSR bits
	csrrc x22, 0x5b4, x8	// Clear all CSR bits
	csrrw x22, 0x5b4, x31	// Restore CSR

// Testing CSR 0x5b5
	csrr x6, 0x5b5	// Read CSR
	li x15, -1
	csrrw x11, 0x5b5, x15	// Write all 1s to CSR
	csrrw x11, 0x5b5, x0	// Write all 0s to CSR
	csrrs x11, 0x5b5, x15	// Set all CSR bits
	csrrc x11, 0x5b5, x15	// Clear all CSR bits
	csrrw x11, 0x5b5, x6	// Restore CSR

// Testing CSR 0x5b6
	csrr x22, 0x5b6	// Read CSR
	li x29, -1
	csrrw x15, 0x5b6, x29	// Write all 1s to CSR
	csrrw x15, 0x5b6, x0	// Write all 0s to CSR
	csrrs x15, 0x5b6, x29	// Set all CSR bits
	csrrc x15, 0x5b6, x29	// Clear all CSR bits
	csrrw x15, 0x5b6, x22	// Restore CSR

// Testing CSR 0x5b7
	csrr x8, 0x5b7	// Read CSR
	li x31, -1
	csrrw x21, 0x5b7, x31	// Write all 1s to CSR
	csrrw x21, 0x5b7, x0	// Write all 0s to CSR
	csrrs x21, 0x5b7, x31	// Set all CSR bits
	csrrc x21, 0x5b7, x31	// Clear all CSR bits
	csrrw x21, 0x5b7, x8	// Restore CSR

// Testing CSR 0x5b8
	csrr x21, 0x5b8	// Read CSR
	li x24, -1
	csrrw x9, 0x5b8, x24	// Write all 1s to CSR
	csrrw x9, 0x5b8, x0	// Write all 0s to CSR
	csrrs x9, 0x5b8, x24	// Set all CSR bits
	csrrc x9, 0x5b8, x24	// Clear all CSR bits
	csrrw x9, 0x5b8, x21	// Restore CSR

// Testing CSR 0x5b9
	csrr x22, 0x5b9	// Read CSR
	li x23, -1
	csrrw x7, 0x5b9, x23	// Write all 1s to CSR
	csrrw x7, 0x5b9, x0	// Write all 0s to CSR
	csrrs x7, 0x5b9, x23	// Set all CSR bits
	csrrc x7, 0x5b9, x23	// Clear all CSR bits
	csrrw x7, 0x5b9, x22	// Restore CSR

// Testing CSR 0x5ba
	csrr x4, 0x5ba	// Read CSR
	li x12, -1
	csrrw x16, 0x5ba, x12	// Write all 1s to CSR
	csrrw x16, 0x5ba, x0	// Write all 0s to CSR
	csrrs x16, 0x5ba, x12	// Set all CSR bits
	csrrc x16, 0x5ba, x12	// Clear all CSR bits
	csrrw x16, 0x5ba, x4	// Restore CSR

// Testing CSR 0x5bb
	csrr x9, 0x5bb	// Read CSR
	li x12, -1
	csrrw x18, 0x5bb, x12	// Write all 1s to CSR
	csrrw x18, 0x5bb, x0	// Write all 0s to CSR
	csrrs x18, 0x5bb, x12	// Set all CSR bits
	csrrc x18, 0x5bb, x12	// Clear all CSR bits
	csrrw x18, 0x5bb, x9	// Restore CSR

// Testing CSR 0x5bc
	csrr x19, 0x5bc	// Read CSR
	li x10, -1
	csrrw x7, 0x5bc, x10	// Write all 1s to CSR
	csrrw x7, 0x5bc, x0	// Write all 0s to CSR
	csrrs x7, 0x5bc, x10	// Set all CSR bits
	csrrc x7, 0x5bc, x10	// Clear all CSR bits
	csrrw x7, 0x5bc, x19	// Restore CSR

// Testing CSR 0x5bd
	csrr x10, 0x5bd	// Read CSR
	li x18, -1
	csrrw x13, 0x5bd, x18	// Write all 1s to CSR
	csrrw x13, 0x5bd, x0	// Write all 0s to CSR
	csrrs x13, 0x5bd, x18	// Set all CSR bits
	csrrc x13, 0x5bd, x18	// Clear all CSR bits
	csrrw x13, 0x5bd, x10	// Restore CSR

// Testing CSR 0x5be
	csrr x3, 0x5be	// Read CSR
	li x6, -1
	csrrw x13, 0x5be, x6	// Write all 1s to CSR
	csrrw x13, 0x5be, x0	// Write all 0s to CSR
	csrrs x13, 0x5be, x6	// Set all CSR bits
	csrrc x13, 0x5be, x6	// Clear all CSR bits
	csrrw x13, 0x5be, x3	// Restore CSR

// Testing CSR 0x5bf
	csrr x4, 0x5bf	// Read CSR
	li x31, -1
	csrrw x19, 0x5bf, x31	// Write all 1s to CSR
	csrrw x19, 0x5bf, x0	// Write all 0s to CSR
	csrrs x19, 0x5bf, x31	// Set all CSR bits
	csrrc x19, 0x5bf, x31	// Clear all CSR bits
	csrrw x19, 0x5bf, x4	// Restore CSR

// Testing CSR 0x600
	csrr x30, 0x600	// Read CSR
	li x21, -1
	csrrw x4, 0x600, x21	// Write all 1s to CSR
	csrrw x4, 0x600, x0	// Write all 0s to CSR
	csrrs x4, 0x600, x21	// Set all CSR bits
	csrrc x4, 0x600, x21	// Clear all CSR bits
	csrrw x4, 0x600, x30	// Restore CSR

// Testing CSR 0x601
	csrr x17, 0x601	// Read CSR
	li x28, -1
	csrrw x5, 0x601, x28	// Write all 1s to CSR
	csrrw x5, 0x601, x0	// Write all 0s to CSR
	csrrs x5, 0x601, x28	// Set all CSR bits
	csrrc x5, 0x601, x28	// Clear all CSR bits
	csrrw x5, 0x601, x17	// Restore CSR

// Testing CSR 0x602
	csrr x23, 0x602	// Read CSR
	li x28, -1
	csrrw x30, 0x602, x28	// Write all 1s to CSR
	csrrw x30, 0x602, x0	// Write all 0s to CSR
	csrrs x30, 0x602, x28	// Set all CSR bits
	csrrc x30, 0x602, x28	// Clear all CSR bits
	csrrw x30, 0x602, x23	// Restore CSR

// Testing CSR 0x603
	csrr x30, 0x603	// Read CSR
	li x15, -1
	csrrw x5, 0x603, x15	// Write all 1s to CSR
	csrrw x5, 0x603, x0	// Write all 0s to CSR
	csrrs x5, 0x603, x15	// Set all CSR bits
	csrrc x5, 0x603, x15	// Clear all CSR bits
	csrrw x5, 0x603, x30	// Restore CSR

// Testing CSR 0x604
	csrr x14, 0x604	// Read CSR
	li x9, -1
	csrrw x29, 0x604, x9	// Write all 1s to CSR
	csrrw x29, 0x604, x0	// Write all 0s to CSR
	csrrs x29, 0x604, x9	// Set all CSR bits
	csrrc x29, 0x604, x9	// Clear all CSR bits
	csrrw x29, 0x604, x14	// Restore CSR

// Testing CSR 0x605
	csrr x24, 0x605	// Read CSR
	li x18, -1
	csrrw x7, 0x605, x18	// Write all 1s to CSR
	csrrw x7, 0x605, x0	// Write all 0s to CSR
	csrrs x7, 0x605, x18	// Set all CSR bits
	csrrc x7, 0x605, x18	// Clear all CSR bits
	csrrw x7, 0x605, x24	// Restore CSR

// Testing CSR 0x606
	csrr x25, 0x606	// Read CSR
	li x26, -1
	csrrw x6, 0x606, x26	// Write all 1s to CSR
	csrrw x6, 0x606, x0	// Write all 0s to CSR
	csrrs x6, 0x606, x26	// Set all CSR bits
	csrrc x6, 0x606, x26	// Clear all CSR bits
	csrrw x6, 0x606, x25	// Restore CSR

// Testing CSR 0x607
	csrr x24, 0x607	// Read CSR
	li x3, -1
	csrrw x9, 0x607, x3	// Write all 1s to CSR
	csrrw x9, 0x607, x0	// Write all 0s to CSR
	csrrs x9, 0x607, x3	// Set all CSR bits
	csrrc x9, 0x607, x3	// Clear all CSR bits
	csrrw x9, 0x607, x24	// Restore CSR

// Testing CSR 0x608
	csrr x15, 0x608	// Read CSR
	li x11, -1
	csrrw x13, 0x608, x11	// Write all 1s to CSR
	csrrw x13, 0x608, x0	// Write all 0s to CSR
	csrrs x13, 0x608, x11	// Set all CSR bits
	csrrc x13, 0x608, x11	// Clear all CSR bits
	csrrw x13, 0x608, x15	// Restore CSR

// Testing CSR 0x609
	csrr x17, 0x609	// Read CSR
	li x2, -1
	csrrw x12, 0x609, x2	// Write all 1s to CSR
	csrrw x12, 0x609, x0	// Write all 0s to CSR
	csrrs x12, 0x609, x2	// Set all CSR bits
	csrrc x12, 0x609, x2	// Clear all CSR bits
	csrrw x12, 0x609, x17	// Restore CSR

// Testing CSR 0x60a
	csrr x27, 0x60a	// Read CSR
	li x28, -1
	csrrw x13, 0x60a, x28	// Write all 1s to CSR
	csrrw x13, 0x60a, x0	// Write all 0s to CSR
	csrrs x13, 0x60a, x28	// Set all CSR bits
	csrrc x13, 0x60a, x28	// Clear all CSR bits
	csrrw x13, 0x60a, x27	// Restore CSR

// Testing CSR 0x60b
	csrr x24, 0x60b	// Read CSR
	li x18, -1
	csrrw x13, 0x60b, x18	// Write all 1s to CSR
	csrrw x13, 0x60b, x0	// Write all 0s to CSR
	csrrs x13, 0x60b, x18	// Set all CSR bits
	csrrc x13, 0x60b, x18	// Clear all CSR bits
	csrrw x13, 0x60b, x24	// Restore CSR

// Testing CSR 0x60c
	csrr x5, 0x60c	// Read CSR
	li x25, -1
	csrrw x23, 0x60c, x25	// Write all 1s to CSR
	csrrw x23, 0x60c, x0	// Write all 0s to CSR
	csrrs x23, 0x60c, x25	// Set all CSR bits
	csrrc x23, 0x60c, x25	// Clear all CSR bits
	csrrw x23, 0x60c, x5	// Restore CSR

// Testing CSR 0x60d
	csrr x23, 0x60d	// Read CSR
	li x18, -1
	csrrw x19, 0x60d, x18	// Write all 1s to CSR
	csrrw x19, 0x60d, x0	// Write all 0s to CSR
	csrrs x19, 0x60d, x18	// Set all CSR bits
	csrrc x19, 0x60d, x18	// Clear all CSR bits
	csrrw x19, 0x60d, x23	// Restore CSR

// Testing CSR 0x60e
	csrr x5, 0x60e	// Read CSR
	li x21, -1
	csrrw x2, 0x60e, x21	// Write all 1s to CSR
	csrrw x2, 0x60e, x0	// Write all 0s to CSR
	csrrs x2, 0x60e, x21	// Set all CSR bits
	csrrc x2, 0x60e, x21	// Clear all CSR bits
	csrrw x2, 0x60e, x5	// Restore CSR

// Testing CSR 0x60f
	csrr x10, 0x60f	// Read CSR
	li x20, -1
	csrrw x15, 0x60f, x20	// Write all 1s to CSR
	csrrw x15, 0x60f, x0	// Write all 0s to CSR
	csrrs x15, 0x60f, x20	// Set all CSR bits
	csrrc x15, 0x60f, x20	// Clear all CSR bits
	csrrw x15, 0x60f, x10	// Restore CSR

// Testing CSR 0x610
	csrr x17, 0x610	// Read CSR
	li x25, -1
	csrrw x19, 0x610, x25	// Write all 1s to CSR
	csrrw x19, 0x610, x0	// Write all 0s to CSR
	csrrs x19, 0x610, x25	// Set all CSR bits
	csrrc x19, 0x610, x25	// Clear all CSR bits
	csrrw x19, 0x610, x17	// Restore CSR

// Testing CSR 0x611
	csrr x14, 0x611	// Read CSR
	li x7, -1
	csrrw x15, 0x611, x7	// Write all 1s to CSR
	csrrw x15, 0x611, x0	// Write all 0s to CSR
	csrrs x15, 0x611, x7	// Set all CSR bits
	csrrc x15, 0x611, x7	// Clear all CSR bits
	csrrw x15, 0x611, x14	// Restore CSR

// Testing CSR 0x612
	csrr x7, 0x612	// Read CSR
	li x13, -1
	csrrw x3, 0x612, x13	// Write all 1s to CSR
	csrrw x3, 0x612, x0	// Write all 0s to CSR
	csrrs x3, 0x612, x13	// Set all CSR bits
	csrrc x3, 0x612, x13	// Clear all CSR bits
	csrrw x3, 0x612, x7	// Restore CSR

// Testing CSR 0x613
	csrr x4, 0x613	// Read CSR
	li x18, -1
	csrrw x13, 0x613, x18	// Write all 1s to CSR
	csrrw x13, 0x613, x0	// Write all 0s to CSR
	csrrs x13, 0x613, x18	// Set all CSR bits
	csrrc x13, 0x613, x18	// Clear all CSR bits
	csrrw x13, 0x613, x4	// Restore CSR

// Testing CSR 0x614
	csrr x4, 0x614	// Read CSR
	li x17, -1
	csrrw x22, 0x614, x17	// Write all 1s to CSR
	csrrw x22, 0x614, x0	// Write all 0s to CSR
	csrrs x22, 0x614, x17	// Set all CSR bits
	csrrc x22, 0x614, x17	// Clear all CSR bits
	csrrw x22, 0x614, x4	// Restore CSR

// Testing CSR 0x615
	csrr x15, 0x615	// Read CSR
	li x24, -1
	csrrw x21, 0x615, x24	// Write all 1s to CSR
	csrrw x21, 0x615, x0	// Write all 0s to CSR
	csrrs x21, 0x615, x24	// Set all CSR bits
	csrrc x21, 0x615, x24	// Clear all CSR bits
	csrrw x21, 0x615, x15	// Restore CSR

// Testing CSR 0x616
	csrr x6, 0x616	// Read CSR
	li x2, -1
	csrrw x7, 0x616, x2	// Write all 1s to CSR
	csrrw x7, 0x616, x0	// Write all 0s to CSR
	csrrs x7, 0x616, x2	// Set all CSR bits
	csrrc x7, 0x616, x2	// Clear all CSR bits
	csrrw x7, 0x616, x6	// Restore CSR

// Testing CSR 0x617
	csrr x8, 0x617	// Read CSR
	li x20, -1
	csrrw x4, 0x617, x20	// Write all 1s to CSR
	csrrw x4, 0x617, x0	// Write all 0s to CSR
	csrrs x4, 0x617, x20	// Set all CSR bits
	csrrc x4, 0x617, x20	// Clear all CSR bits
	csrrw x4, 0x617, x8	// Restore CSR

// Testing CSR 0x618
	csrr x13, 0x618	// Read CSR
	li x14, -1
	csrrw x3, 0x618, x14	// Write all 1s to CSR
	csrrw x3, 0x618, x0	// Write all 0s to CSR
	csrrs x3, 0x618, x14	// Set all CSR bits
	csrrc x3, 0x618, x14	// Clear all CSR bits
	csrrw x3, 0x618, x13	// Restore CSR

// Testing CSR 0x619
	csrr x29, 0x619	// Read CSR
	li x27, -1
	csrrw x18, 0x619, x27	// Write all 1s to CSR
	csrrw x18, 0x619, x0	// Write all 0s to CSR
	csrrs x18, 0x619, x27	// Set all CSR bits
	csrrc x18, 0x619, x27	// Clear all CSR bits
	csrrw x18, 0x619, x29	// Restore CSR

// Testing CSR 0x61a
	csrr x7, 0x61a	// Read CSR
	li x17, -1
	csrrw x16, 0x61a, x17	// Write all 1s to CSR
	csrrw x16, 0x61a, x0	// Write all 0s to CSR
	csrrs x16, 0x61a, x17	// Set all CSR bits
	csrrc x16, 0x61a, x17	// Clear all CSR bits
	csrrw x16, 0x61a, x7	// Restore CSR

// Testing CSR 0x61b
	csrr x3, 0x61b	// Read CSR
	li x7, -1
	csrrw x30, 0x61b, x7	// Write all 1s to CSR
	csrrw x30, 0x61b, x0	// Write all 0s to CSR
	csrrs x30, 0x61b, x7	// Set all CSR bits
	csrrc x30, 0x61b, x7	// Clear all CSR bits
	csrrw x30, 0x61b, x3	// Restore CSR

// Testing CSR 0x61c
	csrr x28, 0x61c	// Read CSR
	li x4, -1
	csrrw x17, 0x61c, x4	// Write all 1s to CSR
	csrrw x17, 0x61c, x0	// Write all 0s to CSR
	csrrs x17, 0x61c, x4	// Set all CSR bits
	csrrc x17, 0x61c, x4	// Clear all CSR bits
	csrrw x17, 0x61c, x28	// Restore CSR

// Testing CSR 0x61d
	csrr x5, 0x61d	// Read CSR
	li x20, -1
	csrrw x7, 0x61d, x20	// Write all 1s to CSR
	csrrw x7, 0x61d, x0	// Write all 0s to CSR
	csrrs x7, 0x61d, x20	// Set all CSR bits
	csrrc x7, 0x61d, x20	// Clear all CSR bits
	csrrw x7, 0x61d, x5	// Restore CSR

// Testing CSR 0x61e
	csrr x18, 0x61e	// Read CSR
	li x19, -1
	csrrw x17, 0x61e, x19	// Write all 1s to CSR
	csrrw x17, 0x61e, x0	// Write all 0s to CSR
	csrrs x17, 0x61e, x19	// Set all CSR bits
	csrrc x17, 0x61e, x19	// Clear all CSR bits
	csrrw x17, 0x61e, x18	// Restore CSR

// Testing CSR 0x61f
	csrr x21, 0x61f	// Read CSR
	li x20, -1
	csrrw x14, 0x61f, x20	// Write all 1s to CSR
	csrrw x14, 0x61f, x0	// Write all 0s to CSR
	csrrs x14, 0x61f, x20	// Set all CSR bits
	csrrc x14, 0x61f, x20	// Clear all CSR bits
	csrrw x14, 0x61f, x21	// Restore CSR

// Testing CSR 0x620
	csrr x20, 0x620	// Read CSR
	li x13, -1
	csrrw x28, 0x620, x13	// Write all 1s to CSR
	csrrw x28, 0x620, x0	// Write all 0s to CSR
	csrrs x28, 0x620, x13	// Set all CSR bits
	csrrc x28, 0x620, x13	// Clear all CSR bits
	csrrw x28, 0x620, x20	// Restore CSR

// Testing CSR 0x621
	csrr x21, 0x621	// Read CSR
	li x30, -1
	csrrw x9, 0x621, x30	// Write all 1s to CSR
	csrrw x9, 0x621, x0	// Write all 0s to CSR
	csrrs x9, 0x621, x30	// Set all CSR bits
	csrrc x9, 0x621, x30	// Clear all CSR bits
	csrrw x9, 0x621, x21	// Restore CSR

// Testing CSR 0x622
	csrr x22, 0x622	// Read CSR
	li x26, -1
	csrrw x16, 0x622, x26	// Write all 1s to CSR
	csrrw x16, 0x622, x0	// Write all 0s to CSR
	csrrs x16, 0x622, x26	// Set all CSR bits
	csrrc x16, 0x622, x26	// Clear all CSR bits
	csrrw x16, 0x622, x22	// Restore CSR

// Testing CSR 0x623
	csrr x21, 0x623	// Read CSR
	li x26, -1
	csrrw x20, 0x623, x26	// Write all 1s to CSR
	csrrw x20, 0x623, x0	// Write all 0s to CSR
	csrrs x20, 0x623, x26	// Set all CSR bits
	csrrc x20, 0x623, x26	// Clear all CSR bits
	csrrw x20, 0x623, x21	// Restore CSR

// Testing CSR 0x624
	csrr x1, 0x624	// Read CSR
	li x12, -1
	csrrw x25, 0x624, x12	// Write all 1s to CSR
	csrrw x25, 0x624, x0	// Write all 0s to CSR
	csrrs x25, 0x624, x12	// Set all CSR bits
	csrrc x25, 0x624, x12	// Clear all CSR bits
	csrrw x25, 0x624, x1	// Restore CSR

// Testing CSR 0x625
	csrr x26, 0x625	// Read CSR
	li x7, -1
	csrrw x23, 0x625, x7	// Write all 1s to CSR
	csrrw x23, 0x625, x0	// Write all 0s to CSR
	csrrs x23, 0x625, x7	// Set all CSR bits
	csrrc x23, 0x625, x7	// Clear all CSR bits
	csrrw x23, 0x625, x26	// Restore CSR

// Testing CSR 0x626
	csrr x21, 0x626	// Read CSR
	li x2, -1
	csrrw x7, 0x626, x2	// Write all 1s to CSR
	csrrw x7, 0x626, x0	// Write all 0s to CSR
	csrrs x7, 0x626, x2	// Set all CSR bits
	csrrc x7, 0x626, x2	// Clear all CSR bits
	csrrw x7, 0x626, x21	// Restore CSR

// Testing CSR 0x627
	csrr x15, 0x627	// Read CSR
	li x7, -1
	csrrw x17, 0x627, x7	// Write all 1s to CSR
	csrrw x17, 0x627, x0	// Write all 0s to CSR
	csrrs x17, 0x627, x7	// Set all CSR bits
	csrrc x17, 0x627, x7	// Clear all CSR bits
	csrrw x17, 0x627, x15	// Restore CSR

// Testing CSR 0x628
	csrr x22, 0x628	// Read CSR
	li x7, -1
	csrrw x27, 0x628, x7	// Write all 1s to CSR
	csrrw x27, 0x628, x0	// Write all 0s to CSR
	csrrs x27, 0x628, x7	// Set all CSR bits
	csrrc x27, 0x628, x7	// Clear all CSR bits
	csrrw x27, 0x628, x22	// Restore CSR

// Testing CSR 0x629
	csrr x1, 0x629	// Read CSR
	li x5, -1
	csrrw x8, 0x629, x5	// Write all 1s to CSR
	csrrw x8, 0x629, x0	// Write all 0s to CSR
	csrrs x8, 0x629, x5	// Set all CSR bits
	csrrc x8, 0x629, x5	// Clear all CSR bits
	csrrw x8, 0x629, x1	// Restore CSR

// Testing CSR 0x62a
	csrr x15, 0x62a	// Read CSR
	li x16, -1
	csrrw x3, 0x62a, x16	// Write all 1s to CSR
	csrrw x3, 0x62a, x0	// Write all 0s to CSR
	csrrs x3, 0x62a, x16	// Set all CSR bits
	csrrc x3, 0x62a, x16	// Clear all CSR bits
	csrrw x3, 0x62a, x15	// Restore CSR

// Testing CSR 0x62b
	csrr x20, 0x62b	// Read CSR
	li x9, -1
	csrrw x27, 0x62b, x9	// Write all 1s to CSR
	csrrw x27, 0x62b, x0	// Write all 0s to CSR
	csrrs x27, 0x62b, x9	// Set all CSR bits
	csrrc x27, 0x62b, x9	// Clear all CSR bits
	csrrw x27, 0x62b, x20	// Restore CSR

// Testing CSR 0x62c
	csrr x21, 0x62c	// Read CSR
	li x10, -1
	csrrw x13, 0x62c, x10	// Write all 1s to CSR
	csrrw x13, 0x62c, x0	// Write all 0s to CSR
	csrrs x13, 0x62c, x10	// Set all CSR bits
	csrrc x13, 0x62c, x10	// Clear all CSR bits
	csrrw x13, 0x62c, x21	// Restore CSR

// Testing CSR 0x62d
	csrr x11, 0x62d	// Read CSR
	li x24, -1
	csrrw x30, 0x62d, x24	// Write all 1s to CSR
	csrrw x30, 0x62d, x0	// Write all 0s to CSR
	csrrs x30, 0x62d, x24	// Set all CSR bits
	csrrc x30, 0x62d, x24	// Clear all CSR bits
	csrrw x30, 0x62d, x11	// Restore CSR

// Testing CSR 0x62e
	csrr x22, 0x62e	// Read CSR
	li x29, -1
	csrrw x23, 0x62e, x29	// Write all 1s to CSR
	csrrw x23, 0x62e, x0	// Write all 0s to CSR
	csrrs x23, 0x62e, x29	// Set all CSR bits
	csrrc x23, 0x62e, x29	// Clear all CSR bits
	csrrw x23, 0x62e, x22	// Restore CSR

// Testing CSR 0x62f
	csrr x10, 0x62f	// Read CSR
	li x29, -1
	csrrw x22, 0x62f, x29	// Write all 1s to CSR
	csrrw x22, 0x62f, x0	// Write all 0s to CSR
	csrrs x22, 0x62f, x29	// Set all CSR bits
	csrrc x22, 0x62f, x29	// Clear all CSR bits
	csrrw x22, 0x62f, x10	// Restore CSR

// Testing CSR 0x630
	csrr x3, 0x630	// Read CSR
	li x20, -1
	csrrw x4, 0x630, x20	// Write all 1s to CSR
	csrrw x4, 0x630, x0	// Write all 0s to CSR
	csrrs x4, 0x630, x20	// Set all CSR bits
	csrrc x4, 0x630, x20	// Clear all CSR bits
	csrrw x4, 0x630, x3	// Restore CSR

// Testing CSR 0x631
	csrr x27, 0x631	// Read CSR
	li x16, -1
	csrrw x12, 0x631, x16	// Write all 1s to CSR
	csrrw x12, 0x631, x0	// Write all 0s to CSR
	csrrs x12, 0x631, x16	// Set all CSR bits
	csrrc x12, 0x631, x16	// Clear all CSR bits
	csrrw x12, 0x631, x27	// Restore CSR

// Testing CSR 0x632
	csrr x20, 0x632	// Read CSR
	li x3, -1
	csrrw x21, 0x632, x3	// Write all 1s to CSR
	csrrw x21, 0x632, x0	// Write all 0s to CSR
	csrrs x21, 0x632, x3	// Set all CSR bits
	csrrc x21, 0x632, x3	// Clear all CSR bits
	csrrw x21, 0x632, x20	// Restore CSR

// Testing CSR 0x633
	csrr x8, 0x633	// Read CSR
	li x28, -1
	csrrw x5, 0x633, x28	// Write all 1s to CSR
	csrrw x5, 0x633, x0	// Write all 0s to CSR
	csrrs x5, 0x633, x28	// Set all CSR bits
	csrrc x5, 0x633, x28	// Clear all CSR bits
	csrrw x5, 0x633, x8	// Restore CSR

// Testing CSR 0x634
	csrr x14, 0x634	// Read CSR
	li x30, -1
	csrrw x29, 0x634, x30	// Write all 1s to CSR
	csrrw x29, 0x634, x0	// Write all 0s to CSR
	csrrs x29, 0x634, x30	// Set all CSR bits
	csrrc x29, 0x634, x30	// Clear all CSR bits
	csrrw x29, 0x634, x14	// Restore CSR

// Testing CSR 0x635
	csrr x8, 0x635	// Read CSR
	li x28, -1
	csrrw x1, 0x635, x28	// Write all 1s to CSR
	csrrw x1, 0x635, x0	// Write all 0s to CSR
	csrrs x1, 0x635, x28	// Set all CSR bits
	csrrc x1, 0x635, x28	// Clear all CSR bits
	csrrw x1, 0x635, x8	// Restore CSR

// Testing CSR 0x636
	csrr x16, 0x636	// Read CSR
	li x10, -1
	csrrw x5, 0x636, x10	// Write all 1s to CSR
	csrrw x5, 0x636, x0	// Write all 0s to CSR
	csrrs x5, 0x636, x10	// Set all CSR bits
	csrrc x5, 0x636, x10	// Clear all CSR bits
	csrrw x5, 0x636, x16	// Restore CSR

// Testing CSR 0x637
	csrr x17, 0x637	// Read CSR
	li x28, -1
	csrrw x21, 0x637, x28	// Write all 1s to CSR
	csrrw x21, 0x637, x0	// Write all 0s to CSR
	csrrs x21, 0x637, x28	// Set all CSR bits
	csrrc x21, 0x637, x28	// Clear all CSR bits
	csrrw x21, 0x637, x17	// Restore CSR

// Testing CSR 0x638
	csrr x12, 0x638	// Read CSR
	li x24, -1
	csrrw x22, 0x638, x24	// Write all 1s to CSR
	csrrw x22, 0x638, x0	// Write all 0s to CSR
	csrrs x22, 0x638, x24	// Set all CSR bits
	csrrc x22, 0x638, x24	// Clear all CSR bits
	csrrw x22, 0x638, x12	// Restore CSR

// Testing CSR 0x639
	csrr x5, 0x639	// Read CSR
	li x4, -1
	csrrw x17, 0x639, x4	// Write all 1s to CSR
	csrrw x17, 0x639, x0	// Write all 0s to CSR
	csrrs x17, 0x639, x4	// Set all CSR bits
	csrrc x17, 0x639, x4	// Clear all CSR bits
	csrrw x17, 0x639, x5	// Restore CSR

// Testing CSR 0x63a
	csrr x11, 0x63a	// Read CSR
	li x24, -1
	csrrw x22, 0x63a, x24	// Write all 1s to CSR
	csrrw x22, 0x63a, x0	// Write all 0s to CSR
	csrrs x22, 0x63a, x24	// Set all CSR bits
	csrrc x22, 0x63a, x24	// Clear all CSR bits
	csrrw x22, 0x63a, x11	// Restore CSR

// Testing CSR 0x63b
	csrr x3, 0x63b	// Read CSR
	li x12, -1
	csrrw x29, 0x63b, x12	// Write all 1s to CSR
	csrrw x29, 0x63b, x0	// Write all 0s to CSR
	csrrs x29, 0x63b, x12	// Set all CSR bits
	csrrc x29, 0x63b, x12	// Clear all CSR bits
	csrrw x29, 0x63b, x3	// Restore CSR

// Testing CSR 0x63c
	csrr x26, 0x63c	// Read CSR
	li x27, -1
	csrrw x7, 0x63c, x27	// Write all 1s to CSR
	csrrw x7, 0x63c, x0	// Write all 0s to CSR
	csrrs x7, 0x63c, x27	// Set all CSR bits
	csrrc x7, 0x63c, x27	// Clear all CSR bits
	csrrw x7, 0x63c, x26	// Restore CSR

// Testing CSR 0x63d
	csrr x7, 0x63d	// Read CSR
	li x10, -1
	csrrw x17, 0x63d, x10	// Write all 1s to CSR
	csrrw x17, 0x63d, x0	// Write all 0s to CSR
	csrrs x17, 0x63d, x10	// Set all CSR bits
	csrrc x17, 0x63d, x10	// Clear all CSR bits
	csrrw x17, 0x63d, x7	// Restore CSR

// Testing CSR 0x63e
	csrr x23, 0x63e	// Read CSR
	li x14, -1
	csrrw x21, 0x63e, x14	// Write all 1s to CSR
	csrrw x21, 0x63e, x0	// Write all 0s to CSR
	csrrs x21, 0x63e, x14	// Set all CSR bits
	csrrc x21, 0x63e, x14	// Clear all CSR bits
	csrrw x21, 0x63e, x23	// Restore CSR

// Testing CSR 0x63f
	csrr x24, 0x63f	// Read CSR
	li x13, -1
	csrrw x2, 0x63f, x13	// Write all 1s to CSR
	csrrw x2, 0x63f, x0	// Write all 0s to CSR
	csrrs x2, 0x63f, x13	// Set all CSR bits
	csrrc x2, 0x63f, x13	// Clear all CSR bits
	csrrw x2, 0x63f, x24	// Restore CSR

// Testing CSR 0x640
	csrr x5, 0x640	// Read CSR
	li x15, -1
	csrrw x3, 0x640, x15	// Write all 1s to CSR
	csrrw x3, 0x640, x0	// Write all 0s to CSR
	csrrs x3, 0x640, x15	// Set all CSR bits
	csrrc x3, 0x640, x15	// Clear all CSR bits
	csrrw x3, 0x640, x5	// Restore CSR

// Testing CSR 0x641
	csrr x10, 0x641	// Read CSR
	li x21, -1
	csrrw x22, 0x641, x21	// Write all 1s to CSR
	csrrw x22, 0x641, x0	// Write all 0s to CSR
	csrrs x22, 0x641, x21	// Set all CSR bits
	csrrc x22, 0x641, x21	// Clear all CSR bits
	csrrw x22, 0x641, x10	// Restore CSR

// Testing CSR 0x642
	csrr x5, 0x642	// Read CSR
	li x17, -1
	csrrw x7, 0x642, x17	// Write all 1s to CSR
	csrrw x7, 0x642, x0	// Write all 0s to CSR
	csrrs x7, 0x642, x17	// Set all CSR bits
	csrrc x7, 0x642, x17	// Clear all CSR bits
	csrrw x7, 0x642, x5	// Restore CSR

// Testing CSR 0x643
	csrr x27, 0x643	// Read CSR
	li x20, -1
	csrrw x16, 0x643, x20	// Write all 1s to CSR
	csrrw x16, 0x643, x0	// Write all 0s to CSR
	csrrs x16, 0x643, x20	// Set all CSR bits
	csrrc x16, 0x643, x20	// Clear all CSR bits
	csrrw x16, 0x643, x27	// Restore CSR

// Testing CSR 0x644
	csrr x12, 0x644	// Read CSR
	li x5, -1
	csrrw x19, 0x644, x5	// Write all 1s to CSR
	csrrw x19, 0x644, x0	// Write all 0s to CSR
	csrrs x19, 0x644, x5	// Set all CSR bits
	csrrc x19, 0x644, x5	// Clear all CSR bits
	csrrw x19, 0x644, x12	// Restore CSR

// Testing CSR 0x645
	csrr x5, 0x645	// Read CSR
	li x29, -1
	csrrw x19, 0x645, x29	// Write all 1s to CSR
	csrrw x19, 0x645, x0	// Write all 0s to CSR
	csrrs x19, 0x645, x29	// Set all CSR bits
	csrrc x19, 0x645, x29	// Clear all CSR bits
	csrrw x19, 0x645, x5	// Restore CSR

// Testing CSR 0x646
	csrr x14, 0x646	// Read CSR
	li x9, -1
	csrrw x24, 0x646, x9	// Write all 1s to CSR
	csrrw x24, 0x646, x0	// Write all 0s to CSR
	csrrs x24, 0x646, x9	// Set all CSR bits
	csrrc x24, 0x646, x9	// Clear all CSR bits
	csrrw x24, 0x646, x14	// Restore CSR

// Testing CSR 0x647
	csrr x7, 0x647	// Read CSR
	li x4, -1
	csrrw x31, 0x647, x4	// Write all 1s to CSR
	csrrw x31, 0x647, x0	// Write all 0s to CSR
	csrrs x31, 0x647, x4	// Set all CSR bits
	csrrc x31, 0x647, x4	// Clear all CSR bits
	csrrw x31, 0x647, x7	// Restore CSR

// Testing CSR 0x648
	csrr x6, 0x648	// Read CSR
	li x5, -1
	csrrw x15, 0x648, x5	// Write all 1s to CSR
	csrrw x15, 0x648, x0	// Write all 0s to CSR
	csrrs x15, 0x648, x5	// Set all CSR bits
	csrrc x15, 0x648, x5	// Clear all CSR bits
	csrrw x15, 0x648, x6	// Restore CSR

// Testing CSR 0x649
	csrr x30, 0x649	// Read CSR
	li x28, -1
	csrrw x18, 0x649, x28	// Write all 1s to CSR
	csrrw x18, 0x649, x0	// Write all 0s to CSR
	csrrs x18, 0x649, x28	// Set all CSR bits
	csrrc x18, 0x649, x28	// Clear all CSR bits
	csrrw x18, 0x649, x30	// Restore CSR

// Testing CSR 0x64a
	csrr x14, 0x64a	// Read CSR
	li x30, -1
	csrrw x6, 0x64a, x30	// Write all 1s to CSR
	csrrw x6, 0x64a, x0	// Write all 0s to CSR
	csrrs x6, 0x64a, x30	// Set all CSR bits
	csrrc x6, 0x64a, x30	// Clear all CSR bits
	csrrw x6, 0x64a, x14	// Restore CSR

// Testing CSR 0x64b
	csrr x27, 0x64b	// Read CSR
	li x2, -1
	csrrw x10, 0x64b, x2	// Write all 1s to CSR
	csrrw x10, 0x64b, x0	// Write all 0s to CSR
	csrrs x10, 0x64b, x2	// Set all CSR bits
	csrrc x10, 0x64b, x2	// Clear all CSR bits
	csrrw x10, 0x64b, x27	// Restore CSR

// Testing CSR 0x64c
	csrr x25, 0x64c	// Read CSR
	li x16, -1
	csrrw x19, 0x64c, x16	// Write all 1s to CSR
	csrrw x19, 0x64c, x0	// Write all 0s to CSR
	csrrs x19, 0x64c, x16	// Set all CSR bits
	csrrc x19, 0x64c, x16	// Clear all CSR bits
	csrrw x19, 0x64c, x25	// Restore CSR

// Testing CSR 0x64d
	csrr x3, 0x64d	// Read CSR
	li x22, -1
	csrrw x12, 0x64d, x22	// Write all 1s to CSR
	csrrw x12, 0x64d, x0	// Write all 0s to CSR
	csrrs x12, 0x64d, x22	// Set all CSR bits
	csrrc x12, 0x64d, x22	// Clear all CSR bits
	csrrw x12, 0x64d, x3	// Restore CSR

// Testing CSR 0x64e
	csrr x21, 0x64e	// Read CSR
	li x30, -1
	csrrw x4, 0x64e, x30	// Write all 1s to CSR
	csrrw x4, 0x64e, x0	// Write all 0s to CSR
	csrrs x4, 0x64e, x30	// Set all CSR bits
	csrrc x4, 0x64e, x30	// Clear all CSR bits
	csrrw x4, 0x64e, x21	// Restore CSR

// Testing CSR 0x64f
	csrr x4, 0x64f	// Read CSR
	li x16, -1
	csrrw x8, 0x64f, x16	// Write all 1s to CSR
	csrrw x8, 0x64f, x0	// Write all 0s to CSR
	csrrs x8, 0x64f, x16	// Set all CSR bits
	csrrc x8, 0x64f, x16	// Clear all CSR bits
	csrrw x8, 0x64f, x4	// Restore CSR

// Testing CSR 0x650
	csrr x17, 0x650	// Read CSR
	li x2, -1
	csrrw x1, 0x650, x2	// Write all 1s to CSR
	csrrw x1, 0x650, x0	// Write all 0s to CSR
	csrrs x1, 0x650, x2	// Set all CSR bits
	csrrc x1, 0x650, x2	// Clear all CSR bits
	csrrw x1, 0x650, x17	// Restore CSR

// Testing CSR 0x651
	csrr x28, 0x651	// Read CSR
	li x23, -1
	csrrw x22, 0x651, x23	// Write all 1s to CSR
	csrrw x22, 0x651, x0	// Write all 0s to CSR
	csrrs x22, 0x651, x23	// Set all CSR bits
	csrrc x22, 0x651, x23	// Clear all CSR bits
	csrrw x22, 0x651, x28	// Restore CSR

// Testing CSR 0x652
	csrr x26, 0x652	// Read CSR
	li x19, -1
	csrrw x3, 0x652, x19	// Write all 1s to CSR
	csrrw x3, 0x652, x0	// Write all 0s to CSR
	csrrs x3, 0x652, x19	// Set all CSR bits
	csrrc x3, 0x652, x19	// Clear all CSR bits
	csrrw x3, 0x652, x26	// Restore CSR

// Testing CSR 0x653
	csrr x15, 0x653	// Read CSR
	li x27, -1
	csrrw x9, 0x653, x27	// Write all 1s to CSR
	csrrw x9, 0x653, x0	// Write all 0s to CSR
	csrrs x9, 0x653, x27	// Set all CSR bits
	csrrc x9, 0x653, x27	// Clear all CSR bits
	csrrw x9, 0x653, x15	// Restore CSR

// Testing CSR 0x654
	csrr x24, 0x654	// Read CSR
	li x19, -1
	csrrw x9, 0x654, x19	// Write all 1s to CSR
	csrrw x9, 0x654, x0	// Write all 0s to CSR
	csrrs x9, 0x654, x19	// Set all CSR bits
	csrrc x9, 0x654, x19	// Clear all CSR bits
	csrrw x9, 0x654, x24	// Restore CSR

// Testing CSR 0x655
	csrr x23, 0x655	// Read CSR
	li x18, -1
	csrrw x26, 0x655, x18	// Write all 1s to CSR
	csrrw x26, 0x655, x0	// Write all 0s to CSR
	csrrs x26, 0x655, x18	// Set all CSR bits
	csrrc x26, 0x655, x18	// Clear all CSR bits
	csrrw x26, 0x655, x23	// Restore CSR

// Testing CSR 0x656
	csrr x13, 0x656	// Read CSR
	li x6, -1
	csrrw x8, 0x656, x6	// Write all 1s to CSR
	csrrw x8, 0x656, x0	// Write all 0s to CSR
	csrrs x8, 0x656, x6	// Set all CSR bits
	csrrc x8, 0x656, x6	// Clear all CSR bits
	csrrw x8, 0x656, x13	// Restore CSR

// Testing CSR 0x657
	csrr x21, 0x657	// Read CSR
	li x4, -1
	csrrw x22, 0x657, x4	// Write all 1s to CSR
	csrrw x22, 0x657, x0	// Write all 0s to CSR
	csrrs x22, 0x657, x4	// Set all CSR bits
	csrrc x22, 0x657, x4	// Clear all CSR bits
	csrrw x22, 0x657, x21	// Restore CSR

// Testing CSR 0x658
	csrr x27, 0x658	// Read CSR
	li x19, -1
	csrrw x31, 0x658, x19	// Write all 1s to CSR
	csrrw x31, 0x658, x0	// Write all 0s to CSR
	csrrs x31, 0x658, x19	// Set all CSR bits
	csrrc x31, 0x658, x19	// Clear all CSR bits
	csrrw x31, 0x658, x27	// Restore CSR

// Testing CSR 0x659
	csrr x24, 0x659	// Read CSR
	li x25, -1
	csrrw x17, 0x659, x25	// Write all 1s to CSR
	csrrw x17, 0x659, x0	// Write all 0s to CSR
	csrrs x17, 0x659, x25	// Set all CSR bits
	csrrc x17, 0x659, x25	// Clear all CSR bits
	csrrw x17, 0x659, x24	// Restore CSR

// Testing CSR 0x65a
	csrr x6, 0x65a	// Read CSR
	li x31, -1
	csrrw x16, 0x65a, x31	// Write all 1s to CSR
	csrrw x16, 0x65a, x0	// Write all 0s to CSR
	csrrs x16, 0x65a, x31	// Set all CSR bits
	csrrc x16, 0x65a, x31	// Clear all CSR bits
	csrrw x16, 0x65a, x6	// Restore CSR

// Testing CSR 0x65b
	csrr x21, 0x65b	// Read CSR
	li x30, -1
	csrrw x8, 0x65b, x30	// Write all 1s to CSR
	csrrw x8, 0x65b, x0	// Write all 0s to CSR
	csrrs x8, 0x65b, x30	// Set all CSR bits
	csrrc x8, 0x65b, x30	// Clear all CSR bits
	csrrw x8, 0x65b, x21	// Restore CSR

// Testing CSR 0x65c
	csrr x1, 0x65c	// Read CSR
	li x8, -1
	csrrw x5, 0x65c, x8	// Write all 1s to CSR
	csrrw x5, 0x65c, x0	// Write all 0s to CSR
	csrrs x5, 0x65c, x8	// Set all CSR bits
	csrrc x5, 0x65c, x8	// Clear all CSR bits
	csrrw x5, 0x65c, x1	// Restore CSR

// Testing CSR 0x65d
	csrr x23, 0x65d	// Read CSR
	li x20, -1
	csrrw x22, 0x65d, x20	// Write all 1s to CSR
	csrrw x22, 0x65d, x0	// Write all 0s to CSR
	csrrs x22, 0x65d, x20	// Set all CSR bits
	csrrc x22, 0x65d, x20	// Clear all CSR bits
	csrrw x22, 0x65d, x23	// Restore CSR

// Testing CSR 0x65e
	csrr x25, 0x65e	// Read CSR
	li x28, -1
	csrrw x5, 0x65e, x28	// Write all 1s to CSR
	csrrw x5, 0x65e, x0	// Write all 0s to CSR
	csrrs x5, 0x65e, x28	// Set all CSR bits
	csrrc x5, 0x65e, x28	// Clear all CSR bits
	csrrw x5, 0x65e, x25	// Restore CSR

// Testing CSR 0x65f
	csrr x28, 0x65f	// Read CSR
	li x21, -1
	csrrw x5, 0x65f, x21	// Write all 1s to CSR
	csrrw x5, 0x65f, x0	// Write all 0s to CSR
	csrrs x5, 0x65f, x21	// Set all CSR bits
	csrrc x5, 0x65f, x21	// Clear all CSR bits
	csrrw x5, 0x65f, x28	// Restore CSR

// Testing CSR 0x660
	csrr x28, 0x660	// Read CSR
	li x25, -1
	csrrw x26, 0x660, x25	// Write all 1s to CSR
	csrrw x26, 0x660, x0	// Write all 0s to CSR
	csrrs x26, 0x660, x25	// Set all CSR bits
	csrrc x26, 0x660, x25	// Clear all CSR bits
	csrrw x26, 0x660, x28	// Restore CSR

// Testing CSR 0x661
	csrr x27, 0x661	// Read CSR
	li x19, -1
	csrrw x20, 0x661, x19	// Write all 1s to CSR
	csrrw x20, 0x661, x0	// Write all 0s to CSR
	csrrs x20, 0x661, x19	// Set all CSR bits
	csrrc x20, 0x661, x19	// Clear all CSR bits
	csrrw x20, 0x661, x27	// Restore CSR

// Testing CSR 0x662
	csrr x6, 0x662	// Read CSR
	li x3, -1
	csrrw x4, 0x662, x3	// Write all 1s to CSR
	csrrw x4, 0x662, x0	// Write all 0s to CSR
	csrrs x4, 0x662, x3	// Set all CSR bits
	csrrc x4, 0x662, x3	// Clear all CSR bits
	csrrw x4, 0x662, x6	// Restore CSR

// Testing CSR 0x663
	csrr x9, 0x663	// Read CSR
	li x4, -1
	csrrw x20, 0x663, x4	// Write all 1s to CSR
	csrrw x20, 0x663, x0	// Write all 0s to CSR
	csrrs x20, 0x663, x4	// Set all CSR bits
	csrrc x20, 0x663, x4	// Clear all CSR bits
	csrrw x20, 0x663, x9	// Restore CSR

// Testing CSR 0x664
	csrr x15, 0x664	// Read CSR
	li x19, -1
	csrrw x25, 0x664, x19	// Write all 1s to CSR
	csrrw x25, 0x664, x0	// Write all 0s to CSR
	csrrs x25, 0x664, x19	// Set all CSR bits
	csrrc x25, 0x664, x19	// Clear all CSR bits
	csrrw x25, 0x664, x15	// Restore CSR

// Testing CSR 0x665
	csrr x9, 0x665	// Read CSR
	li x19, -1
	csrrw x14, 0x665, x19	// Write all 1s to CSR
	csrrw x14, 0x665, x0	// Write all 0s to CSR
	csrrs x14, 0x665, x19	// Set all CSR bits
	csrrc x14, 0x665, x19	// Clear all CSR bits
	csrrw x14, 0x665, x9	// Restore CSR

// Testing CSR 0x666
	csrr x2, 0x666	// Read CSR
	li x23, -1
	csrrw x3, 0x666, x23	// Write all 1s to CSR
	csrrw x3, 0x666, x0	// Write all 0s to CSR
	csrrs x3, 0x666, x23	// Set all CSR bits
	csrrc x3, 0x666, x23	// Clear all CSR bits
	csrrw x3, 0x666, x2	// Restore CSR

// Testing CSR 0x667
	csrr x5, 0x667	// Read CSR
	li x27, -1
	csrrw x15, 0x667, x27	// Write all 1s to CSR
	csrrw x15, 0x667, x0	// Write all 0s to CSR
	csrrs x15, 0x667, x27	// Set all CSR bits
	csrrc x15, 0x667, x27	// Clear all CSR bits
	csrrw x15, 0x667, x5	// Restore CSR

// Testing CSR 0x668
	csrr x2, 0x668	// Read CSR
	li x12, -1
	csrrw x11, 0x668, x12	// Write all 1s to CSR
	csrrw x11, 0x668, x0	// Write all 0s to CSR
	csrrs x11, 0x668, x12	// Set all CSR bits
	csrrc x11, 0x668, x12	// Clear all CSR bits
	csrrw x11, 0x668, x2	// Restore CSR

// Testing CSR 0x669
	csrr x9, 0x669	// Read CSR
	li x21, -1
	csrrw x14, 0x669, x21	// Write all 1s to CSR
	csrrw x14, 0x669, x0	// Write all 0s to CSR
	csrrs x14, 0x669, x21	// Set all CSR bits
	csrrc x14, 0x669, x21	// Clear all CSR bits
	csrrw x14, 0x669, x9	// Restore CSR

// Testing CSR 0x66a
	csrr x13, 0x66a	// Read CSR
	li x29, -1
	csrrw x1, 0x66a, x29	// Write all 1s to CSR
	csrrw x1, 0x66a, x0	// Write all 0s to CSR
	csrrs x1, 0x66a, x29	// Set all CSR bits
	csrrc x1, 0x66a, x29	// Clear all CSR bits
	csrrw x1, 0x66a, x13	// Restore CSR

// Testing CSR 0x66b
	csrr x10, 0x66b	// Read CSR
	li x21, -1
	csrrw x8, 0x66b, x21	// Write all 1s to CSR
	csrrw x8, 0x66b, x0	// Write all 0s to CSR
	csrrs x8, 0x66b, x21	// Set all CSR bits
	csrrc x8, 0x66b, x21	// Clear all CSR bits
	csrrw x8, 0x66b, x10	// Restore CSR

// Testing CSR 0x66c
	csrr x7, 0x66c	// Read CSR
	li x25, -1
	csrrw x3, 0x66c, x25	// Write all 1s to CSR
	csrrw x3, 0x66c, x0	// Write all 0s to CSR
	csrrs x3, 0x66c, x25	// Set all CSR bits
	csrrc x3, 0x66c, x25	// Clear all CSR bits
	csrrw x3, 0x66c, x7	// Restore CSR

// Testing CSR 0x66d
	csrr x19, 0x66d	// Read CSR
	li x24, -1
	csrrw x5, 0x66d, x24	// Write all 1s to CSR
	csrrw x5, 0x66d, x0	// Write all 0s to CSR
	csrrs x5, 0x66d, x24	// Set all CSR bits
	csrrc x5, 0x66d, x24	// Clear all CSR bits
	csrrw x5, 0x66d, x19	// Restore CSR

// Testing CSR 0x66e
	csrr x8, 0x66e	// Read CSR
	li x28, -1
	csrrw x17, 0x66e, x28	// Write all 1s to CSR
	csrrw x17, 0x66e, x0	// Write all 0s to CSR
	csrrs x17, 0x66e, x28	// Set all CSR bits
	csrrc x17, 0x66e, x28	// Clear all CSR bits
	csrrw x17, 0x66e, x8	// Restore CSR

// Testing CSR 0x66f
	csrr x7, 0x66f	// Read CSR
	li x15, -1
	csrrw x11, 0x66f, x15	// Write all 1s to CSR
	csrrw x11, 0x66f, x0	// Write all 0s to CSR
	csrrs x11, 0x66f, x15	// Set all CSR bits
	csrrc x11, 0x66f, x15	// Clear all CSR bits
	csrrw x11, 0x66f, x7	// Restore CSR

// Testing CSR 0x670
	csrr x28, 0x670	// Read CSR
	li x1, -1
	csrrw x25, 0x670, x1	// Write all 1s to CSR
	csrrw x25, 0x670, x0	// Write all 0s to CSR
	csrrs x25, 0x670, x1	// Set all CSR bits
	csrrc x25, 0x670, x1	// Clear all CSR bits
	csrrw x25, 0x670, x28	// Restore CSR

// Testing CSR 0x671
	csrr x9, 0x671	// Read CSR
	li x14, -1
	csrrw x19, 0x671, x14	// Write all 1s to CSR
	csrrw x19, 0x671, x0	// Write all 0s to CSR
	csrrs x19, 0x671, x14	// Set all CSR bits
	csrrc x19, 0x671, x14	// Clear all CSR bits
	csrrw x19, 0x671, x9	// Restore CSR

// Testing CSR 0x672
	csrr x17, 0x672	// Read CSR
	li x18, -1
	csrrw x5, 0x672, x18	// Write all 1s to CSR
	csrrw x5, 0x672, x0	// Write all 0s to CSR
	csrrs x5, 0x672, x18	// Set all CSR bits
	csrrc x5, 0x672, x18	// Clear all CSR bits
	csrrw x5, 0x672, x17	// Restore CSR

// Testing CSR 0x673
	csrr x23, 0x673	// Read CSR
	li x11, -1
	csrrw x19, 0x673, x11	// Write all 1s to CSR
	csrrw x19, 0x673, x0	// Write all 0s to CSR
	csrrs x19, 0x673, x11	// Set all CSR bits
	csrrc x19, 0x673, x11	// Clear all CSR bits
	csrrw x19, 0x673, x23	// Restore CSR

// Testing CSR 0x674
	csrr x21, 0x674	// Read CSR
	li x18, -1
	csrrw x13, 0x674, x18	// Write all 1s to CSR
	csrrw x13, 0x674, x0	// Write all 0s to CSR
	csrrs x13, 0x674, x18	// Set all CSR bits
	csrrc x13, 0x674, x18	// Clear all CSR bits
	csrrw x13, 0x674, x21	// Restore CSR

// Testing CSR 0x675
	csrr x30, 0x675	// Read CSR
	li x7, -1
	csrrw x10, 0x675, x7	// Write all 1s to CSR
	csrrw x10, 0x675, x0	// Write all 0s to CSR
	csrrs x10, 0x675, x7	// Set all CSR bits
	csrrc x10, 0x675, x7	// Clear all CSR bits
	csrrw x10, 0x675, x30	// Restore CSR

// Testing CSR 0x676
	csrr x4, 0x676	// Read CSR
	li x15, -1
	csrrw x21, 0x676, x15	// Write all 1s to CSR
	csrrw x21, 0x676, x0	// Write all 0s to CSR
	csrrs x21, 0x676, x15	// Set all CSR bits
	csrrc x21, 0x676, x15	// Clear all CSR bits
	csrrw x21, 0x676, x4	// Restore CSR

// Testing CSR 0x677
	csrr x21, 0x677	// Read CSR
	li x9, -1
	csrrw x8, 0x677, x9	// Write all 1s to CSR
	csrrw x8, 0x677, x0	// Write all 0s to CSR
	csrrs x8, 0x677, x9	// Set all CSR bits
	csrrc x8, 0x677, x9	// Clear all CSR bits
	csrrw x8, 0x677, x21	// Restore CSR

// Testing CSR 0x678
	csrr x26, 0x678	// Read CSR
	li x21, -1
	csrrw x9, 0x678, x21	// Write all 1s to CSR
	csrrw x9, 0x678, x0	// Write all 0s to CSR
	csrrs x9, 0x678, x21	// Set all CSR bits
	csrrc x9, 0x678, x21	// Clear all CSR bits
	csrrw x9, 0x678, x26	// Restore CSR

// Testing CSR 0x679
	csrr x29, 0x679	// Read CSR
	li x25, -1
	csrrw x10, 0x679, x25	// Write all 1s to CSR
	csrrw x10, 0x679, x0	// Write all 0s to CSR
	csrrs x10, 0x679, x25	// Set all CSR bits
	csrrc x10, 0x679, x25	// Clear all CSR bits
	csrrw x10, 0x679, x29	// Restore CSR

// Testing CSR 0x67a
	csrr x3, 0x67a	// Read CSR
	li x12, -1
	csrrw x5, 0x67a, x12	// Write all 1s to CSR
	csrrw x5, 0x67a, x0	// Write all 0s to CSR
	csrrs x5, 0x67a, x12	// Set all CSR bits
	csrrc x5, 0x67a, x12	// Clear all CSR bits
	csrrw x5, 0x67a, x3	// Restore CSR

// Testing CSR 0x67b
	csrr x15, 0x67b	// Read CSR
	li x1, -1
	csrrw x13, 0x67b, x1	// Write all 1s to CSR
	csrrw x13, 0x67b, x0	// Write all 0s to CSR
	csrrs x13, 0x67b, x1	// Set all CSR bits
	csrrc x13, 0x67b, x1	// Clear all CSR bits
	csrrw x13, 0x67b, x15	// Restore CSR

// Testing CSR 0x67c
	csrr x31, 0x67c	// Read CSR
	li x21, -1
	csrrw x15, 0x67c, x21	// Write all 1s to CSR
	csrrw x15, 0x67c, x0	// Write all 0s to CSR
	csrrs x15, 0x67c, x21	// Set all CSR bits
	csrrc x15, 0x67c, x21	// Clear all CSR bits
	csrrw x15, 0x67c, x31	// Restore CSR

// Testing CSR 0x67d
	csrr x2, 0x67d	// Read CSR
	li x21, -1
	csrrw x25, 0x67d, x21	// Write all 1s to CSR
	csrrw x25, 0x67d, x0	// Write all 0s to CSR
	csrrs x25, 0x67d, x21	// Set all CSR bits
	csrrc x25, 0x67d, x21	// Clear all CSR bits
	csrrw x25, 0x67d, x2	// Restore CSR

// Testing CSR 0x67e
	csrr x25, 0x67e	// Read CSR
	li x10, -1
	csrrw x17, 0x67e, x10	// Write all 1s to CSR
	csrrw x17, 0x67e, x0	// Write all 0s to CSR
	csrrs x17, 0x67e, x10	// Set all CSR bits
	csrrc x17, 0x67e, x10	// Clear all CSR bits
	csrrw x17, 0x67e, x25	// Restore CSR

// Testing CSR 0x67f
	csrr x20, 0x67f	// Read CSR
	li x25, -1
	csrrw x14, 0x67f, x25	// Write all 1s to CSR
	csrrw x14, 0x67f, x0	// Write all 0s to CSR
	csrrs x14, 0x67f, x25	// Set all CSR bits
	csrrc x14, 0x67f, x25	// Clear all CSR bits
	csrrw x14, 0x67f, x20	// Restore CSR

// Testing CSR 0x680
	csrr x15, 0x680	// Read CSR
	li x20, -1
	csrrw x27, 0x680, x20	// Write all 1s to CSR
	csrrw x27, 0x680, x0	// Write all 0s to CSR
	csrrs x27, 0x680, x20	// Set all CSR bits
	csrrc x27, 0x680, x20	// Clear all CSR bits
	csrrw x27, 0x680, x15	// Restore CSR

// Testing CSR 0x681
	csrr x19, 0x681	// Read CSR
	li x24, -1
	csrrw x17, 0x681, x24	// Write all 1s to CSR
	csrrw x17, 0x681, x0	// Write all 0s to CSR
	csrrs x17, 0x681, x24	// Set all CSR bits
	csrrc x17, 0x681, x24	// Clear all CSR bits
	csrrw x17, 0x681, x19	// Restore CSR

// Testing CSR 0x682
	csrr x7, 0x682	// Read CSR
	li x6, -1
	csrrw x27, 0x682, x6	// Write all 1s to CSR
	csrrw x27, 0x682, x0	// Write all 0s to CSR
	csrrs x27, 0x682, x6	// Set all CSR bits
	csrrc x27, 0x682, x6	// Clear all CSR bits
	csrrw x27, 0x682, x7	// Restore CSR

// Testing CSR 0x683
	csrr x1, 0x683	// Read CSR
	li x9, -1
	csrrw x4, 0x683, x9	// Write all 1s to CSR
	csrrw x4, 0x683, x0	// Write all 0s to CSR
	csrrs x4, 0x683, x9	// Set all CSR bits
	csrrc x4, 0x683, x9	// Clear all CSR bits
	csrrw x4, 0x683, x1	// Restore CSR

// Testing CSR 0x684
	csrr x27, 0x684	// Read CSR
	li x13, -1
	csrrw x23, 0x684, x13	// Write all 1s to CSR
	csrrw x23, 0x684, x0	// Write all 0s to CSR
	csrrs x23, 0x684, x13	// Set all CSR bits
	csrrc x23, 0x684, x13	// Clear all CSR bits
	csrrw x23, 0x684, x27	// Restore CSR

// Testing CSR 0x685
	csrr x9, 0x685	// Read CSR
	li x7, -1
	csrrw x16, 0x685, x7	// Write all 1s to CSR
	csrrw x16, 0x685, x0	// Write all 0s to CSR
	csrrs x16, 0x685, x7	// Set all CSR bits
	csrrc x16, 0x685, x7	// Clear all CSR bits
	csrrw x16, 0x685, x9	// Restore CSR

// Testing CSR 0x686
	csrr x29, 0x686	// Read CSR
	li x16, -1
	csrrw x9, 0x686, x16	// Write all 1s to CSR
	csrrw x9, 0x686, x0	// Write all 0s to CSR
	csrrs x9, 0x686, x16	// Set all CSR bits
	csrrc x9, 0x686, x16	// Clear all CSR bits
	csrrw x9, 0x686, x29	// Restore CSR

// Testing CSR 0x687
	csrr x17, 0x687	// Read CSR
	li x13, -1
	csrrw x5, 0x687, x13	// Write all 1s to CSR
	csrrw x5, 0x687, x0	// Write all 0s to CSR
	csrrs x5, 0x687, x13	// Set all CSR bits
	csrrc x5, 0x687, x13	// Clear all CSR bits
	csrrw x5, 0x687, x17	// Restore CSR

// Testing CSR 0x688
	csrr x20, 0x688	// Read CSR
	li x16, -1
	csrrw x9, 0x688, x16	// Write all 1s to CSR
	csrrw x9, 0x688, x0	// Write all 0s to CSR
	csrrs x9, 0x688, x16	// Set all CSR bits
	csrrc x9, 0x688, x16	// Clear all CSR bits
	csrrw x9, 0x688, x20	// Restore CSR

// Testing CSR 0x689
	csrr x31, 0x689	// Read CSR
	li x28, -1
	csrrw x6, 0x689, x28	// Write all 1s to CSR
	csrrw x6, 0x689, x0	// Write all 0s to CSR
	csrrs x6, 0x689, x28	// Set all CSR bits
	csrrc x6, 0x689, x28	// Clear all CSR bits
	csrrw x6, 0x689, x31	// Restore CSR

// Testing CSR 0x68a
	csrr x23, 0x68a	// Read CSR
	li x1, -1
	csrrw x7, 0x68a, x1	// Write all 1s to CSR
	csrrw x7, 0x68a, x0	// Write all 0s to CSR
	csrrs x7, 0x68a, x1	// Set all CSR bits
	csrrc x7, 0x68a, x1	// Clear all CSR bits
	csrrw x7, 0x68a, x23	// Restore CSR

// Testing CSR 0x68b
	csrr x11, 0x68b	// Read CSR
	li x9, -1
	csrrw x23, 0x68b, x9	// Write all 1s to CSR
	csrrw x23, 0x68b, x0	// Write all 0s to CSR
	csrrs x23, 0x68b, x9	// Set all CSR bits
	csrrc x23, 0x68b, x9	// Clear all CSR bits
	csrrw x23, 0x68b, x11	// Restore CSR

// Testing CSR 0x68c
	csrr x23, 0x68c	// Read CSR
	li x28, -1
	csrrw x27, 0x68c, x28	// Write all 1s to CSR
	csrrw x27, 0x68c, x0	// Write all 0s to CSR
	csrrs x27, 0x68c, x28	// Set all CSR bits
	csrrc x27, 0x68c, x28	// Clear all CSR bits
	csrrw x27, 0x68c, x23	// Restore CSR

// Testing CSR 0x68d
	csrr x4, 0x68d	// Read CSR
	li x22, -1
	csrrw x1, 0x68d, x22	// Write all 1s to CSR
	csrrw x1, 0x68d, x0	// Write all 0s to CSR
	csrrs x1, 0x68d, x22	// Set all CSR bits
	csrrc x1, 0x68d, x22	// Clear all CSR bits
	csrrw x1, 0x68d, x4	// Restore CSR

// Testing CSR 0x68e
	csrr x14, 0x68e	// Read CSR
	li x10, -1
	csrrw x11, 0x68e, x10	// Write all 1s to CSR
	csrrw x11, 0x68e, x0	// Write all 0s to CSR
	csrrs x11, 0x68e, x10	// Set all CSR bits
	csrrc x11, 0x68e, x10	// Clear all CSR bits
	csrrw x11, 0x68e, x14	// Restore CSR

// Testing CSR 0x68f
	csrr x20, 0x68f	// Read CSR
	li x24, -1
	csrrw x30, 0x68f, x24	// Write all 1s to CSR
	csrrw x30, 0x68f, x0	// Write all 0s to CSR
	csrrs x30, 0x68f, x24	// Set all CSR bits
	csrrc x30, 0x68f, x24	// Clear all CSR bits
	csrrw x30, 0x68f, x20	// Restore CSR

// Testing CSR 0x690
	csrr x7, 0x690	// Read CSR
	li x11, -1
	csrrw x14, 0x690, x11	// Write all 1s to CSR
	csrrw x14, 0x690, x0	// Write all 0s to CSR
	csrrs x14, 0x690, x11	// Set all CSR bits
	csrrc x14, 0x690, x11	// Clear all CSR bits
	csrrw x14, 0x690, x7	// Restore CSR

// Testing CSR 0x691
	csrr x25, 0x691	// Read CSR
	li x30, -1
	csrrw x5, 0x691, x30	// Write all 1s to CSR
	csrrw x5, 0x691, x0	// Write all 0s to CSR
	csrrs x5, 0x691, x30	// Set all CSR bits
	csrrc x5, 0x691, x30	// Clear all CSR bits
	csrrw x5, 0x691, x25	// Restore CSR

// Testing CSR 0x692
	csrr x31, 0x692	// Read CSR
	li x21, -1
	csrrw x4, 0x692, x21	// Write all 1s to CSR
	csrrw x4, 0x692, x0	// Write all 0s to CSR
	csrrs x4, 0x692, x21	// Set all CSR bits
	csrrc x4, 0x692, x21	// Clear all CSR bits
	csrrw x4, 0x692, x31	// Restore CSR

// Testing CSR 0x693
	csrr x8, 0x693	// Read CSR
	li x12, -1
	csrrw x25, 0x693, x12	// Write all 1s to CSR
	csrrw x25, 0x693, x0	// Write all 0s to CSR
	csrrs x25, 0x693, x12	// Set all CSR bits
	csrrc x25, 0x693, x12	// Clear all CSR bits
	csrrw x25, 0x693, x8	// Restore CSR

// Testing CSR 0x694
	csrr x24, 0x694	// Read CSR
	li x30, -1
	csrrw x16, 0x694, x30	// Write all 1s to CSR
	csrrw x16, 0x694, x0	// Write all 0s to CSR
	csrrs x16, 0x694, x30	// Set all CSR bits
	csrrc x16, 0x694, x30	// Clear all CSR bits
	csrrw x16, 0x694, x24	// Restore CSR

// Testing CSR 0x695
	csrr x15, 0x695	// Read CSR
	li x6, -1
	csrrw x22, 0x695, x6	// Write all 1s to CSR
	csrrw x22, 0x695, x0	// Write all 0s to CSR
	csrrs x22, 0x695, x6	// Set all CSR bits
	csrrc x22, 0x695, x6	// Clear all CSR bits
	csrrw x22, 0x695, x15	// Restore CSR

// Testing CSR 0x696
	csrr x27, 0x696	// Read CSR
	li x12, -1
	csrrw x14, 0x696, x12	// Write all 1s to CSR
	csrrw x14, 0x696, x0	// Write all 0s to CSR
	csrrs x14, 0x696, x12	// Set all CSR bits
	csrrc x14, 0x696, x12	// Clear all CSR bits
	csrrw x14, 0x696, x27	// Restore CSR

// Testing CSR 0x697
	csrr x28, 0x697	// Read CSR
	li x14, -1
	csrrw x12, 0x697, x14	// Write all 1s to CSR
	csrrw x12, 0x697, x0	// Write all 0s to CSR
	csrrs x12, 0x697, x14	// Set all CSR bits
	csrrc x12, 0x697, x14	// Clear all CSR bits
	csrrw x12, 0x697, x28	// Restore CSR

// Testing CSR 0x698
	csrr x19, 0x698	// Read CSR
	li x4, -1
	csrrw x3, 0x698, x4	// Write all 1s to CSR
	csrrw x3, 0x698, x0	// Write all 0s to CSR
	csrrs x3, 0x698, x4	// Set all CSR bits
	csrrc x3, 0x698, x4	// Clear all CSR bits
	csrrw x3, 0x698, x19	// Restore CSR

// Testing CSR 0x699
	csrr x18, 0x699	// Read CSR
	li x26, -1
	csrrw x15, 0x699, x26	// Write all 1s to CSR
	csrrw x15, 0x699, x0	// Write all 0s to CSR
	csrrs x15, 0x699, x26	// Set all CSR bits
	csrrc x15, 0x699, x26	// Clear all CSR bits
	csrrw x15, 0x699, x18	// Restore CSR

// Testing CSR 0x69a
	csrr x5, 0x69a	// Read CSR
	li x4, -1
	csrrw x1, 0x69a, x4	// Write all 1s to CSR
	csrrw x1, 0x69a, x0	// Write all 0s to CSR
	csrrs x1, 0x69a, x4	// Set all CSR bits
	csrrc x1, 0x69a, x4	// Clear all CSR bits
	csrrw x1, 0x69a, x5	// Restore CSR

// Testing CSR 0x69b
	csrr x31, 0x69b	// Read CSR
	li x26, -1
	csrrw x17, 0x69b, x26	// Write all 1s to CSR
	csrrw x17, 0x69b, x0	// Write all 0s to CSR
	csrrs x17, 0x69b, x26	// Set all CSR bits
	csrrc x17, 0x69b, x26	// Clear all CSR bits
	csrrw x17, 0x69b, x31	// Restore CSR

// Testing CSR 0x69c
	csrr x28, 0x69c	// Read CSR
	li x23, -1
	csrrw x13, 0x69c, x23	// Write all 1s to CSR
	csrrw x13, 0x69c, x0	// Write all 0s to CSR
	csrrs x13, 0x69c, x23	// Set all CSR bits
	csrrc x13, 0x69c, x23	// Clear all CSR bits
	csrrw x13, 0x69c, x28	// Restore CSR

// Testing CSR 0x69d
	csrr x21, 0x69d	// Read CSR
	li x16, -1
	csrrw x8, 0x69d, x16	// Write all 1s to CSR
	csrrw x8, 0x69d, x0	// Write all 0s to CSR
	csrrs x8, 0x69d, x16	// Set all CSR bits
	csrrc x8, 0x69d, x16	// Clear all CSR bits
	csrrw x8, 0x69d, x21	// Restore CSR

// Testing CSR 0x69e
	csrr x13, 0x69e	// Read CSR
	li x21, -1
	csrrw x24, 0x69e, x21	// Write all 1s to CSR
	csrrw x24, 0x69e, x0	// Write all 0s to CSR
	csrrs x24, 0x69e, x21	// Set all CSR bits
	csrrc x24, 0x69e, x21	// Clear all CSR bits
	csrrw x24, 0x69e, x13	// Restore CSR

// Testing CSR 0x69f
	csrr x4, 0x69f	// Read CSR
	li x14, -1
	csrrw x2, 0x69f, x14	// Write all 1s to CSR
	csrrw x2, 0x69f, x0	// Write all 0s to CSR
	csrrs x2, 0x69f, x14	// Set all CSR bits
	csrrc x2, 0x69f, x14	// Clear all CSR bits
	csrrw x2, 0x69f, x4	// Restore CSR

// Testing CSR 0x6a0
	csrr x22, 0x6a0	// Read CSR
	li x27, -1
	csrrw x10, 0x6a0, x27	// Write all 1s to CSR
	csrrw x10, 0x6a0, x0	// Write all 0s to CSR
	csrrs x10, 0x6a0, x27	// Set all CSR bits
	csrrc x10, 0x6a0, x27	// Clear all CSR bits
	csrrw x10, 0x6a0, x22	// Restore CSR

// Testing CSR 0x6a1
	csrr x20, 0x6a1	// Read CSR
	li x6, -1
	csrrw x10, 0x6a1, x6	// Write all 1s to CSR
	csrrw x10, 0x6a1, x0	// Write all 0s to CSR
	csrrs x10, 0x6a1, x6	// Set all CSR bits
	csrrc x10, 0x6a1, x6	// Clear all CSR bits
	csrrw x10, 0x6a1, x20	// Restore CSR

// Testing CSR 0x6a2
	csrr x9, 0x6a2	// Read CSR
	li x17, -1
	csrrw x4, 0x6a2, x17	// Write all 1s to CSR
	csrrw x4, 0x6a2, x0	// Write all 0s to CSR
	csrrs x4, 0x6a2, x17	// Set all CSR bits
	csrrc x4, 0x6a2, x17	// Clear all CSR bits
	csrrw x4, 0x6a2, x9	// Restore CSR

// Testing CSR 0x6a3
	csrr x18, 0x6a3	// Read CSR
	li x22, -1
	csrrw x11, 0x6a3, x22	// Write all 1s to CSR
	csrrw x11, 0x6a3, x0	// Write all 0s to CSR
	csrrs x11, 0x6a3, x22	// Set all CSR bits
	csrrc x11, 0x6a3, x22	// Clear all CSR bits
	csrrw x11, 0x6a3, x18	// Restore CSR

// Testing CSR 0x6a4
	csrr x1, 0x6a4	// Read CSR
	li x5, -1
	csrrw x3, 0x6a4, x5	// Write all 1s to CSR
	csrrw x3, 0x6a4, x0	// Write all 0s to CSR
	csrrs x3, 0x6a4, x5	// Set all CSR bits
	csrrc x3, 0x6a4, x5	// Clear all CSR bits
	csrrw x3, 0x6a4, x1	// Restore CSR

// Testing CSR 0x6a5
	csrr x11, 0x6a5	// Read CSR
	li x25, -1
	csrrw x15, 0x6a5, x25	// Write all 1s to CSR
	csrrw x15, 0x6a5, x0	// Write all 0s to CSR
	csrrs x15, 0x6a5, x25	// Set all CSR bits
	csrrc x15, 0x6a5, x25	// Clear all CSR bits
	csrrw x15, 0x6a5, x11	// Restore CSR

// Testing CSR 0x6a6
	csrr x28, 0x6a6	// Read CSR
	li x7, -1
	csrrw x8, 0x6a6, x7	// Write all 1s to CSR
	csrrw x8, 0x6a6, x0	// Write all 0s to CSR
	csrrs x8, 0x6a6, x7	// Set all CSR bits
	csrrc x8, 0x6a6, x7	// Clear all CSR bits
	csrrw x8, 0x6a6, x28	// Restore CSR

// Testing CSR 0x6a7
	csrr x12, 0x6a7	// Read CSR
	li x29, -1
	csrrw x22, 0x6a7, x29	// Write all 1s to CSR
	csrrw x22, 0x6a7, x0	// Write all 0s to CSR
	csrrs x22, 0x6a7, x29	// Set all CSR bits
	csrrc x22, 0x6a7, x29	// Clear all CSR bits
	csrrw x22, 0x6a7, x12	// Restore CSR

// Testing CSR 0x6a8
	csrr x19, 0x6a8	// Read CSR
	li x15, -1
	csrrw x9, 0x6a8, x15	// Write all 1s to CSR
	csrrw x9, 0x6a8, x0	// Write all 0s to CSR
	csrrs x9, 0x6a8, x15	// Set all CSR bits
	csrrc x9, 0x6a8, x15	// Clear all CSR bits
	csrrw x9, 0x6a8, x19	// Restore CSR

// Testing CSR 0x6a9
	csrr x18, 0x6a9	// Read CSR
	li x6, -1
	csrrw x31, 0x6a9, x6	// Write all 1s to CSR
	csrrw x31, 0x6a9, x0	// Write all 0s to CSR
	csrrs x31, 0x6a9, x6	// Set all CSR bits
	csrrc x31, 0x6a9, x6	// Clear all CSR bits
	csrrw x31, 0x6a9, x18	// Restore CSR

// Testing CSR 0x6aa
	csrr x15, 0x6aa	// Read CSR
	li x13, -1
	csrrw x1, 0x6aa, x13	// Write all 1s to CSR
	csrrw x1, 0x6aa, x0	// Write all 0s to CSR
	csrrs x1, 0x6aa, x13	// Set all CSR bits
	csrrc x1, 0x6aa, x13	// Clear all CSR bits
	csrrw x1, 0x6aa, x15	// Restore CSR

// Testing CSR 0x6ab
	csrr x4, 0x6ab	// Read CSR
	li x1, -1
	csrrw x11, 0x6ab, x1	// Write all 1s to CSR
	csrrw x11, 0x6ab, x0	// Write all 0s to CSR
	csrrs x11, 0x6ab, x1	// Set all CSR bits
	csrrc x11, 0x6ab, x1	// Clear all CSR bits
	csrrw x11, 0x6ab, x4	// Restore CSR

// Testing CSR 0x6ac
	csrr x24, 0x6ac	// Read CSR
	li x7, -1
	csrrw x10, 0x6ac, x7	// Write all 1s to CSR
	csrrw x10, 0x6ac, x0	// Write all 0s to CSR
	csrrs x10, 0x6ac, x7	// Set all CSR bits
	csrrc x10, 0x6ac, x7	// Clear all CSR bits
	csrrw x10, 0x6ac, x24	// Restore CSR

// Testing CSR 0x6ad
	csrr x18, 0x6ad	// Read CSR
	li x4, -1
	csrrw x17, 0x6ad, x4	// Write all 1s to CSR
	csrrw x17, 0x6ad, x0	// Write all 0s to CSR
	csrrs x17, 0x6ad, x4	// Set all CSR bits
	csrrc x17, 0x6ad, x4	// Clear all CSR bits
	csrrw x17, 0x6ad, x18	// Restore CSR

// Testing CSR 0x6ae
	csrr x25, 0x6ae	// Read CSR
	li x10, -1
	csrrw x29, 0x6ae, x10	// Write all 1s to CSR
	csrrw x29, 0x6ae, x0	// Write all 0s to CSR
	csrrs x29, 0x6ae, x10	// Set all CSR bits
	csrrc x29, 0x6ae, x10	// Clear all CSR bits
	csrrw x29, 0x6ae, x25	// Restore CSR

// Testing CSR 0x6af
	csrr x3, 0x6af	// Read CSR
	li x4, -1
	csrrw x18, 0x6af, x4	// Write all 1s to CSR
	csrrw x18, 0x6af, x0	// Write all 0s to CSR
	csrrs x18, 0x6af, x4	// Set all CSR bits
	csrrc x18, 0x6af, x4	// Clear all CSR bits
	csrrw x18, 0x6af, x3	// Restore CSR

// Testing CSR 0x6b0
	csrr x20, 0x6b0	// Read CSR
	li x10, -1
	csrrw x24, 0x6b0, x10	// Write all 1s to CSR
	csrrw x24, 0x6b0, x0	// Write all 0s to CSR
	csrrs x24, 0x6b0, x10	// Set all CSR bits
	csrrc x24, 0x6b0, x10	// Clear all CSR bits
	csrrw x24, 0x6b0, x20	// Restore CSR

// Testing CSR 0x6b1
	csrr x2, 0x6b1	// Read CSR
	li x8, -1
	csrrw x30, 0x6b1, x8	// Write all 1s to CSR
	csrrw x30, 0x6b1, x0	// Write all 0s to CSR
	csrrs x30, 0x6b1, x8	// Set all CSR bits
	csrrc x30, 0x6b1, x8	// Clear all CSR bits
	csrrw x30, 0x6b1, x2	// Restore CSR

// Testing CSR 0x6b2
	csrr x27, 0x6b2	// Read CSR
	li x4, -1
	csrrw x22, 0x6b2, x4	// Write all 1s to CSR
	csrrw x22, 0x6b2, x0	// Write all 0s to CSR
	csrrs x22, 0x6b2, x4	// Set all CSR bits
	csrrc x22, 0x6b2, x4	// Clear all CSR bits
	csrrw x22, 0x6b2, x27	// Restore CSR

// Testing CSR 0x6b3
	csrr x6, 0x6b3	// Read CSR
	li x15, -1
	csrrw x9, 0x6b3, x15	// Write all 1s to CSR
	csrrw x9, 0x6b3, x0	// Write all 0s to CSR
	csrrs x9, 0x6b3, x15	// Set all CSR bits
	csrrc x9, 0x6b3, x15	// Clear all CSR bits
	csrrw x9, 0x6b3, x6	// Restore CSR

// Testing CSR 0x6b4
	csrr x29, 0x6b4	// Read CSR
	li x27, -1
	csrrw x23, 0x6b4, x27	// Write all 1s to CSR
	csrrw x23, 0x6b4, x0	// Write all 0s to CSR
	csrrs x23, 0x6b4, x27	// Set all CSR bits
	csrrc x23, 0x6b4, x27	// Clear all CSR bits
	csrrw x23, 0x6b4, x29	// Restore CSR

// Testing CSR 0x6b5
	csrr x6, 0x6b5	// Read CSR
	li x15, -1
	csrrw x23, 0x6b5, x15	// Write all 1s to CSR
	csrrw x23, 0x6b5, x0	// Write all 0s to CSR
	csrrs x23, 0x6b5, x15	// Set all CSR bits
	csrrc x23, 0x6b5, x15	// Clear all CSR bits
	csrrw x23, 0x6b5, x6	// Restore CSR

// Testing CSR 0x6b6
	csrr x27, 0x6b6	// Read CSR
	li x19, -1
	csrrw x1, 0x6b6, x19	// Write all 1s to CSR
	csrrw x1, 0x6b6, x0	// Write all 0s to CSR
	csrrs x1, 0x6b6, x19	// Set all CSR bits
	csrrc x1, 0x6b6, x19	// Clear all CSR bits
	csrrw x1, 0x6b6, x27	// Restore CSR

// Testing CSR 0x6b7
	csrr x18, 0x6b7	// Read CSR
	li x13, -1
	csrrw x1, 0x6b7, x13	// Write all 1s to CSR
	csrrw x1, 0x6b7, x0	// Write all 0s to CSR
	csrrs x1, 0x6b7, x13	// Set all CSR bits
	csrrc x1, 0x6b7, x13	// Clear all CSR bits
	csrrw x1, 0x6b7, x18	// Restore CSR

// Testing CSR 0x6b8
	csrr x31, 0x6b8	// Read CSR
	li x4, -1
	csrrw x10, 0x6b8, x4	// Write all 1s to CSR
	csrrw x10, 0x6b8, x0	// Write all 0s to CSR
	csrrs x10, 0x6b8, x4	// Set all CSR bits
	csrrc x10, 0x6b8, x4	// Clear all CSR bits
	csrrw x10, 0x6b8, x31	// Restore CSR

// Testing CSR 0x6b9
	csrr x3, 0x6b9	// Read CSR
	li x21, -1
	csrrw x25, 0x6b9, x21	// Write all 1s to CSR
	csrrw x25, 0x6b9, x0	// Write all 0s to CSR
	csrrs x25, 0x6b9, x21	// Set all CSR bits
	csrrc x25, 0x6b9, x21	// Clear all CSR bits
	csrrw x25, 0x6b9, x3	// Restore CSR

// Testing CSR 0x6ba
	csrr x13, 0x6ba	// Read CSR
	li x7, -1
	csrrw x9, 0x6ba, x7	// Write all 1s to CSR
	csrrw x9, 0x6ba, x0	// Write all 0s to CSR
	csrrs x9, 0x6ba, x7	// Set all CSR bits
	csrrc x9, 0x6ba, x7	// Clear all CSR bits
	csrrw x9, 0x6ba, x13	// Restore CSR

// Testing CSR 0x6bb
	csrr x24, 0x6bb	// Read CSR
	li x13, -1
	csrrw x8, 0x6bb, x13	// Write all 1s to CSR
	csrrw x8, 0x6bb, x0	// Write all 0s to CSR
	csrrs x8, 0x6bb, x13	// Set all CSR bits
	csrrc x8, 0x6bb, x13	// Clear all CSR bits
	csrrw x8, 0x6bb, x24	// Restore CSR

// Testing CSR 0x6bc
	csrr x15, 0x6bc	// Read CSR
	li x21, -1
	csrrw x20, 0x6bc, x21	// Write all 1s to CSR
	csrrw x20, 0x6bc, x0	// Write all 0s to CSR
	csrrs x20, 0x6bc, x21	// Set all CSR bits
	csrrc x20, 0x6bc, x21	// Clear all CSR bits
	csrrw x20, 0x6bc, x15	// Restore CSR

// Testing CSR 0x6bd
	csrr x17, 0x6bd	// Read CSR
	li x18, -1
	csrrw x27, 0x6bd, x18	// Write all 1s to CSR
	csrrw x27, 0x6bd, x0	// Write all 0s to CSR
	csrrs x27, 0x6bd, x18	// Set all CSR bits
	csrrc x27, 0x6bd, x18	// Clear all CSR bits
	csrrw x27, 0x6bd, x17	// Restore CSR

// Testing CSR 0x6be
	csrr x12, 0x6be	// Read CSR
	li x6, -1
	csrrw x14, 0x6be, x6	// Write all 1s to CSR
	csrrw x14, 0x6be, x0	// Write all 0s to CSR
	csrrs x14, 0x6be, x6	// Set all CSR bits
	csrrc x14, 0x6be, x6	// Clear all CSR bits
	csrrw x14, 0x6be, x12	// Restore CSR

// Testing CSR 0x6bf
	csrr x21, 0x6bf	// Read CSR
	li x26, -1
	csrrw x1, 0x6bf, x26	// Write all 1s to CSR
	csrrw x1, 0x6bf, x0	// Write all 0s to CSR
	csrrs x1, 0x6bf, x26	// Set all CSR bits
	csrrc x1, 0x6bf, x26	// Clear all CSR bits
	csrrw x1, 0x6bf, x21	// Restore CSR

// Testing CSR 0x700
	csrr x19, 0x700	// Read CSR
	li x14, -1
	csrrw x31, 0x700, x14	// Write all 1s to CSR
	csrrw x31, 0x700, x0	// Write all 0s to CSR
	csrrs x31, 0x700, x14	// Set all CSR bits
	csrrc x31, 0x700, x14	// Clear all CSR bits
	csrrw x31, 0x700, x19	// Restore CSR

// Testing CSR 0x701
	csrr x20, 0x701	// Read CSR
	li x8, -1
	csrrw x10, 0x701, x8	// Write all 1s to CSR
	csrrw x10, 0x701, x0	// Write all 0s to CSR
	csrrs x10, 0x701, x8	// Set all CSR bits
	csrrc x10, 0x701, x8	// Clear all CSR bits
	csrrw x10, 0x701, x20	// Restore CSR

// Testing CSR 0x702
	csrr x12, 0x702	// Read CSR
	li x17, -1
	csrrw x11, 0x702, x17	// Write all 1s to CSR
	csrrw x11, 0x702, x0	// Write all 0s to CSR
	csrrs x11, 0x702, x17	// Set all CSR bits
	csrrc x11, 0x702, x17	// Clear all CSR bits
	csrrw x11, 0x702, x12	// Restore CSR

// Testing CSR 0x703
	csrr x16, 0x703	// Read CSR
	li x21, -1
	csrrw x28, 0x703, x21	// Write all 1s to CSR
	csrrw x28, 0x703, x0	// Write all 0s to CSR
	csrrs x28, 0x703, x21	// Set all CSR bits
	csrrc x28, 0x703, x21	// Clear all CSR bits
	csrrw x28, 0x703, x16	// Restore CSR

// Testing CSR 0x704
	csrr x25, 0x704	// Read CSR
	li x24, -1
	csrrw x15, 0x704, x24	// Write all 1s to CSR
	csrrw x15, 0x704, x0	// Write all 0s to CSR
	csrrs x15, 0x704, x24	// Set all CSR bits
	csrrc x15, 0x704, x24	// Clear all CSR bits
	csrrw x15, 0x704, x25	// Restore CSR

// Testing CSR 0x705
	csrr x29, 0x705	// Read CSR
	li x24, -1
	csrrw x23, 0x705, x24	// Write all 1s to CSR
	csrrw x23, 0x705, x0	// Write all 0s to CSR
	csrrs x23, 0x705, x24	// Set all CSR bits
	csrrc x23, 0x705, x24	// Clear all CSR bits
	csrrw x23, 0x705, x29	// Restore CSR

// Testing CSR 0x706
	csrr x29, 0x706	// Read CSR
	li x9, -1
	csrrw x12, 0x706, x9	// Write all 1s to CSR
	csrrw x12, 0x706, x0	// Write all 0s to CSR
	csrrs x12, 0x706, x9	// Set all CSR bits
	csrrc x12, 0x706, x9	// Clear all CSR bits
	csrrw x12, 0x706, x29	// Restore CSR

// Testing CSR 0x707
	csrr x9, 0x707	// Read CSR
	li x25, -1
	csrrw x6, 0x707, x25	// Write all 1s to CSR
	csrrw x6, 0x707, x0	// Write all 0s to CSR
	csrrs x6, 0x707, x25	// Set all CSR bits
	csrrc x6, 0x707, x25	// Clear all CSR bits
	csrrw x6, 0x707, x9	// Restore CSR

// Testing CSR 0x708
	csrr x6, 0x708	// Read CSR
	li x29, -1
	csrrw x8, 0x708, x29	// Write all 1s to CSR
	csrrw x8, 0x708, x0	// Write all 0s to CSR
	csrrs x8, 0x708, x29	// Set all CSR bits
	csrrc x8, 0x708, x29	// Clear all CSR bits
	csrrw x8, 0x708, x6	// Restore CSR

// Testing CSR 0x709
	csrr x29, 0x709	// Read CSR
	li x15, -1
	csrrw x11, 0x709, x15	// Write all 1s to CSR
	csrrw x11, 0x709, x0	// Write all 0s to CSR
	csrrs x11, 0x709, x15	// Set all CSR bits
	csrrc x11, 0x709, x15	// Clear all CSR bits
	csrrw x11, 0x709, x29	// Restore CSR

// Testing CSR 0x70a
	csrr x21, 0x70a	// Read CSR
	li x1, -1
	csrrw x12, 0x70a, x1	// Write all 1s to CSR
	csrrw x12, 0x70a, x0	// Write all 0s to CSR
	csrrs x12, 0x70a, x1	// Set all CSR bits
	csrrc x12, 0x70a, x1	// Clear all CSR bits
	csrrw x12, 0x70a, x21	// Restore CSR

// Testing CSR 0x70b
	csrr x16, 0x70b	// Read CSR
	li x20, -1
	csrrw x26, 0x70b, x20	// Write all 1s to CSR
	csrrw x26, 0x70b, x0	// Write all 0s to CSR
	csrrs x26, 0x70b, x20	// Set all CSR bits
	csrrc x26, 0x70b, x20	// Clear all CSR bits
	csrrw x26, 0x70b, x16	// Restore CSR

// Testing CSR 0x70c
	csrr x31, 0x70c	// Read CSR
	li x23, -1
	csrrw x10, 0x70c, x23	// Write all 1s to CSR
	csrrw x10, 0x70c, x0	// Write all 0s to CSR
	csrrs x10, 0x70c, x23	// Set all CSR bits
	csrrc x10, 0x70c, x23	// Clear all CSR bits
	csrrw x10, 0x70c, x31	// Restore CSR

// Testing CSR 0x70d
	csrr x22, 0x70d	// Read CSR
	li x8, -1
	csrrw x1, 0x70d, x8	// Write all 1s to CSR
	csrrw x1, 0x70d, x0	// Write all 0s to CSR
	csrrs x1, 0x70d, x8	// Set all CSR bits
	csrrc x1, 0x70d, x8	// Clear all CSR bits
	csrrw x1, 0x70d, x22	// Restore CSR

// Testing CSR 0x70e
	csrr x4, 0x70e	// Read CSR
	li x15, -1
	csrrw x24, 0x70e, x15	// Write all 1s to CSR
	csrrw x24, 0x70e, x0	// Write all 0s to CSR
	csrrs x24, 0x70e, x15	// Set all CSR bits
	csrrc x24, 0x70e, x15	// Clear all CSR bits
	csrrw x24, 0x70e, x4	// Restore CSR

// Testing CSR 0x70f
	csrr x17, 0x70f	// Read CSR
	li x27, -1
	csrrw x29, 0x70f, x27	// Write all 1s to CSR
	csrrw x29, 0x70f, x0	// Write all 0s to CSR
	csrrs x29, 0x70f, x27	// Set all CSR bits
	csrrc x29, 0x70f, x27	// Clear all CSR bits
	csrrw x29, 0x70f, x17	// Restore CSR

// Testing CSR 0x710
	csrr x6, 0x710	// Read CSR
	li x7, -1
	csrrw x27, 0x710, x7	// Write all 1s to CSR
	csrrw x27, 0x710, x0	// Write all 0s to CSR
	csrrs x27, 0x710, x7	// Set all CSR bits
	csrrc x27, 0x710, x7	// Clear all CSR bits
	csrrw x27, 0x710, x6	// Restore CSR

// Testing CSR 0x711
	csrr x13, 0x711	// Read CSR
	li x31, -1
	csrrw x23, 0x711, x31	// Write all 1s to CSR
	csrrw x23, 0x711, x0	// Write all 0s to CSR
	csrrs x23, 0x711, x31	// Set all CSR bits
	csrrc x23, 0x711, x31	// Clear all CSR bits
	csrrw x23, 0x711, x13	// Restore CSR

// Testing CSR 0x712
	csrr x20, 0x712	// Read CSR
	li x11, -1
	csrrw x18, 0x712, x11	// Write all 1s to CSR
	csrrw x18, 0x712, x0	// Write all 0s to CSR
	csrrs x18, 0x712, x11	// Set all CSR bits
	csrrc x18, 0x712, x11	// Clear all CSR bits
	csrrw x18, 0x712, x20	// Restore CSR

// Testing CSR 0x713
	csrr x5, 0x713	// Read CSR
	li x2, -1
	csrrw x16, 0x713, x2	// Write all 1s to CSR
	csrrw x16, 0x713, x0	// Write all 0s to CSR
	csrrs x16, 0x713, x2	// Set all CSR bits
	csrrc x16, 0x713, x2	// Clear all CSR bits
	csrrw x16, 0x713, x5	// Restore CSR

// Testing CSR 0x714
	csrr x14, 0x714	// Read CSR
	li x29, -1
	csrrw x15, 0x714, x29	// Write all 1s to CSR
	csrrw x15, 0x714, x0	// Write all 0s to CSR
	csrrs x15, 0x714, x29	// Set all CSR bits
	csrrc x15, 0x714, x29	// Clear all CSR bits
	csrrw x15, 0x714, x14	// Restore CSR

// Testing CSR 0x715
	csrr x26, 0x715	// Read CSR
	li x31, -1
	csrrw x29, 0x715, x31	// Write all 1s to CSR
	csrrw x29, 0x715, x0	// Write all 0s to CSR
	csrrs x29, 0x715, x31	// Set all CSR bits
	csrrc x29, 0x715, x31	// Clear all CSR bits
	csrrw x29, 0x715, x26	// Restore CSR

// Testing CSR 0x716
	csrr x15, 0x716	// Read CSR
	li x12, -1
	csrrw x1, 0x716, x12	// Write all 1s to CSR
	csrrw x1, 0x716, x0	// Write all 0s to CSR
	csrrs x1, 0x716, x12	// Set all CSR bits
	csrrc x1, 0x716, x12	// Clear all CSR bits
	csrrw x1, 0x716, x15	// Restore CSR

// Testing CSR 0x717
	csrr x7, 0x717	// Read CSR
	li x19, -1
	csrrw x3, 0x717, x19	// Write all 1s to CSR
	csrrw x3, 0x717, x0	// Write all 0s to CSR
	csrrs x3, 0x717, x19	// Set all CSR bits
	csrrc x3, 0x717, x19	// Clear all CSR bits
	csrrw x3, 0x717, x7	// Restore CSR

// Testing CSR 0x718
	csrr x16, 0x718	// Read CSR
	li x5, -1
	csrrw x22, 0x718, x5	// Write all 1s to CSR
	csrrw x22, 0x718, x0	// Write all 0s to CSR
	csrrs x22, 0x718, x5	// Set all CSR bits
	csrrc x22, 0x718, x5	// Clear all CSR bits
	csrrw x22, 0x718, x16	// Restore CSR

// Testing CSR 0x719
	csrr x3, 0x719	// Read CSR
	li x24, -1
	csrrw x17, 0x719, x24	// Write all 1s to CSR
	csrrw x17, 0x719, x0	// Write all 0s to CSR
	csrrs x17, 0x719, x24	// Set all CSR bits
	csrrc x17, 0x719, x24	// Clear all CSR bits
	csrrw x17, 0x719, x3	// Restore CSR

// Testing CSR 0x71a
	csrr x23, 0x71a	// Read CSR
	li x22, -1
	csrrw x31, 0x71a, x22	// Write all 1s to CSR
	csrrw x31, 0x71a, x0	// Write all 0s to CSR
	csrrs x31, 0x71a, x22	// Set all CSR bits
	csrrc x31, 0x71a, x22	// Clear all CSR bits
	csrrw x31, 0x71a, x23	// Restore CSR

// Testing CSR 0x71b
	csrr x18, 0x71b	// Read CSR
	li x13, -1
	csrrw x20, 0x71b, x13	// Write all 1s to CSR
	csrrw x20, 0x71b, x0	// Write all 0s to CSR
	csrrs x20, 0x71b, x13	// Set all CSR bits
	csrrc x20, 0x71b, x13	// Clear all CSR bits
	csrrw x20, 0x71b, x18	// Restore CSR

// Testing CSR 0x71c
	csrr x9, 0x71c	// Read CSR
	li x7, -1
	csrrw x3, 0x71c, x7	// Write all 1s to CSR
	csrrw x3, 0x71c, x0	// Write all 0s to CSR
	csrrs x3, 0x71c, x7	// Set all CSR bits
	csrrc x3, 0x71c, x7	// Clear all CSR bits
	csrrw x3, 0x71c, x9	// Restore CSR

// Testing CSR 0x71d
	csrr x14, 0x71d	// Read CSR
	li x1, -1
	csrrw x18, 0x71d, x1	// Write all 1s to CSR
	csrrw x18, 0x71d, x0	// Write all 0s to CSR
	csrrs x18, 0x71d, x1	// Set all CSR bits
	csrrc x18, 0x71d, x1	// Clear all CSR bits
	csrrw x18, 0x71d, x14	// Restore CSR

// Testing CSR 0x71e
	csrr x16, 0x71e	// Read CSR
	li x23, -1
	csrrw x24, 0x71e, x23	// Write all 1s to CSR
	csrrw x24, 0x71e, x0	// Write all 0s to CSR
	csrrs x24, 0x71e, x23	// Set all CSR bits
	csrrc x24, 0x71e, x23	// Clear all CSR bits
	csrrw x24, 0x71e, x16	// Restore CSR

// Testing CSR 0x71f
	csrr x11, 0x71f	// Read CSR
	li x24, -1
	csrrw x30, 0x71f, x24	// Write all 1s to CSR
	csrrw x30, 0x71f, x0	// Write all 0s to CSR
	csrrs x30, 0x71f, x24	// Set all CSR bits
	csrrc x30, 0x71f, x24	// Clear all CSR bits
	csrrw x30, 0x71f, x11	// Restore CSR

// Testing CSR 0x720
	csrr x1, 0x720	// Read CSR
	li x7, -1
	csrrw x20, 0x720, x7	// Write all 1s to CSR
	csrrw x20, 0x720, x0	// Write all 0s to CSR
	csrrs x20, 0x720, x7	// Set all CSR bits
	csrrc x20, 0x720, x7	// Clear all CSR bits
	csrrw x20, 0x720, x1	// Restore CSR

// Testing CSR 0x721
	csrr x10, 0x721	// Read CSR
	li x27, -1
	csrrw x25, 0x721, x27	// Write all 1s to CSR
	csrrw x25, 0x721, x0	// Write all 0s to CSR
	csrrs x25, 0x721, x27	// Set all CSR bits
	csrrc x25, 0x721, x27	// Clear all CSR bits
	csrrw x25, 0x721, x10	// Restore CSR

// Testing CSR 0x722
	csrr x28, 0x722	// Read CSR
	li x29, -1
	csrrw x25, 0x722, x29	// Write all 1s to CSR
	csrrw x25, 0x722, x0	// Write all 0s to CSR
	csrrs x25, 0x722, x29	// Set all CSR bits
	csrrc x25, 0x722, x29	// Clear all CSR bits
	csrrw x25, 0x722, x28	// Restore CSR

// Testing CSR 0x723
	csrr x26, 0x723	// Read CSR
	li x14, -1
	csrrw x15, 0x723, x14	// Write all 1s to CSR
	csrrw x15, 0x723, x0	// Write all 0s to CSR
	csrrs x15, 0x723, x14	// Set all CSR bits
	csrrc x15, 0x723, x14	// Clear all CSR bits
	csrrw x15, 0x723, x26	// Restore CSR

// Testing CSR 0x724
	csrr x23, 0x724	// Read CSR
	li x17, -1
	csrrw x10, 0x724, x17	// Write all 1s to CSR
	csrrw x10, 0x724, x0	// Write all 0s to CSR
	csrrs x10, 0x724, x17	// Set all CSR bits
	csrrc x10, 0x724, x17	// Clear all CSR bits
	csrrw x10, 0x724, x23	// Restore CSR

// Testing CSR 0x725
	csrr x3, 0x725	// Read CSR
	li x2, -1
	csrrw x12, 0x725, x2	// Write all 1s to CSR
	csrrw x12, 0x725, x0	// Write all 0s to CSR
	csrrs x12, 0x725, x2	// Set all CSR bits
	csrrc x12, 0x725, x2	// Clear all CSR bits
	csrrw x12, 0x725, x3	// Restore CSR

// Testing CSR 0x726
	csrr x13, 0x726	// Read CSR
	li x21, -1
	csrrw x14, 0x726, x21	// Write all 1s to CSR
	csrrw x14, 0x726, x0	// Write all 0s to CSR
	csrrs x14, 0x726, x21	// Set all CSR bits
	csrrc x14, 0x726, x21	// Clear all CSR bits
	csrrw x14, 0x726, x13	// Restore CSR

// Testing CSR 0x727
	csrr x13, 0x727	// Read CSR
	li x26, -1
	csrrw x21, 0x727, x26	// Write all 1s to CSR
	csrrw x21, 0x727, x0	// Write all 0s to CSR
	csrrs x21, 0x727, x26	// Set all CSR bits
	csrrc x21, 0x727, x26	// Clear all CSR bits
	csrrw x21, 0x727, x13	// Restore CSR

// Testing CSR 0x728
	csrr x23, 0x728	// Read CSR
	li x25, -1
	csrrw x21, 0x728, x25	// Write all 1s to CSR
	csrrw x21, 0x728, x0	// Write all 0s to CSR
	csrrs x21, 0x728, x25	// Set all CSR bits
	csrrc x21, 0x728, x25	// Clear all CSR bits
	csrrw x21, 0x728, x23	// Restore CSR

// Testing CSR 0x729
	csrr x25, 0x729	// Read CSR
	li x8, -1
	csrrw x10, 0x729, x8	// Write all 1s to CSR
	csrrw x10, 0x729, x0	// Write all 0s to CSR
	csrrs x10, 0x729, x8	// Set all CSR bits
	csrrc x10, 0x729, x8	// Clear all CSR bits
	csrrw x10, 0x729, x25	// Restore CSR

// Testing CSR 0x72a
	csrr x16, 0x72a	// Read CSR
	li x13, -1
	csrrw x18, 0x72a, x13	// Write all 1s to CSR
	csrrw x18, 0x72a, x0	// Write all 0s to CSR
	csrrs x18, 0x72a, x13	// Set all CSR bits
	csrrc x18, 0x72a, x13	// Clear all CSR bits
	csrrw x18, 0x72a, x16	// Restore CSR

// Testing CSR 0x72b
	csrr x1, 0x72b	// Read CSR
	li x21, -1
	csrrw x14, 0x72b, x21	// Write all 1s to CSR
	csrrw x14, 0x72b, x0	// Write all 0s to CSR
	csrrs x14, 0x72b, x21	// Set all CSR bits
	csrrc x14, 0x72b, x21	// Clear all CSR bits
	csrrw x14, 0x72b, x1	// Restore CSR

// Testing CSR 0x72c
	csrr x21, 0x72c	// Read CSR
	li x10, -1
	csrrw x22, 0x72c, x10	// Write all 1s to CSR
	csrrw x22, 0x72c, x0	// Write all 0s to CSR
	csrrs x22, 0x72c, x10	// Set all CSR bits
	csrrc x22, 0x72c, x10	// Clear all CSR bits
	csrrw x22, 0x72c, x21	// Restore CSR

// Testing CSR 0x72d
	csrr x16, 0x72d	// Read CSR
	li x5, -1
	csrrw x13, 0x72d, x5	// Write all 1s to CSR
	csrrw x13, 0x72d, x0	// Write all 0s to CSR
	csrrs x13, 0x72d, x5	// Set all CSR bits
	csrrc x13, 0x72d, x5	// Clear all CSR bits
	csrrw x13, 0x72d, x16	// Restore CSR

// Testing CSR 0x72e
	csrr x22, 0x72e	// Read CSR
	li x27, -1
	csrrw x14, 0x72e, x27	// Write all 1s to CSR
	csrrw x14, 0x72e, x0	// Write all 0s to CSR
	csrrs x14, 0x72e, x27	// Set all CSR bits
	csrrc x14, 0x72e, x27	// Clear all CSR bits
	csrrw x14, 0x72e, x22	// Restore CSR

// Testing CSR 0x72f
	csrr x30, 0x72f	// Read CSR
	li x31, -1
	csrrw x13, 0x72f, x31	// Write all 1s to CSR
	csrrw x13, 0x72f, x0	// Write all 0s to CSR
	csrrs x13, 0x72f, x31	// Set all CSR bits
	csrrc x13, 0x72f, x31	// Clear all CSR bits
	csrrw x13, 0x72f, x30	// Restore CSR

// Testing CSR 0x730
	csrr x23, 0x730	// Read CSR
	li x30, -1
	csrrw x29, 0x730, x30	// Write all 1s to CSR
	csrrw x29, 0x730, x0	// Write all 0s to CSR
	csrrs x29, 0x730, x30	// Set all CSR bits
	csrrc x29, 0x730, x30	// Clear all CSR bits
	csrrw x29, 0x730, x23	// Restore CSR

// Testing CSR 0x731
	csrr x25, 0x731	// Read CSR
	li x27, -1
	csrrw x19, 0x731, x27	// Write all 1s to CSR
	csrrw x19, 0x731, x0	// Write all 0s to CSR
	csrrs x19, 0x731, x27	// Set all CSR bits
	csrrc x19, 0x731, x27	// Clear all CSR bits
	csrrw x19, 0x731, x25	// Restore CSR

// Testing CSR 0x732
	csrr x24, 0x732	// Read CSR
	li x20, -1
	csrrw x10, 0x732, x20	// Write all 1s to CSR
	csrrw x10, 0x732, x0	// Write all 0s to CSR
	csrrs x10, 0x732, x20	// Set all CSR bits
	csrrc x10, 0x732, x20	// Clear all CSR bits
	csrrw x10, 0x732, x24	// Restore CSR

// Testing CSR 0x733
	csrr x16, 0x733	// Read CSR
	li x18, -1
	csrrw x12, 0x733, x18	// Write all 1s to CSR
	csrrw x12, 0x733, x0	// Write all 0s to CSR
	csrrs x12, 0x733, x18	// Set all CSR bits
	csrrc x12, 0x733, x18	// Clear all CSR bits
	csrrw x12, 0x733, x16	// Restore CSR

// Testing CSR 0x734
	csrr x10, 0x734	// Read CSR
	li x14, -1
	csrrw x27, 0x734, x14	// Write all 1s to CSR
	csrrw x27, 0x734, x0	// Write all 0s to CSR
	csrrs x27, 0x734, x14	// Set all CSR bits
	csrrc x27, 0x734, x14	// Clear all CSR bits
	csrrw x27, 0x734, x10	// Restore CSR

// Testing CSR 0x735
	csrr x30, 0x735	// Read CSR
	li x19, -1
	csrrw x21, 0x735, x19	// Write all 1s to CSR
	csrrw x21, 0x735, x0	// Write all 0s to CSR
	csrrs x21, 0x735, x19	// Set all CSR bits
	csrrc x21, 0x735, x19	// Clear all CSR bits
	csrrw x21, 0x735, x30	// Restore CSR

// Testing CSR 0x736
	csrr x25, 0x736	// Read CSR
	li x6, -1
	csrrw x12, 0x736, x6	// Write all 1s to CSR
	csrrw x12, 0x736, x0	// Write all 0s to CSR
	csrrs x12, 0x736, x6	// Set all CSR bits
	csrrc x12, 0x736, x6	// Clear all CSR bits
	csrrw x12, 0x736, x25	// Restore CSR

// Testing CSR 0x737
	csrr x2, 0x737	// Read CSR
	li x14, -1
	csrrw x15, 0x737, x14	// Write all 1s to CSR
	csrrw x15, 0x737, x0	// Write all 0s to CSR
	csrrs x15, 0x737, x14	// Set all CSR bits
	csrrc x15, 0x737, x14	// Clear all CSR bits
	csrrw x15, 0x737, x2	// Restore CSR

// Testing CSR 0x738
	csrr x31, 0x738	// Read CSR
	li x15, -1
	csrrw x10, 0x738, x15	// Write all 1s to CSR
	csrrw x10, 0x738, x0	// Write all 0s to CSR
	csrrs x10, 0x738, x15	// Set all CSR bits
	csrrc x10, 0x738, x15	// Clear all CSR bits
	csrrw x10, 0x738, x31	// Restore CSR

// Testing CSR 0x739
	csrr x3, 0x739	// Read CSR
	li x22, -1
	csrrw x8, 0x739, x22	// Write all 1s to CSR
	csrrw x8, 0x739, x0	// Write all 0s to CSR
	csrrs x8, 0x739, x22	// Set all CSR bits
	csrrc x8, 0x739, x22	// Clear all CSR bits
	csrrw x8, 0x739, x3	// Restore CSR

// Testing CSR 0x73a
	csrr x11, 0x73a	// Read CSR
	li x8, -1
	csrrw x13, 0x73a, x8	// Write all 1s to CSR
	csrrw x13, 0x73a, x0	// Write all 0s to CSR
	csrrs x13, 0x73a, x8	// Set all CSR bits
	csrrc x13, 0x73a, x8	// Clear all CSR bits
	csrrw x13, 0x73a, x11	// Restore CSR

// Testing CSR 0x73b
	csrr x1, 0x73b	// Read CSR
	li x20, -1
	csrrw x11, 0x73b, x20	// Write all 1s to CSR
	csrrw x11, 0x73b, x0	// Write all 0s to CSR
	csrrs x11, 0x73b, x20	// Set all CSR bits
	csrrc x11, 0x73b, x20	// Clear all CSR bits
	csrrw x11, 0x73b, x1	// Restore CSR

// Testing CSR 0x73c
	csrr x5, 0x73c	// Read CSR
	li x6, -1
	csrrw x27, 0x73c, x6	// Write all 1s to CSR
	csrrw x27, 0x73c, x0	// Write all 0s to CSR
	csrrs x27, 0x73c, x6	// Set all CSR bits
	csrrc x27, 0x73c, x6	// Clear all CSR bits
	csrrw x27, 0x73c, x5	// Restore CSR

// Testing CSR 0x73d
	csrr x29, 0x73d	// Read CSR
	li x16, -1
	csrrw x3, 0x73d, x16	// Write all 1s to CSR
	csrrw x3, 0x73d, x0	// Write all 0s to CSR
	csrrs x3, 0x73d, x16	// Set all CSR bits
	csrrc x3, 0x73d, x16	// Clear all CSR bits
	csrrw x3, 0x73d, x29	// Restore CSR

// Testing CSR 0x73e
	csrr x25, 0x73e	// Read CSR
	li x4, -1
	csrrw x6, 0x73e, x4	// Write all 1s to CSR
	csrrw x6, 0x73e, x0	// Write all 0s to CSR
	csrrs x6, 0x73e, x4	// Set all CSR bits
	csrrc x6, 0x73e, x4	// Clear all CSR bits
	csrrw x6, 0x73e, x25	// Restore CSR

// Testing CSR 0x73f
	csrr x31, 0x73f	// Read CSR
	li x20, -1
	csrrw x2, 0x73f, x20	// Write all 1s to CSR
	csrrw x2, 0x73f, x0	// Write all 0s to CSR
	csrrs x2, 0x73f, x20	// Set all CSR bits
	csrrc x2, 0x73f, x20	// Clear all CSR bits
	csrrw x2, 0x73f, x31	// Restore CSR

// Testing CSR 0x740
	csrr x8, 0x740	// Read CSR
	li x21, -1
	csrrw x6, 0x740, x21	// Write all 1s to CSR
	csrrw x6, 0x740, x0	// Write all 0s to CSR
	csrrs x6, 0x740, x21	// Set all CSR bits
	csrrc x6, 0x740, x21	// Clear all CSR bits
	csrrw x6, 0x740, x8	// Restore CSR

// Testing CSR 0x741
	csrr x1, 0x741	// Read CSR
	li x21, -1
	csrrw x17, 0x741, x21	// Write all 1s to CSR
	csrrw x17, 0x741, x0	// Write all 0s to CSR
	csrrs x17, 0x741, x21	// Set all CSR bits
	csrrc x17, 0x741, x21	// Clear all CSR bits
	csrrw x17, 0x741, x1	// Restore CSR

// Testing CSR 0x742
	csrr x30, 0x742	// Read CSR
	li x14, -1
	csrrw x22, 0x742, x14	// Write all 1s to CSR
	csrrw x22, 0x742, x0	// Write all 0s to CSR
	csrrs x22, 0x742, x14	// Set all CSR bits
	csrrc x22, 0x742, x14	// Clear all CSR bits
	csrrw x22, 0x742, x30	// Restore CSR

// Testing CSR 0x743
	csrr x22, 0x743	// Read CSR
	li x14, -1
	csrrw x6, 0x743, x14	// Write all 1s to CSR
	csrrw x6, 0x743, x0	// Write all 0s to CSR
	csrrs x6, 0x743, x14	// Set all CSR bits
	csrrc x6, 0x743, x14	// Clear all CSR bits
	csrrw x6, 0x743, x22	// Restore CSR

// Testing CSR 0x744
	csrr x10, 0x744	// Read CSR
	li x13, -1
	csrrw x15, 0x744, x13	// Write all 1s to CSR
	csrrw x15, 0x744, x0	// Write all 0s to CSR
	csrrs x15, 0x744, x13	// Set all CSR bits
	csrrc x15, 0x744, x13	// Clear all CSR bits
	csrrw x15, 0x744, x10	// Restore CSR

// Testing CSR 0x745
	csrr x10, 0x745	// Read CSR
	li x31, -1
	csrrw x18, 0x745, x31	// Write all 1s to CSR
	csrrw x18, 0x745, x0	// Write all 0s to CSR
	csrrs x18, 0x745, x31	// Set all CSR bits
	csrrc x18, 0x745, x31	// Clear all CSR bits
	csrrw x18, 0x745, x10	// Restore CSR

// Testing CSR 0x746
	csrr x2, 0x746	// Read CSR
	li x6, -1
	csrrw x16, 0x746, x6	// Write all 1s to CSR
	csrrw x16, 0x746, x0	// Write all 0s to CSR
	csrrs x16, 0x746, x6	// Set all CSR bits
	csrrc x16, 0x746, x6	// Clear all CSR bits
	csrrw x16, 0x746, x2	// Restore CSR

// Testing CSR 0x747
	csrr x6, 0x747	// Read CSR
	li x29, -1
	csrrw x4, 0x747, x29	// Write all 1s to CSR
	csrrw x4, 0x747, x0	// Write all 0s to CSR
	csrrs x4, 0x747, x29	// Set all CSR bits
	csrrc x4, 0x747, x29	// Clear all CSR bits
	csrrw x4, 0x747, x6	// Restore CSR

// Testing CSR 0x748
	csrr x22, 0x748	// Read CSR
	li x4, -1
	csrrw x16, 0x748, x4	// Write all 1s to CSR
	csrrw x16, 0x748, x0	// Write all 0s to CSR
	csrrs x16, 0x748, x4	// Set all CSR bits
	csrrc x16, 0x748, x4	// Clear all CSR bits
	csrrw x16, 0x748, x22	// Restore CSR

// Testing CSR 0x749
	csrr x27, 0x749	// Read CSR
	li x24, -1
	csrrw x10, 0x749, x24	// Write all 1s to CSR
	csrrw x10, 0x749, x0	// Write all 0s to CSR
	csrrs x10, 0x749, x24	// Set all CSR bits
	csrrc x10, 0x749, x24	// Clear all CSR bits
	csrrw x10, 0x749, x27	// Restore CSR

// Testing CSR 0x74a
	csrr x24, 0x74a	// Read CSR
	li x26, -1
	csrrw x10, 0x74a, x26	// Write all 1s to CSR
	csrrw x10, 0x74a, x0	// Write all 0s to CSR
	csrrs x10, 0x74a, x26	// Set all CSR bits
	csrrc x10, 0x74a, x26	// Clear all CSR bits
	csrrw x10, 0x74a, x24	// Restore CSR

// Testing CSR 0x74b
	csrr x10, 0x74b	// Read CSR
	li x13, -1
	csrrw x2, 0x74b, x13	// Write all 1s to CSR
	csrrw x2, 0x74b, x0	// Write all 0s to CSR
	csrrs x2, 0x74b, x13	// Set all CSR bits
	csrrc x2, 0x74b, x13	// Clear all CSR bits
	csrrw x2, 0x74b, x10	// Restore CSR

// Testing CSR 0x74c
	csrr x19, 0x74c	// Read CSR
	li x27, -1
	csrrw x9, 0x74c, x27	// Write all 1s to CSR
	csrrw x9, 0x74c, x0	// Write all 0s to CSR
	csrrs x9, 0x74c, x27	// Set all CSR bits
	csrrc x9, 0x74c, x27	// Clear all CSR bits
	csrrw x9, 0x74c, x19	// Restore CSR

// Testing CSR 0x74d
	csrr x11, 0x74d	// Read CSR
	li x25, -1
	csrrw x15, 0x74d, x25	// Write all 1s to CSR
	csrrw x15, 0x74d, x0	// Write all 0s to CSR
	csrrs x15, 0x74d, x25	// Set all CSR bits
	csrrc x15, 0x74d, x25	// Clear all CSR bits
	csrrw x15, 0x74d, x11	// Restore CSR

// Testing CSR 0x74e
	csrr x3, 0x74e	// Read CSR
	li x2, -1
	csrrw x25, 0x74e, x2	// Write all 1s to CSR
	csrrw x25, 0x74e, x0	// Write all 0s to CSR
	csrrs x25, 0x74e, x2	// Set all CSR bits
	csrrc x25, 0x74e, x2	// Clear all CSR bits
	csrrw x25, 0x74e, x3	// Restore CSR

// Testing CSR 0x74f
	csrr x21, 0x74f	// Read CSR
	li x23, -1
	csrrw x27, 0x74f, x23	// Write all 1s to CSR
	csrrw x27, 0x74f, x0	// Write all 0s to CSR
	csrrs x27, 0x74f, x23	// Set all CSR bits
	csrrc x27, 0x74f, x23	// Clear all CSR bits
	csrrw x27, 0x74f, x21	// Restore CSR

// Testing CSR 0x750
	csrr x10, 0x750	// Read CSR
	li x8, -1
	csrrw x30, 0x750, x8	// Write all 1s to CSR
	csrrw x30, 0x750, x0	// Write all 0s to CSR
	csrrs x30, 0x750, x8	// Set all CSR bits
	csrrc x30, 0x750, x8	// Clear all CSR bits
	csrrw x30, 0x750, x10	// Restore CSR

// Testing CSR 0x751
	csrr x30, 0x751	// Read CSR
	li x15, -1
	csrrw x21, 0x751, x15	// Write all 1s to CSR
	csrrw x21, 0x751, x0	// Write all 0s to CSR
	csrrs x21, 0x751, x15	// Set all CSR bits
	csrrc x21, 0x751, x15	// Clear all CSR bits
	csrrw x21, 0x751, x30	// Restore CSR

// Testing CSR 0x752
	csrr x10, 0x752	// Read CSR
	li x18, -1
	csrrw x30, 0x752, x18	// Write all 1s to CSR
	csrrw x30, 0x752, x0	// Write all 0s to CSR
	csrrs x30, 0x752, x18	// Set all CSR bits
	csrrc x30, 0x752, x18	// Clear all CSR bits
	csrrw x30, 0x752, x10	// Restore CSR

// Testing CSR 0x753
	csrr x7, 0x753	// Read CSR
	li x13, -1
	csrrw x29, 0x753, x13	// Write all 1s to CSR
	csrrw x29, 0x753, x0	// Write all 0s to CSR
	csrrs x29, 0x753, x13	// Set all CSR bits
	csrrc x29, 0x753, x13	// Clear all CSR bits
	csrrw x29, 0x753, x7	// Restore CSR

// Testing CSR 0x754
	csrr x3, 0x754	// Read CSR
	li x14, -1
	csrrw x2, 0x754, x14	// Write all 1s to CSR
	csrrw x2, 0x754, x0	// Write all 0s to CSR
	csrrs x2, 0x754, x14	// Set all CSR bits
	csrrc x2, 0x754, x14	// Clear all CSR bits
	csrrw x2, 0x754, x3	// Restore CSR

// Testing CSR 0x755
	csrr x2, 0x755	// Read CSR
	li x26, -1
	csrrw x30, 0x755, x26	// Write all 1s to CSR
	csrrw x30, 0x755, x0	// Write all 0s to CSR
	csrrs x30, 0x755, x26	// Set all CSR bits
	csrrc x30, 0x755, x26	// Clear all CSR bits
	csrrw x30, 0x755, x2	// Restore CSR

// Testing CSR 0x756
	csrr x3, 0x756	// Read CSR
	li x12, -1
	csrrw x1, 0x756, x12	// Write all 1s to CSR
	csrrw x1, 0x756, x0	// Write all 0s to CSR
	csrrs x1, 0x756, x12	// Set all CSR bits
	csrrc x1, 0x756, x12	// Clear all CSR bits
	csrrw x1, 0x756, x3	// Restore CSR

// Testing CSR 0x757
	csrr x10, 0x757	// Read CSR
	li x1, -1
	csrrw x2, 0x757, x1	// Write all 1s to CSR
	csrrw x2, 0x757, x0	// Write all 0s to CSR
	csrrs x2, 0x757, x1	// Set all CSR bits
	csrrc x2, 0x757, x1	// Clear all CSR bits
	csrrw x2, 0x757, x10	// Restore CSR

// Testing CSR 0x758
	csrr x2, 0x758	// Read CSR
	li x20, -1
	csrrw x5, 0x758, x20	// Write all 1s to CSR
	csrrw x5, 0x758, x0	// Write all 0s to CSR
	csrrs x5, 0x758, x20	// Set all CSR bits
	csrrc x5, 0x758, x20	// Clear all CSR bits
	csrrw x5, 0x758, x2	// Restore CSR

// Testing CSR 0x759
	csrr x28, 0x759	// Read CSR
	li x20, -1
	csrrw x6, 0x759, x20	// Write all 1s to CSR
	csrrw x6, 0x759, x0	// Write all 0s to CSR
	csrrs x6, 0x759, x20	// Set all CSR bits
	csrrc x6, 0x759, x20	// Clear all CSR bits
	csrrw x6, 0x759, x28	// Restore CSR

// Testing CSR 0x75a
	csrr x16, 0x75a	// Read CSR
	li x21, -1
	csrrw x3, 0x75a, x21	// Write all 1s to CSR
	csrrw x3, 0x75a, x0	// Write all 0s to CSR
	csrrs x3, 0x75a, x21	// Set all CSR bits
	csrrc x3, 0x75a, x21	// Clear all CSR bits
	csrrw x3, 0x75a, x16	// Restore CSR

// Testing CSR 0x75b
	csrr x19, 0x75b	// Read CSR
	li x5, -1
	csrrw x1, 0x75b, x5	// Write all 1s to CSR
	csrrw x1, 0x75b, x0	// Write all 0s to CSR
	csrrs x1, 0x75b, x5	// Set all CSR bits
	csrrc x1, 0x75b, x5	// Clear all CSR bits
	csrrw x1, 0x75b, x19	// Restore CSR

// Testing CSR 0x75c
	csrr x31, 0x75c	// Read CSR
	li x24, -1
	csrrw x18, 0x75c, x24	// Write all 1s to CSR
	csrrw x18, 0x75c, x0	// Write all 0s to CSR
	csrrs x18, 0x75c, x24	// Set all CSR bits
	csrrc x18, 0x75c, x24	// Clear all CSR bits
	csrrw x18, 0x75c, x31	// Restore CSR

// Testing CSR 0x75d
	csrr x5, 0x75d	// Read CSR
	li x26, -1
	csrrw x4, 0x75d, x26	// Write all 1s to CSR
	csrrw x4, 0x75d, x0	// Write all 0s to CSR
	csrrs x4, 0x75d, x26	// Set all CSR bits
	csrrc x4, 0x75d, x26	// Clear all CSR bits
	csrrw x4, 0x75d, x5	// Restore CSR

// Testing CSR 0x75e
	csrr x3, 0x75e	// Read CSR
	li x23, -1
	csrrw x20, 0x75e, x23	// Write all 1s to CSR
	csrrw x20, 0x75e, x0	// Write all 0s to CSR
	csrrs x20, 0x75e, x23	// Set all CSR bits
	csrrc x20, 0x75e, x23	// Clear all CSR bits
	csrrw x20, 0x75e, x3	// Restore CSR

// Testing CSR 0x75f
	csrr x25, 0x75f	// Read CSR
	li x22, -1
	csrrw x4, 0x75f, x22	// Write all 1s to CSR
	csrrw x4, 0x75f, x0	// Write all 0s to CSR
	csrrs x4, 0x75f, x22	// Set all CSR bits
	csrrc x4, 0x75f, x22	// Clear all CSR bits
	csrrw x4, 0x75f, x25	// Restore CSR

// Testing CSR 0x760
	csrr x7, 0x760	// Read CSR
	li x27, -1
	csrrw x4, 0x760, x27	// Write all 1s to CSR
	csrrw x4, 0x760, x0	// Write all 0s to CSR
	csrrs x4, 0x760, x27	// Set all CSR bits
	csrrc x4, 0x760, x27	// Clear all CSR bits
	csrrw x4, 0x760, x7	// Restore CSR

// Testing CSR 0x761
	csrr x30, 0x761	// Read CSR
	li x16, -1
	csrrw x14, 0x761, x16	// Write all 1s to CSR
	csrrw x14, 0x761, x0	// Write all 0s to CSR
	csrrs x14, 0x761, x16	// Set all CSR bits
	csrrc x14, 0x761, x16	// Clear all CSR bits
	csrrw x14, 0x761, x30	// Restore CSR

// Testing CSR 0x762
	csrr x3, 0x762	// Read CSR
	li x4, -1
	csrrw x16, 0x762, x4	// Write all 1s to CSR
	csrrw x16, 0x762, x0	// Write all 0s to CSR
	csrrs x16, 0x762, x4	// Set all CSR bits
	csrrc x16, 0x762, x4	// Clear all CSR bits
	csrrw x16, 0x762, x3	// Restore CSR

// Testing CSR 0x763
	csrr x23, 0x763	// Read CSR
	li x28, -1
	csrrw x15, 0x763, x28	// Write all 1s to CSR
	csrrw x15, 0x763, x0	// Write all 0s to CSR
	csrrs x15, 0x763, x28	// Set all CSR bits
	csrrc x15, 0x763, x28	// Clear all CSR bits
	csrrw x15, 0x763, x23	// Restore CSR

// Testing CSR 0x764
	csrr x17, 0x764	// Read CSR
	li x24, -1
	csrrw x29, 0x764, x24	// Write all 1s to CSR
	csrrw x29, 0x764, x0	// Write all 0s to CSR
	csrrs x29, 0x764, x24	// Set all CSR bits
	csrrc x29, 0x764, x24	// Clear all CSR bits
	csrrw x29, 0x764, x17	// Restore CSR

// Testing CSR 0x765
	csrr x6, 0x765	// Read CSR
	li x18, -1
	csrrw x4, 0x765, x18	// Write all 1s to CSR
	csrrw x4, 0x765, x0	// Write all 0s to CSR
	csrrs x4, 0x765, x18	// Set all CSR bits
	csrrc x4, 0x765, x18	// Clear all CSR bits
	csrrw x4, 0x765, x6	// Restore CSR

// Testing CSR 0x766
	csrr x5, 0x766	// Read CSR
	li x28, -1
	csrrw x12, 0x766, x28	// Write all 1s to CSR
	csrrw x12, 0x766, x0	// Write all 0s to CSR
	csrrs x12, 0x766, x28	// Set all CSR bits
	csrrc x12, 0x766, x28	// Clear all CSR bits
	csrrw x12, 0x766, x5	// Restore CSR

// Testing CSR 0x767
	csrr x24, 0x767	// Read CSR
	li x28, -1
	csrrw x14, 0x767, x28	// Write all 1s to CSR
	csrrw x14, 0x767, x0	// Write all 0s to CSR
	csrrs x14, 0x767, x28	// Set all CSR bits
	csrrc x14, 0x767, x28	// Clear all CSR bits
	csrrw x14, 0x767, x24	// Restore CSR

// Testing CSR 0x768
	csrr x17, 0x768	// Read CSR
	li x5, -1
	csrrw x3, 0x768, x5	// Write all 1s to CSR
	csrrw x3, 0x768, x0	// Write all 0s to CSR
	csrrs x3, 0x768, x5	// Set all CSR bits
	csrrc x3, 0x768, x5	// Clear all CSR bits
	csrrw x3, 0x768, x17	// Restore CSR

// Testing CSR 0x769
	csrr x21, 0x769	// Read CSR
	li x17, -1
	csrrw x31, 0x769, x17	// Write all 1s to CSR
	csrrw x31, 0x769, x0	// Write all 0s to CSR
	csrrs x31, 0x769, x17	// Set all CSR bits
	csrrc x31, 0x769, x17	// Clear all CSR bits
	csrrw x31, 0x769, x21	// Restore CSR

// Testing CSR 0x76a
	csrr x2, 0x76a	// Read CSR
	li x24, -1
	csrrw x29, 0x76a, x24	// Write all 1s to CSR
	csrrw x29, 0x76a, x0	// Write all 0s to CSR
	csrrs x29, 0x76a, x24	// Set all CSR bits
	csrrc x29, 0x76a, x24	// Clear all CSR bits
	csrrw x29, 0x76a, x2	// Restore CSR

// Testing CSR 0x76b
	csrr x18, 0x76b	// Read CSR
	li x8, -1
	csrrw x4, 0x76b, x8	// Write all 1s to CSR
	csrrw x4, 0x76b, x0	// Write all 0s to CSR
	csrrs x4, 0x76b, x8	// Set all CSR bits
	csrrc x4, 0x76b, x8	// Clear all CSR bits
	csrrw x4, 0x76b, x18	// Restore CSR

// Testing CSR 0x76c
	csrr x24, 0x76c	// Read CSR
	li x26, -1
	csrrw x13, 0x76c, x26	// Write all 1s to CSR
	csrrw x13, 0x76c, x0	// Write all 0s to CSR
	csrrs x13, 0x76c, x26	// Set all CSR bits
	csrrc x13, 0x76c, x26	// Clear all CSR bits
	csrrw x13, 0x76c, x24	// Restore CSR

// Testing CSR 0x76d
	csrr x29, 0x76d	// Read CSR
	li x12, -1
	csrrw x17, 0x76d, x12	// Write all 1s to CSR
	csrrw x17, 0x76d, x0	// Write all 0s to CSR
	csrrs x17, 0x76d, x12	// Set all CSR bits
	csrrc x17, 0x76d, x12	// Clear all CSR bits
	csrrw x17, 0x76d, x29	// Restore CSR

// Testing CSR 0x76e
	csrr x30, 0x76e	// Read CSR
	li x11, -1
	csrrw x18, 0x76e, x11	// Write all 1s to CSR
	csrrw x18, 0x76e, x0	// Write all 0s to CSR
	csrrs x18, 0x76e, x11	// Set all CSR bits
	csrrc x18, 0x76e, x11	// Clear all CSR bits
	csrrw x18, 0x76e, x30	// Restore CSR

// Testing CSR 0x76f
	csrr x23, 0x76f	// Read CSR
	li x19, -1
	csrrw x18, 0x76f, x19	// Write all 1s to CSR
	csrrw x18, 0x76f, x0	// Write all 0s to CSR
	csrrs x18, 0x76f, x19	// Set all CSR bits
	csrrc x18, 0x76f, x19	// Clear all CSR bits
	csrrw x18, 0x76f, x23	// Restore CSR

// Testing CSR 0x770
	csrr x13, 0x770	// Read CSR
	li x30, -1
	csrrw x10, 0x770, x30	// Write all 1s to CSR
	csrrw x10, 0x770, x0	// Write all 0s to CSR
	csrrs x10, 0x770, x30	// Set all CSR bits
	csrrc x10, 0x770, x30	// Clear all CSR bits
	csrrw x10, 0x770, x13	// Restore CSR

// Testing CSR 0x771
	csrr x8, 0x771	// Read CSR
	li x19, -1
	csrrw x23, 0x771, x19	// Write all 1s to CSR
	csrrw x23, 0x771, x0	// Write all 0s to CSR
	csrrs x23, 0x771, x19	// Set all CSR bits
	csrrc x23, 0x771, x19	// Clear all CSR bits
	csrrw x23, 0x771, x8	// Restore CSR

// Testing CSR 0x772
	csrr x3, 0x772	// Read CSR
	li x5, -1
	csrrw x20, 0x772, x5	// Write all 1s to CSR
	csrrw x20, 0x772, x0	// Write all 0s to CSR
	csrrs x20, 0x772, x5	// Set all CSR bits
	csrrc x20, 0x772, x5	// Clear all CSR bits
	csrrw x20, 0x772, x3	// Restore CSR

// Testing CSR 0x773
	csrr x13, 0x773	// Read CSR
	li x28, -1
	csrrw x25, 0x773, x28	// Write all 1s to CSR
	csrrw x25, 0x773, x0	// Write all 0s to CSR
	csrrs x25, 0x773, x28	// Set all CSR bits
	csrrc x25, 0x773, x28	// Clear all CSR bits
	csrrw x25, 0x773, x13	// Restore CSR

// Testing CSR 0x774
	csrr x31, 0x774	// Read CSR
	li x12, -1
	csrrw x24, 0x774, x12	// Write all 1s to CSR
	csrrw x24, 0x774, x0	// Write all 0s to CSR
	csrrs x24, 0x774, x12	// Set all CSR bits
	csrrc x24, 0x774, x12	// Clear all CSR bits
	csrrw x24, 0x774, x31	// Restore CSR

// Testing CSR 0x775
	csrr x10, 0x775	// Read CSR
	li x31, -1
	csrrw x12, 0x775, x31	// Write all 1s to CSR
	csrrw x12, 0x775, x0	// Write all 0s to CSR
	csrrs x12, 0x775, x31	// Set all CSR bits
	csrrc x12, 0x775, x31	// Clear all CSR bits
	csrrw x12, 0x775, x10	// Restore CSR

// Testing CSR 0x776
	csrr x17, 0x776	// Read CSR
	li x12, -1
	csrrw x1, 0x776, x12	// Write all 1s to CSR
	csrrw x1, 0x776, x0	// Write all 0s to CSR
	csrrs x1, 0x776, x12	// Set all CSR bits
	csrrc x1, 0x776, x12	// Clear all CSR bits
	csrrw x1, 0x776, x17	// Restore CSR

// Testing CSR 0x777
	csrr x1, 0x777	// Read CSR
	li x9, -1
	csrrw x5, 0x777, x9	// Write all 1s to CSR
	csrrw x5, 0x777, x0	// Write all 0s to CSR
	csrrs x5, 0x777, x9	// Set all CSR bits
	csrrc x5, 0x777, x9	// Clear all CSR bits
	csrrw x5, 0x777, x1	// Restore CSR

// Testing CSR 0x778
	csrr x24, 0x778	// Read CSR
	li x22, -1
	csrrw x23, 0x778, x22	// Write all 1s to CSR
	csrrw x23, 0x778, x0	// Write all 0s to CSR
	csrrs x23, 0x778, x22	// Set all CSR bits
	csrrc x23, 0x778, x22	// Clear all CSR bits
	csrrw x23, 0x778, x24	// Restore CSR

// Testing CSR 0x779
	csrr x7, 0x779	// Read CSR
	li x21, -1
	csrrw x29, 0x779, x21	// Write all 1s to CSR
	csrrw x29, 0x779, x0	// Write all 0s to CSR
	csrrs x29, 0x779, x21	// Set all CSR bits
	csrrc x29, 0x779, x21	// Clear all CSR bits
	csrrw x29, 0x779, x7	// Restore CSR

// Testing CSR 0x77a
	csrr x5, 0x77a	// Read CSR
	li x6, -1
	csrrw x4, 0x77a, x6	// Write all 1s to CSR
	csrrw x4, 0x77a, x0	// Write all 0s to CSR
	csrrs x4, 0x77a, x6	// Set all CSR bits
	csrrc x4, 0x77a, x6	// Clear all CSR bits
	csrrw x4, 0x77a, x5	// Restore CSR

// Testing CSR 0x77b
	csrr x27, 0x77b	// Read CSR
	li x16, -1
	csrrw x24, 0x77b, x16	// Write all 1s to CSR
	csrrw x24, 0x77b, x0	// Write all 0s to CSR
	csrrs x24, 0x77b, x16	// Set all CSR bits
	csrrc x24, 0x77b, x16	// Clear all CSR bits
	csrrw x24, 0x77b, x27	// Restore CSR

// Testing CSR 0x77c
	csrr x16, 0x77c	// Read CSR
	li x22, -1
	csrrw x5, 0x77c, x22	// Write all 1s to CSR
	csrrw x5, 0x77c, x0	// Write all 0s to CSR
	csrrs x5, 0x77c, x22	// Set all CSR bits
	csrrc x5, 0x77c, x22	// Clear all CSR bits
	csrrw x5, 0x77c, x16	// Restore CSR

// Testing CSR 0x77d
	csrr x9, 0x77d	// Read CSR
	li x31, -1
	csrrw x27, 0x77d, x31	// Write all 1s to CSR
	csrrw x27, 0x77d, x0	// Write all 0s to CSR
	csrrs x27, 0x77d, x31	// Set all CSR bits
	csrrc x27, 0x77d, x31	// Clear all CSR bits
	csrrw x27, 0x77d, x9	// Restore CSR

// Testing CSR 0x77e
	csrr x5, 0x77e	// Read CSR
	li x28, -1
	csrrw x2, 0x77e, x28	// Write all 1s to CSR
	csrrw x2, 0x77e, x0	// Write all 0s to CSR
	csrrs x2, 0x77e, x28	// Set all CSR bits
	csrrc x2, 0x77e, x28	// Clear all CSR bits
	csrrw x2, 0x77e, x5	// Restore CSR

// Testing CSR 0x77f
	csrr x6, 0x77f	// Read CSR
	li x30, -1
	csrrw x22, 0x77f, x30	// Write all 1s to CSR
	csrrw x22, 0x77f, x0	// Write all 0s to CSR
	csrrs x22, 0x77f, x30	// Set all CSR bits
	csrrc x22, 0x77f, x30	// Clear all CSR bits
	csrrw x22, 0x77f, x6	// Restore CSR

// Testing CSR 0x780
	csrr x12, 0x780	// Read CSR
	li x27, -1
	csrrw x24, 0x780, x27	// Write all 1s to CSR
	csrrw x24, 0x780, x0	// Write all 0s to CSR
	csrrs x24, 0x780, x27	// Set all CSR bits
	csrrc x24, 0x780, x27	// Clear all CSR bits
	csrrw x24, 0x780, x12	// Restore CSR

// Testing CSR 0x781
	csrr x11, 0x781	// Read CSR
	li x7, -1
	csrrw x21, 0x781, x7	// Write all 1s to CSR
	csrrw x21, 0x781, x0	// Write all 0s to CSR
	csrrs x21, 0x781, x7	// Set all CSR bits
	csrrc x21, 0x781, x7	// Clear all CSR bits
	csrrw x21, 0x781, x11	// Restore CSR

// Testing CSR 0x782
	csrr x4, 0x782	// Read CSR
	li x17, -1
	csrrw x26, 0x782, x17	// Write all 1s to CSR
	csrrw x26, 0x782, x0	// Write all 0s to CSR
	csrrs x26, 0x782, x17	// Set all CSR bits
	csrrc x26, 0x782, x17	// Clear all CSR bits
	csrrw x26, 0x782, x4	// Restore CSR

// Testing CSR 0x783
	csrr x16, 0x783	// Read CSR
	li x5, -1
	csrrw x21, 0x783, x5	// Write all 1s to CSR
	csrrw x21, 0x783, x0	// Write all 0s to CSR
	csrrs x21, 0x783, x5	// Set all CSR bits
	csrrc x21, 0x783, x5	// Clear all CSR bits
	csrrw x21, 0x783, x16	// Restore CSR

// Testing CSR 0x784
	csrr x9, 0x784	// Read CSR
	li x11, -1
	csrrw x7, 0x784, x11	// Write all 1s to CSR
	csrrw x7, 0x784, x0	// Write all 0s to CSR
	csrrs x7, 0x784, x11	// Set all CSR bits
	csrrc x7, 0x784, x11	// Clear all CSR bits
	csrrw x7, 0x784, x9	// Restore CSR

// Testing CSR 0x785
	csrr x21, 0x785	// Read CSR
	li x4, -1
	csrrw x20, 0x785, x4	// Write all 1s to CSR
	csrrw x20, 0x785, x0	// Write all 0s to CSR
	csrrs x20, 0x785, x4	// Set all CSR bits
	csrrc x20, 0x785, x4	// Clear all CSR bits
	csrrw x20, 0x785, x21	// Restore CSR

// Testing CSR 0x786
	csrr x22, 0x786	// Read CSR
	li x23, -1
	csrrw x8, 0x786, x23	// Write all 1s to CSR
	csrrw x8, 0x786, x0	// Write all 0s to CSR
	csrrs x8, 0x786, x23	// Set all CSR bits
	csrrc x8, 0x786, x23	// Clear all CSR bits
	csrrw x8, 0x786, x22	// Restore CSR

// Testing CSR 0x787
	csrr x12, 0x787	// Read CSR
	li x26, -1
	csrrw x13, 0x787, x26	// Write all 1s to CSR
	csrrw x13, 0x787, x0	// Write all 0s to CSR
	csrrs x13, 0x787, x26	// Set all CSR bits
	csrrc x13, 0x787, x26	// Clear all CSR bits
	csrrw x13, 0x787, x12	// Restore CSR

// Testing CSR 0x788
	csrr x25, 0x788	// Read CSR
	li x4, -1
	csrrw x31, 0x788, x4	// Write all 1s to CSR
	csrrw x31, 0x788, x0	// Write all 0s to CSR
	csrrs x31, 0x788, x4	// Set all CSR bits
	csrrc x31, 0x788, x4	// Clear all CSR bits
	csrrw x31, 0x788, x25	// Restore CSR

// Testing CSR 0x789
	csrr x9, 0x789	// Read CSR
	li x25, -1
	csrrw x30, 0x789, x25	// Write all 1s to CSR
	csrrw x30, 0x789, x0	// Write all 0s to CSR
	csrrs x30, 0x789, x25	// Set all CSR bits
	csrrc x30, 0x789, x25	// Clear all CSR bits
	csrrw x30, 0x789, x9	// Restore CSR

// Testing CSR 0x78a
	csrr x13, 0x78a	// Read CSR
	li x18, -1
	csrrw x12, 0x78a, x18	// Write all 1s to CSR
	csrrw x12, 0x78a, x0	// Write all 0s to CSR
	csrrs x12, 0x78a, x18	// Set all CSR bits
	csrrc x12, 0x78a, x18	// Clear all CSR bits
	csrrw x12, 0x78a, x13	// Restore CSR

// Testing CSR 0x78b
	csrr x2, 0x78b	// Read CSR
	li x21, -1
	csrrw x11, 0x78b, x21	// Write all 1s to CSR
	csrrw x11, 0x78b, x0	// Write all 0s to CSR
	csrrs x11, 0x78b, x21	// Set all CSR bits
	csrrc x11, 0x78b, x21	// Clear all CSR bits
	csrrw x11, 0x78b, x2	// Restore CSR

// Testing CSR 0x78c
	csrr x8, 0x78c	// Read CSR
	li x13, -1
	csrrw x2, 0x78c, x13	// Write all 1s to CSR
	csrrw x2, 0x78c, x0	// Write all 0s to CSR
	csrrs x2, 0x78c, x13	// Set all CSR bits
	csrrc x2, 0x78c, x13	// Clear all CSR bits
	csrrw x2, 0x78c, x8	// Restore CSR

// Testing CSR 0x78d
	csrr x31, 0x78d	// Read CSR
	li x25, -1
	csrrw x14, 0x78d, x25	// Write all 1s to CSR
	csrrw x14, 0x78d, x0	// Write all 0s to CSR
	csrrs x14, 0x78d, x25	// Set all CSR bits
	csrrc x14, 0x78d, x25	// Clear all CSR bits
	csrrw x14, 0x78d, x31	// Restore CSR

// Testing CSR 0x78e
	csrr x18, 0x78e	// Read CSR
	li x9, -1
	csrrw x25, 0x78e, x9	// Write all 1s to CSR
	csrrw x25, 0x78e, x0	// Write all 0s to CSR
	csrrs x25, 0x78e, x9	// Set all CSR bits
	csrrc x25, 0x78e, x9	// Clear all CSR bits
	csrrw x25, 0x78e, x18	// Restore CSR

// Testing CSR 0x78f
	csrr x26, 0x78f	// Read CSR
	li x6, -1
	csrrw x30, 0x78f, x6	// Write all 1s to CSR
	csrrw x30, 0x78f, x0	// Write all 0s to CSR
	csrrs x30, 0x78f, x6	// Set all CSR bits
	csrrc x30, 0x78f, x6	// Clear all CSR bits
	csrrw x30, 0x78f, x26	// Restore CSR

// Testing CSR 0x790
	csrr x9, 0x790	// Read CSR
	li x2, -1
	csrrw x24, 0x790, x2	// Write all 1s to CSR
	csrrw x24, 0x790, x0	// Write all 0s to CSR
	csrrs x24, 0x790, x2	// Set all CSR bits
	csrrc x24, 0x790, x2	// Clear all CSR bits
	csrrw x24, 0x790, x9	// Restore CSR

// Testing CSR 0x791
	csrr x9, 0x791	// Read CSR
	li x24, -1
	csrrw x3, 0x791, x24	// Write all 1s to CSR
	csrrw x3, 0x791, x0	// Write all 0s to CSR
	csrrs x3, 0x791, x24	// Set all CSR bits
	csrrc x3, 0x791, x24	// Clear all CSR bits
	csrrw x3, 0x791, x9	// Restore CSR

// Testing CSR 0x792
	csrr x11, 0x792	// Read CSR
	li x21, -1
	csrrw x14, 0x792, x21	// Write all 1s to CSR
	csrrw x14, 0x792, x0	// Write all 0s to CSR
	csrrs x14, 0x792, x21	// Set all CSR bits
	csrrc x14, 0x792, x21	// Clear all CSR bits
	csrrw x14, 0x792, x11	// Restore CSR

// Testing CSR 0x793
	csrr x1, 0x793	// Read CSR
	li x25, -1
	csrrw x22, 0x793, x25	// Write all 1s to CSR
	csrrw x22, 0x793, x0	// Write all 0s to CSR
	csrrs x22, 0x793, x25	// Set all CSR bits
	csrrc x22, 0x793, x25	// Clear all CSR bits
	csrrw x22, 0x793, x1	// Restore CSR

// Testing CSR 0x794
	csrr x9, 0x794	// Read CSR
	li x8, -1
	csrrw x21, 0x794, x8	// Write all 1s to CSR
	csrrw x21, 0x794, x0	// Write all 0s to CSR
	csrrs x21, 0x794, x8	// Set all CSR bits
	csrrc x21, 0x794, x8	// Clear all CSR bits
	csrrw x21, 0x794, x9	// Restore CSR

// Testing CSR 0x795
	csrr x30, 0x795	// Read CSR
	li x27, -1
	csrrw x28, 0x795, x27	// Write all 1s to CSR
	csrrw x28, 0x795, x0	// Write all 0s to CSR
	csrrs x28, 0x795, x27	// Set all CSR bits
	csrrc x28, 0x795, x27	// Clear all CSR bits
	csrrw x28, 0x795, x30	// Restore CSR

// Testing CSR 0x796
	csrr x25, 0x796	// Read CSR
	li x23, -1
	csrrw x6, 0x796, x23	// Write all 1s to CSR
	csrrw x6, 0x796, x0	// Write all 0s to CSR
	csrrs x6, 0x796, x23	// Set all CSR bits
	csrrc x6, 0x796, x23	// Clear all CSR bits
	csrrw x6, 0x796, x25	// Restore CSR

// Testing CSR 0x797
	csrr x9, 0x797	// Read CSR
	li x12, -1
	csrrw x30, 0x797, x12	// Write all 1s to CSR
	csrrw x30, 0x797, x0	// Write all 0s to CSR
	csrrs x30, 0x797, x12	// Set all CSR bits
	csrrc x30, 0x797, x12	// Clear all CSR bits
	csrrw x30, 0x797, x9	// Restore CSR

// Testing CSR 0x798
	csrr x31, 0x798	// Read CSR
	li x27, -1
	csrrw x17, 0x798, x27	// Write all 1s to CSR
	csrrw x17, 0x798, x0	// Write all 0s to CSR
	csrrs x17, 0x798, x27	// Set all CSR bits
	csrrc x17, 0x798, x27	// Clear all CSR bits
	csrrw x17, 0x798, x31	// Restore CSR

// Testing CSR 0x799
	csrr x21, 0x799	// Read CSR
	li x4, -1
	csrrw x6, 0x799, x4	// Write all 1s to CSR
	csrrw x6, 0x799, x0	// Write all 0s to CSR
	csrrs x6, 0x799, x4	// Set all CSR bits
	csrrc x6, 0x799, x4	// Clear all CSR bits
	csrrw x6, 0x799, x21	// Restore CSR

// Testing CSR 0x79a
	csrr x16, 0x79a	// Read CSR
	li x7, -1
	csrrw x28, 0x79a, x7	// Write all 1s to CSR
	csrrw x28, 0x79a, x0	// Write all 0s to CSR
	csrrs x28, 0x79a, x7	// Set all CSR bits
	csrrc x28, 0x79a, x7	// Clear all CSR bits
	csrrw x28, 0x79a, x16	// Restore CSR

// Testing CSR 0x79b
	csrr x19, 0x79b	// Read CSR
	li x20, -1
	csrrw x3, 0x79b, x20	// Write all 1s to CSR
	csrrw x3, 0x79b, x0	// Write all 0s to CSR
	csrrs x3, 0x79b, x20	// Set all CSR bits
	csrrc x3, 0x79b, x20	// Clear all CSR bits
	csrrw x3, 0x79b, x19	// Restore CSR

// Testing CSR 0x79c
	csrr x14, 0x79c	// Read CSR
	li x10, -1
	csrrw x27, 0x79c, x10	// Write all 1s to CSR
	csrrw x27, 0x79c, x0	// Write all 0s to CSR
	csrrs x27, 0x79c, x10	// Set all CSR bits
	csrrc x27, 0x79c, x10	// Clear all CSR bits
	csrrw x27, 0x79c, x14	// Restore CSR

// Testing CSR 0x79d
	csrr x23, 0x79d	// Read CSR
	li x22, -1
	csrrw x2, 0x79d, x22	// Write all 1s to CSR
	csrrw x2, 0x79d, x0	// Write all 0s to CSR
	csrrs x2, 0x79d, x22	// Set all CSR bits
	csrrc x2, 0x79d, x22	// Clear all CSR bits
	csrrw x2, 0x79d, x23	// Restore CSR

// Testing CSR 0x79e
	csrr x9, 0x79e	// Read CSR
	li x1, -1
	csrrw x26, 0x79e, x1	// Write all 1s to CSR
	csrrw x26, 0x79e, x0	// Write all 0s to CSR
	csrrs x26, 0x79e, x1	// Set all CSR bits
	csrrc x26, 0x79e, x1	// Clear all CSR bits
	csrrw x26, 0x79e, x9	// Restore CSR

// Testing CSR 0x79f
	csrr x20, 0x79f	// Read CSR
	li x6, -1
	csrrw x11, 0x79f, x6	// Write all 1s to CSR
	csrrw x11, 0x79f, x0	// Write all 0s to CSR
	csrrs x11, 0x79f, x6	// Set all CSR bits
	csrrc x11, 0x79f, x6	// Clear all CSR bits
	csrrw x11, 0x79f, x20	// Restore CSR

// Testing CSR 0x7b0
	csrr x6, 0x7b0	// Read CSR
	li x29, -1
	csrrw x13, 0x7b0, x29	// Write all 1s to CSR
	csrrw x13, 0x7b0, x0	// Write all 0s to CSR
	csrrs x13, 0x7b0, x29	// Set all CSR bits
	csrrc x13, 0x7b0, x29	// Clear all CSR bits
	csrrw x13, 0x7b0, x6	// Restore CSR

// Testing CSR 0x7b1
	csrr x8, 0x7b1	// Read CSR
	li x19, -1
	csrrw x18, 0x7b1, x19	// Write all 1s to CSR
	csrrw x18, 0x7b1, x0	// Write all 0s to CSR
	csrrs x18, 0x7b1, x19	// Set all CSR bits
	csrrc x18, 0x7b1, x19	// Clear all CSR bits
	csrrw x18, 0x7b1, x8	// Restore CSR

// Testing CSR 0x7b2
	csrr x27, 0x7b2	// Read CSR
	li x7, -1
	csrrw x30, 0x7b2, x7	// Write all 1s to CSR
	csrrw x30, 0x7b2, x0	// Write all 0s to CSR
	csrrs x30, 0x7b2, x7	// Set all CSR bits
	csrrc x30, 0x7b2, x7	// Clear all CSR bits
	csrrw x30, 0x7b2, x27	// Restore CSR

// Testing CSR 0x7b3
	csrr x31, 0x7b3	// Read CSR
	li x2, -1
	csrrw x21, 0x7b3, x2	// Write all 1s to CSR
	csrrw x21, 0x7b3, x0	// Write all 0s to CSR
	csrrs x21, 0x7b3, x2	// Set all CSR bits
	csrrc x21, 0x7b3, x2	// Clear all CSR bits
	csrrw x21, 0x7b3, x31	// Restore CSR

// Testing CSR 0x7b4
	csrr x18, 0x7b4	// Read CSR
	li x25, -1
	csrrw x28, 0x7b4, x25	// Write all 1s to CSR
	csrrw x28, 0x7b4, x0	// Write all 0s to CSR
	csrrs x28, 0x7b4, x25	// Set all CSR bits
	csrrc x28, 0x7b4, x25	// Clear all CSR bits
	csrrw x28, 0x7b4, x18	// Restore CSR

// Testing CSR 0x7b5
	csrr x29, 0x7b5	// Read CSR
	li x7, -1
	csrrw x15, 0x7b5, x7	// Write all 1s to CSR
	csrrw x15, 0x7b5, x0	// Write all 0s to CSR
	csrrs x15, 0x7b5, x7	// Set all CSR bits
	csrrc x15, 0x7b5, x7	// Clear all CSR bits
	csrrw x15, 0x7b5, x29	// Restore CSR

// Testing CSR 0x7b6
	csrr x29, 0x7b6	// Read CSR
	li x18, -1
	csrrw x22, 0x7b6, x18	// Write all 1s to CSR
	csrrw x22, 0x7b6, x0	// Write all 0s to CSR
	csrrs x22, 0x7b6, x18	// Set all CSR bits
	csrrc x22, 0x7b6, x18	// Clear all CSR bits
	csrrw x22, 0x7b6, x29	// Restore CSR

// Testing CSR 0x7b7
	csrr x15, 0x7b7	// Read CSR
	li x19, -1
	csrrw x20, 0x7b7, x19	// Write all 1s to CSR
	csrrw x20, 0x7b7, x0	// Write all 0s to CSR
	csrrs x20, 0x7b7, x19	// Set all CSR bits
	csrrc x20, 0x7b7, x19	// Clear all CSR bits
	csrrw x20, 0x7b7, x15	// Restore CSR

// Testing CSR 0x7b8
	csrr x31, 0x7b8	// Read CSR
	li x11, -1
	csrrw x27, 0x7b8, x11	// Write all 1s to CSR
	csrrw x27, 0x7b8, x0	// Write all 0s to CSR
	csrrs x27, 0x7b8, x11	// Set all CSR bits
	csrrc x27, 0x7b8, x11	// Clear all CSR bits
	csrrw x27, 0x7b8, x31	// Restore CSR

// Testing CSR 0x7b9
	csrr x12, 0x7b9	// Read CSR
	li x25, -1
	csrrw x4, 0x7b9, x25	// Write all 1s to CSR
	csrrw x4, 0x7b9, x0	// Write all 0s to CSR
	csrrs x4, 0x7b9, x25	// Set all CSR bits
	csrrc x4, 0x7b9, x25	// Clear all CSR bits
	csrrw x4, 0x7b9, x12	// Restore CSR

// Testing CSR 0x7ba
	csrr x26, 0x7ba	// Read CSR
	li x1, -1
	csrrw x14, 0x7ba, x1	// Write all 1s to CSR
	csrrw x14, 0x7ba, x0	// Write all 0s to CSR
	csrrs x14, 0x7ba, x1	// Set all CSR bits
	csrrc x14, 0x7ba, x1	// Clear all CSR bits
	csrrw x14, 0x7ba, x26	// Restore CSR

// Testing CSR 0x7bb
	csrr x12, 0x7bb	// Read CSR
	li x6, -1
	csrrw x16, 0x7bb, x6	// Write all 1s to CSR
	csrrw x16, 0x7bb, x0	// Write all 0s to CSR
	csrrs x16, 0x7bb, x6	// Set all CSR bits
	csrrc x16, 0x7bb, x6	// Clear all CSR bits
	csrrw x16, 0x7bb, x12	// Restore CSR

// Testing CSR 0x7bc
	csrr x28, 0x7bc	// Read CSR
	li x29, -1
	csrrw x8, 0x7bc, x29	// Write all 1s to CSR
	csrrw x8, 0x7bc, x0	// Write all 0s to CSR
	csrrs x8, 0x7bc, x29	// Set all CSR bits
	csrrc x8, 0x7bc, x29	// Clear all CSR bits
	csrrw x8, 0x7bc, x28	// Restore CSR

// Testing CSR 0x7bd
	csrr x24, 0x7bd	// Read CSR
	li x22, -1
	csrrw x28, 0x7bd, x22	// Write all 1s to CSR
	csrrw x28, 0x7bd, x0	// Write all 0s to CSR
	csrrs x28, 0x7bd, x22	// Set all CSR bits
	csrrc x28, 0x7bd, x22	// Clear all CSR bits
	csrrw x28, 0x7bd, x24	// Restore CSR

// Testing CSR 0x7be
	csrr x21, 0x7be	// Read CSR
	li x26, -1
	csrrw x29, 0x7be, x26	// Write all 1s to CSR
	csrrw x29, 0x7be, x0	// Write all 0s to CSR
	csrrs x29, 0x7be, x26	// Set all CSR bits
	csrrc x29, 0x7be, x26	// Clear all CSR bits
	csrrw x29, 0x7be, x21	// Restore CSR

// Testing CSR 0x7bf
	csrr x24, 0x7bf	// Read CSR
	li x21, -1
	csrrw x29, 0x7bf, x21	// Write all 1s to CSR
	csrrw x29, 0x7bf, x0	// Write all 0s to CSR
	csrrs x29, 0x7bf, x21	// Set all CSR bits
	csrrc x29, 0x7bf, x21	// Clear all CSR bits
	csrrw x29, 0x7bf, x24	// Restore CSR

// Testing CSR 0x900
	csrr x29, 0x900	// Read CSR
	li x30, -1
	csrrw x13, 0x900, x30	// Write all 1s to CSR
	csrrw x13, 0x900, x0	// Write all 0s to CSR
	csrrs x13, 0x900, x30	// Set all CSR bits
	csrrc x13, 0x900, x30	// Clear all CSR bits
	csrrw x13, 0x900, x29	// Restore CSR

// Testing CSR 0x901
	csrr x25, 0x901	// Read CSR
	li x20, -1
	csrrw x1, 0x901, x20	// Write all 1s to CSR
	csrrw x1, 0x901, x0	// Write all 0s to CSR
	csrrs x1, 0x901, x20	// Set all CSR bits
	csrrc x1, 0x901, x20	// Clear all CSR bits
	csrrw x1, 0x901, x25	// Restore CSR

// Testing CSR 0x902
	csrr x22, 0x902	// Read CSR
	li x28, -1
	csrrw x30, 0x902, x28	// Write all 1s to CSR
	csrrw x30, 0x902, x0	// Write all 0s to CSR
	csrrs x30, 0x902, x28	// Set all CSR bits
	csrrc x30, 0x902, x28	// Clear all CSR bits
	csrrw x30, 0x902, x22	// Restore CSR

// Testing CSR 0x903
	csrr x7, 0x903	// Read CSR
	li x20, -1
	csrrw x24, 0x903, x20	// Write all 1s to CSR
	csrrw x24, 0x903, x0	// Write all 0s to CSR
	csrrs x24, 0x903, x20	// Set all CSR bits
	csrrc x24, 0x903, x20	// Clear all CSR bits
	csrrw x24, 0x903, x7	// Restore CSR

// Testing CSR 0x904
	csrr x16, 0x904	// Read CSR
	li x14, -1
	csrrw x25, 0x904, x14	// Write all 1s to CSR
	csrrw x25, 0x904, x0	// Write all 0s to CSR
	csrrs x25, 0x904, x14	// Set all CSR bits
	csrrc x25, 0x904, x14	// Clear all CSR bits
	csrrw x25, 0x904, x16	// Restore CSR

// Testing CSR 0x905
	csrr x13, 0x905	// Read CSR
	li x6, -1
	csrrw x5, 0x905, x6	// Write all 1s to CSR
	csrrw x5, 0x905, x0	// Write all 0s to CSR
	csrrs x5, 0x905, x6	// Set all CSR bits
	csrrc x5, 0x905, x6	// Clear all CSR bits
	csrrw x5, 0x905, x13	// Restore CSR

// Testing CSR 0x906
	csrr x22, 0x906	// Read CSR
	li x14, -1
	csrrw x13, 0x906, x14	// Write all 1s to CSR
	csrrw x13, 0x906, x0	// Write all 0s to CSR
	csrrs x13, 0x906, x14	// Set all CSR bits
	csrrc x13, 0x906, x14	// Clear all CSR bits
	csrrw x13, 0x906, x22	// Restore CSR

// Testing CSR 0x907
	csrr x15, 0x907	// Read CSR
	li x27, -1
	csrrw x31, 0x907, x27	// Write all 1s to CSR
	csrrw x31, 0x907, x0	// Write all 0s to CSR
	csrrs x31, 0x907, x27	// Set all CSR bits
	csrrc x31, 0x907, x27	// Clear all CSR bits
	csrrw x31, 0x907, x15	// Restore CSR

// Testing CSR 0x908
	csrr x24, 0x908	// Read CSR
	li x7, -1
	csrrw x21, 0x908, x7	// Write all 1s to CSR
	csrrw x21, 0x908, x0	// Write all 0s to CSR
	csrrs x21, 0x908, x7	// Set all CSR bits
	csrrc x21, 0x908, x7	// Clear all CSR bits
	csrrw x21, 0x908, x24	// Restore CSR

// Testing CSR 0x909
	csrr x9, 0x909	// Read CSR
	li x3, -1
	csrrw x23, 0x909, x3	// Write all 1s to CSR
	csrrw x23, 0x909, x0	// Write all 0s to CSR
	csrrs x23, 0x909, x3	// Set all CSR bits
	csrrc x23, 0x909, x3	// Clear all CSR bits
	csrrw x23, 0x909, x9	// Restore CSR

// Testing CSR 0x90a
	csrr x30, 0x90a	// Read CSR
	li x6, -1
	csrrw x19, 0x90a, x6	// Write all 1s to CSR
	csrrw x19, 0x90a, x0	// Write all 0s to CSR
	csrrs x19, 0x90a, x6	// Set all CSR bits
	csrrc x19, 0x90a, x6	// Clear all CSR bits
	csrrw x19, 0x90a, x30	// Restore CSR

// Testing CSR 0x90b
	csrr x1, 0x90b	// Read CSR
	li x10, -1
	csrrw x30, 0x90b, x10	// Write all 1s to CSR
	csrrw x30, 0x90b, x0	// Write all 0s to CSR
	csrrs x30, 0x90b, x10	// Set all CSR bits
	csrrc x30, 0x90b, x10	// Clear all CSR bits
	csrrw x30, 0x90b, x1	// Restore CSR

// Testing CSR 0x90c
	csrr x24, 0x90c	// Read CSR
	li x6, -1
	csrrw x4, 0x90c, x6	// Write all 1s to CSR
	csrrw x4, 0x90c, x0	// Write all 0s to CSR
	csrrs x4, 0x90c, x6	// Set all CSR bits
	csrrc x4, 0x90c, x6	// Clear all CSR bits
	csrrw x4, 0x90c, x24	// Restore CSR

// Testing CSR 0x90d
	csrr x5, 0x90d	// Read CSR
	li x9, -1
	csrrw x6, 0x90d, x9	// Write all 1s to CSR
	csrrw x6, 0x90d, x0	// Write all 0s to CSR
	csrrs x6, 0x90d, x9	// Set all CSR bits
	csrrc x6, 0x90d, x9	// Clear all CSR bits
	csrrw x6, 0x90d, x5	// Restore CSR

// Testing CSR 0x90e
	csrr x13, 0x90e	// Read CSR
	li x9, -1
	csrrw x17, 0x90e, x9	// Write all 1s to CSR
	csrrw x17, 0x90e, x0	// Write all 0s to CSR
	csrrs x17, 0x90e, x9	// Set all CSR bits
	csrrc x17, 0x90e, x9	// Clear all CSR bits
	csrrw x17, 0x90e, x13	// Restore CSR

// Testing CSR 0x90f
	csrr x29, 0x90f	// Read CSR
	li x21, -1
	csrrw x14, 0x90f, x21	// Write all 1s to CSR
	csrrw x14, 0x90f, x0	// Write all 0s to CSR
	csrrs x14, 0x90f, x21	// Set all CSR bits
	csrrc x14, 0x90f, x21	// Clear all CSR bits
	csrrw x14, 0x90f, x29	// Restore CSR

// Testing CSR 0x910
	csrr x11, 0x910	// Read CSR
	li x18, -1
	csrrw x24, 0x910, x18	// Write all 1s to CSR
	csrrw x24, 0x910, x0	// Write all 0s to CSR
	csrrs x24, 0x910, x18	// Set all CSR bits
	csrrc x24, 0x910, x18	// Clear all CSR bits
	csrrw x24, 0x910, x11	// Restore CSR

// Testing CSR 0x911
	csrr x14, 0x911	// Read CSR
	li x16, -1
	csrrw x15, 0x911, x16	// Write all 1s to CSR
	csrrw x15, 0x911, x0	// Write all 0s to CSR
	csrrs x15, 0x911, x16	// Set all CSR bits
	csrrc x15, 0x911, x16	// Clear all CSR bits
	csrrw x15, 0x911, x14	// Restore CSR

// Testing CSR 0x912
	csrr x4, 0x912	// Read CSR
	li x9, -1
	csrrw x20, 0x912, x9	// Write all 1s to CSR
	csrrw x20, 0x912, x0	// Write all 0s to CSR
	csrrs x20, 0x912, x9	// Set all CSR bits
	csrrc x20, 0x912, x9	// Clear all CSR bits
	csrrw x20, 0x912, x4	// Restore CSR

// Testing CSR 0x913
	csrr x11, 0x913	// Read CSR
	li x9, -1
	csrrw x24, 0x913, x9	// Write all 1s to CSR
	csrrw x24, 0x913, x0	// Write all 0s to CSR
	csrrs x24, 0x913, x9	// Set all CSR bits
	csrrc x24, 0x913, x9	// Clear all CSR bits
	csrrw x24, 0x913, x11	// Restore CSR

// Testing CSR 0x914
	csrr x10, 0x914	// Read CSR
	li x13, -1
	csrrw x20, 0x914, x13	// Write all 1s to CSR
	csrrw x20, 0x914, x0	// Write all 0s to CSR
	csrrs x20, 0x914, x13	// Set all CSR bits
	csrrc x20, 0x914, x13	// Clear all CSR bits
	csrrw x20, 0x914, x10	// Restore CSR

// Testing CSR 0x915
	csrr x17, 0x915	// Read CSR
	li x1, -1
	csrrw x16, 0x915, x1	// Write all 1s to CSR
	csrrw x16, 0x915, x0	// Write all 0s to CSR
	csrrs x16, 0x915, x1	// Set all CSR bits
	csrrc x16, 0x915, x1	// Clear all CSR bits
	csrrw x16, 0x915, x17	// Restore CSR

// Testing CSR 0x916
	csrr x30, 0x916	// Read CSR
	li x21, -1
	csrrw x17, 0x916, x21	// Write all 1s to CSR
	csrrw x17, 0x916, x0	// Write all 0s to CSR
	csrrs x17, 0x916, x21	// Set all CSR bits
	csrrc x17, 0x916, x21	// Clear all CSR bits
	csrrw x17, 0x916, x30	// Restore CSR

// Testing CSR 0x917
	csrr x31, 0x917	// Read CSR
	li x17, -1
	csrrw x7, 0x917, x17	// Write all 1s to CSR
	csrrw x7, 0x917, x0	// Write all 0s to CSR
	csrrs x7, 0x917, x17	// Set all CSR bits
	csrrc x7, 0x917, x17	// Clear all CSR bits
	csrrw x7, 0x917, x31	// Restore CSR

// Testing CSR 0x918
	csrr x14, 0x918	// Read CSR
	li x9, -1
	csrrw x24, 0x918, x9	// Write all 1s to CSR
	csrrw x24, 0x918, x0	// Write all 0s to CSR
	csrrs x24, 0x918, x9	// Set all CSR bits
	csrrc x24, 0x918, x9	// Clear all CSR bits
	csrrw x24, 0x918, x14	// Restore CSR

// Testing CSR 0x919
	csrr x21, 0x919	// Read CSR
	li x25, -1
	csrrw x14, 0x919, x25	// Write all 1s to CSR
	csrrw x14, 0x919, x0	// Write all 0s to CSR
	csrrs x14, 0x919, x25	// Set all CSR bits
	csrrc x14, 0x919, x25	// Clear all CSR bits
	csrrw x14, 0x919, x21	// Restore CSR

// Testing CSR 0x91a
	csrr x24, 0x91a	// Read CSR
	li x2, -1
	csrrw x31, 0x91a, x2	// Write all 1s to CSR
	csrrw x31, 0x91a, x0	// Write all 0s to CSR
	csrrs x31, 0x91a, x2	// Set all CSR bits
	csrrc x31, 0x91a, x2	// Clear all CSR bits
	csrrw x31, 0x91a, x24	// Restore CSR

// Testing CSR 0x91b
	csrr x1, 0x91b	// Read CSR
	li x14, -1
	csrrw x18, 0x91b, x14	// Write all 1s to CSR
	csrrw x18, 0x91b, x0	// Write all 0s to CSR
	csrrs x18, 0x91b, x14	// Set all CSR bits
	csrrc x18, 0x91b, x14	// Clear all CSR bits
	csrrw x18, 0x91b, x1	// Restore CSR

// Testing CSR 0x91c
	csrr x3, 0x91c	// Read CSR
	li x31, -1
	csrrw x26, 0x91c, x31	// Write all 1s to CSR
	csrrw x26, 0x91c, x0	// Write all 0s to CSR
	csrrs x26, 0x91c, x31	// Set all CSR bits
	csrrc x26, 0x91c, x31	// Clear all CSR bits
	csrrw x26, 0x91c, x3	// Restore CSR

// Testing CSR 0x91d
	csrr x9, 0x91d	// Read CSR
	li x23, -1
	csrrw x26, 0x91d, x23	// Write all 1s to CSR
	csrrw x26, 0x91d, x0	// Write all 0s to CSR
	csrrs x26, 0x91d, x23	// Set all CSR bits
	csrrc x26, 0x91d, x23	// Clear all CSR bits
	csrrw x26, 0x91d, x9	// Restore CSR

// Testing CSR 0x91e
	csrr x1, 0x91e	// Read CSR
	li x22, -1
	csrrw x16, 0x91e, x22	// Write all 1s to CSR
	csrrw x16, 0x91e, x0	// Write all 0s to CSR
	csrrs x16, 0x91e, x22	// Set all CSR bits
	csrrc x16, 0x91e, x22	// Clear all CSR bits
	csrrw x16, 0x91e, x1	// Restore CSR

// Testing CSR 0x91f
	csrr x26, 0x91f	// Read CSR
	li x13, -1
	csrrw x31, 0x91f, x13	// Write all 1s to CSR
	csrrw x31, 0x91f, x0	// Write all 0s to CSR
	csrrs x31, 0x91f, x13	// Set all CSR bits
	csrrc x31, 0x91f, x13	// Clear all CSR bits
	csrrw x31, 0x91f, x26	// Restore CSR

// Testing CSR 0x920
	csrr x18, 0x920	// Read CSR
	li x12, -1
	csrrw x16, 0x920, x12	// Write all 1s to CSR
	csrrw x16, 0x920, x0	// Write all 0s to CSR
	csrrs x16, 0x920, x12	// Set all CSR bits
	csrrc x16, 0x920, x12	// Clear all CSR bits
	csrrw x16, 0x920, x18	// Restore CSR

// Testing CSR 0x921
	csrr x17, 0x921	// Read CSR
	li x15, -1
	csrrw x18, 0x921, x15	// Write all 1s to CSR
	csrrw x18, 0x921, x0	// Write all 0s to CSR
	csrrs x18, 0x921, x15	// Set all CSR bits
	csrrc x18, 0x921, x15	// Clear all CSR bits
	csrrw x18, 0x921, x17	// Restore CSR

// Testing CSR 0x922
	csrr x24, 0x922	// Read CSR
	li x29, -1
	csrrw x23, 0x922, x29	// Write all 1s to CSR
	csrrw x23, 0x922, x0	// Write all 0s to CSR
	csrrs x23, 0x922, x29	// Set all CSR bits
	csrrc x23, 0x922, x29	// Clear all CSR bits
	csrrw x23, 0x922, x24	// Restore CSR

// Testing CSR 0x923
	csrr x16, 0x923	// Read CSR
	li x19, -1
	csrrw x6, 0x923, x19	// Write all 1s to CSR
	csrrw x6, 0x923, x0	// Write all 0s to CSR
	csrrs x6, 0x923, x19	// Set all CSR bits
	csrrc x6, 0x923, x19	// Clear all CSR bits
	csrrw x6, 0x923, x16	// Restore CSR

// Testing CSR 0x924
	csrr x26, 0x924	// Read CSR
	li x19, -1
	csrrw x25, 0x924, x19	// Write all 1s to CSR
	csrrw x25, 0x924, x0	// Write all 0s to CSR
	csrrs x25, 0x924, x19	// Set all CSR bits
	csrrc x25, 0x924, x19	// Clear all CSR bits
	csrrw x25, 0x924, x26	// Restore CSR

// Testing CSR 0x925
	csrr x1, 0x925	// Read CSR
	li x20, -1
	csrrw x12, 0x925, x20	// Write all 1s to CSR
	csrrw x12, 0x925, x0	// Write all 0s to CSR
	csrrs x12, 0x925, x20	// Set all CSR bits
	csrrc x12, 0x925, x20	// Clear all CSR bits
	csrrw x12, 0x925, x1	// Restore CSR

// Testing CSR 0x926
	csrr x7, 0x926	// Read CSR
	li x10, -1
	csrrw x14, 0x926, x10	// Write all 1s to CSR
	csrrw x14, 0x926, x0	// Write all 0s to CSR
	csrrs x14, 0x926, x10	// Set all CSR bits
	csrrc x14, 0x926, x10	// Clear all CSR bits
	csrrw x14, 0x926, x7	// Restore CSR

// Testing CSR 0x927
	csrr x3, 0x927	// Read CSR
	li x8, -1
	csrrw x4, 0x927, x8	// Write all 1s to CSR
	csrrw x4, 0x927, x0	// Write all 0s to CSR
	csrrs x4, 0x927, x8	// Set all CSR bits
	csrrc x4, 0x927, x8	// Clear all CSR bits
	csrrw x4, 0x927, x3	// Restore CSR

// Testing CSR 0x928
	csrr x6, 0x928	// Read CSR
	li x26, -1
	csrrw x20, 0x928, x26	// Write all 1s to CSR
	csrrw x20, 0x928, x0	// Write all 0s to CSR
	csrrs x20, 0x928, x26	// Set all CSR bits
	csrrc x20, 0x928, x26	// Clear all CSR bits
	csrrw x20, 0x928, x6	// Restore CSR

// Testing CSR 0x929
	csrr x15, 0x929	// Read CSR
	li x21, -1
	csrrw x5, 0x929, x21	// Write all 1s to CSR
	csrrw x5, 0x929, x0	// Write all 0s to CSR
	csrrs x5, 0x929, x21	// Set all CSR bits
	csrrc x5, 0x929, x21	// Clear all CSR bits
	csrrw x5, 0x929, x15	// Restore CSR

// Testing CSR 0x92a
	csrr x30, 0x92a	// Read CSR
	li x16, -1
	csrrw x11, 0x92a, x16	// Write all 1s to CSR
	csrrw x11, 0x92a, x0	// Write all 0s to CSR
	csrrs x11, 0x92a, x16	// Set all CSR bits
	csrrc x11, 0x92a, x16	// Clear all CSR bits
	csrrw x11, 0x92a, x30	// Restore CSR

// Testing CSR 0x92b
	csrr x28, 0x92b	// Read CSR
	li x15, -1
	csrrw x23, 0x92b, x15	// Write all 1s to CSR
	csrrw x23, 0x92b, x0	// Write all 0s to CSR
	csrrs x23, 0x92b, x15	// Set all CSR bits
	csrrc x23, 0x92b, x15	// Clear all CSR bits
	csrrw x23, 0x92b, x28	// Restore CSR

// Testing CSR 0x92c
	csrr x5, 0x92c	// Read CSR
	li x16, -1
	csrrw x26, 0x92c, x16	// Write all 1s to CSR
	csrrw x26, 0x92c, x0	// Write all 0s to CSR
	csrrs x26, 0x92c, x16	// Set all CSR bits
	csrrc x26, 0x92c, x16	// Clear all CSR bits
	csrrw x26, 0x92c, x5	// Restore CSR

// Testing CSR 0x92d
	csrr x31, 0x92d	// Read CSR
	li x28, -1
	csrrw x9, 0x92d, x28	// Write all 1s to CSR
	csrrw x9, 0x92d, x0	// Write all 0s to CSR
	csrrs x9, 0x92d, x28	// Set all CSR bits
	csrrc x9, 0x92d, x28	// Clear all CSR bits
	csrrw x9, 0x92d, x31	// Restore CSR

// Testing CSR 0x92e
	csrr x16, 0x92e	// Read CSR
	li x11, -1
	csrrw x23, 0x92e, x11	// Write all 1s to CSR
	csrrw x23, 0x92e, x0	// Write all 0s to CSR
	csrrs x23, 0x92e, x11	// Set all CSR bits
	csrrc x23, 0x92e, x11	// Clear all CSR bits
	csrrw x23, 0x92e, x16	// Restore CSR

// Testing CSR 0x92f
	csrr x17, 0x92f	// Read CSR
	li x24, -1
	csrrw x26, 0x92f, x24	// Write all 1s to CSR
	csrrw x26, 0x92f, x0	// Write all 0s to CSR
	csrrs x26, 0x92f, x24	// Set all CSR bits
	csrrc x26, 0x92f, x24	// Clear all CSR bits
	csrrw x26, 0x92f, x17	// Restore CSR

// Testing CSR 0x930
	csrr x8, 0x930	// Read CSR
	li x25, -1
	csrrw x2, 0x930, x25	// Write all 1s to CSR
	csrrw x2, 0x930, x0	// Write all 0s to CSR
	csrrs x2, 0x930, x25	// Set all CSR bits
	csrrc x2, 0x930, x25	// Clear all CSR bits
	csrrw x2, 0x930, x8	// Restore CSR

// Testing CSR 0x931
	csrr x12, 0x931	// Read CSR
	li x30, -1
	csrrw x17, 0x931, x30	// Write all 1s to CSR
	csrrw x17, 0x931, x0	// Write all 0s to CSR
	csrrs x17, 0x931, x30	// Set all CSR bits
	csrrc x17, 0x931, x30	// Clear all CSR bits
	csrrw x17, 0x931, x12	// Restore CSR

// Testing CSR 0x932
	csrr x9, 0x932	// Read CSR
	li x13, -1
	csrrw x27, 0x932, x13	// Write all 1s to CSR
	csrrw x27, 0x932, x0	// Write all 0s to CSR
	csrrs x27, 0x932, x13	// Set all CSR bits
	csrrc x27, 0x932, x13	// Clear all CSR bits
	csrrw x27, 0x932, x9	// Restore CSR

// Testing CSR 0x933
	csrr x18, 0x933	// Read CSR
	li x21, -1
	csrrw x29, 0x933, x21	// Write all 1s to CSR
	csrrw x29, 0x933, x0	// Write all 0s to CSR
	csrrs x29, 0x933, x21	// Set all CSR bits
	csrrc x29, 0x933, x21	// Clear all CSR bits
	csrrw x29, 0x933, x18	// Restore CSR

// Testing CSR 0x934
	csrr x20, 0x934	// Read CSR
	li x4, -1
	csrrw x10, 0x934, x4	// Write all 1s to CSR
	csrrw x10, 0x934, x0	// Write all 0s to CSR
	csrrs x10, 0x934, x4	// Set all CSR bits
	csrrc x10, 0x934, x4	// Clear all CSR bits
	csrrw x10, 0x934, x20	// Restore CSR

// Testing CSR 0x935
	csrr x29, 0x935	// Read CSR
	li x5, -1
	csrrw x17, 0x935, x5	// Write all 1s to CSR
	csrrw x17, 0x935, x0	// Write all 0s to CSR
	csrrs x17, 0x935, x5	// Set all CSR bits
	csrrc x17, 0x935, x5	// Clear all CSR bits
	csrrw x17, 0x935, x29	// Restore CSR

// Testing CSR 0x936
	csrr x5, 0x936	// Read CSR
	li x30, -1
	csrrw x3, 0x936, x30	// Write all 1s to CSR
	csrrw x3, 0x936, x0	// Write all 0s to CSR
	csrrs x3, 0x936, x30	// Set all CSR bits
	csrrc x3, 0x936, x30	// Clear all CSR bits
	csrrw x3, 0x936, x5	// Restore CSR

// Testing CSR 0x937
	csrr x11, 0x937	// Read CSR
	li x7, -1
	csrrw x2, 0x937, x7	// Write all 1s to CSR
	csrrw x2, 0x937, x0	// Write all 0s to CSR
	csrrs x2, 0x937, x7	// Set all CSR bits
	csrrc x2, 0x937, x7	// Clear all CSR bits
	csrrw x2, 0x937, x11	// Restore CSR

// Testing CSR 0x938
	csrr x1, 0x938	// Read CSR
	li x16, -1
	csrrw x3, 0x938, x16	// Write all 1s to CSR
	csrrw x3, 0x938, x0	// Write all 0s to CSR
	csrrs x3, 0x938, x16	// Set all CSR bits
	csrrc x3, 0x938, x16	// Clear all CSR bits
	csrrw x3, 0x938, x1	// Restore CSR

// Testing CSR 0x939
	csrr x19, 0x939	// Read CSR
	li x17, -1
	csrrw x2, 0x939, x17	// Write all 1s to CSR
	csrrw x2, 0x939, x0	// Write all 0s to CSR
	csrrs x2, 0x939, x17	// Set all CSR bits
	csrrc x2, 0x939, x17	// Clear all CSR bits
	csrrw x2, 0x939, x19	// Restore CSR

// Testing CSR 0x93a
	csrr x5, 0x93a	// Read CSR
	li x21, -1
	csrrw x15, 0x93a, x21	// Write all 1s to CSR
	csrrw x15, 0x93a, x0	// Write all 0s to CSR
	csrrs x15, 0x93a, x21	// Set all CSR bits
	csrrc x15, 0x93a, x21	// Clear all CSR bits
	csrrw x15, 0x93a, x5	// Restore CSR

// Testing CSR 0x93b
	csrr x19, 0x93b	// Read CSR
	li x5, -1
	csrrw x9, 0x93b, x5	// Write all 1s to CSR
	csrrw x9, 0x93b, x0	// Write all 0s to CSR
	csrrs x9, 0x93b, x5	// Set all CSR bits
	csrrc x9, 0x93b, x5	// Clear all CSR bits
	csrrw x9, 0x93b, x19	// Restore CSR

// Testing CSR 0x93c
	csrr x3, 0x93c	// Read CSR
	li x10, -1
	csrrw x12, 0x93c, x10	// Write all 1s to CSR
	csrrw x12, 0x93c, x0	// Write all 0s to CSR
	csrrs x12, 0x93c, x10	// Set all CSR bits
	csrrc x12, 0x93c, x10	// Clear all CSR bits
	csrrw x12, 0x93c, x3	// Restore CSR

// Testing CSR 0x93d
	csrr x30, 0x93d	// Read CSR
	li x5, -1
	csrrw x29, 0x93d, x5	// Write all 1s to CSR
	csrrw x29, 0x93d, x0	// Write all 0s to CSR
	csrrs x29, 0x93d, x5	// Set all CSR bits
	csrrc x29, 0x93d, x5	// Clear all CSR bits
	csrrw x29, 0x93d, x30	// Restore CSR

// Testing CSR 0x93e
	csrr x15, 0x93e	// Read CSR
	li x30, -1
	csrrw x12, 0x93e, x30	// Write all 1s to CSR
	csrrw x12, 0x93e, x0	// Write all 0s to CSR
	csrrs x12, 0x93e, x30	// Set all CSR bits
	csrrc x12, 0x93e, x30	// Clear all CSR bits
	csrrw x12, 0x93e, x15	// Restore CSR

// Testing CSR 0x93f
	csrr x2, 0x93f	// Read CSR
	li x11, -1
	csrrw x4, 0x93f, x11	// Write all 1s to CSR
	csrrw x4, 0x93f, x0	// Write all 0s to CSR
	csrrs x4, 0x93f, x11	// Set all CSR bits
	csrrc x4, 0x93f, x11	// Clear all CSR bits
	csrrw x4, 0x93f, x2	// Restore CSR

// Testing CSR 0x940
	csrr x29, 0x940	// Read CSR
	li x4, -1
	csrrw x20, 0x940, x4	// Write all 1s to CSR
	csrrw x20, 0x940, x0	// Write all 0s to CSR
	csrrs x20, 0x940, x4	// Set all CSR bits
	csrrc x20, 0x940, x4	// Clear all CSR bits
	csrrw x20, 0x940, x29	// Restore CSR

// Testing CSR 0x941
	csrr x22, 0x941	// Read CSR
	li x4, -1
	csrrw x10, 0x941, x4	// Write all 1s to CSR
	csrrw x10, 0x941, x0	// Write all 0s to CSR
	csrrs x10, 0x941, x4	// Set all CSR bits
	csrrc x10, 0x941, x4	// Clear all CSR bits
	csrrw x10, 0x941, x22	// Restore CSR

// Testing CSR 0x942
	csrr x22, 0x942	// Read CSR
	li x10, -1
	csrrw x19, 0x942, x10	// Write all 1s to CSR
	csrrw x19, 0x942, x0	// Write all 0s to CSR
	csrrs x19, 0x942, x10	// Set all CSR bits
	csrrc x19, 0x942, x10	// Clear all CSR bits
	csrrw x19, 0x942, x22	// Restore CSR

// Testing CSR 0x943
	csrr x12, 0x943	// Read CSR
	li x6, -1
	csrrw x25, 0x943, x6	// Write all 1s to CSR
	csrrw x25, 0x943, x0	// Write all 0s to CSR
	csrrs x25, 0x943, x6	// Set all CSR bits
	csrrc x25, 0x943, x6	// Clear all CSR bits
	csrrw x25, 0x943, x12	// Restore CSR

// Testing CSR 0x944
	csrr x1, 0x944	// Read CSR
	li x22, -1
	csrrw x25, 0x944, x22	// Write all 1s to CSR
	csrrw x25, 0x944, x0	// Write all 0s to CSR
	csrrs x25, 0x944, x22	// Set all CSR bits
	csrrc x25, 0x944, x22	// Clear all CSR bits
	csrrw x25, 0x944, x1	// Restore CSR

// Testing CSR 0x945
	csrr x16, 0x945	// Read CSR
	li x13, -1
	csrrw x21, 0x945, x13	// Write all 1s to CSR
	csrrw x21, 0x945, x0	// Write all 0s to CSR
	csrrs x21, 0x945, x13	// Set all CSR bits
	csrrc x21, 0x945, x13	// Clear all CSR bits
	csrrw x21, 0x945, x16	// Restore CSR

// Testing CSR 0x946
	csrr x7, 0x946	// Read CSR
	li x3, -1
	csrrw x14, 0x946, x3	// Write all 1s to CSR
	csrrw x14, 0x946, x0	// Write all 0s to CSR
	csrrs x14, 0x946, x3	// Set all CSR bits
	csrrc x14, 0x946, x3	// Clear all CSR bits
	csrrw x14, 0x946, x7	// Restore CSR

// Testing CSR 0x947
	csrr x28, 0x947	// Read CSR
	li x9, -1
	csrrw x31, 0x947, x9	// Write all 1s to CSR
	csrrw x31, 0x947, x0	// Write all 0s to CSR
	csrrs x31, 0x947, x9	// Set all CSR bits
	csrrc x31, 0x947, x9	// Clear all CSR bits
	csrrw x31, 0x947, x28	// Restore CSR

// Testing CSR 0x948
	csrr x16, 0x948	// Read CSR
	li x14, -1
	csrrw x22, 0x948, x14	// Write all 1s to CSR
	csrrw x22, 0x948, x0	// Write all 0s to CSR
	csrrs x22, 0x948, x14	// Set all CSR bits
	csrrc x22, 0x948, x14	// Clear all CSR bits
	csrrw x22, 0x948, x16	// Restore CSR

// Testing CSR 0x949
	csrr x16, 0x949	// Read CSR
	li x29, -1
	csrrw x13, 0x949, x29	// Write all 1s to CSR
	csrrw x13, 0x949, x0	// Write all 0s to CSR
	csrrs x13, 0x949, x29	// Set all CSR bits
	csrrc x13, 0x949, x29	// Clear all CSR bits
	csrrw x13, 0x949, x16	// Restore CSR

// Testing CSR 0x94a
	csrr x5, 0x94a	// Read CSR
	li x14, -1
	csrrw x26, 0x94a, x14	// Write all 1s to CSR
	csrrw x26, 0x94a, x0	// Write all 0s to CSR
	csrrs x26, 0x94a, x14	// Set all CSR bits
	csrrc x26, 0x94a, x14	// Clear all CSR bits
	csrrw x26, 0x94a, x5	// Restore CSR

// Testing CSR 0x94b
	csrr x7, 0x94b	// Read CSR
	li x25, -1
	csrrw x14, 0x94b, x25	// Write all 1s to CSR
	csrrw x14, 0x94b, x0	// Write all 0s to CSR
	csrrs x14, 0x94b, x25	// Set all CSR bits
	csrrc x14, 0x94b, x25	// Clear all CSR bits
	csrrw x14, 0x94b, x7	// Restore CSR

// Testing CSR 0x94c
	csrr x21, 0x94c	// Read CSR
	li x25, -1
	csrrw x7, 0x94c, x25	// Write all 1s to CSR
	csrrw x7, 0x94c, x0	// Write all 0s to CSR
	csrrs x7, 0x94c, x25	// Set all CSR bits
	csrrc x7, 0x94c, x25	// Clear all CSR bits
	csrrw x7, 0x94c, x21	// Restore CSR

// Testing CSR 0x94d
	csrr x9, 0x94d	// Read CSR
	li x3, -1
	csrrw x26, 0x94d, x3	// Write all 1s to CSR
	csrrw x26, 0x94d, x0	// Write all 0s to CSR
	csrrs x26, 0x94d, x3	// Set all CSR bits
	csrrc x26, 0x94d, x3	// Clear all CSR bits
	csrrw x26, 0x94d, x9	// Restore CSR

// Testing CSR 0x94e
	csrr x5, 0x94e	// Read CSR
	li x15, -1
	csrrw x11, 0x94e, x15	// Write all 1s to CSR
	csrrw x11, 0x94e, x0	// Write all 0s to CSR
	csrrs x11, 0x94e, x15	// Set all CSR bits
	csrrc x11, 0x94e, x15	// Clear all CSR bits
	csrrw x11, 0x94e, x5	// Restore CSR

// Testing CSR 0x94f
	csrr x12, 0x94f	// Read CSR
	li x10, -1
	csrrw x26, 0x94f, x10	// Write all 1s to CSR
	csrrw x26, 0x94f, x0	// Write all 0s to CSR
	csrrs x26, 0x94f, x10	// Set all CSR bits
	csrrc x26, 0x94f, x10	// Clear all CSR bits
	csrrw x26, 0x94f, x12	// Restore CSR

// Testing CSR 0x950
	csrr x26, 0x950	// Read CSR
	li x15, -1
	csrrw x11, 0x950, x15	// Write all 1s to CSR
	csrrw x11, 0x950, x0	// Write all 0s to CSR
	csrrs x11, 0x950, x15	// Set all CSR bits
	csrrc x11, 0x950, x15	// Clear all CSR bits
	csrrw x11, 0x950, x26	// Restore CSR

// Testing CSR 0x951
	csrr x8, 0x951	// Read CSR
	li x6, -1
	csrrw x15, 0x951, x6	// Write all 1s to CSR
	csrrw x15, 0x951, x0	// Write all 0s to CSR
	csrrs x15, 0x951, x6	// Set all CSR bits
	csrrc x15, 0x951, x6	// Clear all CSR bits
	csrrw x15, 0x951, x8	// Restore CSR

// Testing CSR 0x952
	csrr x5, 0x952	// Read CSR
	li x23, -1
	csrrw x11, 0x952, x23	// Write all 1s to CSR
	csrrw x11, 0x952, x0	// Write all 0s to CSR
	csrrs x11, 0x952, x23	// Set all CSR bits
	csrrc x11, 0x952, x23	// Clear all CSR bits
	csrrw x11, 0x952, x5	// Restore CSR

// Testing CSR 0x953
	csrr x26, 0x953	// Read CSR
	li x8, -1
	csrrw x16, 0x953, x8	// Write all 1s to CSR
	csrrw x16, 0x953, x0	// Write all 0s to CSR
	csrrs x16, 0x953, x8	// Set all CSR bits
	csrrc x16, 0x953, x8	// Clear all CSR bits
	csrrw x16, 0x953, x26	// Restore CSR

// Testing CSR 0x954
	csrr x5, 0x954	// Read CSR
	li x4, -1
	csrrw x18, 0x954, x4	// Write all 1s to CSR
	csrrw x18, 0x954, x0	// Write all 0s to CSR
	csrrs x18, 0x954, x4	// Set all CSR bits
	csrrc x18, 0x954, x4	// Clear all CSR bits
	csrrw x18, 0x954, x5	// Restore CSR

// Testing CSR 0x955
	csrr x19, 0x955	// Read CSR
	li x20, -1
	csrrw x15, 0x955, x20	// Write all 1s to CSR
	csrrw x15, 0x955, x0	// Write all 0s to CSR
	csrrs x15, 0x955, x20	// Set all CSR bits
	csrrc x15, 0x955, x20	// Clear all CSR bits
	csrrw x15, 0x955, x19	// Restore CSR

// Testing CSR 0x956
	csrr x24, 0x956	// Read CSR
	li x11, -1
	csrrw x6, 0x956, x11	// Write all 1s to CSR
	csrrw x6, 0x956, x0	// Write all 0s to CSR
	csrrs x6, 0x956, x11	// Set all CSR bits
	csrrc x6, 0x956, x11	// Clear all CSR bits
	csrrw x6, 0x956, x24	// Restore CSR

// Testing CSR 0x957
	csrr x3, 0x957	// Read CSR
	li x22, -1
	csrrw x11, 0x957, x22	// Write all 1s to CSR
	csrrw x11, 0x957, x0	// Write all 0s to CSR
	csrrs x11, 0x957, x22	// Set all CSR bits
	csrrc x11, 0x957, x22	// Clear all CSR bits
	csrrw x11, 0x957, x3	// Restore CSR

// Testing CSR 0x958
	csrr x6, 0x958	// Read CSR
	li x9, -1
	csrrw x30, 0x958, x9	// Write all 1s to CSR
	csrrw x30, 0x958, x0	// Write all 0s to CSR
	csrrs x30, 0x958, x9	// Set all CSR bits
	csrrc x30, 0x958, x9	// Clear all CSR bits
	csrrw x30, 0x958, x6	// Restore CSR

// Testing CSR 0x959
	csrr x12, 0x959	// Read CSR
	li x22, -1
	csrrw x23, 0x959, x22	// Write all 1s to CSR
	csrrw x23, 0x959, x0	// Write all 0s to CSR
	csrrs x23, 0x959, x22	// Set all CSR bits
	csrrc x23, 0x959, x22	// Clear all CSR bits
	csrrw x23, 0x959, x12	// Restore CSR

// Testing CSR 0x95a
	csrr x4, 0x95a	// Read CSR
	li x11, -1
	csrrw x13, 0x95a, x11	// Write all 1s to CSR
	csrrw x13, 0x95a, x0	// Write all 0s to CSR
	csrrs x13, 0x95a, x11	// Set all CSR bits
	csrrc x13, 0x95a, x11	// Clear all CSR bits
	csrrw x13, 0x95a, x4	// Restore CSR

// Testing CSR 0x95b
	csrr x25, 0x95b	// Read CSR
	li x11, -1
	csrrw x10, 0x95b, x11	// Write all 1s to CSR
	csrrw x10, 0x95b, x0	// Write all 0s to CSR
	csrrs x10, 0x95b, x11	// Set all CSR bits
	csrrc x10, 0x95b, x11	// Clear all CSR bits
	csrrw x10, 0x95b, x25	// Restore CSR

// Testing CSR 0x95c
	csrr x11, 0x95c	// Read CSR
	li x28, -1
	csrrw x25, 0x95c, x28	// Write all 1s to CSR
	csrrw x25, 0x95c, x0	// Write all 0s to CSR
	csrrs x25, 0x95c, x28	// Set all CSR bits
	csrrc x25, 0x95c, x28	// Clear all CSR bits
	csrrw x25, 0x95c, x11	// Restore CSR

// Testing CSR 0x95d
	csrr x28, 0x95d	// Read CSR
	li x1, -1
	csrrw x7, 0x95d, x1	// Write all 1s to CSR
	csrrw x7, 0x95d, x0	// Write all 0s to CSR
	csrrs x7, 0x95d, x1	// Set all CSR bits
	csrrc x7, 0x95d, x1	// Clear all CSR bits
	csrrw x7, 0x95d, x28	// Restore CSR

// Testing CSR 0x95e
	csrr x22, 0x95e	// Read CSR
	li x21, -1
	csrrw x10, 0x95e, x21	// Write all 1s to CSR
	csrrw x10, 0x95e, x0	// Write all 0s to CSR
	csrrs x10, 0x95e, x21	// Set all CSR bits
	csrrc x10, 0x95e, x21	// Clear all CSR bits
	csrrw x10, 0x95e, x22	// Restore CSR

// Testing CSR 0x95f
	csrr x21, 0x95f	// Read CSR
	li x6, -1
	csrrw x28, 0x95f, x6	// Write all 1s to CSR
	csrrw x28, 0x95f, x0	// Write all 0s to CSR
	csrrs x28, 0x95f, x6	// Set all CSR bits
	csrrc x28, 0x95f, x6	// Clear all CSR bits
	csrrw x28, 0x95f, x21	// Restore CSR

// Testing CSR 0x960
	csrr x18, 0x960	// Read CSR
	li x6, -1
	csrrw x16, 0x960, x6	// Write all 1s to CSR
	csrrw x16, 0x960, x0	// Write all 0s to CSR
	csrrs x16, 0x960, x6	// Set all CSR bits
	csrrc x16, 0x960, x6	// Clear all CSR bits
	csrrw x16, 0x960, x18	// Restore CSR

// Testing CSR 0x961
	csrr x31, 0x961	// Read CSR
	li x8, -1
	csrrw x3, 0x961, x8	// Write all 1s to CSR
	csrrw x3, 0x961, x0	// Write all 0s to CSR
	csrrs x3, 0x961, x8	// Set all CSR bits
	csrrc x3, 0x961, x8	// Clear all CSR bits
	csrrw x3, 0x961, x31	// Restore CSR

// Testing CSR 0x962
	csrr x23, 0x962	// Read CSR
	li x17, -1
	csrrw x29, 0x962, x17	// Write all 1s to CSR
	csrrw x29, 0x962, x0	// Write all 0s to CSR
	csrrs x29, 0x962, x17	// Set all CSR bits
	csrrc x29, 0x962, x17	// Clear all CSR bits
	csrrw x29, 0x962, x23	// Restore CSR

// Testing CSR 0x963
	csrr x9, 0x963	// Read CSR
	li x29, -1
	csrrw x23, 0x963, x29	// Write all 1s to CSR
	csrrw x23, 0x963, x0	// Write all 0s to CSR
	csrrs x23, 0x963, x29	// Set all CSR bits
	csrrc x23, 0x963, x29	// Clear all CSR bits
	csrrw x23, 0x963, x9	// Restore CSR

// Testing CSR 0x964
	csrr x4, 0x964	// Read CSR
	li x2, -1
	csrrw x13, 0x964, x2	// Write all 1s to CSR
	csrrw x13, 0x964, x0	// Write all 0s to CSR
	csrrs x13, 0x964, x2	// Set all CSR bits
	csrrc x13, 0x964, x2	// Clear all CSR bits
	csrrw x13, 0x964, x4	// Restore CSR

// Testing CSR 0x965
	csrr x24, 0x965	// Read CSR
	li x3, -1
	csrrw x13, 0x965, x3	// Write all 1s to CSR
	csrrw x13, 0x965, x0	// Write all 0s to CSR
	csrrs x13, 0x965, x3	// Set all CSR bits
	csrrc x13, 0x965, x3	// Clear all CSR bits
	csrrw x13, 0x965, x24	// Restore CSR

// Testing CSR 0x966
	csrr x15, 0x966	// Read CSR
	li x16, -1
	csrrw x22, 0x966, x16	// Write all 1s to CSR
	csrrw x22, 0x966, x0	// Write all 0s to CSR
	csrrs x22, 0x966, x16	// Set all CSR bits
	csrrc x22, 0x966, x16	// Clear all CSR bits
	csrrw x22, 0x966, x15	// Restore CSR

// Testing CSR 0x967
	csrr x5, 0x967	// Read CSR
	li x23, -1
	csrrw x2, 0x967, x23	// Write all 1s to CSR
	csrrw x2, 0x967, x0	// Write all 0s to CSR
	csrrs x2, 0x967, x23	// Set all CSR bits
	csrrc x2, 0x967, x23	// Clear all CSR bits
	csrrw x2, 0x967, x5	// Restore CSR

// Testing CSR 0x968
	csrr x30, 0x968	// Read CSR
	li x4, -1
	csrrw x5, 0x968, x4	// Write all 1s to CSR
	csrrw x5, 0x968, x0	// Write all 0s to CSR
	csrrs x5, 0x968, x4	// Set all CSR bits
	csrrc x5, 0x968, x4	// Clear all CSR bits
	csrrw x5, 0x968, x30	// Restore CSR

// Testing CSR 0x969
	csrr x21, 0x969	// Read CSR
	li x4, -1
	csrrw x27, 0x969, x4	// Write all 1s to CSR
	csrrw x27, 0x969, x0	// Write all 0s to CSR
	csrrs x27, 0x969, x4	// Set all CSR bits
	csrrc x27, 0x969, x4	// Clear all CSR bits
	csrrw x27, 0x969, x21	// Restore CSR

// Testing CSR 0x96a
	csrr x13, 0x96a	// Read CSR
	li x20, -1
	csrrw x29, 0x96a, x20	// Write all 1s to CSR
	csrrw x29, 0x96a, x0	// Write all 0s to CSR
	csrrs x29, 0x96a, x20	// Set all CSR bits
	csrrc x29, 0x96a, x20	// Clear all CSR bits
	csrrw x29, 0x96a, x13	// Restore CSR

// Testing CSR 0x96b
	csrr x4, 0x96b	// Read CSR
	li x10, -1
	csrrw x3, 0x96b, x10	// Write all 1s to CSR
	csrrw x3, 0x96b, x0	// Write all 0s to CSR
	csrrs x3, 0x96b, x10	// Set all CSR bits
	csrrc x3, 0x96b, x10	// Clear all CSR bits
	csrrw x3, 0x96b, x4	// Restore CSR

// Testing CSR 0x96c
	csrr x19, 0x96c	// Read CSR
	li x7, -1
	csrrw x4, 0x96c, x7	// Write all 1s to CSR
	csrrw x4, 0x96c, x0	// Write all 0s to CSR
	csrrs x4, 0x96c, x7	// Set all CSR bits
	csrrc x4, 0x96c, x7	// Clear all CSR bits
	csrrw x4, 0x96c, x19	// Restore CSR

// Testing CSR 0x96d
	csrr x28, 0x96d	// Read CSR
	li x24, -1
	csrrw x29, 0x96d, x24	// Write all 1s to CSR
	csrrw x29, 0x96d, x0	// Write all 0s to CSR
	csrrs x29, 0x96d, x24	// Set all CSR bits
	csrrc x29, 0x96d, x24	// Clear all CSR bits
	csrrw x29, 0x96d, x28	// Restore CSR

// Testing CSR 0x96e
	csrr x10, 0x96e	// Read CSR
	li x28, -1
	csrrw x27, 0x96e, x28	// Write all 1s to CSR
	csrrw x27, 0x96e, x0	// Write all 0s to CSR
	csrrs x27, 0x96e, x28	// Set all CSR bits
	csrrc x27, 0x96e, x28	// Clear all CSR bits
	csrrw x27, 0x96e, x10	// Restore CSR

// Testing CSR 0x96f
	csrr x13, 0x96f	// Read CSR
	li x29, -1
	csrrw x6, 0x96f, x29	// Write all 1s to CSR
	csrrw x6, 0x96f, x0	// Write all 0s to CSR
	csrrs x6, 0x96f, x29	// Set all CSR bits
	csrrc x6, 0x96f, x29	// Clear all CSR bits
	csrrw x6, 0x96f, x13	// Restore CSR

// Testing CSR 0x970
	csrr x17, 0x970	// Read CSR
	li x15, -1
	csrrw x23, 0x970, x15	// Write all 1s to CSR
	csrrw x23, 0x970, x0	// Write all 0s to CSR
	csrrs x23, 0x970, x15	// Set all CSR bits
	csrrc x23, 0x970, x15	// Clear all CSR bits
	csrrw x23, 0x970, x17	// Restore CSR

// Testing CSR 0x971
	csrr x9, 0x971	// Read CSR
	li x25, -1
	csrrw x11, 0x971, x25	// Write all 1s to CSR
	csrrw x11, 0x971, x0	// Write all 0s to CSR
	csrrs x11, 0x971, x25	// Set all CSR bits
	csrrc x11, 0x971, x25	// Clear all CSR bits
	csrrw x11, 0x971, x9	// Restore CSR

// Testing CSR 0x972
	csrr x21, 0x972	// Read CSR
	li x6, -1
	csrrw x26, 0x972, x6	// Write all 1s to CSR
	csrrw x26, 0x972, x0	// Write all 0s to CSR
	csrrs x26, 0x972, x6	// Set all CSR bits
	csrrc x26, 0x972, x6	// Clear all CSR bits
	csrrw x26, 0x972, x21	// Restore CSR

// Testing CSR 0x973
	csrr x13, 0x973	// Read CSR
	li x9, -1
	csrrw x29, 0x973, x9	// Write all 1s to CSR
	csrrw x29, 0x973, x0	// Write all 0s to CSR
	csrrs x29, 0x973, x9	// Set all CSR bits
	csrrc x29, 0x973, x9	// Clear all CSR bits
	csrrw x29, 0x973, x13	// Restore CSR

// Testing CSR 0x974
	csrr x29, 0x974	// Read CSR
	li x6, -1
	csrrw x30, 0x974, x6	// Write all 1s to CSR
	csrrw x30, 0x974, x0	// Write all 0s to CSR
	csrrs x30, 0x974, x6	// Set all CSR bits
	csrrc x30, 0x974, x6	// Clear all CSR bits
	csrrw x30, 0x974, x29	// Restore CSR

// Testing CSR 0x975
	csrr x6, 0x975	// Read CSR
	li x27, -1
	csrrw x24, 0x975, x27	// Write all 1s to CSR
	csrrw x24, 0x975, x0	// Write all 0s to CSR
	csrrs x24, 0x975, x27	// Set all CSR bits
	csrrc x24, 0x975, x27	// Clear all CSR bits
	csrrw x24, 0x975, x6	// Restore CSR

// Testing CSR 0x976
	csrr x3, 0x976	// Read CSR
	li x7, -1
	csrrw x21, 0x976, x7	// Write all 1s to CSR
	csrrw x21, 0x976, x0	// Write all 0s to CSR
	csrrs x21, 0x976, x7	// Set all CSR bits
	csrrc x21, 0x976, x7	// Clear all CSR bits
	csrrw x21, 0x976, x3	// Restore CSR

// Testing CSR 0x977
	csrr x17, 0x977	// Read CSR
	li x27, -1
	csrrw x29, 0x977, x27	// Write all 1s to CSR
	csrrw x29, 0x977, x0	// Write all 0s to CSR
	csrrs x29, 0x977, x27	// Set all CSR bits
	csrrc x29, 0x977, x27	// Clear all CSR bits
	csrrw x29, 0x977, x17	// Restore CSR

// Testing CSR 0x978
	csrr x25, 0x978	// Read CSR
	li x12, -1
	csrrw x22, 0x978, x12	// Write all 1s to CSR
	csrrw x22, 0x978, x0	// Write all 0s to CSR
	csrrs x22, 0x978, x12	// Set all CSR bits
	csrrc x22, 0x978, x12	// Clear all CSR bits
	csrrw x22, 0x978, x25	// Restore CSR

// Testing CSR 0x979
	csrr x24, 0x979	// Read CSR
	li x15, -1
	csrrw x28, 0x979, x15	// Write all 1s to CSR
	csrrw x28, 0x979, x0	// Write all 0s to CSR
	csrrs x28, 0x979, x15	// Set all CSR bits
	csrrc x28, 0x979, x15	// Clear all CSR bits
	csrrw x28, 0x979, x24	// Restore CSR

// Testing CSR 0x97a
	csrr x29, 0x97a	// Read CSR
	li x22, -1
	csrrw x27, 0x97a, x22	// Write all 1s to CSR
	csrrw x27, 0x97a, x0	// Write all 0s to CSR
	csrrs x27, 0x97a, x22	// Set all CSR bits
	csrrc x27, 0x97a, x22	// Clear all CSR bits
	csrrw x27, 0x97a, x29	// Restore CSR

// Testing CSR 0x97b
	csrr x3, 0x97b	// Read CSR
	li x11, -1
	csrrw x17, 0x97b, x11	// Write all 1s to CSR
	csrrw x17, 0x97b, x0	// Write all 0s to CSR
	csrrs x17, 0x97b, x11	// Set all CSR bits
	csrrc x17, 0x97b, x11	// Clear all CSR bits
	csrrw x17, 0x97b, x3	// Restore CSR

// Testing CSR 0x97c
	csrr x14, 0x97c	// Read CSR
	li x26, -1
	csrrw x10, 0x97c, x26	// Write all 1s to CSR
	csrrw x10, 0x97c, x0	// Write all 0s to CSR
	csrrs x10, 0x97c, x26	// Set all CSR bits
	csrrc x10, 0x97c, x26	// Clear all CSR bits
	csrrw x10, 0x97c, x14	// Restore CSR

// Testing CSR 0x97d
	csrr x15, 0x97d	// Read CSR
	li x26, -1
	csrrw x2, 0x97d, x26	// Write all 1s to CSR
	csrrw x2, 0x97d, x0	// Write all 0s to CSR
	csrrs x2, 0x97d, x26	// Set all CSR bits
	csrrc x2, 0x97d, x26	// Clear all CSR bits
	csrrw x2, 0x97d, x15	// Restore CSR

// Testing CSR 0x97e
	csrr x5, 0x97e	// Read CSR
	li x12, -1
	csrrw x6, 0x97e, x12	// Write all 1s to CSR
	csrrw x6, 0x97e, x0	// Write all 0s to CSR
	csrrs x6, 0x97e, x12	// Set all CSR bits
	csrrc x6, 0x97e, x12	// Clear all CSR bits
	csrrw x6, 0x97e, x5	// Restore CSR

// Testing CSR 0x97f
	csrr x16, 0x97f	// Read CSR
	li x8, -1
	csrrw x30, 0x97f, x8	// Write all 1s to CSR
	csrrw x30, 0x97f, x0	// Write all 0s to CSR
	csrrs x30, 0x97f, x8	// Set all CSR bits
	csrrc x30, 0x97f, x8	// Clear all CSR bits
	csrrw x30, 0x97f, x16	// Restore CSR

// Testing CSR 0x980
	csrr x8, 0x980	// Read CSR
	li x3, -1
	csrrw x5, 0x980, x3	// Write all 1s to CSR
	csrrw x5, 0x980, x0	// Write all 0s to CSR
	csrrs x5, 0x980, x3	// Set all CSR bits
	csrrc x5, 0x980, x3	// Clear all CSR bits
	csrrw x5, 0x980, x8	// Restore CSR

// Testing CSR 0x981
	csrr x30, 0x981	// Read CSR
	li x25, -1
	csrrw x15, 0x981, x25	// Write all 1s to CSR
	csrrw x15, 0x981, x0	// Write all 0s to CSR
	csrrs x15, 0x981, x25	// Set all CSR bits
	csrrc x15, 0x981, x25	// Clear all CSR bits
	csrrw x15, 0x981, x30	// Restore CSR

// Testing CSR 0x982
	csrr x14, 0x982	// Read CSR
	li x4, -1
	csrrw x12, 0x982, x4	// Write all 1s to CSR
	csrrw x12, 0x982, x0	// Write all 0s to CSR
	csrrs x12, 0x982, x4	// Set all CSR bits
	csrrc x12, 0x982, x4	// Clear all CSR bits
	csrrw x12, 0x982, x14	// Restore CSR

// Testing CSR 0x983
	csrr x25, 0x983	// Read CSR
	li x8, -1
	csrrw x4, 0x983, x8	// Write all 1s to CSR
	csrrw x4, 0x983, x0	// Write all 0s to CSR
	csrrs x4, 0x983, x8	// Set all CSR bits
	csrrc x4, 0x983, x8	// Clear all CSR bits
	csrrw x4, 0x983, x25	// Restore CSR

// Testing CSR 0x984
	csrr x11, 0x984	// Read CSR
	li x5, -1
	csrrw x7, 0x984, x5	// Write all 1s to CSR
	csrrw x7, 0x984, x0	// Write all 0s to CSR
	csrrs x7, 0x984, x5	// Set all CSR bits
	csrrc x7, 0x984, x5	// Clear all CSR bits
	csrrw x7, 0x984, x11	// Restore CSR

// Testing CSR 0x985
	csrr x8, 0x985	// Read CSR
	li x20, -1
	csrrw x18, 0x985, x20	// Write all 1s to CSR
	csrrw x18, 0x985, x0	// Write all 0s to CSR
	csrrs x18, 0x985, x20	// Set all CSR bits
	csrrc x18, 0x985, x20	// Clear all CSR bits
	csrrw x18, 0x985, x8	// Restore CSR

// Testing CSR 0x986
	csrr x11, 0x986	// Read CSR
	li x22, -1
	csrrw x16, 0x986, x22	// Write all 1s to CSR
	csrrw x16, 0x986, x0	// Write all 0s to CSR
	csrrs x16, 0x986, x22	// Set all CSR bits
	csrrc x16, 0x986, x22	// Clear all CSR bits
	csrrw x16, 0x986, x11	// Restore CSR

// Testing CSR 0x987
	csrr x28, 0x987	// Read CSR
	li x11, -1
	csrrw x19, 0x987, x11	// Write all 1s to CSR
	csrrw x19, 0x987, x0	// Write all 0s to CSR
	csrrs x19, 0x987, x11	// Set all CSR bits
	csrrc x19, 0x987, x11	// Clear all CSR bits
	csrrw x19, 0x987, x28	// Restore CSR

// Testing CSR 0x988
	csrr x21, 0x988	// Read CSR
	li x28, -1
	csrrw x16, 0x988, x28	// Write all 1s to CSR
	csrrw x16, 0x988, x0	// Write all 0s to CSR
	csrrs x16, 0x988, x28	// Set all CSR bits
	csrrc x16, 0x988, x28	// Clear all CSR bits
	csrrw x16, 0x988, x21	// Restore CSR

// Testing CSR 0x989
	csrr x29, 0x989	// Read CSR
	li x17, -1
	csrrw x22, 0x989, x17	// Write all 1s to CSR
	csrrw x22, 0x989, x0	// Write all 0s to CSR
	csrrs x22, 0x989, x17	// Set all CSR bits
	csrrc x22, 0x989, x17	// Clear all CSR bits
	csrrw x22, 0x989, x29	// Restore CSR

// Testing CSR 0x98a
	csrr x29, 0x98a	// Read CSR
	li x9, -1
	csrrw x25, 0x98a, x9	// Write all 1s to CSR
	csrrw x25, 0x98a, x0	// Write all 0s to CSR
	csrrs x25, 0x98a, x9	// Set all CSR bits
	csrrc x25, 0x98a, x9	// Clear all CSR bits
	csrrw x25, 0x98a, x29	// Restore CSR

// Testing CSR 0x98b
	csrr x10, 0x98b	// Read CSR
	li x1, -1
	csrrw x20, 0x98b, x1	// Write all 1s to CSR
	csrrw x20, 0x98b, x0	// Write all 0s to CSR
	csrrs x20, 0x98b, x1	// Set all CSR bits
	csrrc x20, 0x98b, x1	// Clear all CSR bits
	csrrw x20, 0x98b, x10	// Restore CSR

// Testing CSR 0x98c
	csrr x22, 0x98c	// Read CSR
	li x20, -1
	csrrw x30, 0x98c, x20	// Write all 1s to CSR
	csrrw x30, 0x98c, x0	// Write all 0s to CSR
	csrrs x30, 0x98c, x20	// Set all CSR bits
	csrrc x30, 0x98c, x20	// Clear all CSR bits
	csrrw x30, 0x98c, x22	// Restore CSR

// Testing CSR 0x98d
	csrr x6, 0x98d	// Read CSR
	li x9, -1
	csrrw x7, 0x98d, x9	// Write all 1s to CSR
	csrrw x7, 0x98d, x0	// Write all 0s to CSR
	csrrs x7, 0x98d, x9	// Set all CSR bits
	csrrc x7, 0x98d, x9	// Clear all CSR bits
	csrrw x7, 0x98d, x6	// Restore CSR

// Testing CSR 0x98e
	csrr x17, 0x98e	// Read CSR
	li x18, -1
	csrrw x23, 0x98e, x18	// Write all 1s to CSR
	csrrw x23, 0x98e, x0	// Write all 0s to CSR
	csrrs x23, 0x98e, x18	// Set all CSR bits
	csrrc x23, 0x98e, x18	// Clear all CSR bits
	csrrw x23, 0x98e, x17	// Restore CSR

// Testing CSR 0x98f
	csrr x27, 0x98f	// Read CSR
	li x4, -1
	csrrw x10, 0x98f, x4	// Write all 1s to CSR
	csrrw x10, 0x98f, x0	// Write all 0s to CSR
	csrrs x10, 0x98f, x4	// Set all CSR bits
	csrrc x10, 0x98f, x4	// Clear all CSR bits
	csrrw x10, 0x98f, x27	// Restore CSR

// Testing CSR 0x990
	csrr x15, 0x990	// Read CSR
	li x6, -1
	csrrw x4, 0x990, x6	// Write all 1s to CSR
	csrrw x4, 0x990, x0	// Write all 0s to CSR
	csrrs x4, 0x990, x6	// Set all CSR bits
	csrrc x4, 0x990, x6	// Clear all CSR bits
	csrrw x4, 0x990, x15	// Restore CSR

// Testing CSR 0x991
	csrr x2, 0x991	// Read CSR
	li x15, -1
	csrrw x17, 0x991, x15	// Write all 1s to CSR
	csrrw x17, 0x991, x0	// Write all 0s to CSR
	csrrs x17, 0x991, x15	// Set all CSR bits
	csrrc x17, 0x991, x15	// Clear all CSR bits
	csrrw x17, 0x991, x2	// Restore CSR

// Testing CSR 0x992
	csrr x17, 0x992	// Read CSR
	li x18, -1
	csrrw x20, 0x992, x18	// Write all 1s to CSR
	csrrw x20, 0x992, x0	// Write all 0s to CSR
	csrrs x20, 0x992, x18	// Set all CSR bits
	csrrc x20, 0x992, x18	// Clear all CSR bits
	csrrw x20, 0x992, x17	// Restore CSR

// Testing CSR 0x993
	csrr x19, 0x993	// Read CSR
	li x18, -1
	csrrw x24, 0x993, x18	// Write all 1s to CSR
	csrrw x24, 0x993, x0	// Write all 0s to CSR
	csrrs x24, 0x993, x18	// Set all CSR bits
	csrrc x24, 0x993, x18	// Clear all CSR bits
	csrrw x24, 0x993, x19	// Restore CSR

// Testing CSR 0x994
	csrr x22, 0x994	// Read CSR
	li x13, -1
	csrrw x28, 0x994, x13	// Write all 1s to CSR
	csrrw x28, 0x994, x0	// Write all 0s to CSR
	csrrs x28, 0x994, x13	// Set all CSR bits
	csrrc x28, 0x994, x13	// Clear all CSR bits
	csrrw x28, 0x994, x22	// Restore CSR

// Testing CSR 0x995
	csrr x14, 0x995	// Read CSR
	li x11, -1
	csrrw x20, 0x995, x11	// Write all 1s to CSR
	csrrw x20, 0x995, x0	// Write all 0s to CSR
	csrrs x20, 0x995, x11	// Set all CSR bits
	csrrc x20, 0x995, x11	// Clear all CSR bits
	csrrw x20, 0x995, x14	// Restore CSR

// Testing CSR 0x996
	csrr x26, 0x996	// Read CSR
	li x11, -1
	csrrw x8, 0x996, x11	// Write all 1s to CSR
	csrrw x8, 0x996, x0	// Write all 0s to CSR
	csrrs x8, 0x996, x11	// Set all CSR bits
	csrrc x8, 0x996, x11	// Clear all CSR bits
	csrrw x8, 0x996, x26	// Restore CSR

// Testing CSR 0x997
	csrr x11, 0x997	// Read CSR
	li x16, -1
	csrrw x5, 0x997, x16	// Write all 1s to CSR
	csrrw x5, 0x997, x0	// Write all 0s to CSR
	csrrs x5, 0x997, x16	// Set all CSR bits
	csrrc x5, 0x997, x16	// Clear all CSR bits
	csrrw x5, 0x997, x11	// Restore CSR

// Testing CSR 0x998
	csrr x17, 0x998	// Read CSR
	li x24, -1
	csrrw x28, 0x998, x24	// Write all 1s to CSR
	csrrw x28, 0x998, x0	// Write all 0s to CSR
	csrrs x28, 0x998, x24	// Set all CSR bits
	csrrc x28, 0x998, x24	// Clear all CSR bits
	csrrw x28, 0x998, x17	// Restore CSR

// Testing CSR 0x999
	csrr x1, 0x999	// Read CSR
	li x24, -1
	csrrw x16, 0x999, x24	// Write all 1s to CSR
	csrrw x16, 0x999, x0	// Write all 0s to CSR
	csrrs x16, 0x999, x24	// Set all CSR bits
	csrrc x16, 0x999, x24	// Clear all CSR bits
	csrrw x16, 0x999, x1	// Restore CSR

// Testing CSR 0x99a
	csrr x26, 0x99a	// Read CSR
	li x5, -1
	csrrw x1, 0x99a, x5	// Write all 1s to CSR
	csrrw x1, 0x99a, x0	// Write all 0s to CSR
	csrrs x1, 0x99a, x5	// Set all CSR bits
	csrrc x1, 0x99a, x5	// Clear all CSR bits
	csrrw x1, 0x99a, x26	// Restore CSR

// Testing CSR 0x99b
	csrr x3, 0x99b	// Read CSR
	li x18, -1
	csrrw x28, 0x99b, x18	// Write all 1s to CSR
	csrrw x28, 0x99b, x0	// Write all 0s to CSR
	csrrs x28, 0x99b, x18	// Set all CSR bits
	csrrc x28, 0x99b, x18	// Clear all CSR bits
	csrrw x28, 0x99b, x3	// Restore CSR

// Testing CSR 0x99c
	csrr x1, 0x99c	// Read CSR
	li x28, -1
	csrrw x5, 0x99c, x28	// Write all 1s to CSR
	csrrw x5, 0x99c, x0	// Write all 0s to CSR
	csrrs x5, 0x99c, x28	// Set all CSR bits
	csrrc x5, 0x99c, x28	// Clear all CSR bits
	csrrw x5, 0x99c, x1	// Restore CSR

// Testing CSR 0x99d
	csrr x25, 0x99d	// Read CSR
	li x28, -1
	csrrw x4, 0x99d, x28	// Write all 1s to CSR
	csrrw x4, 0x99d, x0	// Write all 0s to CSR
	csrrs x4, 0x99d, x28	// Set all CSR bits
	csrrc x4, 0x99d, x28	// Clear all CSR bits
	csrrw x4, 0x99d, x25	// Restore CSR

// Testing CSR 0x99e
	csrr x2, 0x99e	// Read CSR
	li x11, -1
	csrrw x30, 0x99e, x11	// Write all 1s to CSR
	csrrw x30, 0x99e, x0	// Write all 0s to CSR
	csrrs x30, 0x99e, x11	// Set all CSR bits
	csrrc x30, 0x99e, x11	// Clear all CSR bits
	csrrw x30, 0x99e, x2	// Restore CSR

// Testing CSR 0x99f
	csrr x10, 0x99f	// Read CSR
	li x22, -1
	csrrw x7, 0x99f, x22	// Write all 1s to CSR
	csrrw x7, 0x99f, x0	// Write all 0s to CSR
	csrrs x7, 0x99f, x22	// Set all CSR bits
	csrrc x7, 0x99f, x22	// Clear all CSR bits
	csrrw x7, 0x99f, x10	// Restore CSR

// Testing CSR 0x9a0
	csrr x25, 0x9a0	// Read CSR
	li x3, -1
	csrrw x22, 0x9a0, x3	// Write all 1s to CSR
	csrrw x22, 0x9a0, x0	// Write all 0s to CSR
	csrrs x22, 0x9a0, x3	// Set all CSR bits
	csrrc x22, 0x9a0, x3	// Clear all CSR bits
	csrrw x22, 0x9a0, x25	// Restore CSR

// Testing CSR 0x9a1
	csrr x2, 0x9a1	// Read CSR
	li x25, -1
	csrrw x8, 0x9a1, x25	// Write all 1s to CSR
	csrrw x8, 0x9a1, x0	// Write all 0s to CSR
	csrrs x8, 0x9a1, x25	// Set all CSR bits
	csrrc x8, 0x9a1, x25	// Clear all CSR bits
	csrrw x8, 0x9a1, x2	// Restore CSR

// Testing CSR 0x9a2
	csrr x24, 0x9a2	// Read CSR
	li x6, -1
	csrrw x29, 0x9a2, x6	// Write all 1s to CSR
	csrrw x29, 0x9a2, x0	// Write all 0s to CSR
	csrrs x29, 0x9a2, x6	// Set all CSR bits
	csrrc x29, 0x9a2, x6	// Clear all CSR bits
	csrrw x29, 0x9a2, x24	// Restore CSR

// Testing CSR 0x9a3
	csrr x26, 0x9a3	// Read CSR
	li x12, -1
	csrrw x31, 0x9a3, x12	// Write all 1s to CSR
	csrrw x31, 0x9a3, x0	// Write all 0s to CSR
	csrrs x31, 0x9a3, x12	// Set all CSR bits
	csrrc x31, 0x9a3, x12	// Clear all CSR bits
	csrrw x31, 0x9a3, x26	// Restore CSR

// Testing CSR 0x9a4
	csrr x13, 0x9a4	// Read CSR
	li x21, -1
	csrrw x31, 0x9a4, x21	// Write all 1s to CSR
	csrrw x31, 0x9a4, x0	// Write all 0s to CSR
	csrrs x31, 0x9a4, x21	// Set all CSR bits
	csrrc x31, 0x9a4, x21	// Clear all CSR bits
	csrrw x31, 0x9a4, x13	// Restore CSR

// Testing CSR 0x9a5
	csrr x17, 0x9a5	// Read CSR
	li x20, -1
	csrrw x22, 0x9a5, x20	// Write all 1s to CSR
	csrrw x22, 0x9a5, x0	// Write all 0s to CSR
	csrrs x22, 0x9a5, x20	// Set all CSR bits
	csrrc x22, 0x9a5, x20	// Clear all CSR bits
	csrrw x22, 0x9a5, x17	// Restore CSR

// Testing CSR 0x9a6
	csrr x12, 0x9a6	// Read CSR
	li x29, -1
	csrrw x14, 0x9a6, x29	// Write all 1s to CSR
	csrrw x14, 0x9a6, x0	// Write all 0s to CSR
	csrrs x14, 0x9a6, x29	// Set all CSR bits
	csrrc x14, 0x9a6, x29	// Clear all CSR bits
	csrrw x14, 0x9a6, x12	// Restore CSR

// Testing CSR 0x9a7
	csrr x7, 0x9a7	// Read CSR
	li x13, -1
	csrrw x24, 0x9a7, x13	// Write all 1s to CSR
	csrrw x24, 0x9a7, x0	// Write all 0s to CSR
	csrrs x24, 0x9a7, x13	// Set all CSR bits
	csrrc x24, 0x9a7, x13	// Clear all CSR bits
	csrrw x24, 0x9a7, x7	// Restore CSR

// Testing CSR 0x9a8
	csrr x2, 0x9a8	// Read CSR
	li x20, -1
	csrrw x24, 0x9a8, x20	// Write all 1s to CSR
	csrrw x24, 0x9a8, x0	// Write all 0s to CSR
	csrrs x24, 0x9a8, x20	// Set all CSR bits
	csrrc x24, 0x9a8, x20	// Clear all CSR bits
	csrrw x24, 0x9a8, x2	// Restore CSR

// Testing CSR 0x9a9
	csrr x8, 0x9a9	// Read CSR
	li x19, -1
	csrrw x1, 0x9a9, x19	// Write all 1s to CSR
	csrrw x1, 0x9a9, x0	// Write all 0s to CSR
	csrrs x1, 0x9a9, x19	// Set all CSR bits
	csrrc x1, 0x9a9, x19	// Clear all CSR bits
	csrrw x1, 0x9a9, x8	// Restore CSR

// Testing CSR 0x9aa
	csrr x29, 0x9aa	// Read CSR
	li x15, -1
	csrrw x24, 0x9aa, x15	// Write all 1s to CSR
	csrrw x24, 0x9aa, x0	// Write all 0s to CSR
	csrrs x24, 0x9aa, x15	// Set all CSR bits
	csrrc x24, 0x9aa, x15	// Clear all CSR bits
	csrrw x24, 0x9aa, x29	// Restore CSR

// Testing CSR 0x9ab
	csrr x1, 0x9ab	// Read CSR
	li x14, -1
	csrrw x5, 0x9ab, x14	// Write all 1s to CSR
	csrrw x5, 0x9ab, x0	// Write all 0s to CSR
	csrrs x5, 0x9ab, x14	// Set all CSR bits
	csrrc x5, 0x9ab, x14	// Clear all CSR bits
	csrrw x5, 0x9ab, x1	// Restore CSR

// Testing CSR 0x9ac
	csrr x25, 0x9ac	// Read CSR
	li x7, -1
	csrrw x3, 0x9ac, x7	// Write all 1s to CSR
	csrrw x3, 0x9ac, x0	// Write all 0s to CSR
	csrrs x3, 0x9ac, x7	// Set all CSR bits
	csrrc x3, 0x9ac, x7	// Clear all CSR bits
	csrrw x3, 0x9ac, x25	// Restore CSR

// Testing CSR 0x9ad
	csrr x19, 0x9ad	// Read CSR
	li x21, -1
	csrrw x5, 0x9ad, x21	// Write all 1s to CSR
	csrrw x5, 0x9ad, x0	// Write all 0s to CSR
	csrrs x5, 0x9ad, x21	// Set all CSR bits
	csrrc x5, 0x9ad, x21	// Clear all CSR bits
	csrrw x5, 0x9ad, x19	// Restore CSR

// Testing CSR 0x9ae
	csrr x30, 0x9ae	// Read CSR
	li x26, -1
	csrrw x29, 0x9ae, x26	// Write all 1s to CSR
	csrrw x29, 0x9ae, x0	// Write all 0s to CSR
	csrrs x29, 0x9ae, x26	// Set all CSR bits
	csrrc x29, 0x9ae, x26	// Clear all CSR bits
	csrrw x29, 0x9ae, x30	// Restore CSR

// Testing CSR 0x9af
	csrr x11, 0x9af	// Read CSR
	li x25, -1
	csrrw x9, 0x9af, x25	// Write all 1s to CSR
	csrrw x9, 0x9af, x0	// Write all 0s to CSR
	csrrs x9, 0x9af, x25	// Set all CSR bits
	csrrc x9, 0x9af, x25	// Clear all CSR bits
	csrrw x9, 0x9af, x11	// Restore CSR

// Testing CSR 0x9b0
	csrr x29, 0x9b0	// Read CSR
	li x10, -1
	csrrw x25, 0x9b0, x10	// Write all 1s to CSR
	csrrw x25, 0x9b0, x0	// Write all 0s to CSR
	csrrs x25, 0x9b0, x10	// Set all CSR bits
	csrrc x25, 0x9b0, x10	// Clear all CSR bits
	csrrw x25, 0x9b0, x29	// Restore CSR

// Testing CSR 0x9b1
	csrr x29, 0x9b1	// Read CSR
	li x15, -1
	csrrw x11, 0x9b1, x15	// Write all 1s to CSR
	csrrw x11, 0x9b1, x0	// Write all 0s to CSR
	csrrs x11, 0x9b1, x15	// Set all CSR bits
	csrrc x11, 0x9b1, x15	// Clear all CSR bits
	csrrw x11, 0x9b1, x29	// Restore CSR

// Testing CSR 0x9b2
	csrr x17, 0x9b2	// Read CSR
	li x14, -1
	csrrw x16, 0x9b2, x14	// Write all 1s to CSR
	csrrw x16, 0x9b2, x0	// Write all 0s to CSR
	csrrs x16, 0x9b2, x14	// Set all CSR bits
	csrrc x16, 0x9b2, x14	// Clear all CSR bits
	csrrw x16, 0x9b2, x17	// Restore CSR

// Testing CSR 0x9b3
	csrr x11, 0x9b3	// Read CSR
	li x26, -1
	csrrw x9, 0x9b3, x26	// Write all 1s to CSR
	csrrw x9, 0x9b3, x0	// Write all 0s to CSR
	csrrs x9, 0x9b3, x26	// Set all CSR bits
	csrrc x9, 0x9b3, x26	// Clear all CSR bits
	csrrw x9, 0x9b3, x11	// Restore CSR

// Testing CSR 0x9b4
	csrr x17, 0x9b4	// Read CSR
	li x28, -1
	csrrw x10, 0x9b4, x28	// Write all 1s to CSR
	csrrw x10, 0x9b4, x0	// Write all 0s to CSR
	csrrs x10, 0x9b4, x28	// Set all CSR bits
	csrrc x10, 0x9b4, x28	// Clear all CSR bits
	csrrw x10, 0x9b4, x17	// Restore CSR

// Testing CSR 0x9b5
	csrr x15, 0x9b5	// Read CSR
	li x26, -1
	csrrw x18, 0x9b5, x26	// Write all 1s to CSR
	csrrw x18, 0x9b5, x0	// Write all 0s to CSR
	csrrs x18, 0x9b5, x26	// Set all CSR bits
	csrrc x18, 0x9b5, x26	// Clear all CSR bits
	csrrw x18, 0x9b5, x15	// Restore CSR

// Testing CSR 0x9b6
	csrr x11, 0x9b6	// Read CSR
	li x13, -1
	csrrw x22, 0x9b6, x13	// Write all 1s to CSR
	csrrw x22, 0x9b6, x0	// Write all 0s to CSR
	csrrs x22, 0x9b6, x13	// Set all CSR bits
	csrrc x22, 0x9b6, x13	// Clear all CSR bits
	csrrw x22, 0x9b6, x11	// Restore CSR

// Testing CSR 0x9b7
	csrr x11, 0x9b7	// Read CSR
	li x30, -1
	csrrw x13, 0x9b7, x30	// Write all 1s to CSR
	csrrw x13, 0x9b7, x0	// Write all 0s to CSR
	csrrs x13, 0x9b7, x30	// Set all CSR bits
	csrrc x13, 0x9b7, x30	// Clear all CSR bits
	csrrw x13, 0x9b7, x11	// Restore CSR

// Testing CSR 0x9b8
	csrr x29, 0x9b8	// Read CSR
	li x25, -1
	csrrw x9, 0x9b8, x25	// Write all 1s to CSR
	csrrw x9, 0x9b8, x0	// Write all 0s to CSR
	csrrs x9, 0x9b8, x25	// Set all CSR bits
	csrrc x9, 0x9b8, x25	// Clear all CSR bits
	csrrw x9, 0x9b8, x29	// Restore CSR

// Testing CSR 0x9b9
	csrr x30, 0x9b9	// Read CSR
	li x23, -1
	csrrw x1, 0x9b9, x23	// Write all 1s to CSR
	csrrw x1, 0x9b9, x0	// Write all 0s to CSR
	csrrs x1, 0x9b9, x23	// Set all CSR bits
	csrrc x1, 0x9b9, x23	// Clear all CSR bits
	csrrw x1, 0x9b9, x30	// Restore CSR

// Testing CSR 0x9ba
	csrr x7, 0x9ba	// Read CSR
	li x27, -1
	csrrw x30, 0x9ba, x27	// Write all 1s to CSR
	csrrw x30, 0x9ba, x0	// Write all 0s to CSR
	csrrs x30, 0x9ba, x27	// Set all CSR bits
	csrrc x30, 0x9ba, x27	// Clear all CSR bits
	csrrw x30, 0x9ba, x7	// Restore CSR

// Testing CSR 0x9bb
	csrr x23, 0x9bb	// Read CSR
	li x15, -1
	csrrw x25, 0x9bb, x15	// Write all 1s to CSR
	csrrw x25, 0x9bb, x0	// Write all 0s to CSR
	csrrs x25, 0x9bb, x15	// Set all CSR bits
	csrrc x25, 0x9bb, x15	// Clear all CSR bits
	csrrw x25, 0x9bb, x23	// Restore CSR

// Testing CSR 0x9bc
	csrr x10, 0x9bc	// Read CSR
	li x13, -1
	csrrw x14, 0x9bc, x13	// Write all 1s to CSR
	csrrw x14, 0x9bc, x0	// Write all 0s to CSR
	csrrs x14, 0x9bc, x13	// Set all CSR bits
	csrrc x14, 0x9bc, x13	// Clear all CSR bits
	csrrw x14, 0x9bc, x10	// Restore CSR

// Testing CSR 0x9bd
	csrr x24, 0x9bd	// Read CSR
	li x28, -1
	csrrw x27, 0x9bd, x28	// Write all 1s to CSR
	csrrw x27, 0x9bd, x0	// Write all 0s to CSR
	csrrs x27, 0x9bd, x28	// Set all CSR bits
	csrrc x27, 0x9bd, x28	// Clear all CSR bits
	csrrw x27, 0x9bd, x24	// Restore CSR

// Testing CSR 0x9be
	csrr x30, 0x9be	// Read CSR
	li x27, -1
	csrrw x22, 0x9be, x27	// Write all 1s to CSR
	csrrw x22, 0x9be, x0	// Write all 0s to CSR
	csrrs x22, 0x9be, x27	// Set all CSR bits
	csrrc x22, 0x9be, x27	// Clear all CSR bits
	csrrw x22, 0x9be, x30	// Restore CSR

// Testing CSR 0x9bf
	csrr x5, 0x9bf	// Read CSR
	li x30, -1
	csrrw x31, 0x9bf, x30	// Write all 1s to CSR
	csrrw x31, 0x9bf, x0	// Write all 0s to CSR
	csrrs x31, 0x9bf, x30	// Set all CSR bits
	csrrc x31, 0x9bf, x30	// Clear all CSR bits
	csrrw x31, 0x9bf, x5	// Restore CSR

// Testing CSR 0xa00
	csrr x6, 0xa00	// Read CSR
	li x16, -1
	csrrw x7, 0xa00, x16	// Write all 1s to CSR
	csrrw x7, 0xa00, x0	// Write all 0s to CSR
	csrrs x7, 0xa00, x16	// Set all CSR bits
	csrrc x7, 0xa00, x16	// Clear all CSR bits
	csrrw x7, 0xa00, x6	// Restore CSR

// Testing CSR 0xa01
	csrr x31, 0xa01	// Read CSR
	li x6, -1
	csrrw x20, 0xa01, x6	// Write all 1s to CSR
	csrrw x20, 0xa01, x0	// Write all 0s to CSR
	csrrs x20, 0xa01, x6	// Set all CSR bits
	csrrc x20, 0xa01, x6	// Clear all CSR bits
	csrrw x20, 0xa01, x31	// Restore CSR

// Testing CSR 0xa02
	csrr x31, 0xa02	// Read CSR
	li x30, -1
	csrrw x7, 0xa02, x30	// Write all 1s to CSR
	csrrw x7, 0xa02, x0	// Write all 0s to CSR
	csrrs x7, 0xa02, x30	// Set all CSR bits
	csrrc x7, 0xa02, x30	// Clear all CSR bits
	csrrw x7, 0xa02, x31	// Restore CSR

// Testing CSR 0xa03
	csrr x3, 0xa03	// Read CSR
	li x28, -1
	csrrw x30, 0xa03, x28	// Write all 1s to CSR
	csrrw x30, 0xa03, x0	// Write all 0s to CSR
	csrrs x30, 0xa03, x28	// Set all CSR bits
	csrrc x30, 0xa03, x28	// Clear all CSR bits
	csrrw x30, 0xa03, x3	// Restore CSR

// Testing CSR 0xa04
	csrr x9, 0xa04	// Read CSR
	li x17, -1
	csrrw x27, 0xa04, x17	// Write all 1s to CSR
	csrrw x27, 0xa04, x0	// Write all 0s to CSR
	csrrs x27, 0xa04, x17	// Set all CSR bits
	csrrc x27, 0xa04, x17	// Clear all CSR bits
	csrrw x27, 0xa04, x9	// Restore CSR

// Testing CSR 0xa05
	csrr x17, 0xa05	// Read CSR
	li x6, -1
	csrrw x19, 0xa05, x6	// Write all 1s to CSR
	csrrw x19, 0xa05, x0	// Write all 0s to CSR
	csrrs x19, 0xa05, x6	// Set all CSR bits
	csrrc x19, 0xa05, x6	// Clear all CSR bits
	csrrw x19, 0xa05, x17	// Restore CSR

// Testing CSR 0xa06
	csrr x28, 0xa06	// Read CSR
	li x6, -1
	csrrw x22, 0xa06, x6	// Write all 1s to CSR
	csrrw x22, 0xa06, x0	// Write all 0s to CSR
	csrrs x22, 0xa06, x6	// Set all CSR bits
	csrrc x22, 0xa06, x6	// Clear all CSR bits
	csrrw x22, 0xa06, x28	// Restore CSR

// Testing CSR 0xa07
	csrr x16, 0xa07	// Read CSR
	li x4, -1
	csrrw x30, 0xa07, x4	// Write all 1s to CSR
	csrrw x30, 0xa07, x0	// Write all 0s to CSR
	csrrs x30, 0xa07, x4	// Set all CSR bits
	csrrc x30, 0xa07, x4	// Clear all CSR bits
	csrrw x30, 0xa07, x16	// Restore CSR

// Testing CSR 0xa08
	csrr x8, 0xa08	// Read CSR
	li x14, -1
	csrrw x31, 0xa08, x14	// Write all 1s to CSR
	csrrw x31, 0xa08, x0	// Write all 0s to CSR
	csrrs x31, 0xa08, x14	// Set all CSR bits
	csrrc x31, 0xa08, x14	// Clear all CSR bits
	csrrw x31, 0xa08, x8	// Restore CSR

// Testing CSR 0xa09
	csrr x6, 0xa09	// Read CSR
	li x4, -1
	csrrw x27, 0xa09, x4	// Write all 1s to CSR
	csrrw x27, 0xa09, x0	// Write all 0s to CSR
	csrrs x27, 0xa09, x4	// Set all CSR bits
	csrrc x27, 0xa09, x4	// Clear all CSR bits
	csrrw x27, 0xa09, x6	// Restore CSR

// Testing CSR 0xa0a
	csrr x31, 0xa0a	// Read CSR
	li x2, -1
	csrrw x17, 0xa0a, x2	// Write all 1s to CSR
	csrrw x17, 0xa0a, x0	// Write all 0s to CSR
	csrrs x17, 0xa0a, x2	// Set all CSR bits
	csrrc x17, 0xa0a, x2	// Clear all CSR bits
	csrrw x17, 0xa0a, x31	// Restore CSR

// Testing CSR 0xa0b
	csrr x2, 0xa0b	// Read CSR
	li x23, -1
	csrrw x24, 0xa0b, x23	// Write all 1s to CSR
	csrrw x24, 0xa0b, x0	// Write all 0s to CSR
	csrrs x24, 0xa0b, x23	// Set all CSR bits
	csrrc x24, 0xa0b, x23	// Clear all CSR bits
	csrrw x24, 0xa0b, x2	// Restore CSR

// Testing CSR 0xa0c
	csrr x3, 0xa0c	// Read CSR
	li x26, -1
	csrrw x24, 0xa0c, x26	// Write all 1s to CSR
	csrrw x24, 0xa0c, x0	// Write all 0s to CSR
	csrrs x24, 0xa0c, x26	// Set all CSR bits
	csrrc x24, 0xa0c, x26	// Clear all CSR bits
	csrrw x24, 0xa0c, x3	// Restore CSR

// Testing CSR 0xa0d
	csrr x24, 0xa0d	// Read CSR
	li x4, -1
	csrrw x29, 0xa0d, x4	// Write all 1s to CSR
	csrrw x29, 0xa0d, x0	// Write all 0s to CSR
	csrrs x29, 0xa0d, x4	// Set all CSR bits
	csrrc x29, 0xa0d, x4	// Clear all CSR bits
	csrrw x29, 0xa0d, x24	// Restore CSR

// Testing CSR 0xa0e
	csrr x31, 0xa0e	// Read CSR
	li x19, -1
	csrrw x5, 0xa0e, x19	// Write all 1s to CSR
	csrrw x5, 0xa0e, x0	// Write all 0s to CSR
	csrrs x5, 0xa0e, x19	// Set all CSR bits
	csrrc x5, 0xa0e, x19	// Clear all CSR bits
	csrrw x5, 0xa0e, x31	// Restore CSR

// Testing CSR 0xa0f
	csrr x5, 0xa0f	// Read CSR
	li x19, -1
	csrrw x7, 0xa0f, x19	// Write all 1s to CSR
	csrrw x7, 0xa0f, x0	// Write all 0s to CSR
	csrrs x7, 0xa0f, x19	// Set all CSR bits
	csrrc x7, 0xa0f, x19	// Clear all CSR bits
	csrrw x7, 0xa0f, x5	// Restore CSR

// Testing CSR 0xa10
	csrr x21, 0xa10	// Read CSR
	li x12, -1
	csrrw x4, 0xa10, x12	// Write all 1s to CSR
	csrrw x4, 0xa10, x0	// Write all 0s to CSR
	csrrs x4, 0xa10, x12	// Set all CSR bits
	csrrc x4, 0xa10, x12	// Clear all CSR bits
	csrrw x4, 0xa10, x21	// Restore CSR

// Testing CSR 0xa11
	csrr x4, 0xa11	// Read CSR
	li x13, -1
	csrrw x16, 0xa11, x13	// Write all 1s to CSR
	csrrw x16, 0xa11, x0	// Write all 0s to CSR
	csrrs x16, 0xa11, x13	// Set all CSR bits
	csrrc x16, 0xa11, x13	// Clear all CSR bits
	csrrw x16, 0xa11, x4	// Restore CSR

// Testing CSR 0xa12
	csrr x5, 0xa12	// Read CSR
	li x11, -1
	csrrw x19, 0xa12, x11	// Write all 1s to CSR
	csrrw x19, 0xa12, x0	// Write all 0s to CSR
	csrrs x19, 0xa12, x11	// Set all CSR bits
	csrrc x19, 0xa12, x11	// Clear all CSR bits
	csrrw x19, 0xa12, x5	// Restore CSR

// Testing CSR 0xa13
	csrr x29, 0xa13	// Read CSR
	li x17, -1
	csrrw x7, 0xa13, x17	// Write all 1s to CSR
	csrrw x7, 0xa13, x0	// Write all 0s to CSR
	csrrs x7, 0xa13, x17	// Set all CSR bits
	csrrc x7, 0xa13, x17	// Clear all CSR bits
	csrrw x7, 0xa13, x29	// Restore CSR

// Testing CSR 0xa14
	csrr x20, 0xa14	// Read CSR
	li x8, -1
	csrrw x25, 0xa14, x8	// Write all 1s to CSR
	csrrw x25, 0xa14, x0	// Write all 0s to CSR
	csrrs x25, 0xa14, x8	// Set all CSR bits
	csrrc x25, 0xa14, x8	// Clear all CSR bits
	csrrw x25, 0xa14, x20	// Restore CSR

// Testing CSR 0xa15
	csrr x20, 0xa15	// Read CSR
	li x19, -1
	csrrw x15, 0xa15, x19	// Write all 1s to CSR
	csrrw x15, 0xa15, x0	// Write all 0s to CSR
	csrrs x15, 0xa15, x19	// Set all CSR bits
	csrrc x15, 0xa15, x19	// Clear all CSR bits
	csrrw x15, 0xa15, x20	// Restore CSR

// Testing CSR 0xa16
	csrr x20, 0xa16	// Read CSR
	li x10, -1
	csrrw x4, 0xa16, x10	// Write all 1s to CSR
	csrrw x4, 0xa16, x0	// Write all 0s to CSR
	csrrs x4, 0xa16, x10	// Set all CSR bits
	csrrc x4, 0xa16, x10	// Clear all CSR bits
	csrrw x4, 0xa16, x20	// Restore CSR

// Testing CSR 0xa17
	csrr x5, 0xa17	// Read CSR
	li x14, -1
	csrrw x27, 0xa17, x14	// Write all 1s to CSR
	csrrw x27, 0xa17, x0	// Write all 0s to CSR
	csrrs x27, 0xa17, x14	// Set all CSR bits
	csrrc x27, 0xa17, x14	// Clear all CSR bits
	csrrw x27, 0xa17, x5	// Restore CSR

// Testing CSR 0xa18
	csrr x4, 0xa18	// Read CSR
	li x24, -1
	csrrw x29, 0xa18, x24	// Write all 1s to CSR
	csrrw x29, 0xa18, x0	// Write all 0s to CSR
	csrrs x29, 0xa18, x24	// Set all CSR bits
	csrrc x29, 0xa18, x24	// Clear all CSR bits
	csrrw x29, 0xa18, x4	// Restore CSR

// Testing CSR 0xa19
	csrr x7, 0xa19	// Read CSR
	li x31, -1
	csrrw x23, 0xa19, x31	// Write all 1s to CSR
	csrrw x23, 0xa19, x0	// Write all 0s to CSR
	csrrs x23, 0xa19, x31	// Set all CSR bits
	csrrc x23, 0xa19, x31	// Clear all CSR bits
	csrrw x23, 0xa19, x7	// Restore CSR

// Testing CSR 0xa1a
	csrr x5, 0xa1a	// Read CSR
	li x6, -1
	csrrw x30, 0xa1a, x6	// Write all 1s to CSR
	csrrw x30, 0xa1a, x0	// Write all 0s to CSR
	csrrs x30, 0xa1a, x6	// Set all CSR bits
	csrrc x30, 0xa1a, x6	// Clear all CSR bits
	csrrw x30, 0xa1a, x5	// Restore CSR

// Testing CSR 0xa1b
	csrr x23, 0xa1b	// Read CSR
	li x9, -1
	csrrw x26, 0xa1b, x9	// Write all 1s to CSR
	csrrw x26, 0xa1b, x0	// Write all 0s to CSR
	csrrs x26, 0xa1b, x9	// Set all CSR bits
	csrrc x26, 0xa1b, x9	// Clear all CSR bits
	csrrw x26, 0xa1b, x23	// Restore CSR

// Testing CSR 0xa1c
	csrr x22, 0xa1c	// Read CSR
	li x11, -1
	csrrw x6, 0xa1c, x11	// Write all 1s to CSR
	csrrw x6, 0xa1c, x0	// Write all 0s to CSR
	csrrs x6, 0xa1c, x11	// Set all CSR bits
	csrrc x6, 0xa1c, x11	// Clear all CSR bits
	csrrw x6, 0xa1c, x22	// Restore CSR

// Testing CSR 0xa1d
	csrr x15, 0xa1d	// Read CSR
	li x23, -1
	csrrw x11, 0xa1d, x23	// Write all 1s to CSR
	csrrw x11, 0xa1d, x0	// Write all 0s to CSR
	csrrs x11, 0xa1d, x23	// Set all CSR bits
	csrrc x11, 0xa1d, x23	// Clear all CSR bits
	csrrw x11, 0xa1d, x15	// Restore CSR

// Testing CSR 0xa1e
	csrr x18, 0xa1e	// Read CSR
	li x4, -1
	csrrw x25, 0xa1e, x4	// Write all 1s to CSR
	csrrw x25, 0xa1e, x0	// Write all 0s to CSR
	csrrs x25, 0xa1e, x4	// Set all CSR bits
	csrrc x25, 0xa1e, x4	// Clear all CSR bits
	csrrw x25, 0xa1e, x18	// Restore CSR

// Testing CSR 0xa1f
	csrr x3, 0xa1f	// Read CSR
	li x13, -1
	csrrw x1, 0xa1f, x13	// Write all 1s to CSR
	csrrw x1, 0xa1f, x0	// Write all 0s to CSR
	csrrs x1, 0xa1f, x13	// Set all CSR bits
	csrrc x1, 0xa1f, x13	// Clear all CSR bits
	csrrw x1, 0xa1f, x3	// Restore CSR

// Testing CSR 0xa20
	csrr x2, 0xa20	// Read CSR
	li x7, -1
	csrrw x11, 0xa20, x7	// Write all 1s to CSR
	csrrw x11, 0xa20, x0	// Write all 0s to CSR
	csrrs x11, 0xa20, x7	// Set all CSR bits
	csrrc x11, 0xa20, x7	// Clear all CSR bits
	csrrw x11, 0xa20, x2	// Restore CSR

// Testing CSR 0xa21
	csrr x14, 0xa21	// Read CSR
	li x29, -1
	csrrw x8, 0xa21, x29	// Write all 1s to CSR
	csrrw x8, 0xa21, x0	// Write all 0s to CSR
	csrrs x8, 0xa21, x29	// Set all CSR bits
	csrrc x8, 0xa21, x29	// Clear all CSR bits
	csrrw x8, 0xa21, x14	// Restore CSR

// Testing CSR 0xa22
	csrr x26, 0xa22	// Read CSR
	li x11, -1
	csrrw x30, 0xa22, x11	// Write all 1s to CSR
	csrrw x30, 0xa22, x0	// Write all 0s to CSR
	csrrs x30, 0xa22, x11	// Set all CSR bits
	csrrc x30, 0xa22, x11	// Clear all CSR bits
	csrrw x30, 0xa22, x26	// Restore CSR

// Testing CSR 0xa23
	csrr x14, 0xa23	// Read CSR
	li x19, -1
	csrrw x4, 0xa23, x19	// Write all 1s to CSR
	csrrw x4, 0xa23, x0	// Write all 0s to CSR
	csrrs x4, 0xa23, x19	// Set all CSR bits
	csrrc x4, 0xa23, x19	// Clear all CSR bits
	csrrw x4, 0xa23, x14	// Restore CSR

// Testing CSR 0xa24
	csrr x11, 0xa24	// Read CSR
	li x3, -1
	csrrw x16, 0xa24, x3	// Write all 1s to CSR
	csrrw x16, 0xa24, x0	// Write all 0s to CSR
	csrrs x16, 0xa24, x3	// Set all CSR bits
	csrrc x16, 0xa24, x3	// Clear all CSR bits
	csrrw x16, 0xa24, x11	// Restore CSR

// Testing CSR 0xa25
	csrr x20, 0xa25	// Read CSR
	li x16, -1
	csrrw x10, 0xa25, x16	// Write all 1s to CSR
	csrrw x10, 0xa25, x0	// Write all 0s to CSR
	csrrs x10, 0xa25, x16	// Set all CSR bits
	csrrc x10, 0xa25, x16	// Clear all CSR bits
	csrrw x10, 0xa25, x20	// Restore CSR

// Testing CSR 0xa26
	csrr x8, 0xa26	// Read CSR
	li x13, -1
	csrrw x28, 0xa26, x13	// Write all 1s to CSR
	csrrw x28, 0xa26, x0	// Write all 0s to CSR
	csrrs x28, 0xa26, x13	// Set all CSR bits
	csrrc x28, 0xa26, x13	// Clear all CSR bits
	csrrw x28, 0xa26, x8	// Restore CSR

// Testing CSR 0xa27
	csrr x23, 0xa27	// Read CSR
	li x2, -1
	csrrw x12, 0xa27, x2	// Write all 1s to CSR
	csrrw x12, 0xa27, x0	// Write all 0s to CSR
	csrrs x12, 0xa27, x2	// Set all CSR bits
	csrrc x12, 0xa27, x2	// Clear all CSR bits
	csrrw x12, 0xa27, x23	// Restore CSR

// Testing CSR 0xa28
	csrr x11, 0xa28	// Read CSR
	li x6, -1
	csrrw x3, 0xa28, x6	// Write all 1s to CSR
	csrrw x3, 0xa28, x0	// Write all 0s to CSR
	csrrs x3, 0xa28, x6	// Set all CSR bits
	csrrc x3, 0xa28, x6	// Clear all CSR bits
	csrrw x3, 0xa28, x11	// Restore CSR

// Testing CSR 0xa29
	csrr x18, 0xa29	// Read CSR
	li x9, -1
	csrrw x31, 0xa29, x9	// Write all 1s to CSR
	csrrw x31, 0xa29, x0	// Write all 0s to CSR
	csrrs x31, 0xa29, x9	// Set all CSR bits
	csrrc x31, 0xa29, x9	// Clear all CSR bits
	csrrw x31, 0xa29, x18	// Restore CSR

// Testing CSR 0xa2a
	csrr x15, 0xa2a	// Read CSR
	li x1, -1
	csrrw x26, 0xa2a, x1	// Write all 1s to CSR
	csrrw x26, 0xa2a, x0	// Write all 0s to CSR
	csrrs x26, 0xa2a, x1	// Set all CSR bits
	csrrc x26, 0xa2a, x1	// Clear all CSR bits
	csrrw x26, 0xa2a, x15	// Restore CSR

// Testing CSR 0xa2b
	csrr x26, 0xa2b	// Read CSR
	li x20, -1
	csrrw x21, 0xa2b, x20	// Write all 1s to CSR
	csrrw x21, 0xa2b, x0	// Write all 0s to CSR
	csrrs x21, 0xa2b, x20	// Set all CSR bits
	csrrc x21, 0xa2b, x20	// Clear all CSR bits
	csrrw x21, 0xa2b, x26	// Restore CSR

// Testing CSR 0xa2c
	csrr x6, 0xa2c	// Read CSR
	li x28, -1
	csrrw x5, 0xa2c, x28	// Write all 1s to CSR
	csrrw x5, 0xa2c, x0	// Write all 0s to CSR
	csrrs x5, 0xa2c, x28	// Set all CSR bits
	csrrc x5, 0xa2c, x28	// Clear all CSR bits
	csrrw x5, 0xa2c, x6	// Restore CSR

// Testing CSR 0xa2d
	csrr x24, 0xa2d	// Read CSR
	li x18, -1
	csrrw x19, 0xa2d, x18	// Write all 1s to CSR
	csrrw x19, 0xa2d, x0	// Write all 0s to CSR
	csrrs x19, 0xa2d, x18	// Set all CSR bits
	csrrc x19, 0xa2d, x18	// Clear all CSR bits
	csrrw x19, 0xa2d, x24	// Restore CSR

// Testing CSR 0xa2e
	csrr x11, 0xa2e	// Read CSR
	li x22, -1
	csrrw x24, 0xa2e, x22	// Write all 1s to CSR
	csrrw x24, 0xa2e, x0	// Write all 0s to CSR
	csrrs x24, 0xa2e, x22	// Set all CSR bits
	csrrc x24, 0xa2e, x22	// Clear all CSR bits
	csrrw x24, 0xa2e, x11	// Restore CSR

// Testing CSR 0xa2f
	csrr x15, 0xa2f	// Read CSR
	li x28, -1
	csrrw x23, 0xa2f, x28	// Write all 1s to CSR
	csrrw x23, 0xa2f, x0	// Write all 0s to CSR
	csrrs x23, 0xa2f, x28	// Set all CSR bits
	csrrc x23, 0xa2f, x28	// Clear all CSR bits
	csrrw x23, 0xa2f, x15	// Restore CSR

// Testing CSR 0xa30
	csrr x3, 0xa30	// Read CSR
	li x26, -1
	csrrw x13, 0xa30, x26	// Write all 1s to CSR
	csrrw x13, 0xa30, x0	// Write all 0s to CSR
	csrrs x13, 0xa30, x26	// Set all CSR bits
	csrrc x13, 0xa30, x26	// Clear all CSR bits
	csrrw x13, 0xa30, x3	// Restore CSR

// Testing CSR 0xa31
	csrr x27, 0xa31	// Read CSR
	li x9, -1
	csrrw x15, 0xa31, x9	// Write all 1s to CSR
	csrrw x15, 0xa31, x0	// Write all 0s to CSR
	csrrs x15, 0xa31, x9	// Set all CSR bits
	csrrc x15, 0xa31, x9	// Clear all CSR bits
	csrrw x15, 0xa31, x27	// Restore CSR

// Testing CSR 0xa32
	csrr x10, 0xa32	// Read CSR
	li x1, -1
	csrrw x13, 0xa32, x1	// Write all 1s to CSR
	csrrw x13, 0xa32, x0	// Write all 0s to CSR
	csrrs x13, 0xa32, x1	// Set all CSR bits
	csrrc x13, 0xa32, x1	// Clear all CSR bits
	csrrw x13, 0xa32, x10	// Restore CSR

// Testing CSR 0xa33
	csrr x28, 0xa33	// Read CSR
	li x1, -1
	csrrw x26, 0xa33, x1	// Write all 1s to CSR
	csrrw x26, 0xa33, x0	// Write all 0s to CSR
	csrrs x26, 0xa33, x1	// Set all CSR bits
	csrrc x26, 0xa33, x1	// Clear all CSR bits
	csrrw x26, 0xa33, x28	// Restore CSR

// Testing CSR 0xa34
	csrr x29, 0xa34	// Read CSR
	li x15, -1
	csrrw x26, 0xa34, x15	// Write all 1s to CSR
	csrrw x26, 0xa34, x0	// Write all 0s to CSR
	csrrs x26, 0xa34, x15	// Set all CSR bits
	csrrc x26, 0xa34, x15	// Clear all CSR bits
	csrrw x26, 0xa34, x29	// Restore CSR

// Testing CSR 0xa35
	csrr x4, 0xa35	// Read CSR
	li x5, -1
	csrrw x26, 0xa35, x5	// Write all 1s to CSR
	csrrw x26, 0xa35, x0	// Write all 0s to CSR
	csrrs x26, 0xa35, x5	// Set all CSR bits
	csrrc x26, 0xa35, x5	// Clear all CSR bits
	csrrw x26, 0xa35, x4	// Restore CSR

// Testing CSR 0xa36
	csrr x27, 0xa36	// Read CSR
	li x10, -1
	csrrw x11, 0xa36, x10	// Write all 1s to CSR
	csrrw x11, 0xa36, x0	// Write all 0s to CSR
	csrrs x11, 0xa36, x10	// Set all CSR bits
	csrrc x11, 0xa36, x10	// Clear all CSR bits
	csrrw x11, 0xa36, x27	// Restore CSR

// Testing CSR 0xa37
	csrr x10, 0xa37	// Read CSR
	li x20, -1
	csrrw x5, 0xa37, x20	// Write all 1s to CSR
	csrrw x5, 0xa37, x0	// Write all 0s to CSR
	csrrs x5, 0xa37, x20	// Set all CSR bits
	csrrc x5, 0xa37, x20	// Clear all CSR bits
	csrrw x5, 0xa37, x10	// Restore CSR

// Testing CSR 0xa38
	csrr x16, 0xa38	// Read CSR
	li x26, -1
	csrrw x15, 0xa38, x26	// Write all 1s to CSR
	csrrw x15, 0xa38, x0	// Write all 0s to CSR
	csrrs x15, 0xa38, x26	// Set all CSR bits
	csrrc x15, 0xa38, x26	// Clear all CSR bits
	csrrw x15, 0xa38, x16	// Restore CSR

// Testing CSR 0xa39
	csrr x1, 0xa39	// Read CSR
	li x20, -1
	csrrw x11, 0xa39, x20	// Write all 1s to CSR
	csrrw x11, 0xa39, x0	// Write all 0s to CSR
	csrrs x11, 0xa39, x20	// Set all CSR bits
	csrrc x11, 0xa39, x20	// Clear all CSR bits
	csrrw x11, 0xa39, x1	// Restore CSR

// Testing CSR 0xa3a
	csrr x30, 0xa3a	// Read CSR
	li x5, -1
	csrrw x14, 0xa3a, x5	// Write all 1s to CSR
	csrrw x14, 0xa3a, x0	// Write all 0s to CSR
	csrrs x14, 0xa3a, x5	// Set all CSR bits
	csrrc x14, 0xa3a, x5	// Clear all CSR bits
	csrrw x14, 0xa3a, x30	// Restore CSR

// Testing CSR 0xa3b
	csrr x26, 0xa3b	// Read CSR
	li x1, -1
	csrrw x10, 0xa3b, x1	// Write all 1s to CSR
	csrrw x10, 0xa3b, x0	// Write all 0s to CSR
	csrrs x10, 0xa3b, x1	// Set all CSR bits
	csrrc x10, 0xa3b, x1	// Clear all CSR bits
	csrrw x10, 0xa3b, x26	// Restore CSR

// Testing CSR 0xa3c
	csrr x28, 0xa3c	// Read CSR
	li x6, -1
	csrrw x31, 0xa3c, x6	// Write all 1s to CSR
	csrrw x31, 0xa3c, x0	// Write all 0s to CSR
	csrrs x31, 0xa3c, x6	// Set all CSR bits
	csrrc x31, 0xa3c, x6	// Clear all CSR bits
	csrrw x31, 0xa3c, x28	// Restore CSR

// Testing CSR 0xa3d
	csrr x19, 0xa3d	// Read CSR
	li x26, -1
	csrrw x6, 0xa3d, x26	// Write all 1s to CSR
	csrrw x6, 0xa3d, x0	// Write all 0s to CSR
	csrrs x6, 0xa3d, x26	// Set all CSR bits
	csrrc x6, 0xa3d, x26	// Clear all CSR bits
	csrrw x6, 0xa3d, x19	// Restore CSR

// Testing CSR 0xa3e
	csrr x3, 0xa3e	// Read CSR
	li x14, -1
	csrrw x28, 0xa3e, x14	// Write all 1s to CSR
	csrrw x28, 0xa3e, x0	// Write all 0s to CSR
	csrrs x28, 0xa3e, x14	// Set all CSR bits
	csrrc x28, 0xa3e, x14	// Clear all CSR bits
	csrrw x28, 0xa3e, x3	// Restore CSR

// Testing CSR 0xa3f
	csrr x25, 0xa3f	// Read CSR
	li x17, -1
	csrrw x28, 0xa3f, x17	// Write all 1s to CSR
	csrrw x28, 0xa3f, x0	// Write all 0s to CSR
	csrrs x28, 0xa3f, x17	// Set all CSR bits
	csrrc x28, 0xa3f, x17	// Clear all CSR bits
	csrrw x28, 0xa3f, x25	// Restore CSR

// Testing CSR 0xa40
	csrr x15, 0xa40	// Read CSR
	li x28, -1
	csrrw x27, 0xa40, x28	// Write all 1s to CSR
	csrrw x27, 0xa40, x0	// Write all 0s to CSR
	csrrs x27, 0xa40, x28	// Set all CSR bits
	csrrc x27, 0xa40, x28	// Clear all CSR bits
	csrrw x27, 0xa40, x15	// Restore CSR

// Testing CSR 0xa41
	csrr x30, 0xa41	// Read CSR
	li x18, -1
	csrrw x21, 0xa41, x18	// Write all 1s to CSR
	csrrw x21, 0xa41, x0	// Write all 0s to CSR
	csrrs x21, 0xa41, x18	// Set all CSR bits
	csrrc x21, 0xa41, x18	// Clear all CSR bits
	csrrw x21, 0xa41, x30	// Restore CSR

// Testing CSR 0xa42
	csrr x25, 0xa42	// Read CSR
	li x5, -1
	csrrw x30, 0xa42, x5	// Write all 1s to CSR
	csrrw x30, 0xa42, x0	// Write all 0s to CSR
	csrrs x30, 0xa42, x5	// Set all CSR bits
	csrrc x30, 0xa42, x5	// Clear all CSR bits
	csrrw x30, 0xa42, x25	// Restore CSR

// Testing CSR 0xa43
	csrr x14, 0xa43	// Read CSR
	li x27, -1
	csrrw x31, 0xa43, x27	// Write all 1s to CSR
	csrrw x31, 0xa43, x0	// Write all 0s to CSR
	csrrs x31, 0xa43, x27	// Set all CSR bits
	csrrc x31, 0xa43, x27	// Clear all CSR bits
	csrrw x31, 0xa43, x14	// Restore CSR

// Testing CSR 0xa44
	csrr x11, 0xa44	// Read CSR
	li x5, -1
	csrrw x23, 0xa44, x5	// Write all 1s to CSR
	csrrw x23, 0xa44, x0	// Write all 0s to CSR
	csrrs x23, 0xa44, x5	// Set all CSR bits
	csrrc x23, 0xa44, x5	// Clear all CSR bits
	csrrw x23, 0xa44, x11	// Restore CSR

// Testing CSR 0xa45
	csrr x30, 0xa45	// Read CSR
	li x18, -1
	csrrw x12, 0xa45, x18	// Write all 1s to CSR
	csrrw x12, 0xa45, x0	// Write all 0s to CSR
	csrrs x12, 0xa45, x18	// Set all CSR bits
	csrrc x12, 0xa45, x18	// Clear all CSR bits
	csrrw x12, 0xa45, x30	// Restore CSR

// Testing CSR 0xa46
	csrr x19, 0xa46	// Read CSR
	li x6, -1
	csrrw x27, 0xa46, x6	// Write all 1s to CSR
	csrrw x27, 0xa46, x0	// Write all 0s to CSR
	csrrs x27, 0xa46, x6	// Set all CSR bits
	csrrc x27, 0xa46, x6	// Clear all CSR bits
	csrrw x27, 0xa46, x19	// Restore CSR

// Testing CSR 0xa47
	csrr x3, 0xa47	// Read CSR
	li x4, -1
	csrrw x8, 0xa47, x4	// Write all 1s to CSR
	csrrw x8, 0xa47, x0	// Write all 0s to CSR
	csrrs x8, 0xa47, x4	// Set all CSR bits
	csrrc x8, 0xa47, x4	// Clear all CSR bits
	csrrw x8, 0xa47, x3	// Restore CSR

// Testing CSR 0xa48
	csrr x7, 0xa48	// Read CSR
	li x16, -1
	csrrw x29, 0xa48, x16	// Write all 1s to CSR
	csrrw x29, 0xa48, x0	// Write all 0s to CSR
	csrrs x29, 0xa48, x16	// Set all CSR bits
	csrrc x29, 0xa48, x16	// Clear all CSR bits
	csrrw x29, 0xa48, x7	// Restore CSR

// Testing CSR 0xa49
	csrr x23, 0xa49	// Read CSR
	li x28, -1
	csrrw x21, 0xa49, x28	// Write all 1s to CSR
	csrrw x21, 0xa49, x0	// Write all 0s to CSR
	csrrs x21, 0xa49, x28	// Set all CSR bits
	csrrc x21, 0xa49, x28	// Clear all CSR bits
	csrrw x21, 0xa49, x23	// Restore CSR

// Testing CSR 0xa4a
	csrr x31, 0xa4a	// Read CSR
	li x7, -1
	csrrw x1, 0xa4a, x7	// Write all 1s to CSR
	csrrw x1, 0xa4a, x0	// Write all 0s to CSR
	csrrs x1, 0xa4a, x7	// Set all CSR bits
	csrrc x1, 0xa4a, x7	// Clear all CSR bits
	csrrw x1, 0xa4a, x31	// Restore CSR

// Testing CSR 0xa4b
	csrr x26, 0xa4b	// Read CSR
	li x28, -1
	csrrw x13, 0xa4b, x28	// Write all 1s to CSR
	csrrw x13, 0xa4b, x0	// Write all 0s to CSR
	csrrs x13, 0xa4b, x28	// Set all CSR bits
	csrrc x13, 0xa4b, x28	// Clear all CSR bits
	csrrw x13, 0xa4b, x26	// Restore CSR

// Testing CSR 0xa4c
	csrr x11, 0xa4c	// Read CSR
	li x9, -1
	csrrw x12, 0xa4c, x9	// Write all 1s to CSR
	csrrw x12, 0xa4c, x0	// Write all 0s to CSR
	csrrs x12, 0xa4c, x9	// Set all CSR bits
	csrrc x12, 0xa4c, x9	// Clear all CSR bits
	csrrw x12, 0xa4c, x11	// Restore CSR

// Testing CSR 0xa4d
	csrr x19, 0xa4d	// Read CSR
	li x9, -1
	csrrw x15, 0xa4d, x9	// Write all 1s to CSR
	csrrw x15, 0xa4d, x0	// Write all 0s to CSR
	csrrs x15, 0xa4d, x9	// Set all CSR bits
	csrrc x15, 0xa4d, x9	// Clear all CSR bits
	csrrw x15, 0xa4d, x19	// Restore CSR

// Testing CSR 0xa4e
	csrr x30, 0xa4e	// Read CSR
	li x17, -1
	csrrw x24, 0xa4e, x17	// Write all 1s to CSR
	csrrw x24, 0xa4e, x0	// Write all 0s to CSR
	csrrs x24, 0xa4e, x17	// Set all CSR bits
	csrrc x24, 0xa4e, x17	// Clear all CSR bits
	csrrw x24, 0xa4e, x30	// Restore CSR

// Testing CSR 0xa4f
	csrr x31, 0xa4f	// Read CSR
	li x2, -1
	csrrw x10, 0xa4f, x2	// Write all 1s to CSR
	csrrw x10, 0xa4f, x0	// Write all 0s to CSR
	csrrs x10, 0xa4f, x2	// Set all CSR bits
	csrrc x10, 0xa4f, x2	// Clear all CSR bits
	csrrw x10, 0xa4f, x31	// Restore CSR

// Testing CSR 0xa50
	csrr x28, 0xa50	// Read CSR
	li x15, -1
	csrrw x14, 0xa50, x15	// Write all 1s to CSR
	csrrw x14, 0xa50, x0	// Write all 0s to CSR
	csrrs x14, 0xa50, x15	// Set all CSR bits
	csrrc x14, 0xa50, x15	// Clear all CSR bits
	csrrw x14, 0xa50, x28	// Restore CSR

// Testing CSR 0xa51
	csrr x30, 0xa51	// Read CSR
	li x28, -1
	csrrw x8, 0xa51, x28	// Write all 1s to CSR
	csrrw x8, 0xa51, x0	// Write all 0s to CSR
	csrrs x8, 0xa51, x28	// Set all CSR bits
	csrrc x8, 0xa51, x28	// Clear all CSR bits
	csrrw x8, 0xa51, x30	// Restore CSR

// Testing CSR 0xa52
	csrr x29, 0xa52	// Read CSR
	li x25, -1
	csrrw x24, 0xa52, x25	// Write all 1s to CSR
	csrrw x24, 0xa52, x0	// Write all 0s to CSR
	csrrs x24, 0xa52, x25	// Set all CSR bits
	csrrc x24, 0xa52, x25	// Clear all CSR bits
	csrrw x24, 0xa52, x29	// Restore CSR

// Testing CSR 0xa53
	csrr x24, 0xa53	// Read CSR
	li x16, -1
	csrrw x1, 0xa53, x16	// Write all 1s to CSR
	csrrw x1, 0xa53, x0	// Write all 0s to CSR
	csrrs x1, 0xa53, x16	// Set all CSR bits
	csrrc x1, 0xa53, x16	// Clear all CSR bits
	csrrw x1, 0xa53, x24	// Restore CSR

// Testing CSR 0xa54
	csrr x17, 0xa54	// Read CSR
	li x27, -1
	csrrw x20, 0xa54, x27	// Write all 1s to CSR
	csrrw x20, 0xa54, x0	// Write all 0s to CSR
	csrrs x20, 0xa54, x27	// Set all CSR bits
	csrrc x20, 0xa54, x27	// Clear all CSR bits
	csrrw x20, 0xa54, x17	// Restore CSR

// Testing CSR 0xa55
	csrr x24, 0xa55	// Read CSR
	li x13, -1
	csrrw x23, 0xa55, x13	// Write all 1s to CSR
	csrrw x23, 0xa55, x0	// Write all 0s to CSR
	csrrs x23, 0xa55, x13	// Set all CSR bits
	csrrc x23, 0xa55, x13	// Clear all CSR bits
	csrrw x23, 0xa55, x24	// Restore CSR

// Testing CSR 0xa56
	csrr x26, 0xa56	// Read CSR
	li x28, -1
	csrrw x11, 0xa56, x28	// Write all 1s to CSR
	csrrw x11, 0xa56, x0	// Write all 0s to CSR
	csrrs x11, 0xa56, x28	// Set all CSR bits
	csrrc x11, 0xa56, x28	// Clear all CSR bits
	csrrw x11, 0xa56, x26	// Restore CSR

// Testing CSR 0xa57
	csrr x7, 0xa57	// Read CSR
	li x31, -1
	csrrw x19, 0xa57, x31	// Write all 1s to CSR
	csrrw x19, 0xa57, x0	// Write all 0s to CSR
	csrrs x19, 0xa57, x31	// Set all CSR bits
	csrrc x19, 0xa57, x31	// Clear all CSR bits
	csrrw x19, 0xa57, x7	// Restore CSR

// Testing CSR 0xa58
	csrr x12, 0xa58	// Read CSR
	li x10, -1
	csrrw x26, 0xa58, x10	// Write all 1s to CSR
	csrrw x26, 0xa58, x0	// Write all 0s to CSR
	csrrs x26, 0xa58, x10	// Set all CSR bits
	csrrc x26, 0xa58, x10	// Clear all CSR bits
	csrrw x26, 0xa58, x12	// Restore CSR

// Testing CSR 0xa59
	csrr x6, 0xa59	// Read CSR
	li x23, -1
	csrrw x24, 0xa59, x23	// Write all 1s to CSR
	csrrw x24, 0xa59, x0	// Write all 0s to CSR
	csrrs x24, 0xa59, x23	// Set all CSR bits
	csrrc x24, 0xa59, x23	// Clear all CSR bits
	csrrw x24, 0xa59, x6	// Restore CSR

// Testing CSR 0xa5a
	csrr x9, 0xa5a	// Read CSR
	li x7, -1
	csrrw x26, 0xa5a, x7	// Write all 1s to CSR
	csrrw x26, 0xa5a, x0	// Write all 0s to CSR
	csrrs x26, 0xa5a, x7	// Set all CSR bits
	csrrc x26, 0xa5a, x7	// Clear all CSR bits
	csrrw x26, 0xa5a, x9	// Restore CSR

// Testing CSR 0xa5b
	csrr x31, 0xa5b	// Read CSR
	li x4, -1
	csrrw x12, 0xa5b, x4	// Write all 1s to CSR
	csrrw x12, 0xa5b, x0	// Write all 0s to CSR
	csrrs x12, 0xa5b, x4	// Set all CSR bits
	csrrc x12, 0xa5b, x4	// Clear all CSR bits
	csrrw x12, 0xa5b, x31	// Restore CSR

// Testing CSR 0xa5c
	csrr x24, 0xa5c	// Read CSR
	li x13, -1
	csrrw x5, 0xa5c, x13	// Write all 1s to CSR
	csrrw x5, 0xa5c, x0	// Write all 0s to CSR
	csrrs x5, 0xa5c, x13	// Set all CSR bits
	csrrc x5, 0xa5c, x13	// Clear all CSR bits
	csrrw x5, 0xa5c, x24	// Restore CSR

// Testing CSR 0xa5d
	csrr x10, 0xa5d	// Read CSR
	li x26, -1
	csrrw x9, 0xa5d, x26	// Write all 1s to CSR
	csrrw x9, 0xa5d, x0	// Write all 0s to CSR
	csrrs x9, 0xa5d, x26	// Set all CSR bits
	csrrc x9, 0xa5d, x26	// Clear all CSR bits
	csrrw x9, 0xa5d, x10	// Restore CSR

// Testing CSR 0xa5e
	csrr x23, 0xa5e	// Read CSR
	li x20, -1
	csrrw x27, 0xa5e, x20	// Write all 1s to CSR
	csrrw x27, 0xa5e, x0	// Write all 0s to CSR
	csrrs x27, 0xa5e, x20	// Set all CSR bits
	csrrc x27, 0xa5e, x20	// Clear all CSR bits
	csrrw x27, 0xa5e, x23	// Restore CSR

// Testing CSR 0xa5f
	csrr x6, 0xa5f	// Read CSR
	li x28, -1
	csrrw x13, 0xa5f, x28	// Write all 1s to CSR
	csrrw x13, 0xa5f, x0	// Write all 0s to CSR
	csrrs x13, 0xa5f, x28	// Set all CSR bits
	csrrc x13, 0xa5f, x28	// Clear all CSR bits
	csrrw x13, 0xa5f, x6	// Restore CSR

// Testing CSR 0xa60
	csrr x1, 0xa60	// Read CSR
	li x22, -1
	csrrw x31, 0xa60, x22	// Write all 1s to CSR
	csrrw x31, 0xa60, x0	// Write all 0s to CSR
	csrrs x31, 0xa60, x22	// Set all CSR bits
	csrrc x31, 0xa60, x22	// Clear all CSR bits
	csrrw x31, 0xa60, x1	// Restore CSR

// Testing CSR 0xa61
	csrr x30, 0xa61	// Read CSR
	li x27, -1
	csrrw x3, 0xa61, x27	// Write all 1s to CSR
	csrrw x3, 0xa61, x0	// Write all 0s to CSR
	csrrs x3, 0xa61, x27	// Set all CSR bits
	csrrc x3, 0xa61, x27	// Clear all CSR bits
	csrrw x3, 0xa61, x30	// Restore CSR

// Testing CSR 0xa62
	csrr x27, 0xa62	// Read CSR
	li x6, -1
	csrrw x30, 0xa62, x6	// Write all 1s to CSR
	csrrw x30, 0xa62, x0	// Write all 0s to CSR
	csrrs x30, 0xa62, x6	// Set all CSR bits
	csrrc x30, 0xa62, x6	// Clear all CSR bits
	csrrw x30, 0xa62, x27	// Restore CSR

// Testing CSR 0xa63
	csrr x13, 0xa63	// Read CSR
	li x14, -1
	csrrw x3, 0xa63, x14	// Write all 1s to CSR
	csrrw x3, 0xa63, x0	// Write all 0s to CSR
	csrrs x3, 0xa63, x14	// Set all CSR bits
	csrrc x3, 0xa63, x14	// Clear all CSR bits
	csrrw x3, 0xa63, x13	// Restore CSR

// Testing CSR 0xa64
	csrr x3, 0xa64	// Read CSR
	li x22, -1
	csrrw x19, 0xa64, x22	// Write all 1s to CSR
	csrrw x19, 0xa64, x0	// Write all 0s to CSR
	csrrs x19, 0xa64, x22	// Set all CSR bits
	csrrc x19, 0xa64, x22	// Clear all CSR bits
	csrrw x19, 0xa64, x3	// Restore CSR

// Testing CSR 0xa65
	csrr x8, 0xa65	// Read CSR
	li x18, -1
	csrrw x3, 0xa65, x18	// Write all 1s to CSR
	csrrw x3, 0xa65, x0	// Write all 0s to CSR
	csrrs x3, 0xa65, x18	// Set all CSR bits
	csrrc x3, 0xa65, x18	// Clear all CSR bits
	csrrw x3, 0xa65, x8	// Restore CSR

// Testing CSR 0xa66
	csrr x7, 0xa66	// Read CSR
	li x11, -1
	csrrw x24, 0xa66, x11	// Write all 1s to CSR
	csrrw x24, 0xa66, x0	// Write all 0s to CSR
	csrrs x24, 0xa66, x11	// Set all CSR bits
	csrrc x24, 0xa66, x11	// Clear all CSR bits
	csrrw x24, 0xa66, x7	// Restore CSR

// Testing CSR 0xa67
	csrr x15, 0xa67	// Read CSR
	li x18, -1
	csrrw x23, 0xa67, x18	// Write all 1s to CSR
	csrrw x23, 0xa67, x0	// Write all 0s to CSR
	csrrs x23, 0xa67, x18	// Set all CSR bits
	csrrc x23, 0xa67, x18	// Clear all CSR bits
	csrrw x23, 0xa67, x15	// Restore CSR

// Testing CSR 0xa68
	csrr x20, 0xa68	// Read CSR
	li x26, -1
	csrrw x4, 0xa68, x26	// Write all 1s to CSR
	csrrw x4, 0xa68, x0	// Write all 0s to CSR
	csrrs x4, 0xa68, x26	// Set all CSR bits
	csrrc x4, 0xa68, x26	// Clear all CSR bits
	csrrw x4, 0xa68, x20	// Restore CSR

// Testing CSR 0xa69
	csrr x25, 0xa69	// Read CSR
	li x6, -1
	csrrw x26, 0xa69, x6	// Write all 1s to CSR
	csrrw x26, 0xa69, x0	// Write all 0s to CSR
	csrrs x26, 0xa69, x6	// Set all CSR bits
	csrrc x26, 0xa69, x6	// Clear all CSR bits
	csrrw x26, 0xa69, x25	// Restore CSR

// Testing CSR 0xa6a
	csrr x29, 0xa6a	// Read CSR
	li x6, -1
	csrrw x25, 0xa6a, x6	// Write all 1s to CSR
	csrrw x25, 0xa6a, x0	// Write all 0s to CSR
	csrrs x25, 0xa6a, x6	// Set all CSR bits
	csrrc x25, 0xa6a, x6	// Clear all CSR bits
	csrrw x25, 0xa6a, x29	// Restore CSR

// Testing CSR 0xa6b
	csrr x20, 0xa6b	// Read CSR
	li x19, -1
	csrrw x2, 0xa6b, x19	// Write all 1s to CSR
	csrrw x2, 0xa6b, x0	// Write all 0s to CSR
	csrrs x2, 0xa6b, x19	// Set all CSR bits
	csrrc x2, 0xa6b, x19	// Clear all CSR bits
	csrrw x2, 0xa6b, x20	// Restore CSR

// Testing CSR 0xa6c
	csrr x28, 0xa6c	// Read CSR
	li x31, -1
	csrrw x15, 0xa6c, x31	// Write all 1s to CSR
	csrrw x15, 0xa6c, x0	// Write all 0s to CSR
	csrrs x15, 0xa6c, x31	// Set all CSR bits
	csrrc x15, 0xa6c, x31	// Clear all CSR bits
	csrrw x15, 0xa6c, x28	// Restore CSR

// Testing CSR 0xa6d
	csrr x25, 0xa6d	// Read CSR
	li x9, -1
	csrrw x7, 0xa6d, x9	// Write all 1s to CSR
	csrrw x7, 0xa6d, x0	// Write all 0s to CSR
	csrrs x7, 0xa6d, x9	// Set all CSR bits
	csrrc x7, 0xa6d, x9	// Clear all CSR bits
	csrrw x7, 0xa6d, x25	// Restore CSR

// Testing CSR 0xa6e
	csrr x18, 0xa6e	// Read CSR
	li x2, -1
	csrrw x16, 0xa6e, x2	// Write all 1s to CSR
	csrrw x16, 0xa6e, x0	// Write all 0s to CSR
	csrrs x16, 0xa6e, x2	// Set all CSR bits
	csrrc x16, 0xa6e, x2	// Clear all CSR bits
	csrrw x16, 0xa6e, x18	// Restore CSR

// Testing CSR 0xa6f
	csrr x3, 0xa6f	// Read CSR
	li x1, -1
	csrrw x21, 0xa6f, x1	// Write all 1s to CSR
	csrrw x21, 0xa6f, x0	// Write all 0s to CSR
	csrrs x21, 0xa6f, x1	// Set all CSR bits
	csrrc x21, 0xa6f, x1	// Clear all CSR bits
	csrrw x21, 0xa6f, x3	// Restore CSR

// Testing CSR 0xa70
	csrr x2, 0xa70	// Read CSR
	li x20, -1
	csrrw x7, 0xa70, x20	// Write all 1s to CSR
	csrrw x7, 0xa70, x0	// Write all 0s to CSR
	csrrs x7, 0xa70, x20	// Set all CSR bits
	csrrc x7, 0xa70, x20	// Clear all CSR bits
	csrrw x7, 0xa70, x2	// Restore CSR

// Testing CSR 0xa71
	csrr x6, 0xa71	// Read CSR
	li x16, -1
	csrrw x25, 0xa71, x16	// Write all 1s to CSR
	csrrw x25, 0xa71, x0	// Write all 0s to CSR
	csrrs x25, 0xa71, x16	// Set all CSR bits
	csrrc x25, 0xa71, x16	// Clear all CSR bits
	csrrw x25, 0xa71, x6	// Restore CSR

// Testing CSR 0xa72
	csrr x22, 0xa72	// Read CSR
	li x7, -1
	csrrw x17, 0xa72, x7	// Write all 1s to CSR
	csrrw x17, 0xa72, x0	// Write all 0s to CSR
	csrrs x17, 0xa72, x7	// Set all CSR bits
	csrrc x17, 0xa72, x7	// Clear all CSR bits
	csrrw x17, 0xa72, x22	// Restore CSR

// Testing CSR 0xa73
	csrr x10, 0xa73	// Read CSR
	li x19, -1
	csrrw x24, 0xa73, x19	// Write all 1s to CSR
	csrrw x24, 0xa73, x0	// Write all 0s to CSR
	csrrs x24, 0xa73, x19	// Set all CSR bits
	csrrc x24, 0xa73, x19	// Clear all CSR bits
	csrrw x24, 0xa73, x10	// Restore CSR

// Testing CSR 0xa74
	csrr x19, 0xa74	// Read CSR
	li x3, -1
	csrrw x5, 0xa74, x3	// Write all 1s to CSR
	csrrw x5, 0xa74, x0	// Write all 0s to CSR
	csrrs x5, 0xa74, x3	// Set all CSR bits
	csrrc x5, 0xa74, x3	// Clear all CSR bits
	csrrw x5, 0xa74, x19	// Restore CSR

// Testing CSR 0xa75
	csrr x12, 0xa75	// Read CSR
	li x28, -1
	csrrw x18, 0xa75, x28	// Write all 1s to CSR
	csrrw x18, 0xa75, x0	// Write all 0s to CSR
	csrrs x18, 0xa75, x28	// Set all CSR bits
	csrrc x18, 0xa75, x28	// Clear all CSR bits
	csrrw x18, 0xa75, x12	// Restore CSR

// Testing CSR 0xa76
	csrr x26, 0xa76	// Read CSR
	li x29, -1
	csrrw x1, 0xa76, x29	// Write all 1s to CSR
	csrrw x1, 0xa76, x0	// Write all 0s to CSR
	csrrs x1, 0xa76, x29	// Set all CSR bits
	csrrc x1, 0xa76, x29	// Clear all CSR bits
	csrrw x1, 0xa76, x26	// Restore CSR

// Testing CSR 0xa77
	csrr x20, 0xa77	// Read CSR
	li x11, -1
	csrrw x21, 0xa77, x11	// Write all 1s to CSR
	csrrw x21, 0xa77, x0	// Write all 0s to CSR
	csrrs x21, 0xa77, x11	// Set all CSR bits
	csrrc x21, 0xa77, x11	// Clear all CSR bits
	csrrw x21, 0xa77, x20	// Restore CSR

// Testing CSR 0xa78
	csrr x10, 0xa78	// Read CSR
	li x29, -1
	csrrw x18, 0xa78, x29	// Write all 1s to CSR
	csrrw x18, 0xa78, x0	// Write all 0s to CSR
	csrrs x18, 0xa78, x29	// Set all CSR bits
	csrrc x18, 0xa78, x29	// Clear all CSR bits
	csrrw x18, 0xa78, x10	// Restore CSR

// Testing CSR 0xa79
	csrr x26, 0xa79	// Read CSR
	li x8, -1
	csrrw x19, 0xa79, x8	// Write all 1s to CSR
	csrrw x19, 0xa79, x0	// Write all 0s to CSR
	csrrs x19, 0xa79, x8	// Set all CSR bits
	csrrc x19, 0xa79, x8	// Clear all CSR bits
	csrrw x19, 0xa79, x26	// Restore CSR

// Testing CSR 0xa7a
	csrr x10, 0xa7a	// Read CSR
	li x1, -1
	csrrw x19, 0xa7a, x1	// Write all 1s to CSR
	csrrw x19, 0xa7a, x0	// Write all 0s to CSR
	csrrs x19, 0xa7a, x1	// Set all CSR bits
	csrrc x19, 0xa7a, x1	// Clear all CSR bits
	csrrw x19, 0xa7a, x10	// Restore CSR

// Testing CSR 0xa7b
	csrr x14, 0xa7b	// Read CSR
	li x12, -1
	csrrw x3, 0xa7b, x12	// Write all 1s to CSR
	csrrw x3, 0xa7b, x0	// Write all 0s to CSR
	csrrs x3, 0xa7b, x12	// Set all CSR bits
	csrrc x3, 0xa7b, x12	// Clear all CSR bits
	csrrw x3, 0xa7b, x14	// Restore CSR

// Testing CSR 0xa7c
	csrr x11, 0xa7c	// Read CSR
	li x31, -1
	csrrw x9, 0xa7c, x31	// Write all 1s to CSR
	csrrw x9, 0xa7c, x0	// Write all 0s to CSR
	csrrs x9, 0xa7c, x31	// Set all CSR bits
	csrrc x9, 0xa7c, x31	// Clear all CSR bits
	csrrw x9, 0xa7c, x11	// Restore CSR

// Testing CSR 0xa7d
	csrr x27, 0xa7d	// Read CSR
	li x25, -1
	csrrw x12, 0xa7d, x25	// Write all 1s to CSR
	csrrw x12, 0xa7d, x0	// Write all 0s to CSR
	csrrs x12, 0xa7d, x25	// Set all CSR bits
	csrrc x12, 0xa7d, x25	// Clear all CSR bits
	csrrw x12, 0xa7d, x27	// Restore CSR

// Testing CSR 0xa7e
	csrr x27, 0xa7e	// Read CSR
	li x4, -1
	csrrw x10, 0xa7e, x4	// Write all 1s to CSR
	csrrw x10, 0xa7e, x0	// Write all 0s to CSR
	csrrs x10, 0xa7e, x4	// Set all CSR bits
	csrrc x10, 0xa7e, x4	// Clear all CSR bits
	csrrw x10, 0xa7e, x27	// Restore CSR

// Testing CSR 0xa7f
	csrr x19, 0xa7f	// Read CSR
	li x5, -1
	csrrw x12, 0xa7f, x5	// Write all 1s to CSR
	csrrw x12, 0xa7f, x0	// Write all 0s to CSR
	csrrs x12, 0xa7f, x5	// Set all CSR bits
	csrrc x12, 0xa7f, x5	// Clear all CSR bits
	csrrw x12, 0xa7f, x19	// Restore CSR

// Testing CSR 0xa80
	csrr x2, 0xa80	// Read CSR
	li x24, -1
	csrrw x1, 0xa80, x24	// Write all 1s to CSR
	csrrw x1, 0xa80, x0	// Write all 0s to CSR
	csrrs x1, 0xa80, x24	// Set all CSR bits
	csrrc x1, 0xa80, x24	// Clear all CSR bits
	csrrw x1, 0xa80, x2	// Restore CSR

// Testing CSR 0xa81
	csrr x27, 0xa81	// Read CSR
	li x21, -1
	csrrw x20, 0xa81, x21	// Write all 1s to CSR
	csrrw x20, 0xa81, x0	// Write all 0s to CSR
	csrrs x20, 0xa81, x21	// Set all CSR bits
	csrrc x20, 0xa81, x21	// Clear all CSR bits
	csrrw x20, 0xa81, x27	// Restore CSR

// Testing CSR 0xa82
	csrr x30, 0xa82	// Read CSR
	li x27, -1
	csrrw x13, 0xa82, x27	// Write all 1s to CSR
	csrrw x13, 0xa82, x0	// Write all 0s to CSR
	csrrs x13, 0xa82, x27	// Set all CSR bits
	csrrc x13, 0xa82, x27	// Clear all CSR bits
	csrrw x13, 0xa82, x30	// Restore CSR

// Testing CSR 0xa83
	csrr x1, 0xa83	// Read CSR
	li x14, -1
	csrrw x8, 0xa83, x14	// Write all 1s to CSR
	csrrw x8, 0xa83, x0	// Write all 0s to CSR
	csrrs x8, 0xa83, x14	// Set all CSR bits
	csrrc x8, 0xa83, x14	// Clear all CSR bits
	csrrw x8, 0xa83, x1	// Restore CSR

// Testing CSR 0xa84
	csrr x27, 0xa84	// Read CSR
	li x14, -1
	csrrw x19, 0xa84, x14	// Write all 1s to CSR
	csrrw x19, 0xa84, x0	// Write all 0s to CSR
	csrrs x19, 0xa84, x14	// Set all CSR bits
	csrrc x19, 0xa84, x14	// Clear all CSR bits
	csrrw x19, 0xa84, x27	// Restore CSR

// Testing CSR 0xa85
	csrr x15, 0xa85	// Read CSR
	li x10, -1
	csrrw x27, 0xa85, x10	// Write all 1s to CSR
	csrrw x27, 0xa85, x0	// Write all 0s to CSR
	csrrs x27, 0xa85, x10	// Set all CSR bits
	csrrc x27, 0xa85, x10	// Clear all CSR bits
	csrrw x27, 0xa85, x15	// Restore CSR

// Testing CSR 0xa86
	csrr x1, 0xa86	// Read CSR
	li x6, -1
	csrrw x23, 0xa86, x6	// Write all 1s to CSR
	csrrw x23, 0xa86, x0	// Write all 0s to CSR
	csrrs x23, 0xa86, x6	// Set all CSR bits
	csrrc x23, 0xa86, x6	// Clear all CSR bits
	csrrw x23, 0xa86, x1	// Restore CSR

// Testing CSR 0xa87
	csrr x19, 0xa87	// Read CSR
	li x15, -1
	csrrw x18, 0xa87, x15	// Write all 1s to CSR
	csrrw x18, 0xa87, x0	// Write all 0s to CSR
	csrrs x18, 0xa87, x15	// Set all CSR bits
	csrrc x18, 0xa87, x15	// Clear all CSR bits
	csrrw x18, 0xa87, x19	// Restore CSR

// Testing CSR 0xa88
	csrr x3, 0xa88	// Read CSR
	li x21, -1
	csrrw x25, 0xa88, x21	// Write all 1s to CSR
	csrrw x25, 0xa88, x0	// Write all 0s to CSR
	csrrs x25, 0xa88, x21	// Set all CSR bits
	csrrc x25, 0xa88, x21	// Clear all CSR bits
	csrrw x25, 0xa88, x3	// Restore CSR

// Testing CSR 0xa89
	csrr x1, 0xa89	// Read CSR
	li x22, -1
	csrrw x2, 0xa89, x22	// Write all 1s to CSR
	csrrw x2, 0xa89, x0	// Write all 0s to CSR
	csrrs x2, 0xa89, x22	// Set all CSR bits
	csrrc x2, 0xa89, x22	// Clear all CSR bits
	csrrw x2, 0xa89, x1	// Restore CSR

// Testing CSR 0xa8a
	csrr x26, 0xa8a	// Read CSR
	li x3, -1
	csrrw x5, 0xa8a, x3	// Write all 1s to CSR
	csrrw x5, 0xa8a, x0	// Write all 0s to CSR
	csrrs x5, 0xa8a, x3	// Set all CSR bits
	csrrc x5, 0xa8a, x3	// Clear all CSR bits
	csrrw x5, 0xa8a, x26	// Restore CSR

// Testing CSR 0xa8b
	csrr x13, 0xa8b	// Read CSR
	li x6, -1
	csrrw x20, 0xa8b, x6	// Write all 1s to CSR
	csrrw x20, 0xa8b, x0	// Write all 0s to CSR
	csrrs x20, 0xa8b, x6	// Set all CSR bits
	csrrc x20, 0xa8b, x6	// Clear all CSR bits
	csrrw x20, 0xa8b, x13	// Restore CSR

// Testing CSR 0xa8c
	csrr x24, 0xa8c	// Read CSR
	li x8, -1
	csrrw x21, 0xa8c, x8	// Write all 1s to CSR
	csrrw x21, 0xa8c, x0	// Write all 0s to CSR
	csrrs x21, 0xa8c, x8	// Set all CSR bits
	csrrc x21, 0xa8c, x8	// Clear all CSR bits
	csrrw x21, 0xa8c, x24	// Restore CSR

// Testing CSR 0xa8d
	csrr x18, 0xa8d	// Read CSR
	li x4, -1
	csrrw x1, 0xa8d, x4	// Write all 1s to CSR
	csrrw x1, 0xa8d, x0	// Write all 0s to CSR
	csrrs x1, 0xa8d, x4	// Set all CSR bits
	csrrc x1, 0xa8d, x4	// Clear all CSR bits
	csrrw x1, 0xa8d, x18	// Restore CSR

// Testing CSR 0xa8e
	csrr x28, 0xa8e	// Read CSR
	li x2, -1
	csrrw x13, 0xa8e, x2	// Write all 1s to CSR
	csrrw x13, 0xa8e, x0	// Write all 0s to CSR
	csrrs x13, 0xa8e, x2	// Set all CSR bits
	csrrc x13, 0xa8e, x2	// Clear all CSR bits
	csrrw x13, 0xa8e, x28	// Restore CSR

// Testing CSR 0xa8f
	csrr x13, 0xa8f	// Read CSR
	li x27, -1
	csrrw x10, 0xa8f, x27	// Write all 1s to CSR
	csrrw x10, 0xa8f, x0	// Write all 0s to CSR
	csrrs x10, 0xa8f, x27	// Set all CSR bits
	csrrc x10, 0xa8f, x27	// Clear all CSR bits
	csrrw x10, 0xa8f, x13	// Restore CSR

// Testing CSR 0xa90
	csrr x6, 0xa90	// Read CSR
	li x27, -1
	csrrw x13, 0xa90, x27	// Write all 1s to CSR
	csrrw x13, 0xa90, x0	// Write all 0s to CSR
	csrrs x13, 0xa90, x27	// Set all CSR bits
	csrrc x13, 0xa90, x27	// Clear all CSR bits
	csrrw x13, 0xa90, x6	// Restore CSR

// Testing CSR 0xa91
	csrr x1, 0xa91	// Read CSR
	li x22, -1
	csrrw x11, 0xa91, x22	// Write all 1s to CSR
	csrrw x11, 0xa91, x0	// Write all 0s to CSR
	csrrs x11, 0xa91, x22	// Set all CSR bits
	csrrc x11, 0xa91, x22	// Clear all CSR bits
	csrrw x11, 0xa91, x1	// Restore CSR

// Testing CSR 0xa92
	csrr x21, 0xa92	// Read CSR
	li x14, -1
	csrrw x17, 0xa92, x14	// Write all 1s to CSR
	csrrw x17, 0xa92, x0	// Write all 0s to CSR
	csrrs x17, 0xa92, x14	// Set all CSR bits
	csrrc x17, 0xa92, x14	// Clear all CSR bits
	csrrw x17, 0xa92, x21	// Restore CSR

// Testing CSR 0xa93
	csrr x7, 0xa93	// Read CSR
	li x30, -1
	csrrw x17, 0xa93, x30	// Write all 1s to CSR
	csrrw x17, 0xa93, x0	// Write all 0s to CSR
	csrrs x17, 0xa93, x30	// Set all CSR bits
	csrrc x17, 0xa93, x30	// Clear all CSR bits
	csrrw x17, 0xa93, x7	// Restore CSR

// Testing CSR 0xa94
	csrr x26, 0xa94	// Read CSR
	li x12, -1
	csrrw x20, 0xa94, x12	// Write all 1s to CSR
	csrrw x20, 0xa94, x0	// Write all 0s to CSR
	csrrs x20, 0xa94, x12	// Set all CSR bits
	csrrc x20, 0xa94, x12	// Clear all CSR bits
	csrrw x20, 0xa94, x26	// Restore CSR

// Testing CSR 0xa95
	csrr x8, 0xa95	// Read CSR
	li x22, -1
	csrrw x2, 0xa95, x22	// Write all 1s to CSR
	csrrw x2, 0xa95, x0	// Write all 0s to CSR
	csrrs x2, 0xa95, x22	// Set all CSR bits
	csrrc x2, 0xa95, x22	// Clear all CSR bits
	csrrw x2, 0xa95, x8	// Restore CSR

// Testing CSR 0xa96
	csrr x14, 0xa96	// Read CSR
	li x16, -1
	csrrw x17, 0xa96, x16	// Write all 1s to CSR
	csrrw x17, 0xa96, x0	// Write all 0s to CSR
	csrrs x17, 0xa96, x16	// Set all CSR bits
	csrrc x17, 0xa96, x16	// Clear all CSR bits
	csrrw x17, 0xa96, x14	// Restore CSR

// Testing CSR 0xa97
	csrr x21, 0xa97	// Read CSR
	li x2, -1
	csrrw x27, 0xa97, x2	// Write all 1s to CSR
	csrrw x27, 0xa97, x0	// Write all 0s to CSR
	csrrs x27, 0xa97, x2	// Set all CSR bits
	csrrc x27, 0xa97, x2	// Clear all CSR bits
	csrrw x27, 0xa97, x21	// Restore CSR

// Testing CSR 0xa98
	csrr x27, 0xa98	// Read CSR
	li x7, -1
	csrrw x11, 0xa98, x7	// Write all 1s to CSR
	csrrw x11, 0xa98, x0	// Write all 0s to CSR
	csrrs x11, 0xa98, x7	// Set all CSR bits
	csrrc x11, 0xa98, x7	// Clear all CSR bits
	csrrw x11, 0xa98, x27	// Restore CSR

// Testing CSR 0xa99
	csrr x15, 0xa99	// Read CSR
	li x24, -1
	csrrw x6, 0xa99, x24	// Write all 1s to CSR
	csrrw x6, 0xa99, x0	// Write all 0s to CSR
	csrrs x6, 0xa99, x24	// Set all CSR bits
	csrrc x6, 0xa99, x24	// Clear all CSR bits
	csrrw x6, 0xa99, x15	// Restore CSR

// Testing CSR 0xa9a
	csrr x19, 0xa9a	// Read CSR
	li x7, -1
	csrrw x2, 0xa9a, x7	// Write all 1s to CSR
	csrrw x2, 0xa9a, x0	// Write all 0s to CSR
	csrrs x2, 0xa9a, x7	// Set all CSR bits
	csrrc x2, 0xa9a, x7	// Clear all CSR bits
	csrrw x2, 0xa9a, x19	// Restore CSR

// Testing CSR 0xa9b
	csrr x7, 0xa9b	// Read CSR
	li x4, -1
	csrrw x10, 0xa9b, x4	// Write all 1s to CSR
	csrrw x10, 0xa9b, x0	// Write all 0s to CSR
	csrrs x10, 0xa9b, x4	// Set all CSR bits
	csrrc x10, 0xa9b, x4	// Clear all CSR bits
	csrrw x10, 0xa9b, x7	// Restore CSR

// Testing CSR 0xa9c
	csrr x25, 0xa9c	// Read CSR
	li x11, -1
	csrrw x24, 0xa9c, x11	// Write all 1s to CSR
	csrrw x24, 0xa9c, x0	// Write all 0s to CSR
	csrrs x24, 0xa9c, x11	// Set all CSR bits
	csrrc x24, 0xa9c, x11	// Clear all CSR bits
	csrrw x24, 0xa9c, x25	// Restore CSR

// Testing CSR 0xa9d
	csrr x10, 0xa9d	// Read CSR
	li x26, -1
	csrrw x5, 0xa9d, x26	// Write all 1s to CSR
	csrrw x5, 0xa9d, x0	// Write all 0s to CSR
	csrrs x5, 0xa9d, x26	// Set all CSR bits
	csrrc x5, 0xa9d, x26	// Clear all CSR bits
	csrrw x5, 0xa9d, x10	// Restore CSR

// Testing CSR 0xa9e
	csrr x6, 0xa9e	// Read CSR
	li x19, -1
	csrrw x24, 0xa9e, x19	// Write all 1s to CSR
	csrrw x24, 0xa9e, x0	// Write all 0s to CSR
	csrrs x24, 0xa9e, x19	// Set all CSR bits
	csrrc x24, 0xa9e, x19	// Clear all CSR bits
	csrrw x24, 0xa9e, x6	// Restore CSR

// Testing CSR 0xa9f
	csrr x14, 0xa9f	// Read CSR
	li x9, -1
	csrrw x2, 0xa9f, x9	// Write all 1s to CSR
	csrrw x2, 0xa9f, x0	// Write all 0s to CSR
	csrrs x2, 0xa9f, x9	// Set all CSR bits
	csrrc x2, 0xa9f, x9	// Clear all CSR bits
	csrrw x2, 0xa9f, x14	// Restore CSR

// Testing CSR 0xaa0
	csrr x31, 0xaa0	// Read CSR
	li x13, -1
	csrrw x26, 0xaa0, x13	// Write all 1s to CSR
	csrrw x26, 0xaa0, x0	// Write all 0s to CSR
	csrrs x26, 0xaa0, x13	// Set all CSR bits
	csrrc x26, 0xaa0, x13	// Clear all CSR bits
	csrrw x26, 0xaa0, x31	// Restore CSR

// Testing CSR 0xaa1
	csrr x26, 0xaa1	// Read CSR
	li x4, -1
	csrrw x25, 0xaa1, x4	// Write all 1s to CSR
	csrrw x25, 0xaa1, x0	// Write all 0s to CSR
	csrrs x25, 0xaa1, x4	// Set all CSR bits
	csrrc x25, 0xaa1, x4	// Clear all CSR bits
	csrrw x25, 0xaa1, x26	// Restore CSR

// Testing CSR 0xaa2
	csrr x19, 0xaa2	// Read CSR
	li x26, -1
	csrrw x28, 0xaa2, x26	// Write all 1s to CSR
	csrrw x28, 0xaa2, x0	// Write all 0s to CSR
	csrrs x28, 0xaa2, x26	// Set all CSR bits
	csrrc x28, 0xaa2, x26	// Clear all CSR bits
	csrrw x28, 0xaa2, x19	// Restore CSR

// Testing CSR 0xaa3
	csrr x30, 0xaa3	// Read CSR
	li x16, -1
	csrrw x6, 0xaa3, x16	// Write all 1s to CSR
	csrrw x6, 0xaa3, x0	// Write all 0s to CSR
	csrrs x6, 0xaa3, x16	// Set all CSR bits
	csrrc x6, 0xaa3, x16	// Clear all CSR bits
	csrrw x6, 0xaa3, x30	// Restore CSR

// Testing CSR 0xaa4
	csrr x26, 0xaa4	// Read CSR
	li x13, -1
	csrrw x8, 0xaa4, x13	// Write all 1s to CSR
	csrrw x8, 0xaa4, x0	// Write all 0s to CSR
	csrrs x8, 0xaa4, x13	// Set all CSR bits
	csrrc x8, 0xaa4, x13	// Clear all CSR bits
	csrrw x8, 0xaa4, x26	// Restore CSR

// Testing CSR 0xaa5
	csrr x14, 0xaa5	// Read CSR
	li x25, -1
	csrrw x13, 0xaa5, x25	// Write all 1s to CSR
	csrrw x13, 0xaa5, x0	// Write all 0s to CSR
	csrrs x13, 0xaa5, x25	// Set all CSR bits
	csrrc x13, 0xaa5, x25	// Clear all CSR bits
	csrrw x13, 0xaa5, x14	// Restore CSR

// Testing CSR 0xaa6
	csrr x5, 0xaa6	// Read CSR
	li x18, -1
	csrrw x21, 0xaa6, x18	// Write all 1s to CSR
	csrrw x21, 0xaa6, x0	// Write all 0s to CSR
	csrrs x21, 0xaa6, x18	// Set all CSR bits
	csrrc x21, 0xaa6, x18	// Clear all CSR bits
	csrrw x21, 0xaa6, x5	// Restore CSR

// Testing CSR 0xaa7
	csrr x15, 0xaa7	// Read CSR
	li x29, -1
	csrrw x20, 0xaa7, x29	// Write all 1s to CSR
	csrrw x20, 0xaa7, x0	// Write all 0s to CSR
	csrrs x20, 0xaa7, x29	// Set all CSR bits
	csrrc x20, 0xaa7, x29	// Clear all CSR bits
	csrrw x20, 0xaa7, x15	// Restore CSR

// Testing CSR 0xaa8
	csrr x23, 0xaa8	// Read CSR
	li x27, -1
	csrrw x12, 0xaa8, x27	// Write all 1s to CSR
	csrrw x12, 0xaa8, x0	// Write all 0s to CSR
	csrrs x12, 0xaa8, x27	// Set all CSR bits
	csrrc x12, 0xaa8, x27	// Clear all CSR bits
	csrrw x12, 0xaa8, x23	// Restore CSR

// Testing CSR 0xaa9
	csrr x30, 0xaa9	// Read CSR
	li x2, -1
	csrrw x21, 0xaa9, x2	// Write all 1s to CSR
	csrrw x21, 0xaa9, x0	// Write all 0s to CSR
	csrrs x21, 0xaa9, x2	// Set all CSR bits
	csrrc x21, 0xaa9, x2	// Clear all CSR bits
	csrrw x21, 0xaa9, x30	// Restore CSR

// Testing CSR 0xaaa
	csrr x20, 0xaaa	// Read CSR
	li x17, -1
	csrrw x8, 0xaaa, x17	// Write all 1s to CSR
	csrrw x8, 0xaaa, x0	// Write all 0s to CSR
	csrrs x8, 0xaaa, x17	// Set all CSR bits
	csrrc x8, 0xaaa, x17	// Clear all CSR bits
	csrrw x8, 0xaaa, x20	// Restore CSR

// Testing CSR 0xaab
	csrr x7, 0xaab	// Read CSR
	li x17, -1
	csrrw x13, 0xaab, x17	// Write all 1s to CSR
	csrrw x13, 0xaab, x0	// Write all 0s to CSR
	csrrs x13, 0xaab, x17	// Set all CSR bits
	csrrc x13, 0xaab, x17	// Clear all CSR bits
	csrrw x13, 0xaab, x7	// Restore CSR

// Testing CSR 0xaac
	csrr x16, 0xaac	// Read CSR
	li x8, -1
	csrrw x19, 0xaac, x8	// Write all 1s to CSR
	csrrw x19, 0xaac, x0	// Write all 0s to CSR
	csrrs x19, 0xaac, x8	// Set all CSR bits
	csrrc x19, 0xaac, x8	// Clear all CSR bits
	csrrw x19, 0xaac, x16	// Restore CSR

// Testing CSR 0xaad
	csrr x24, 0xaad	// Read CSR
	li x3, -1
	csrrw x18, 0xaad, x3	// Write all 1s to CSR
	csrrw x18, 0xaad, x0	// Write all 0s to CSR
	csrrs x18, 0xaad, x3	// Set all CSR bits
	csrrc x18, 0xaad, x3	// Clear all CSR bits
	csrrw x18, 0xaad, x24	// Restore CSR

// Testing CSR 0xaae
	csrr x4, 0xaae	// Read CSR
	li x5, -1
	csrrw x29, 0xaae, x5	// Write all 1s to CSR
	csrrw x29, 0xaae, x0	// Write all 0s to CSR
	csrrs x29, 0xaae, x5	// Set all CSR bits
	csrrc x29, 0xaae, x5	// Clear all CSR bits
	csrrw x29, 0xaae, x4	// Restore CSR

// Testing CSR 0xaaf
	csrr x6, 0xaaf	// Read CSR
	li x10, -1
	csrrw x1, 0xaaf, x10	// Write all 1s to CSR
	csrrw x1, 0xaaf, x0	// Write all 0s to CSR
	csrrs x1, 0xaaf, x10	// Set all CSR bits
	csrrc x1, 0xaaf, x10	// Clear all CSR bits
	csrrw x1, 0xaaf, x6	// Restore CSR

// Testing CSR 0xab0
	csrr x11, 0xab0	// Read CSR
	li x4, -1
	csrrw x5, 0xab0, x4	// Write all 1s to CSR
	csrrw x5, 0xab0, x0	// Write all 0s to CSR
	csrrs x5, 0xab0, x4	// Set all CSR bits
	csrrc x5, 0xab0, x4	// Clear all CSR bits
	csrrw x5, 0xab0, x11	// Restore CSR

// Testing CSR 0xab1
	csrr x20, 0xab1	// Read CSR
	li x31, -1
	csrrw x21, 0xab1, x31	// Write all 1s to CSR
	csrrw x21, 0xab1, x0	// Write all 0s to CSR
	csrrs x21, 0xab1, x31	// Set all CSR bits
	csrrc x21, 0xab1, x31	// Clear all CSR bits
	csrrw x21, 0xab1, x20	// Restore CSR

// Testing CSR 0xab2
	csrr x17, 0xab2	// Read CSR
	li x20, -1
	csrrw x26, 0xab2, x20	// Write all 1s to CSR
	csrrw x26, 0xab2, x0	// Write all 0s to CSR
	csrrs x26, 0xab2, x20	// Set all CSR bits
	csrrc x26, 0xab2, x20	// Clear all CSR bits
	csrrw x26, 0xab2, x17	// Restore CSR

// Testing CSR 0xab3
	csrr x6, 0xab3	// Read CSR
	li x18, -1
	csrrw x14, 0xab3, x18	// Write all 1s to CSR
	csrrw x14, 0xab3, x0	// Write all 0s to CSR
	csrrs x14, 0xab3, x18	// Set all CSR bits
	csrrc x14, 0xab3, x18	// Clear all CSR bits
	csrrw x14, 0xab3, x6	// Restore CSR

// Testing CSR 0xab4
	csrr x9, 0xab4	// Read CSR
	li x1, -1
	csrrw x25, 0xab4, x1	// Write all 1s to CSR
	csrrw x25, 0xab4, x0	// Write all 0s to CSR
	csrrs x25, 0xab4, x1	// Set all CSR bits
	csrrc x25, 0xab4, x1	// Clear all CSR bits
	csrrw x25, 0xab4, x9	// Restore CSR

// Testing CSR 0xab5
	csrr x26, 0xab5	// Read CSR
	li x12, -1
	csrrw x5, 0xab5, x12	// Write all 1s to CSR
	csrrw x5, 0xab5, x0	// Write all 0s to CSR
	csrrs x5, 0xab5, x12	// Set all CSR bits
	csrrc x5, 0xab5, x12	// Clear all CSR bits
	csrrw x5, 0xab5, x26	// Restore CSR

// Testing CSR 0xab6
	csrr x2, 0xab6	// Read CSR
	li x17, -1
	csrrw x7, 0xab6, x17	// Write all 1s to CSR
	csrrw x7, 0xab6, x0	// Write all 0s to CSR
	csrrs x7, 0xab6, x17	// Set all CSR bits
	csrrc x7, 0xab6, x17	// Clear all CSR bits
	csrrw x7, 0xab6, x2	// Restore CSR

// Testing CSR 0xab7
	csrr x23, 0xab7	// Read CSR
	li x15, -1
	csrrw x22, 0xab7, x15	// Write all 1s to CSR
	csrrw x22, 0xab7, x0	// Write all 0s to CSR
	csrrs x22, 0xab7, x15	// Set all CSR bits
	csrrc x22, 0xab7, x15	// Clear all CSR bits
	csrrw x22, 0xab7, x23	// Restore CSR

// Testing CSR 0xab8
	csrr x20, 0xab8	// Read CSR
	li x9, -1
	csrrw x25, 0xab8, x9	// Write all 1s to CSR
	csrrw x25, 0xab8, x0	// Write all 0s to CSR
	csrrs x25, 0xab8, x9	// Set all CSR bits
	csrrc x25, 0xab8, x9	// Clear all CSR bits
	csrrw x25, 0xab8, x20	// Restore CSR

// Testing CSR 0xab9
	csrr x14, 0xab9	// Read CSR
	li x28, -1
	csrrw x30, 0xab9, x28	// Write all 1s to CSR
	csrrw x30, 0xab9, x0	// Write all 0s to CSR
	csrrs x30, 0xab9, x28	// Set all CSR bits
	csrrc x30, 0xab9, x28	// Clear all CSR bits
	csrrw x30, 0xab9, x14	// Restore CSR

// Testing CSR 0xaba
	csrr x25, 0xaba	// Read CSR
	li x2, -1
	csrrw x8, 0xaba, x2	// Write all 1s to CSR
	csrrw x8, 0xaba, x0	// Write all 0s to CSR
	csrrs x8, 0xaba, x2	// Set all CSR bits
	csrrc x8, 0xaba, x2	// Clear all CSR bits
	csrrw x8, 0xaba, x25	// Restore CSR

// Testing CSR 0xabb
	csrr x19, 0xabb	// Read CSR
	li x9, -1
	csrrw x7, 0xabb, x9	// Write all 1s to CSR
	csrrw x7, 0xabb, x0	// Write all 0s to CSR
	csrrs x7, 0xabb, x9	// Set all CSR bits
	csrrc x7, 0xabb, x9	// Clear all CSR bits
	csrrw x7, 0xabb, x19	// Restore CSR

// Testing CSR 0xabc
	csrr x11, 0xabc	// Read CSR
	li x22, -1
	csrrw x4, 0xabc, x22	// Write all 1s to CSR
	csrrw x4, 0xabc, x0	// Write all 0s to CSR
	csrrs x4, 0xabc, x22	// Set all CSR bits
	csrrc x4, 0xabc, x22	// Clear all CSR bits
	csrrw x4, 0xabc, x11	// Restore CSR

// Testing CSR 0xabd
	csrr x23, 0xabd	// Read CSR
	li x27, -1
	csrrw x9, 0xabd, x27	// Write all 1s to CSR
	csrrw x9, 0xabd, x0	// Write all 0s to CSR
	csrrs x9, 0xabd, x27	// Set all CSR bits
	csrrc x9, 0xabd, x27	// Clear all CSR bits
	csrrw x9, 0xabd, x23	// Restore CSR

// Testing CSR 0xabe
	csrr x16, 0xabe	// Read CSR
	li x12, -1
	csrrw x27, 0xabe, x12	// Write all 1s to CSR
	csrrw x27, 0xabe, x0	// Write all 0s to CSR
	csrrs x27, 0xabe, x12	// Set all CSR bits
	csrrc x27, 0xabe, x12	// Clear all CSR bits
	csrrw x27, 0xabe, x16	// Restore CSR

// Testing CSR 0xabf
	csrr x10, 0xabf	// Read CSR
	li x2, -1
	csrrw x9, 0xabf, x2	// Write all 1s to CSR
	csrrw x9, 0xabf, x0	// Write all 0s to CSR
	csrrs x9, 0xabf, x2	// Set all CSR bits
	csrrc x9, 0xabf, x2	// Clear all CSR bits
	csrrw x9, 0xabf, x10	// Restore CSR

// Testing CSR 0xb00
	csrr x23, 0xb00	// Read CSR
	li x4, -1
	csrrw x12, 0xb00, x4	// Write all 1s to CSR
	csrrw x12, 0xb00, x0	// Write all 0s to CSR
	csrrs x12, 0xb00, x4	// Set all CSR bits
	csrrc x12, 0xb00, x4	// Clear all CSR bits
	csrrw x12, 0xb00, x23	// Restore CSR

// Testing CSR 0xb01
	csrr x10, 0xb01	// Read CSR
	li x7, -1
	csrrw x30, 0xb01, x7	// Write all 1s to CSR
	csrrw x30, 0xb01, x0	// Write all 0s to CSR
	csrrs x30, 0xb01, x7	// Set all CSR bits
	csrrc x30, 0xb01, x7	// Clear all CSR bits
	csrrw x30, 0xb01, x10	// Restore CSR

// Testing CSR 0xb02
	csrr x11, 0xb02	// Read CSR
	li x8, -1
	csrrw x27, 0xb02, x8	// Write all 1s to CSR
	csrrw x27, 0xb02, x0	// Write all 0s to CSR
	csrrs x27, 0xb02, x8	// Set all CSR bits
	csrrc x27, 0xb02, x8	// Clear all CSR bits
	csrrw x27, 0xb02, x11	// Restore CSR

// Testing CSR 0xb03
	csrr x7, 0xb03	// Read CSR
	li x13, -1
	csrrw x22, 0xb03, x13	// Write all 1s to CSR
	csrrw x22, 0xb03, x0	// Write all 0s to CSR
	csrrs x22, 0xb03, x13	// Set all CSR bits
	csrrc x22, 0xb03, x13	// Clear all CSR bits
	csrrw x22, 0xb03, x7	// Restore CSR

// Testing CSR 0xb04
	csrr x4, 0xb04	// Read CSR
	li x18, -1
	csrrw x9, 0xb04, x18	// Write all 1s to CSR
	csrrw x9, 0xb04, x0	// Write all 0s to CSR
	csrrs x9, 0xb04, x18	// Set all CSR bits
	csrrc x9, 0xb04, x18	// Clear all CSR bits
	csrrw x9, 0xb04, x4	// Restore CSR

// Testing CSR 0xb05
	csrr x22, 0xb05	// Read CSR
	li x6, -1
	csrrw x31, 0xb05, x6	// Write all 1s to CSR
	csrrw x31, 0xb05, x0	// Write all 0s to CSR
	csrrs x31, 0xb05, x6	// Set all CSR bits
	csrrc x31, 0xb05, x6	// Clear all CSR bits
	csrrw x31, 0xb05, x22	// Restore CSR

// Testing CSR 0xb06
	csrr x12, 0xb06	// Read CSR
	li x29, -1
	csrrw x13, 0xb06, x29	// Write all 1s to CSR
	csrrw x13, 0xb06, x0	// Write all 0s to CSR
	csrrs x13, 0xb06, x29	// Set all CSR bits
	csrrc x13, 0xb06, x29	// Clear all CSR bits
	csrrw x13, 0xb06, x12	// Restore CSR

// Testing CSR 0xb07
	csrr x1, 0xb07	// Read CSR
	li x29, -1
	csrrw x18, 0xb07, x29	// Write all 1s to CSR
	csrrw x18, 0xb07, x0	// Write all 0s to CSR
	csrrs x18, 0xb07, x29	// Set all CSR bits
	csrrc x18, 0xb07, x29	// Clear all CSR bits
	csrrw x18, 0xb07, x1	// Restore CSR

// Testing CSR 0xb08
	csrr x22, 0xb08	// Read CSR
	li x2, -1
	csrrw x18, 0xb08, x2	// Write all 1s to CSR
	csrrw x18, 0xb08, x0	// Write all 0s to CSR
	csrrs x18, 0xb08, x2	// Set all CSR bits
	csrrc x18, 0xb08, x2	// Clear all CSR bits
	csrrw x18, 0xb08, x22	// Restore CSR

// Testing CSR 0xb09
	csrr x14, 0xb09	// Read CSR
	li x22, -1
	csrrw x4, 0xb09, x22	// Write all 1s to CSR
	csrrw x4, 0xb09, x0	// Write all 0s to CSR
	csrrs x4, 0xb09, x22	// Set all CSR bits
	csrrc x4, 0xb09, x22	// Clear all CSR bits
	csrrw x4, 0xb09, x14	// Restore CSR

// Testing CSR 0xb0a
	csrr x9, 0xb0a	// Read CSR
	li x26, -1
	csrrw x23, 0xb0a, x26	// Write all 1s to CSR
	csrrw x23, 0xb0a, x0	// Write all 0s to CSR
	csrrs x23, 0xb0a, x26	// Set all CSR bits
	csrrc x23, 0xb0a, x26	// Clear all CSR bits
	csrrw x23, 0xb0a, x9	// Restore CSR

// Testing CSR 0xb0b
	csrr x7, 0xb0b	// Read CSR
	li x17, -1
	csrrw x10, 0xb0b, x17	// Write all 1s to CSR
	csrrw x10, 0xb0b, x0	// Write all 0s to CSR
	csrrs x10, 0xb0b, x17	// Set all CSR bits
	csrrc x10, 0xb0b, x17	// Clear all CSR bits
	csrrw x10, 0xb0b, x7	// Restore CSR

// Testing CSR 0xb0c
	csrr x24, 0xb0c	// Read CSR
	li x3, -1
	csrrw x29, 0xb0c, x3	// Write all 1s to CSR
	csrrw x29, 0xb0c, x0	// Write all 0s to CSR
	csrrs x29, 0xb0c, x3	// Set all CSR bits
	csrrc x29, 0xb0c, x3	// Clear all CSR bits
	csrrw x29, 0xb0c, x24	// Restore CSR

// Testing CSR 0xb0d
	csrr x31, 0xb0d	// Read CSR
	li x4, -1
	csrrw x17, 0xb0d, x4	// Write all 1s to CSR
	csrrw x17, 0xb0d, x0	// Write all 0s to CSR
	csrrs x17, 0xb0d, x4	// Set all CSR bits
	csrrc x17, 0xb0d, x4	// Clear all CSR bits
	csrrw x17, 0xb0d, x31	// Restore CSR

// Testing CSR 0xb0e
	csrr x14, 0xb0e	// Read CSR
	li x22, -1
	csrrw x18, 0xb0e, x22	// Write all 1s to CSR
	csrrw x18, 0xb0e, x0	// Write all 0s to CSR
	csrrs x18, 0xb0e, x22	// Set all CSR bits
	csrrc x18, 0xb0e, x22	// Clear all CSR bits
	csrrw x18, 0xb0e, x14	// Restore CSR

// Testing CSR 0xb0f
	csrr x12, 0xb0f	// Read CSR
	li x6, -1
	csrrw x5, 0xb0f, x6	// Write all 1s to CSR
	csrrw x5, 0xb0f, x0	// Write all 0s to CSR
	csrrs x5, 0xb0f, x6	// Set all CSR bits
	csrrc x5, 0xb0f, x6	// Clear all CSR bits
	csrrw x5, 0xb0f, x12	// Restore CSR

// Testing CSR 0xb10
	csrr x26, 0xb10	// Read CSR
	li x4, -1
	csrrw x10, 0xb10, x4	// Write all 1s to CSR
	csrrw x10, 0xb10, x0	// Write all 0s to CSR
	csrrs x10, 0xb10, x4	// Set all CSR bits
	csrrc x10, 0xb10, x4	// Clear all CSR bits
	csrrw x10, 0xb10, x26	// Restore CSR

// Testing CSR 0xb11
	csrr x24, 0xb11	// Read CSR
	li x28, -1
	csrrw x26, 0xb11, x28	// Write all 1s to CSR
	csrrw x26, 0xb11, x0	// Write all 0s to CSR
	csrrs x26, 0xb11, x28	// Set all CSR bits
	csrrc x26, 0xb11, x28	// Clear all CSR bits
	csrrw x26, 0xb11, x24	// Restore CSR

// Testing CSR 0xb12
	csrr x24, 0xb12	// Read CSR
	li x25, -1
	csrrw x10, 0xb12, x25	// Write all 1s to CSR
	csrrw x10, 0xb12, x0	// Write all 0s to CSR
	csrrs x10, 0xb12, x25	// Set all CSR bits
	csrrc x10, 0xb12, x25	// Clear all CSR bits
	csrrw x10, 0xb12, x24	// Restore CSR

// Testing CSR 0xb13
	csrr x6, 0xb13	// Read CSR
	li x16, -1
	csrrw x29, 0xb13, x16	// Write all 1s to CSR
	csrrw x29, 0xb13, x0	// Write all 0s to CSR
	csrrs x29, 0xb13, x16	// Set all CSR bits
	csrrc x29, 0xb13, x16	// Clear all CSR bits
	csrrw x29, 0xb13, x6	// Restore CSR

// Testing CSR 0xb14
	csrr x10, 0xb14	// Read CSR
	li x8, -1
	csrrw x31, 0xb14, x8	// Write all 1s to CSR
	csrrw x31, 0xb14, x0	// Write all 0s to CSR
	csrrs x31, 0xb14, x8	// Set all CSR bits
	csrrc x31, 0xb14, x8	// Clear all CSR bits
	csrrw x31, 0xb14, x10	// Restore CSR

// Testing CSR 0xb15
	csrr x30, 0xb15	// Read CSR
	li x28, -1
	csrrw x18, 0xb15, x28	// Write all 1s to CSR
	csrrw x18, 0xb15, x0	// Write all 0s to CSR
	csrrs x18, 0xb15, x28	// Set all CSR bits
	csrrc x18, 0xb15, x28	// Clear all CSR bits
	csrrw x18, 0xb15, x30	// Restore CSR

// Testing CSR 0xb16
	csrr x19, 0xb16	// Read CSR
	li x23, -1
	csrrw x8, 0xb16, x23	// Write all 1s to CSR
	csrrw x8, 0xb16, x0	// Write all 0s to CSR
	csrrs x8, 0xb16, x23	// Set all CSR bits
	csrrc x8, 0xb16, x23	// Clear all CSR bits
	csrrw x8, 0xb16, x19	// Restore CSR

// Testing CSR 0xb17
	csrr x3, 0xb17	// Read CSR
	li x16, -1
	csrrw x26, 0xb17, x16	// Write all 1s to CSR
	csrrw x26, 0xb17, x0	// Write all 0s to CSR
	csrrs x26, 0xb17, x16	// Set all CSR bits
	csrrc x26, 0xb17, x16	// Clear all CSR bits
	csrrw x26, 0xb17, x3	// Restore CSR

// Testing CSR 0xb18
	csrr x7, 0xb18	// Read CSR
	li x12, -1
	csrrw x14, 0xb18, x12	// Write all 1s to CSR
	csrrw x14, 0xb18, x0	// Write all 0s to CSR
	csrrs x14, 0xb18, x12	// Set all CSR bits
	csrrc x14, 0xb18, x12	// Clear all CSR bits
	csrrw x14, 0xb18, x7	// Restore CSR

// Testing CSR 0xb19
	csrr x9, 0xb19	// Read CSR
	li x30, -1
	csrrw x11, 0xb19, x30	// Write all 1s to CSR
	csrrw x11, 0xb19, x0	// Write all 0s to CSR
	csrrs x11, 0xb19, x30	// Set all CSR bits
	csrrc x11, 0xb19, x30	// Clear all CSR bits
	csrrw x11, 0xb19, x9	// Restore CSR

// Testing CSR 0xb1a
	csrr x30, 0xb1a	// Read CSR
	li x29, -1
	csrrw x4, 0xb1a, x29	// Write all 1s to CSR
	csrrw x4, 0xb1a, x0	// Write all 0s to CSR
	csrrs x4, 0xb1a, x29	// Set all CSR bits
	csrrc x4, 0xb1a, x29	// Clear all CSR bits
	csrrw x4, 0xb1a, x30	// Restore CSR

// Testing CSR 0xb1b
	csrr x26, 0xb1b	// Read CSR
	li x5, -1
	csrrw x15, 0xb1b, x5	// Write all 1s to CSR
	csrrw x15, 0xb1b, x0	// Write all 0s to CSR
	csrrs x15, 0xb1b, x5	// Set all CSR bits
	csrrc x15, 0xb1b, x5	// Clear all CSR bits
	csrrw x15, 0xb1b, x26	// Restore CSR

// Testing CSR 0xb1c
	csrr x27, 0xb1c	// Read CSR
	li x21, -1
	csrrw x12, 0xb1c, x21	// Write all 1s to CSR
	csrrw x12, 0xb1c, x0	// Write all 0s to CSR
	csrrs x12, 0xb1c, x21	// Set all CSR bits
	csrrc x12, 0xb1c, x21	// Clear all CSR bits
	csrrw x12, 0xb1c, x27	// Restore CSR

// Testing CSR 0xb1d
	csrr x17, 0xb1d	// Read CSR
	li x5, -1
	csrrw x3, 0xb1d, x5	// Write all 1s to CSR
	csrrw x3, 0xb1d, x0	// Write all 0s to CSR
	csrrs x3, 0xb1d, x5	// Set all CSR bits
	csrrc x3, 0xb1d, x5	// Clear all CSR bits
	csrrw x3, 0xb1d, x17	// Restore CSR

// Testing CSR 0xb1e
	csrr x30, 0xb1e	// Read CSR
	li x25, -1
	csrrw x15, 0xb1e, x25	// Write all 1s to CSR
	csrrw x15, 0xb1e, x0	// Write all 0s to CSR
	csrrs x15, 0xb1e, x25	// Set all CSR bits
	csrrc x15, 0xb1e, x25	// Clear all CSR bits
	csrrw x15, 0xb1e, x30	// Restore CSR

// Testing CSR 0xb1f
	csrr x13, 0xb1f	// Read CSR
	li x25, -1
	csrrw x16, 0xb1f, x25	// Write all 1s to CSR
	csrrw x16, 0xb1f, x0	// Write all 0s to CSR
	csrrs x16, 0xb1f, x25	// Set all CSR bits
	csrrc x16, 0xb1f, x25	// Clear all CSR bits
	csrrw x16, 0xb1f, x13	// Restore CSR

// Testing CSR 0xb20
	csrr x11, 0xb20	// Read CSR
	li x27, -1
	csrrw x20, 0xb20, x27	// Write all 1s to CSR
	csrrw x20, 0xb20, x0	// Write all 0s to CSR
	csrrs x20, 0xb20, x27	// Set all CSR bits
	csrrc x20, 0xb20, x27	// Clear all CSR bits
	csrrw x20, 0xb20, x11	// Restore CSR

// Testing CSR 0xb21
	csrr x10, 0xb21	// Read CSR
	li x16, -1
	csrrw x5, 0xb21, x16	// Write all 1s to CSR
	csrrw x5, 0xb21, x0	// Write all 0s to CSR
	csrrs x5, 0xb21, x16	// Set all CSR bits
	csrrc x5, 0xb21, x16	// Clear all CSR bits
	csrrw x5, 0xb21, x10	// Restore CSR

// Testing CSR 0xb22
	csrr x10, 0xb22	// Read CSR
	li x2, -1
	csrrw x14, 0xb22, x2	// Write all 1s to CSR
	csrrw x14, 0xb22, x0	// Write all 0s to CSR
	csrrs x14, 0xb22, x2	// Set all CSR bits
	csrrc x14, 0xb22, x2	// Clear all CSR bits
	csrrw x14, 0xb22, x10	// Restore CSR

// Testing CSR 0xb23
	csrr x23, 0xb23	// Read CSR
	li x26, -1
	csrrw x3, 0xb23, x26	// Write all 1s to CSR
	csrrw x3, 0xb23, x0	// Write all 0s to CSR
	csrrs x3, 0xb23, x26	// Set all CSR bits
	csrrc x3, 0xb23, x26	// Clear all CSR bits
	csrrw x3, 0xb23, x23	// Restore CSR

// Testing CSR 0xb24
	csrr x15, 0xb24	// Read CSR
	li x19, -1
	csrrw x6, 0xb24, x19	// Write all 1s to CSR
	csrrw x6, 0xb24, x0	// Write all 0s to CSR
	csrrs x6, 0xb24, x19	// Set all CSR bits
	csrrc x6, 0xb24, x19	// Clear all CSR bits
	csrrw x6, 0xb24, x15	// Restore CSR

// Testing CSR 0xb25
	csrr x3, 0xb25	// Read CSR
	li x25, -1
	csrrw x4, 0xb25, x25	// Write all 1s to CSR
	csrrw x4, 0xb25, x0	// Write all 0s to CSR
	csrrs x4, 0xb25, x25	// Set all CSR bits
	csrrc x4, 0xb25, x25	// Clear all CSR bits
	csrrw x4, 0xb25, x3	// Restore CSR

// Testing CSR 0xb26
	csrr x28, 0xb26	// Read CSR
	li x13, -1
	csrrw x8, 0xb26, x13	// Write all 1s to CSR
	csrrw x8, 0xb26, x0	// Write all 0s to CSR
	csrrs x8, 0xb26, x13	// Set all CSR bits
	csrrc x8, 0xb26, x13	// Clear all CSR bits
	csrrw x8, 0xb26, x28	// Restore CSR

// Testing CSR 0xb27
	csrr x10, 0xb27	// Read CSR
	li x21, -1
	csrrw x4, 0xb27, x21	// Write all 1s to CSR
	csrrw x4, 0xb27, x0	// Write all 0s to CSR
	csrrs x4, 0xb27, x21	// Set all CSR bits
	csrrc x4, 0xb27, x21	// Clear all CSR bits
	csrrw x4, 0xb27, x10	// Restore CSR

// Testing CSR 0xb28
	csrr x14, 0xb28	// Read CSR
	li x31, -1
	csrrw x21, 0xb28, x31	// Write all 1s to CSR
	csrrw x21, 0xb28, x0	// Write all 0s to CSR
	csrrs x21, 0xb28, x31	// Set all CSR bits
	csrrc x21, 0xb28, x31	// Clear all CSR bits
	csrrw x21, 0xb28, x14	// Restore CSR

// Testing CSR 0xb29
	csrr x31, 0xb29	// Read CSR
	li x19, -1
	csrrw x10, 0xb29, x19	// Write all 1s to CSR
	csrrw x10, 0xb29, x0	// Write all 0s to CSR
	csrrs x10, 0xb29, x19	// Set all CSR bits
	csrrc x10, 0xb29, x19	// Clear all CSR bits
	csrrw x10, 0xb29, x31	// Restore CSR

// Testing CSR 0xb2a
	csrr x18, 0xb2a	// Read CSR
	li x30, -1
	csrrw x1, 0xb2a, x30	// Write all 1s to CSR
	csrrw x1, 0xb2a, x0	// Write all 0s to CSR
	csrrs x1, 0xb2a, x30	// Set all CSR bits
	csrrc x1, 0xb2a, x30	// Clear all CSR bits
	csrrw x1, 0xb2a, x18	// Restore CSR

// Testing CSR 0xb2b
	csrr x19, 0xb2b	// Read CSR
	li x2, -1
	csrrw x13, 0xb2b, x2	// Write all 1s to CSR
	csrrw x13, 0xb2b, x0	// Write all 0s to CSR
	csrrs x13, 0xb2b, x2	// Set all CSR bits
	csrrc x13, 0xb2b, x2	// Clear all CSR bits
	csrrw x13, 0xb2b, x19	// Restore CSR

// Testing CSR 0xb2c
	csrr x24, 0xb2c	// Read CSR
	li x14, -1
	csrrw x17, 0xb2c, x14	// Write all 1s to CSR
	csrrw x17, 0xb2c, x0	// Write all 0s to CSR
	csrrs x17, 0xb2c, x14	// Set all CSR bits
	csrrc x17, 0xb2c, x14	// Clear all CSR bits
	csrrw x17, 0xb2c, x24	// Restore CSR

// Testing CSR 0xb2d
	csrr x12, 0xb2d	// Read CSR
	li x8, -1
	csrrw x29, 0xb2d, x8	// Write all 1s to CSR
	csrrw x29, 0xb2d, x0	// Write all 0s to CSR
	csrrs x29, 0xb2d, x8	// Set all CSR bits
	csrrc x29, 0xb2d, x8	// Clear all CSR bits
	csrrw x29, 0xb2d, x12	// Restore CSR

// Testing CSR 0xb2e
	csrr x25, 0xb2e	// Read CSR
	li x8, -1
	csrrw x6, 0xb2e, x8	// Write all 1s to CSR
	csrrw x6, 0xb2e, x0	// Write all 0s to CSR
	csrrs x6, 0xb2e, x8	// Set all CSR bits
	csrrc x6, 0xb2e, x8	// Clear all CSR bits
	csrrw x6, 0xb2e, x25	// Restore CSR

// Testing CSR 0xb2f
	csrr x21, 0xb2f	// Read CSR
	li x31, -1
	csrrw x4, 0xb2f, x31	// Write all 1s to CSR
	csrrw x4, 0xb2f, x0	// Write all 0s to CSR
	csrrs x4, 0xb2f, x31	// Set all CSR bits
	csrrc x4, 0xb2f, x31	// Clear all CSR bits
	csrrw x4, 0xb2f, x21	// Restore CSR

// Testing CSR 0xb30
	csrr x4, 0xb30	// Read CSR
	li x18, -1
	csrrw x20, 0xb30, x18	// Write all 1s to CSR
	csrrw x20, 0xb30, x0	// Write all 0s to CSR
	csrrs x20, 0xb30, x18	// Set all CSR bits
	csrrc x20, 0xb30, x18	// Clear all CSR bits
	csrrw x20, 0xb30, x4	// Restore CSR

// Testing CSR 0xb31
	csrr x5, 0xb31	// Read CSR
	li x10, -1
	csrrw x12, 0xb31, x10	// Write all 1s to CSR
	csrrw x12, 0xb31, x0	// Write all 0s to CSR
	csrrs x12, 0xb31, x10	// Set all CSR bits
	csrrc x12, 0xb31, x10	// Clear all CSR bits
	csrrw x12, 0xb31, x5	// Restore CSR

// Testing CSR 0xb32
	csrr x16, 0xb32	// Read CSR
	li x17, -1
	csrrw x8, 0xb32, x17	// Write all 1s to CSR
	csrrw x8, 0xb32, x0	// Write all 0s to CSR
	csrrs x8, 0xb32, x17	// Set all CSR bits
	csrrc x8, 0xb32, x17	// Clear all CSR bits
	csrrw x8, 0xb32, x16	// Restore CSR

// Testing CSR 0xb33
	csrr x14, 0xb33	// Read CSR
	li x25, -1
	csrrw x5, 0xb33, x25	// Write all 1s to CSR
	csrrw x5, 0xb33, x0	// Write all 0s to CSR
	csrrs x5, 0xb33, x25	// Set all CSR bits
	csrrc x5, 0xb33, x25	// Clear all CSR bits
	csrrw x5, 0xb33, x14	// Restore CSR

// Testing CSR 0xb34
	csrr x30, 0xb34	// Read CSR
	li x20, -1
	csrrw x29, 0xb34, x20	// Write all 1s to CSR
	csrrw x29, 0xb34, x0	// Write all 0s to CSR
	csrrs x29, 0xb34, x20	// Set all CSR bits
	csrrc x29, 0xb34, x20	// Clear all CSR bits
	csrrw x29, 0xb34, x30	// Restore CSR

// Testing CSR 0xb35
	csrr x6, 0xb35	// Read CSR
	li x11, -1
	csrrw x25, 0xb35, x11	// Write all 1s to CSR
	csrrw x25, 0xb35, x0	// Write all 0s to CSR
	csrrs x25, 0xb35, x11	// Set all CSR bits
	csrrc x25, 0xb35, x11	// Clear all CSR bits
	csrrw x25, 0xb35, x6	// Restore CSR

// Testing CSR 0xb36
	csrr x22, 0xb36	// Read CSR
	li x28, -1
	csrrw x1, 0xb36, x28	// Write all 1s to CSR
	csrrw x1, 0xb36, x0	// Write all 0s to CSR
	csrrs x1, 0xb36, x28	// Set all CSR bits
	csrrc x1, 0xb36, x28	// Clear all CSR bits
	csrrw x1, 0xb36, x22	// Restore CSR

// Testing CSR 0xb37
	csrr x11, 0xb37	// Read CSR
	li x5, -1
	csrrw x4, 0xb37, x5	// Write all 1s to CSR
	csrrw x4, 0xb37, x0	// Write all 0s to CSR
	csrrs x4, 0xb37, x5	// Set all CSR bits
	csrrc x4, 0xb37, x5	// Clear all CSR bits
	csrrw x4, 0xb37, x11	// Restore CSR

// Testing CSR 0xb38
	csrr x17, 0xb38	// Read CSR
	li x11, -1
	csrrw x20, 0xb38, x11	// Write all 1s to CSR
	csrrw x20, 0xb38, x0	// Write all 0s to CSR
	csrrs x20, 0xb38, x11	// Set all CSR bits
	csrrc x20, 0xb38, x11	// Clear all CSR bits
	csrrw x20, 0xb38, x17	// Restore CSR

// Testing CSR 0xb39
	csrr x29, 0xb39	// Read CSR
	li x8, -1
	csrrw x4, 0xb39, x8	// Write all 1s to CSR
	csrrw x4, 0xb39, x0	// Write all 0s to CSR
	csrrs x4, 0xb39, x8	// Set all CSR bits
	csrrc x4, 0xb39, x8	// Clear all CSR bits
	csrrw x4, 0xb39, x29	// Restore CSR

// Testing CSR 0xb3a
	csrr x24, 0xb3a	// Read CSR
	li x18, -1
	csrrw x29, 0xb3a, x18	// Write all 1s to CSR
	csrrw x29, 0xb3a, x0	// Write all 0s to CSR
	csrrs x29, 0xb3a, x18	// Set all CSR bits
	csrrc x29, 0xb3a, x18	// Clear all CSR bits
	csrrw x29, 0xb3a, x24	// Restore CSR

// Testing CSR 0xb3b
	csrr x30, 0xb3b	// Read CSR
	li x4, -1
	csrrw x24, 0xb3b, x4	// Write all 1s to CSR
	csrrw x24, 0xb3b, x0	// Write all 0s to CSR
	csrrs x24, 0xb3b, x4	// Set all CSR bits
	csrrc x24, 0xb3b, x4	// Clear all CSR bits
	csrrw x24, 0xb3b, x30	// Restore CSR

// Testing CSR 0xb3c
	csrr x22, 0xb3c	// Read CSR
	li x16, -1
	csrrw x17, 0xb3c, x16	// Write all 1s to CSR
	csrrw x17, 0xb3c, x0	// Write all 0s to CSR
	csrrs x17, 0xb3c, x16	// Set all CSR bits
	csrrc x17, 0xb3c, x16	// Clear all CSR bits
	csrrw x17, 0xb3c, x22	// Restore CSR

// Testing CSR 0xb3d
	csrr x20, 0xb3d	// Read CSR
	li x23, -1
	csrrw x30, 0xb3d, x23	// Write all 1s to CSR
	csrrw x30, 0xb3d, x0	// Write all 0s to CSR
	csrrs x30, 0xb3d, x23	// Set all CSR bits
	csrrc x30, 0xb3d, x23	// Clear all CSR bits
	csrrw x30, 0xb3d, x20	// Restore CSR

// Testing CSR 0xb3e
	csrr x30, 0xb3e	// Read CSR
	li x16, -1
	csrrw x10, 0xb3e, x16	// Write all 1s to CSR
	csrrw x10, 0xb3e, x0	// Write all 0s to CSR
	csrrs x10, 0xb3e, x16	// Set all CSR bits
	csrrc x10, 0xb3e, x16	// Clear all CSR bits
	csrrw x10, 0xb3e, x30	// Restore CSR

// Testing CSR 0xb3f
	csrr x11, 0xb3f	// Read CSR
	li x29, -1
	csrrw x20, 0xb3f, x29	// Write all 1s to CSR
	csrrw x20, 0xb3f, x0	// Write all 0s to CSR
	csrrs x20, 0xb3f, x29	// Set all CSR bits
	csrrc x20, 0xb3f, x29	// Clear all CSR bits
	csrrw x20, 0xb3f, x11	// Restore CSR

// Testing CSR 0xb40
	csrr x3, 0xb40	// Read CSR
	li x7, -1
	csrrw x2, 0xb40, x7	// Write all 1s to CSR
	csrrw x2, 0xb40, x0	// Write all 0s to CSR
	csrrs x2, 0xb40, x7	// Set all CSR bits
	csrrc x2, 0xb40, x7	// Clear all CSR bits
	csrrw x2, 0xb40, x3	// Restore CSR

// Testing CSR 0xb41
	csrr x21, 0xb41	// Read CSR
	li x30, -1
	csrrw x13, 0xb41, x30	// Write all 1s to CSR
	csrrw x13, 0xb41, x0	// Write all 0s to CSR
	csrrs x13, 0xb41, x30	// Set all CSR bits
	csrrc x13, 0xb41, x30	// Clear all CSR bits
	csrrw x13, 0xb41, x21	// Restore CSR

// Testing CSR 0xb42
	csrr x9, 0xb42	// Read CSR
	li x17, -1
	csrrw x23, 0xb42, x17	// Write all 1s to CSR
	csrrw x23, 0xb42, x0	// Write all 0s to CSR
	csrrs x23, 0xb42, x17	// Set all CSR bits
	csrrc x23, 0xb42, x17	// Clear all CSR bits
	csrrw x23, 0xb42, x9	// Restore CSR

// Testing CSR 0xb43
	csrr x11, 0xb43	// Read CSR
	li x8, -1
	csrrw x19, 0xb43, x8	// Write all 1s to CSR
	csrrw x19, 0xb43, x0	// Write all 0s to CSR
	csrrs x19, 0xb43, x8	// Set all CSR bits
	csrrc x19, 0xb43, x8	// Clear all CSR bits
	csrrw x19, 0xb43, x11	// Restore CSR

// Testing CSR 0xb44
	csrr x29, 0xb44	// Read CSR
	li x11, -1
	csrrw x9, 0xb44, x11	// Write all 1s to CSR
	csrrw x9, 0xb44, x0	// Write all 0s to CSR
	csrrs x9, 0xb44, x11	// Set all CSR bits
	csrrc x9, 0xb44, x11	// Clear all CSR bits
	csrrw x9, 0xb44, x29	// Restore CSR

// Testing CSR 0xb45
	csrr x24, 0xb45	// Read CSR
	li x26, -1
	csrrw x23, 0xb45, x26	// Write all 1s to CSR
	csrrw x23, 0xb45, x0	// Write all 0s to CSR
	csrrs x23, 0xb45, x26	// Set all CSR bits
	csrrc x23, 0xb45, x26	// Clear all CSR bits
	csrrw x23, 0xb45, x24	// Restore CSR

// Testing CSR 0xb46
	csrr x29, 0xb46	// Read CSR
	li x3, -1
	csrrw x26, 0xb46, x3	// Write all 1s to CSR
	csrrw x26, 0xb46, x0	// Write all 0s to CSR
	csrrs x26, 0xb46, x3	// Set all CSR bits
	csrrc x26, 0xb46, x3	// Clear all CSR bits
	csrrw x26, 0xb46, x29	// Restore CSR

// Testing CSR 0xb47
	csrr x27, 0xb47	// Read CSR
	li x15, -1
	csrrw x26, 0xb47, x15	// Write all 1s to CSR
	csrrw x26, 0xb47, x0	// Write all 0s to CSR
	csrrs x26, 0xb47, x15	// Set all CSR bits
	csrrc x26, 0xb47, x15	// Clear all CSR bits
	csrrw x26, 0xb47, x27	// Restore CSR

// Testing CSR 0xb48
	csrr x5, 0xb48	// Read CSR
	li x2, -1
	csrrw x22, 0xb48, x2	// Write all 1s to CSR
	csrrw x22, 0xb48, x0	// Write all 0s to CSR
	csrrs x22, 0xb48, x2	// Set all CSR bits
	csrrc x22, 0xb48, x2	// Clear all CSR bits
	csrrw x22, 0xb48, x5	// Restore CSR

// Testing CSR 0xb49
	csrr x4, 0xb49	// Read CSR
	li x15, -1
	csrrw x30, 0xb49, x15	// Write all 1s to CSR
	csrrw x30, 0xb49, x0	// Write all 0s to CSR
	csrrs x30, 0xb49, x15	// Set all CSR bits
	csrrc x30, 0xb49, x15	// Clear all CSR bits
	csrrw x30, 0xb49, x4	// Restore CSR

// Testing CSR 0xb4a
	csrr x23, 0xb4a	// Read CSR
	li x9, -1
	csrrw x25, 0xb4a, x9	// Write all 1s to CSR
	csrrw x25, 0xb4a, x0	// Write all 0s to CSR
	csrrs x25, 0xb4a, x9	// Set all CSR bits
	csrrc x25, 0xb4a, x9	// Clear all CSR bits
	csrrw x25, 0xb4a, x23	// Restore CSR

// Testing CSR 0xb4b
	csrr x11, 0xb4b	// Read CSR
	li x9, -1
	csrrw x15, 0xb4b, x9	// Write all 1s to CSR
	csrrw x15, 0xb4b, x0	// Write all 0s to CSR
	csrrs x15, 0xb4b, x9	// Set all CSR bits
	csrrc x15, 0xb4b, x9	// Clear all CSR bits
	csrrw x15, 0xb4b, x11	// Restore CSR

// Testing CSR 0xb4c
	csrr x1, 0xb4c	// Read CSR
	li x11, -1
	csrrw x24, 0xb4c, x11	// Write all 1s to CSR
	csrrw x24, 0xb4c, x0	// Write all 0s to CSR
	csrrs x24, 0xb4c, x11	// Set all CSR bits
	csrrc x24, 0xb4c, x11	// Clear all CSR bits
	csrrw x24, 0xb4c, x1	// Restore CSR

// Testing CSR 0xb4d
	csrr x11, 0xb4d	// Read CSR
	li x21, -1
	csrrw x8, 0xb4d, x21	// Write all 1s to CSR
	csrrw x8, 0xb4d, x0	// Write all 0s to CSR
	csrrs x8, 0xb4d, x21	// Set all CSR bits
	csrrc x8, 0xb4d, x21	// Clear all CSR bits
	csrrw x8, 0xb4d, x11	// Restore CSR

// Testing CSR 0xb4e
	csrr x27, 0xb4e	// Read CSR
	li x12, -1
	csrrw x24, 0xb4e, x12	// Write all 1s to CSR
	csrrw x24, 0xb4e, x0	// Write all 0s to CSR
	csrrs x24, 0xb4e, x12	// Set all CSR bits
	csrrc x24, 0xb4e, x12	// Clear all CSR bits
	csrrw x24, 0xb4e, x27	// Restore CSR

// Testing CSR 0xb4f
	csrr x12, 0xb4f	// Read CSR
	li x31, -1
	csrrw x30, 0xb4f, x31	// Write all 1s to CSR
	csrrw x30, 0xb4f, x0	// Write all 0s to CSR
	csrrs x30, 0xb4f, x31	// Set all CSR bits
	csrrc x30, 0xb4f, x31	// Clear all CSR bits
	csrrw x30, 0xb4f, x12	// Restore CSR

// Testing CSR 0xb50
	csrr x23, 0xb50	// Read CSR
	li x13, -1
	csrrw x7, 0xb50, x13	// Write all 1s to CSR
	csrrw x7, 0xb50, x0	// Write all 0s to CSR
	csrrs x7, 0xb50, x13	// Set all CSR bits
	csrrc x7, 0xb50, x13	// Clear all CSR bits
	csrrw x7, 0xb50, x23	// Restore CSR

// Testing CSR 0xb51
	csrr x1, 0xb51	// Read CSR
	li x13, -1
	csrrw x31, 0xb51, x13	// Write all 1s to CSR
	csrrw x31, 0xb51, x0	// Write all 0s to CSR
	csrrs x31, 0xb51, x13	// Set all CSR bits
	csrrc x31, 0xb51, x13	// Clear all CSR bits
	csrrw x31, 0xb51, x1	// Restore CSR

// Testing CSR 0xb52
	csrr x21, 0xb52	// Read CSR
	li x19, -1
	csrrw x18, 0xb52, x19	// Write all 1s to CSR
	csrrw x18, 0xb52, x0	// Write all 0s to CSR
	csrrs x18, 0xb52, x19	// Set all CSR bits
	csrrc x18, 0xb52, x19	// Clear all CSR bits
	csrrw x18, 0xb52, x21	// Restore CSR

// Testing CSR 0xb53
	csrr x10, 0xb53	// Read CSR
	li x13, -1
	csrrw x26, 0xb53, x13	// Write all 1s to CSR
	csrrw x26, 0xb53, x0	// Write all 0s to CSR
	csrrs x26, 0xb53, x13	// Set all CSR bits
	csrrc x26, 0xb53, x13	// Clear all CSR bits
	csrrw x26, 0xb53, x10	// Restore CSR

// Testing CSR 0xb54
	csrr x20, 0xb54	// Read CSR
	li x1, -1
	csrrw x18, 0xb54, x1	// Write all 1s to CSR
	csrrw x18, 0xb54, x0	// Write all 0s to CSR
	csrrs x18, 0xb54, x1	// Set all CSR bits
	csrrc x18, 0xb54, x1	// Clear all CSR bits
	csrrw x18, 0xb54, x20	// Restore CSR

// Testing CSR 0xb55
	csrr x28, 0xb55	// Read CSR
	li x29, -1
	csrrw x4, 0xb55, x29	// Write all 1s to CSR
	csrrw x4, 0xb55, x0	// Write all 0s to CSR
	csrrs x4, 0xb55, x29	// Set all CSR bits
	csrrc x4, 0xb55, x29	// Clear all CSR bits
	csrrw x4, 0xb55, x28	// Restore CSR

// Testing CSR 0xb56
	csrr x11, 0xb56	// Read CSR
	li x1, -1
	csrrw x14, 0xb56, x1	// Write all 1s to CSR
	csrrw x14, 0xb56, x0	// Write all 0s to CSR
	csrrs x14, 0xb56, x1	// Set all CSR bits
	csrrc x14, 0xb56, x1	// Clear all CSR bits
	csrrw x14, 0xb56, x11	// Restore CSR

// Testing CSR 0xb57
	csrr x5, 0xb57	// Read CSR
	li x3, -1
	csrrw x27, 0xb57, x3	// Write all 1s to CSR
	csrrw x27, 0xb57, x0	// Write all 0s to CSR
	csrrs x27, 0xb57, x3	// Set all CSR bits
	csrrc x27, 0xb57, x3	// Clear all CSR bits
	csrrw x27, 0xb57, x5	// Restore CSR

// Testing CSR 0xb58
	csrr x5, 0xb58	// Read CSR
	li x2, -1
	csrrw x22, 0xb58, x2	// Write all 1s to CSR
	csrrw x22, 0xb58, x0	// Write all 0s to CSR
	csrrs x22, 0xb58, x2	// Set all CSR bits
	csrrc x22, 0xb58, x2	// Clear all CSR bits
	csrrw x22, 0xb58, x5	// Restore CSR

// Testing CSR 0xb59
	csrr x30, 0xb59	// Read CSR
	li x18, -1
	csrrw x10, 0xb59, x18	// Write all 1s to CSR
	csrrw x10, 0xb59, x0	// Write all 0s to CSR
	csrrs x10, 0xb59, x18	// Set all CSR bits
	csrrc x10, 0xb59, x18	// Clear all CSR bits
	csrrw x10, 0xb59, x30	// Restore CSR

// Testing CSR 0xb5a
	csrr x31, 0xb5a	// Read CSR
	li x7, -1
	csrrw x25, 0xb5a, x7	// Write all 1s to CSR
	csrrw x25, 0xb5a, x0	// Write all 0s to CSR
	csrrs x25, 0xb5a, x7	// Set all CSR bits
	csrrc x25, 0xb5a, x7	// Clear all CSR bits
	csrrw x25, 0xb5a, x31	// Restore CSR

// Testing CSR 0xb5b
	csrr x21, 0xb5b	// Read CSR
	li x12, -1
	csrrw x8, 0xb5b, x12	// Write all 1s to CSR
	csrrw x8, 0xb5b, x0	// Write all 0s to CSR
	csrrs x8, 0xb5b, x12	// Set all CSR bits
	csrrc x8, 0xb5b, x12	// Clear all CSR bits
	csrrw x8, 0xb5b, x21	// Restore CSR

// Testing CSR 0xb5c
	csrr x19, 0xb5c	// Read CSR
	li x3, -1
	csrrw x25, 0xb5c, x3	// Write all 1s to CSR
	csrrw x25, 0xb5c, x0	// Write all 0s to CSR
	csrrs x25, 0xb5c, x3	// Set all CSR bits
	csrrc x25, 0xb5c, x3	// Clear all CSR bits
	csrrw x25, 0xb5c, x19	// Restore CSR

// Testing CSR 0xb5d
	csrr x8, 0xb5d	// Read CSR
	li x22, -1
	csrrw x14, 0xb5d, x22	// Write all 1s to CSR
	csrrw x14, 0xb5d, x0	// Write all 0s to CSR
	csrrs x14, 0xb5d, x22	// Set all CSR bits
	csrrc x14, 0xb5d, x22	// Clear all CSR bits
	csrrw x14, 0xb5d, x8	// Restore CSR

// Testing CSR 0xb5e
	csrr x11, 0xb5e	// Read CSR
	li x21, -1
	csrrw x23, 0xb5e, x21	// Write all 1s to CSR
	csrrw x23, 0xb5e, x0	// Write all 0s to CSR
	csrrs x23, 0xb5e, x21	// Set all CSR bits
	csrrc x23, 0xb5e, x21	// Clear all CSR bits
	csrrw x23, 0xb5e, x11	// Restore CSR

// Testing CSR 0xb5f
	csrr x21, 0xb5f	// Read CSR
	li x10, -1
	csrrw x1, 0xb5f, x10	// Write all 1s to CSR
	csrrw x1, 0xb5f, x0	// Write all 0s to CSR
	csrrs x1, 0xb5f, x10	// Set all CSR bits
	csrrc x1, 0xb5f, x10	// Clear all CSR bits
	csrrw x1, 0xb5f, x21	// Restore CSR

// Testing CSR 0xb60
	csrr x3, 0xb60	// Read CSR
	li x15, -1
	csrrw x9, 0xb60, x15	// Write all 1s to CSR
	csrrw x9, 0xb60, x0	// Write all 0s to CSR
	csrrs x9, 0xb60, x15	// Set all CSR bits
	csrrc x9, 0xb60, x15	// Clear all CSR bits
	csrrw x9, 0xb60, x3	// Restore CSR

// Testing CSR 0xb61
	csrr x21, 0xb61	// Read CSR
	li x31, -1
	csrrw x13, 0xb61, x31	// Write all 1s to CSR
	csrrw x13, 0xb61, x0	// Write all 0s to CSR
	csrrs x13, 0xb61, x31	// Set all CSR bits
	csrrc x13, 0xb61, x31	// Clear all CSR bits
	csrrw x13, 0xb61, x21	// Restore CSR

// Testing CSR 0xb62
	csrr x7, 0xb62	// Read CSR
	li x6, -1
	csrrw x24, 0xb62, x6	// Write all 1s to CSR
	csrrw x24, 0xb62, x0	// Write all 0s to CSR
	csrrs x24, 0xb62, x6	// Set all CSR bits
	csrrc x24, 0xb62, x6	// Clear all CSR bits
	csrrw x24, 0xb62, x7	// Restore CSR

// Testing CSR 0xb63
	csrr x30, 0xb63	// Read CSR
	li x15, -1
	csrrw x1, 0xb63, x15	// Write all 1s to CSR
	csrrw x1, 0xb63, x0	// Write all 0s to CSR
	csrrs x1, 0xb63, x15	// Set all CSR bits
	csrrc x1, 0xb63, x15	// Clear all CSR bits
	csrrw x1, 0xb63, x30	// Restore CSR

// Testing CSR 0xb64
	csrr x6, 0xb64	// Read CSR
	li x28, -1
	csrrw x1, 0xb64, x28	// Write all 1s to CSR
	csrrw x1, 0xb64, x0	// Write all 0s to CSR
	csrrs x1, 0xb64, x28	// Set all CSR bits
	csrrc x1, 0xb64, x28	// Clear all CSR bits
	csrrw x1, 0xb64, x6	// Restore CSR

// Testing CSR 0xb65
	csrr x6, 0xb65	// Read CSR
	li x19, -1
	csrrw x22, 0xb65, x19	// Write all 1s to CSR
	csrrw x22, 0xb65, x0	// Write all 0s to CSR
	csrrs x22, 0xb65, x19	// Set all CSR bits
	csrrc x22, 0xb65, x19	// Clear all CSR bits
	csrrw x22, 0xb65, x6	// Restore CSR

// Testing CSR 0xb66
	csrr x30, 0xb66	// Read CSR
	li x2, -1
	csrrw x3, 0xb66, x2	// Write all 1s to CSR
	csrrw x3, 0xb66, x0	// Write all 0s to CSR
	csrrs x3, 0xb66, x2	// Set all CSR bits
	csrrc x3, 0xb66, x2	// Clear all CSR bits
	csrrw x3, 0xb66, x30	// Restore CSR

// Testing CSR 0xb67
	csrr x12, 0xb67	// Read CSR
	li x25, -1
	csrrw x2, 0xb67, x25	// Write all 1s to CSR
	csrrw x2, 0xb67, x0	// Write all 0s to CSR
	csrrs x2, 0xb67, x25	// Set all CSR bits
	csrrc x2, 0xb67, x25	// Clear all CSR bits
	csrrw x2, 0xb67, x12	// Restore CSR

// Testing CSR 0xb68
	csrr x22, 0xb68	// Read CSR
	li x8, -1
	csrrw x28, 0xb68, x8	// Write all 1s to CSR
	csrrw x28, 0xb68, x0	// Write all 0s to CSR
	csrrs x28, 0xb68, x8	// Set all CSR bits
	csrrc x28, 0xb68, x8	// Clear all CSR bits
	csrrw x28, 0xb68, x22	// Restore CSR

// Testing CSR 0xb69
	csrr x8, 0xb69	// Read CSR
	li x16, -1
	csrrw x9, 0xb69, x16	// Write all 1s to CSR
	csrrw x9, 0xb69, x0	// Write all 0s to CSR
	csrrs x9, 0xb69, x16	// Set all CSR bits
	csrrc x9, 0xb69, x16	// Clear all CSR bits
	csrrw x9, 0xb69, x8	// Restore CSR

// Testing CSR 0xb6a
	csrr x10, 0xb6a	// Read CSR
	li x19, -1
	csrrw x26, 0xb6a, x19	// Write all 1s to CSR
	csrrw x26, 0xb6a, x0	// Write all 0s to CSR
	csrrs x26, 0xb6a, x19	// Set all CSR bits
	csrrc x26, 0xb6a, x19	// Clear all CSR bits
	csrrw x26, 0xb6a, x10	// Restore CSR

// Testing CSR 0xb6b
	csrr x12, 0xb6b	// Read CSR
	li x24, -1
	csrrw x21, 0xb6b, x24	// Write all 1s to CSR
	csrrw x21, 0xb6b, x0	// Write all 0s to CSR
	csrrs x21, 0xb6b, x24	// Set all CSR bits
	csrrc x21, 0xb6b, x24	// Clear all CSR bits
	csrrw x21, 0xb6b, x12	// Restore CSR

// Testing CSR 0xb6c
	csrr x18, 0xb6c	// Read CSR
	li x11, -1
	csrrw x21, 0xb6c, x11	// Write all 1s to CSR
	csrrw x21, 0xb6c, x0	// Write all 0s to CSR
	csrrs x21, 0xb6c, x11	// Set all CSR bits
	csrrc x21, 0xb6c, x11	// Clear all CSR bits
	csrrw x21, 0xb6c, x18	// Restore CSR

// Testing CSR 0xb6d
	csrr x25, 0xb6d	// Read CSR
	li x23, -1
	csrrw x16, 0xb6d, x23	// Write all 1s to CSR
	csrrw x16, 0xb6d, x0	// Write all 0s to CSR
	csrrs x16, 0xb6d, x23	// Set all CSR bits
	csrrc x16, 0xb6d, x23	// Clear all CSR bits
	csrrw x16, 0xb6d, x25	// Restore CSR

// Testing CSR 0xb6e
	csrr x30, 0xb6e	// Read CSR
	li x20, -1
	csrrw x17, 0xb6e, x20	// Write all 1s to CSR
	csrrw x17, 0xb6e, x0	// Write all 0s to CSR
	csrrs x17, 0xb6e, x20	// Set all CSR bits
	csrrc x17, 0xb6e, x20	// Clear all CSR bits
	csrrw x17, 0xb6e, x30	// Restore CSR

// Testing CSR 0xb6f
	csrr x27, 0xb6f	// Read CSR
	li x2, -1
	csrrw x25, 0xb6f, x2	// Write all 1s to CSR
	csrrw x25, 0xb6f, x0	// Write all 0s to CSR
	csrrs x25, 0xb6f, x2	// Set all CSR bits
	csrrc x25, 0xb6f, x2	// Clear all CSR bits
	csrrw x25, 0xb6f, x27	// Restore CSR

// Testing CSR 0xb70
	csrr x8, 0xb70	// Read CSR
	li x5, -1
	csrrw x24, 0xb70, x5	// Write all 1s to CSR
	csrrw x24, 0xb70, x0	// Write all 0s to CSR
	csrrs x24, 0xb70, x5	// Set all CSR bits
	csrrc x24, 0xb70, x5	// Clear all CSR bits
	csrrw x24, 0xb70, x8	// Restore CSR

// Testing CSR 0xb71
	csrr x7, 0xb71	// Read CSR
	li x31, -1
	csrrw x8, 0xb71, x31	// Write all 1s to CSR
	csrrw x8, 0xb71, x0	// Write all 0s to CSR
	csrrs x8, 0xb71, x31	// Set all CSR bits
	csrrc x8, 0xb71, x31	// Clear all CSR bits
	csrrw x8, 0xb71, x7	// Restore CSR

// Testing CSR 0xb72
	csrr x4, 0xb72	// Read CSR
	li x5, -1
	csrrw x2, 0xb72, x5	// Write all 1s to CSR
	csrrw x2, 0xb72, x0	// Write all 0s to CSR
	csrrs x2, 0xb72, x5	// Set all CSR bits
	csrrc x2, 0xb72, x5	// Clear all CSR bits
	csrrw x2, 0xb72, x4	// Restore CSR

// Testing CSR 0xb73
	csrr x20, 0xb73	// Read CSR
	li x18, -1
	csrrw x3, 0xb73, x18	// Write all 1s to CSR
	csrrw x3, 0xb73, x0	// Write all 0s to CSR
	csrrs x3, 0xb73, x18	// Set all CSR bits
	csrrc x3, 0xb73, x18	// Clear all CSR bits
	csrrw x3, 0xb73, x20	// Restore CSR

// Testing CSR 0xb74
	csrr x19, 0xb74	// Read CSR
	li x27, -1
	csrrw x24, 0xb74, x27	// Write all 1s to CSR
	csrrw x24, 0xb74, x0	// Write all 0s to CSR
	csrrs x24, 0xb74, x27	// Set all CSR bits
	csrrc x24, 0xb74, x27	// Clear all CSR bits
	csrrw x24, 0xb74, x19	// Restore CSR

// Testing CSR 0xb75
	csrr x26, 0xb75	// Read CSR
	li x20, -1
	csrrw x14, 0xb75, x20	// Write all 1s to CSR
	csrrw x14, 0xb75, x0	// Write all 0s to CSR
	csrrs x14, 0xb75, x20	// Set all CSR bits
	csrrc x14, 0xb75, x20	// Clear all CSR bits
	csrrw x14, 0xb75, x26	// Restore CSR

// Testing CSR 0xb76
	csrr x15, 0xb76	// Read CSR
	li x21, -1
	csrrw x13, 0xb76, x21	// Write all 1s to CSR
	csrrw x13, 0xb76, x0	// Write all 0s to CSR
	csrrs x13, 0xb76, x21	// Set all CSR bits
	csrrc x13, 0xb76, x21	// Clear all CSR bits
	csrrw x13, 0xb76, x15	// Restore CSR

// Testing CSR 0xb77
	csrr x1, 0xb77	// Read CSR
	li x24, -1
	csrrw x20, 0xb77, x24	// Write all 1s to CSR
	csrrw x20, 0xb77, x0	// Write all 0s to CSR
	csrrs x20, 0xb77, x24	// Set all CSR bits
	csrrc x20, 0xb77, x24	// Clear all CSR bits
	csrrw x20, 0xb77, x1	// Restore CSR

// Testing CSR 0xb78
	csrr x25, 0xb78	// Read CSR
	li x21, -1
	csrrw x17, 0xb78, x21	// Write all 1s to CSR
	csrrw x17, 0xb78, x0	// Write all 0s to CSR
	csrrs x17, 0xb78, x21	// Set all CSR bits
	csrrc x17, 0xb78, x21	// Clear all CSR bits
	csrrw x17, 0xb78, x25	// Restore CSR

// Testing CSR 0xb79
	csrr x21, 0xb79	// Read CSR
	li x29, -1
	csrrw x31, 0xb79, x29	// Write all 1s to CSR
	csrrw x31, 0xb79, x0	// Write all 0s to CSR
	csrrs x31, 0xb79, x29	// Set all CSR bits
	csrrc x31, 0xb79, x29	// Clear all CSR bits
	csrrw x31, 0xb79, x21	// Restore CSR

// Testing CSR 0xb7a
	csrr x11, 0xb7a	// Read CSR
	li x23, -1
	csrrw x17, 0xb7a, x23	// Write all 1s to CSR
	csrrw x17, 0xb7a, x0	// Write all 0s to CSR
	csrrs x17, 0xb7a, x23	// Set all CSR bits
	csrrc x17, 0xb7a, x23	// Clear all CSR bits
	csrrw x17, 0xb7a, x11	// Restore CSR

// Testing CSR 0xb7b
	csrr x7, 0xb7b	// Read CSR
	li x5, -1
	csrrw x20, 0xb7b, x5	// Write all 1s to CSR
	csrrw x20, 0xb7b, x0	// Write all 0s to CSR
	csrrs x20, 0xb7b, x5	// Set all CSR bits
	csrrc x20, 0xb7b, x5	// Clear all CSR bits
	csrrw x20, 0xb7b, x7	// Restore CSR

// Testing CSR 0xb7c
	csrr x10, 0xb7c	// Read CSR
	li x18, -1
	csrrw x22, 0xb7c, x18	// Write all 1s to CSR
	csrrw x22, 0xb7c, x0	// Write all 0s to CSR
	csrrs x22, 0xb7c, x18	// Set all CSR bits
	csrrc x22, 0xb7c, x18	// Clear all CSR bits
	csrrw x22, 0xb7c, x10	// Restore CSR

// Testing CSR 0xb7d
	csrr x13, 0xb7d	// Read CSR
	li x20, -1
	csrrw x17, 0xb7d, x20	// Write all 1s to CSR
	csrrw x17, 0xb7d, x0	// Write all 0s to CSR
	csrrs x17, 0xb7d, x20	// Set all CSR bits
	csrrc x17, 0xb7d, x20	// Clear all CSR bits
	csrrw x17, 0xb7d, x13	// Restore CSR

// Testing CSR 0xb7e
	csrr x25, 0xb7e	// Read CSR
	li x2, -1
	csrrw x15, 0xb7e, x2	// Write all 1s to CSR
	csrrw x15, 0xb7e, x0	// Write all 0s to CSR
	csrrs x15, 0xb7e, x2	// Set all CSR bits
	csrrc x15, 0xb7e, x2	// Clear all CSR bits
	csrrw x15, 0xb7e, x25	// Restore CSR

// Testing CSR 0xb7f
	csrr x19, 0xb7f	// Read CSR
	li x30, -1
	csrrw x8, 0xb7f, x30	// Write all 1s to CSR
	csrrw x8, 0xb7f, x0	// Write all 0s to CSR
	csrrs x8, 0xb7f, x30	// Set all CSR bits
	csrrc x8, 0xb7f, x30	// Clear all CSR bits
	csrrw x8, 0xb7f, x19	// Restore CSR

// Testing CSR 0xb80
	csrr x13, 0xb80	// Read CSR
	li x9, -1
	csrrw x18, 0xb80, x9	// Write all 1s to CSR
	csrrw x18, 0xb80, x0	// Write all 0s to CSR
	csrrs x18, 0xb80, x9	// Set all CSR bits
	csrrc x18, 0xb80, x9	// Clear all CSR bits
	csrrw x18, 0xb80, x13	// Restore CSR

// Testing CSR 0xb81
	csrr x22, 0xb81	// Read CSR
	li x10, -1
	csrrw x24, 0xb81, x10	// Write all 1s to CSR
	csrrw x24, 0xb81, x0	// Write all 0s to CSR
	csrrs x24, 0xb81, x10	// Set all CSR bits
	csrrc x24, 0xb81, x10	// Clear all CSR bits
	csrrw x24, 0xb81, x22	// Restore CSR

// Testing CSR 0xb82
	csrr x4, 0xb82	// Read CSR
	li x27, -1
	csrrw x11, 0xb82, x27	// Write all 1s to CSR
	csrrw x11, 0xb82, x0	// Write all 0s to CSR
	csrrs x11, 0xb82, x27	// Set all CSR bits
	csrrc x11, 0xb82, x27	// Clear all CSR bits
	csrrw x11, 0xb82, x4	// Restore CSR

// Testing CSR 0xb83
	csrr x19, 0xb83	// Read CSR
	li x23, -1
	csrrw x9, 0xb83, x23	// Write all 1s to CSR
	csrrw x9, 0xb83, x0	// Write all 0s to CSR
	csrrs x9, 0xb83, x23	// Set all CSR bits
	csrrc x9, 0xb83, x23	// Clear all CSR bits
	csrrw x9, 0xb83, x19	// Restore CSR

// Testing CSR 0xb84
	csrr x31, 0xb84	// Read CSR
	li x23, -1
	csrrw x17, 0xb84, x23	// Write all 1s to CSR
	csrrw x17, 0xb84, x0	// Write all 0s to CSR
	csrrs x17, 0xb84, x23	// Set all CSR bits
	csrrc x17, 0xb84, x23	// Clear all CSR bits
	csrrw x17, 0xb84, x31	// Restore CSR

// Testing CSR 0xb85
	csrr x9, 0xb85	// Read CSR
	li x15, -1
	csrrw x4, 0xb85, x15	// Write all 1s to CSR
	csrrw x4, 0xb85, x0	// Write all 0s to CSR
	csrrs x4, 0xb85, x15	// Set all CSR bits
	csrrc x4, 0xb85, x15	// Clear all CSR bits
	csrrw x4, 0xb85, x9	// Restore CSR

// Testing CSR 0xb86
	csrr x30, 0xb86	// Read CSR
	li x19, -1
	csrrw x27, 0xb86, x19	// Write all 1s to CSR
	csrrw x27, 0xb86, x0	// Write all 0s to CSR
	csrrs x27, 0xb86, x19	// Set all CSR bits
	csrrc x27, 0xb86, x19	// Clear all CSR bits
	csrrw x27, 0xb86, x30	// Restore CSR

// Testing CSR 0xb87
	csrr x10, 0xb87	// Read CSR
	li x11, -1
	csrrw x23, 0xb87, x11	// Write all 1s to CSR
	csrrw x23, 0xb87, x0	// Write all 0s to CSR
	csrrs x23, 0xb87, x11	// Set all CSR bits
	csrrc x23, 0xb87, x11	// Clear all CSR bits
	csrrw x23, 0xb87, x10	// Restore CSR

// Testing CSR 0xb88
	csrr x3, 0xb88	// Read CSR
	li x23, -1
	csrrw x14, 0xb88, x23	// Write all 1s to CSR
	csrrw x14, 0xb88, x0	// Write all 0s to CSR
	csrrs x14, 0xb88, x23	// Set all CSR bits
	csrrc x14, 0xb88, x23	// Clear all CSR bits
	csrrw x14, 0xb88, x3	// Restore CSR

// Testing CSR 0xb89
	csrr x28, 0xb89	// Read CSR
	li x11, -1
	csrrw x24, 0xb89, x11	// Write all 1s to CSR
	csrrw x24, 0xb89, x0	// Write all 0s to CSR
	csrrs x24, 0xb89, x11	// Set all CSR bits
	csrrc x24, 0xb89, x11	// Clear all CSR bits
	csrrw x24, 0xb89, x28	// Restore CSR

// Testing CSR 0xb8a
	csrr x1, 0xb8a	// Read CSR
	li x26, -1
	csrrw x4, 0xb8a, x26	// Write all 1s to CSR
	csrrw x4, 0xb8a, x0	// Write all 0s to CSR
	csrrs x4, 0xb8a, x26	// Set all CSR bits
	csrrc x4, 0xb8a, x26	// Clear all CSR bits
	csrrw x4, 0xb8a, x1	// Restore CSR

// Testing CSR 0xb8b
	csrr x27, 0xb8b	// Read CSR
	li x31, -1
	csrrw x23, 0xb8b, x31	// Write all 1s to CSR
	csrrw x23, 0xb8b, x0	// Write all 0s to CSR
	csrrs x23, 0xb8b, x31	// Set all CSR bits
	csrrc x23, 0xb8b, x31	// Clear all CSR bits
	csrrw x23, 0xb8b, x27	// Restore CSR

// Testing CSR 0xb8c
	csrr x11, 0xb8c	// Read CSR
	li x27, -1
	csrrw x19, 0xb8c, x27	// Write all 1s to CSR
	csrrw x19, 0xb8c, x0	// Write all 0s to CSR
	csrrs x19, 0xb8c, x27	// Set all CSR bits
	csrrc x19, 0xb8c, x27	// Clear all CSR bits
	csrrw x19, 0xb8c, x11	// Restore CSR

// Testing CSR 0xb8d
	csrr x4, 0xb8d	// Read CSR
	li x18, -1
	csrrw x7, 0xb8d, x18	// Write all 1s to CSR
	csrrw x7, 0xb8d, x0	// Write all 0s to CSR
	csrrs x7, 0xb8d, x18	// Set all CSR bits
	csrrc x7, 0xb8d, x18	// Clear all CSR bits
	csrrw x7, 0xb8d, x4	// Restore CSR

// Testing CSR 0xb8e
	csrr x19, 0xb8e	// Read CSR
	li x22, -1
	csrrw x1, 0xb8e, x22	// Write all 1s to CSR
	csrrw x1, 0xb8e, x0	// Write all 0s to CSR
	csrrs x1, 0xb8e, x22	// Set all CSR bits
	csrrc x1, 0xb8e, x22	// Clear all CSR bits
	csrrw x1, 0xb8e, x19	// Restore CSR

// Testing CSR 0xb8f
	csrr x30, 0xb8f	// Read CSR
	li x1, -1
	csrrw x10, 0xb8f, x1	// Write all 1s to CSR
	csrrw x10, 0xb8f, x0	// Write all 0s to CSR
	csrrs x10, 0xb8f, x1	// Set all CSR bits
	csrrc x10, 0xb8f, x1	// Clear all CSR bits
	csrrw x10, 0xb8f, x30	// Restore CSR

// Testing CSR 0xb90
	csrr x24, 0xb90	// Read CSR
	li x15, -1
	csrrw x4, 0xb90, x15	// Write all 1s to CSR
	csrrw x4, 0xb90, x0	// Write all 0s to CSR
	csrrs x4, 0xb90, x15	// Set all CSR bits
	csrrc x4, 0xb90, x15	// Clear all CSR bits
	csrrw x4, 0xb90, x24	// Restore CSR

// Testing CSR 0xb91
	csrr x17, 0xb91	// Read CSR
	li x22, -1
	csrrw x30, 0xb91, x22	// Write all 1s to CSR
	csrrw x30, 0xb91, x0	// Write all 0s to CSR
	csrrs x30, 0xb91, x22	// Set all CSR bits
	csrrc x30, 0xb91, x22	// Clear all CSR bits
	csrrw x30, 0xb91, x17	// Restore CSR

// Testing CSR 0xb92
	csrr x1, 0xb92	// Read CSR
	li x16, -1
	csrrw x24, 0xb92, x16	// Write all 1s to CSR
	csrrw x24, 0xb92, x0	// Write all 0s to CSR
	csrrs x24, 0xb92, x16	// Set all CSR bits
	csrrc x24, 0xb92, x16	// Clear all CSR bits
	csrrw x24, 0xb92, x1	// Restore CSR

// Testing CSR 0xb93
	csrr x8, 0xb93	// Read CSR
	li x9, -1
	csrrw x28, 0xb93, x9	// Write all 1s to CSR
	csrrw x28, 0xb93, x0	// Write all 0s to CSR
	csrrs x28, 0xb93, x9	// Set all CSR bits
	csrrc x28, 0xb93, x9	// Clear all CSR bits
	csrrw x28, 0xb93, x8	// Restore CSR

// Testing CSR 0xb94
	csrr x30, 0xb94	// Read CSR
	li x17, -1
	csrrw x10, 0xb94, x17	// Write all 1s to CSR
	csrrw x10, 0xb94, x0	// Write all 0s to CSR
	csrrs x10, 0xb94, x17	// Set all CSR bits
	csrrc x10, 0xb94, x17	// Clear all CSR bits
	csrrw x10, 0xb94, x30	// Restore CSR

// Testing CSR 0xb95
	csrr x26, 0xb95	// Read CSR
	li x30, -1
	csrrw x9, 0xb95, x30	// Write all 1s to CSR
	csrrw x9, 0xb95, x0	// Write all 0s to CSR
	csrrs x9, 0xb95, x30	// Set all CSR bits
	csrrc x9, 0xb95, x30	// Clear all CSR bits
	csrrw x9, 0xb95, x26	// Restore CSR

// Testing CSR 0xb96
	csrr x7, 0xb96	// Read CSR
	li x31, -1
	csrrw x24, 0xb96, x31	// Write all 1s to CSR
	csrrw x24, 0xb96, x0	// Write all 0s to CSR
	csrrs x24, 0xb96, x31	// Set all CSR bits
	csrrc x24, 0xb96, x31	// Clear all CSR bits
	csrrw x24, 0xb96, x7	// Restore CSR

// Testing CSR 0xb97
	csrr x13, 0xb97	// Read CSR
	li x20, -1
	csrrw x15, 0xb97, x20	// Write all 1s to CSR
	csrrw x15, 0xb97, x0	// Write all 0s to CSR
	csrrs x15, 0xb97, x20	// Set all CSR bits
	csrrc x15, 0xb97, x20	// Clear all CSR bits
	csrrw x15, 0xb97, x13	// Restore CSR

// Testing CSR 0xb98
	csrr x30, 0xb98	// Read CSR
	li x16, -1
	csrrw x10, 0xb98, x16	// Write all 1s to CSR
	csrrw x10, 0xb98, x0	// Write all 0s to CSR
	csrrs x10, 0xb98, x16	// Set all CSR bits
	csrrc x10, 0xb98, x16	// Clear all CSR bits
	csrrw x10, 0xb98, x30	// Restore CSR

// Testing CSR 0xb99
	csrr x11, 0xb99	// Read CSR
	li x1, -1
	csrrw x25, 0xb99, x1	// Write all 1s to CSR
	csrrw x25, 0xb99, x0	// Write all 0s to CSR
	csrrs x25, 0xb99, x1	// Set all CSR bits
	csrrc x25, 0xb99, x1	// Clear all CSR bits
	csrrw x25, 0xb99, x11	// Restore CSR

// Testing CSR 0xb9a
	csrr x28, 0xb9a	// Read CSR
	li x19, -1
	csrrw x25, 0xb9a, x19	// Write all 1s to CSR
	csrrw x25, 0xb9a, x0	// Write all 0s to CSR
	csrrs x25, 0xb9a, x19	// Set all CSR bits
	csrrc x25, 0xb9a, x19	// Clear all CSR bits
	csrrw x25, 0xb9a, x28	// Restore CSR

// Testing CSR 0xb9b
	csrr x20, 0xb9b	// Read CSR
	li x31, -1
	csrrw x25, 0xb9b, x31	// Write all 1s to CSR
	csrrw x25, 0xb9b, x0	// Write all 0s to CSR
	csrrs x25, 0xb9b, x31	// Set all CSR bits
	csrrc x25, 0xb9b, x31	// Clear all CSR bits
	csrrw x25, 0xb9b, x20	// Restore CSR

// Testing CSR 0xb9c
	csrr x10, 0xb9c	// Read CSR
	li x4, -1
	csrrw x11, 0xb9c, x4	// Write all 1s to CSR
	csrrw x11, 0xb9c, x0	// Write all 0s to CSR
	csrrs x11, 0xb9c, x4	// Set all CSR bits
	csrrc x11, 0xb9c, x4	// Clear all CSR bits
	csrrw x11, 0xb9c, x10	// Restore CSR

// Testing CSR 0xb9d
	csrr x23, 0xb9d	// Read CSR
	li x3, -1
	csrrw x5, 0xb9d, x3	// Write all 1s to CSR
	csrrw x5, 0xb9d, x0	// Write all 0s to CSR
	csrrs x5, 0xb9d, x3	// Set all CSR bits
	csrrc x5, 0xb9d, x3	// Clear all CSR bits
	csrrw x5, 0xb9d, x23	// Restore CSR

// Testing CSR 0xb9e
	csrr x13, 0xb9e	// Read CSR
	li x15, -1
	csrrw x9, 0xb9e, x15	// Write all 1s to CSR
	csrrw x9, 0xb9e, x0	// Write all 0s to CSR
	csrrs x9, 0xb9e, x15	// Set all CSR bits
	csrrc x9, 0xb9e, x15	// Clear all CSR bits
	csrrw x9, 0xb9e, x13	// Restore CSR

// Testing CSR 0xb9f
	csrr x27, 0xb9f	// Read CSR
	li x12, -1
	csrrw x9, 0xb9f, x12	// Write all 1s to CSR
	csrrw x9, 0xb9f, x0	// Write all 0s to CSR
	csrrs x9, 0xb9f, x12	// Set all CSR bits
	csrrc x9, 0xb9f, x12	// Clear all CSR bits
	csrrw x9, 0xb9f, x27	// Restore CSR

// Testing CSR 0xba0
	csrr x20, 0xba0	// Read CSR
	li x30, -1
	csrrw x22, 0xba0, x30	// Write all 1s to CSR
	csrrw x22, 0xba0, x0	// Write all 0s to CSR
	csrrs x22, 0xba0, x30	// Set all CSR bits
	csrrc x22, 0xba0, x30	// Clear all CSR bits
	csrrw x22, 0xba0, x20	// Restore CSR

// Testing CSR 0xba1
	csrr x31, 0xba1	// Read CSR
	li x24, -1
	csrrw x25, 0xba1, x24	// Write all 1s to CSR
	csrrw x25, 0xba1, x0	// Write all 0s to CSR
	csrrs x25, 0xba1, x24	// Set all CSR bits
	csrrc x25, 0xba1, x24	// Clear all CSR bits
	csrrw x25, 0xba1, x31	// Restore CSR

// Testing CSR 0xba2
	csrr x8, 0xba2	// Read CSR
	li x23, -1
	csrrw x6, 0xba2, x23	// Write all 1s to CSR
	csrrw x6, 0xba2, x0	// Write all 0s to CSR
	csrrs x6, 0xba2, x23	// Set all CSR bits
	csrrc x6, 0xba2, x23	// Clear all CSR bits
	csrrw x6, 0xba2, x8	// Restore CSR

// Testing CSR 0xba3
	csrr x18, 0xba3	// Read CSR
	li x31, -1
	csrrw x15, 0xba3, x31	// Write all 1s to CSR
	csrrw x15, 0xba3, x0	// Write all 0s to CSR
	csrrs x15, 0xba3, x31	// Set all CSR bits
	csrrc x15, 0xba3, x31	// Clear all CSR bits
	csrrw x15, 0xba3, x18	// Restore CSR

// Testing CSR 0xba4
	csrr x15, 0xba4	// Read CSR
	li x9, -1
	csrrw x16, 0xba4, x9	// Write all 1s to CSR
	csrrw x16, 0xba4, x0	// Write all 0s to CSR
	csrrs x16, 0xba4, x9	// Set all CSR bits
	csrrc x16, 0xba4, x9	// Clear all CSR bits
	csrrw x16, 0xba4, x15	// Restore CSR

// Testing CSR 0xba5
	csrr x4, 0xba5	// Read CSR
	li x3, -1
	csrrw x30, 0xba5, x3	// Write all 1s to CSR
	csrrw x30, 0xba5, x0	// Write all 0s to CSR
	csrrs x30, 0xba5, x3	// Set all CSR bits
	csrrc x30, 0xba5, x3	// Clear all CSR bits
	csrrw x30, 0xba5, x4	// Restore CSR

// Testing CSR 0xba6
	csrr x22, 0xba6	// Read CSR
	li x6, -1
	csrrw x18, 0xba6, x6	// Write all 1s to CSR
	csrrw x18, 0xba6, x0	// Write all 0s to CSR
	csrrs x18, 0xba6, x6	// Set all CSR bits
	csrrc x18, 0xba6, x6	// Clear all CSR bits
	csrrw x18, 0xba6, x22	// Restore CSR

// Testing CSR 0xba7
	csrr x2, 0xba7	// Read CSR
	li x25, -1
	csrrw x9, 0xba7, x25	// Write all 1s to CSR
	csrrw x9, 0xba7, x0	// Write all 0s to CSR
	csrrs x9, 0xba7, x25	// Set all CSR bits
	csrrc x9, 0xba7, x25	// Clear all CSR bits
	csrrw x9, 0xba7, x2	// Restore CSR

// Testing CSR 0xba8
	csrr x12, 0xba8	// Read CSR
	li x31, -1
	csrrw x28, 0xba8, x31	// Write all 1s to CSR
	csrrw x28, 0xba8, x0	// Write all 0s to CSR
	csrrs x28, 0xba8, x31	// Set all CSR bits
	csrrc x28, 0xba8, x31	// Clear all CSR bits
	csrrw x28, 0xba8, x12	// Restore CSR

// Testing CSR 0xba9
	csrr x11, 0xba9	// Read CSR
	li x12, -1
	csrrw x2, 0xba9, x12	// Write all 1s to CSR
	csrrw x2, 0xba9, x0	// Write all 0s to CSR
	csrrs x2, 0xba9, x12	// Set all CSR bits
	csrrc x2, 0xba9, x12	// Clear all CSR bits
	csrrw x2, 0xba9, x11	// Restore CSR

// Testing CSR 0xbaa
	csrr x13, 0xbaa	// Read CSR
	li x22, -1
	csrrw x11, 0xbaa, x22	// Write all 1s to CSR
	csrrw x11, 0xbaa, x0	// Write all 0s to CSR
	csrrs x11, 0xbaa, x22	// Set all CSR bits
	csrrc x11, 0xbaa, x22	// Clear all CSR bits
	csrrw x11, 0xbaa, x13	// Restore CSR

// Testing CSR 0xbab
	csrr x6, 0xbab	// Read CSR
	li x10, -1
	csrrw x29, 0xbab, x10	// Write all 1s to CSR
	csrrw x29, 0xbab, x0	// Write all 0s to CSR
	csrrs x29, 0xbab, x10	// Set all CSR bits
	csrrc x29, 0xbab, x10	// Clear all CSR bits
	csrrw x29, 0xbab, x6	// Restore CSR

// Testing CSR 0xbac
	csrr x16, 0xbac	// Read CSR
	li x2, -1
	csrrw x18, 0xbac, x2	// Write all 1s to CSR
	csrrw x18, 0xbac, x0	// Write all 0s to CSR
	csrrs x18, 0xbac, x2	// Set all CSR bits
	csrrc x18, 0xbac, x2	// Clear all CSR bits
	csrrw x18, 0xbac, x16	// Restore CSR

// Testing CSR 0xbad
	csrr x17, 0xbad	// Read CSR
	li x10, -1
	csrrw x11, 0xbad, x10	// Write all 1s to CSR
	csrrw x11, 0xbad, x0	// Write all 0s to CSR
	csrrs x11, 0xbad, x10	// Set all CSR bits
	csrrc x11, 0xbad, x10	// Clear all CSR bits
	csrrw x11, 0xbad, x17	// Restore CSR

// Testing CSR 0xbae
	csrr x30, 0xbae	// Read CSR
	li x9, -1
	csrrw x25, 0xbae, x9	// Write all 1s to CSR
	csrrw x25, 0xbae, x0	// Write all 0s to CSR
	csrrs x25, 0xbae, x9	// Set all CSR bits
	csrrc x25, 0xbae, x9	// Clear all CSR bits
	csrrw x25, 0xbae, x30	// Restore CSR

// Testing CSR 0xbaf
	csrr x20, 0xbaf	// Read CSR
	li x21, -1
	csrrw x11, 0xbaf, x21	// Write all 1s to CSR
	csrrw x11, 0xbaf, x0	// Write all 0s to CSR
	csrrs x11, 0xbaf, x21	// Set all CSR bits
	csrrc x11, 0xbaf, x21	// Clear all CSR bits
	csrrw x11, 0xbaf, x20	// Restore CSR

// Testing CSR 0xbb0
	csrr x3, 0xbb0	// Read CSR
	li x27, -1
	csrrw x12, 0xbb0, x27	// Write all 1s to CSR
	csrrw x12, 0xbb0, x0	// Write all 0s to CSR
	csrrs x12, 0xbb0, x27	// Set all CSR bits
	csrrc x12, 0xbb0, x27	// Clear all CSR bits
	csrrw x12, 0xbb0, x3	// Restore CSR

// Testing CSR 0xbb1
	csrr x27, 0xbb1	// Read CSR
	li x1, -1
	csrrw x26, 0xbb1, x1	// Write all 1s to CSR
	csrrw x26, 0xbb1, x0	// Write all 0s to CSR
	csrrs x26, 0xbb1, x1	// Set all CSR bits
	csrrc x26, 0xbb1, x1	// Clear all CSR bits
	csrrw x26, 0xbb1, x27	// Restore CSR

// Testing CSR 0xbb2
	csrr x15, 0xbb2	// Read CSR
	li x27, -1
	csrrw x20, 0xbb2, x27	// Write all 1s to CSR
	csrrw x20, 0xbb2, x0	// Write all 0s to CSR
	csrrs x20, 0xbb2, x27	// Set all CSR bits
	csrrc x20, 0xbb2, x27	// Clear all CSR bits
	csrrw x20, 0xbb2, x15	// Restore CSR

// Testing CSR 0xbb3
	csrr x6, 0xbb3	// Read CSR
	li x12, -1
	csrrw x29, 0xbb3, x12	// Write all 1s to CSR
	csrrw x29, 0xbb3, x0	// Write all 0s to CSR
	csrrs x29, 0xbb3, x12	// Set all CSR bits
	csrrc x29, 0xbb3, x12	// Clear all CSR bits
	csrrw x29, 0xbb3, x6	// Restore CSR

// Testing CSR 0xbb4
	csrr x20, 0xbb4	// Read CSR
	li x10, -1
	csrrw x23, 0xbb4, x10	// Write all 1s to CSR
	csrrw x23, 0xbb4, x0	// Write all 0s to CSR
	csrrs x23, 0xbb4, x10	// Set all CSR bits
	csrrc x23, 0xbb4, x10	// Clear all CSR bits
	csrrw x23, 0xbb4, x20	// Restore CSR

// Testing CSR 0xbb5
	csrr x9, 0xbb5	// Read CSR
	li x16, -1
	csrrw x1, 0xbb5, x16	// Write all 1s to CSR
	csrrw x1, 0xbb5, x0	// Write all 0s to CSR
	csrrs x1, 0xbb5, x16	// Set all CSR bits
	csrrc x1, 0xbb5, x16	// Clear all CSR bits
	csrrw x1, 0xbb5, x9	// Restore CSR

// Testing CSR 0xbb6
	csrr x15, 0xbb6	// Read CSR
	li x6, -1
	csrrw x8, 0xbb6, x6	// Write all 1s to CSR
	csrrw x8, 0xbb6, x0	// Write all 0s to CSR
	csrrs x8, 0xbb6, x6	// Set all CSR bits
	csrrc x8, 0xbb6, x6	// Clear all CSR bits
	csrrw x8, 0xbb6, x15	// Restore CSR

// Testing CSR 0xbb7
	csrr x12, 0xbb7	// Read CSR
	li x31, -1
	csrrw x8, 0xbb7, x31	// Write all 1s to CSR
	csrrw x8, 0xbb7, x0	// Write all 0s to CSR
	csrrs x8, 0xbb7, x31	// Set all CSR bits
	csrrc x8, 0xbb7, x31	// Clear all CSR bits
	csrrw x8, 0xbb7, x12	// Restore CSR

// Testing CSR 0xbb8
	csrr x4, 0xbb8	// Read CSR
	li x28, -1
	csrrw x21, 0xbb8, x28	// Write all 1s to CSR
	csrrw x21, 0xbb8, x0	// Write all 0s to CSR
	csrrs x21, 0xbb8, x28	// Set all CSR bits
	csrrc x21, 0xbb8, x28	// Clear all CSR bits
	csrrw x21, 0xbb8, x4	// Restore CSR

// Testing CSR 0xbb9
	csrr x2, 0xbb9	// Read CSR
	li x13, -1
	csrrw x15, 0xbb9, x13	// Write all 1s to CSR
	csrrw x15, 0xbb9, x0	// Write all 0s to CSR
	csrrs x15, 0xbb9, x13	// Set all CSR bits
	csrrc x15, 0xbb9, x13	// Clear all CSR bits
	csrrw x15, 0xbb9, x2	// Restore CSR

// Testing CSR 0xbba
	csrr x26, 0xbba	// Read CSR
	li x13, -1
	csrrw x21, 0xbba, x13	// Write all 1s to CSR
	csrrw x21, 0xbba, x0	// Write all 0s to CSR
	csrrs x21, 0xbba, x13	// Set all CSR bits
	csrrc x21, 0xbba, x13	// Clear all CSR bits
	csrrw x21, 0xbba, x26	// Restore CSR

// Testing CSR 0xbbb
	csrr x28, 0xbbb	// Read CSR
	li x20, -1
	csrrw x27, 0xbbb, x20	// Write all 1s to CSR
	csrrw x27, 0xbbb, x0	// Write all 0s to CSR
	csrrs x27, 0xbbb, x20	// Set all CSR bits
	csrrc x27, 0xbbb, x20	// Clear all CSR bits
	csrrw x27, 0xbbb, x28	// Restore CSR

// Testing CSR 0xbbc
	csrr x2, 0xbbc	// Read CSR
	li x11, -1
	csrrw x1, 0xbbc, x11	// Write all 1s to CSR
	csrrw x1, 0xbbc, x0	// Write all 0s to CSR
	csrrs x1, 0xbbc, x11	// Set all CSR bits
	csrrc x1, 0xbbc, x11	// Clear all CSR bits
	csrrw x1, 0xbbc, x2	// Restore CSR

// Testing CSR 0xbbd
	csrr x22, 0xbbd	// Read CSR
	li x1, -1
	csrrw x15, 0xbbd, x1	// Write all 1s to CSR
	csrrw x15, 0xbbd, x0	// Write all 0s to CSR
	csrrs x15, 0xbbd, x1	// Set all CSR bits
	csrrc x15, 0xbbd, x1	// Clear all CSR bits
	csrrw x15, 0xbbd, x22	// Restore CSR

// Testing CSR 0xbbe
	csrr x31, 0xbbe	// Read CSR
	li x9, -1
	csrrw x7, 0xbbe, x9	// Write all 1s to CSR
	csrrw x7, 0xbbe, x0	// Write all 0s to CSR
	csrrs x7, 0xbbe, x9	// Set all CSR bits
	csrrc x7, 0xbbe, x9	// Clear all CSR bits
	csrrw x7, 0xbbe, x31	// Restore CSR

// Testing CSR 0xbbf
	csrr x23, 0xbbf	// Read CSR
	li x6, -1
	csrrw x15, 0xbbf, x6	// Write all 1s to CSR
	csrrw x15, 0xbbf, x0	// Write all 0s to CSR
	csrrs x15, 0xbbf, x6	// Set all CSR bits
	csrrc x15, 0xbbf, x6	// Clear all CSR bits
	csrrw x15, 0xbbf, x23	// Restore CSR

// Testing CSR 0xc00
	csrr x4, 0xc00	// Read CSR
	li x23, -1
	csrrw x25, 0xc00, x23	// Write all 1s to CSR
	csrrw x25, 0xc00, x0	// Write all 0s to CSR
	csrrs x25, 0xc00, x23	// Set all CSR bits
	csrrc x25, 0xc00, x23	// Clear all CSR bits
	csrrw x25, 0xc00, x4	// Restore CSR

// Testing CSR 0xc01
	csrr x24, 0xc01	// Read CSR
	li x13, -1
	csrrw x18, 0xc01, x13	// Write all 1s to CSR
	csrrw x18, 0xc01, x0	// Write all 0s to CSR
	csrrs x18, 0xc01, x13	// Set all CSR bits
	csrrc x18, 0xc01, x13	// Clear all CSR bits
	csrrw x18, 0xc01, x24	// Restore CSR

// Testing CSR 0xc02
	csrr x2, 0xc02	// Read CSR
	li x9, -1
	csrrw x4, 0xc02, x9	// Write all 1s to CSR
	csrrw x4, 0xc02, x0	// Write all 0s to CSR
	csrrs x4, 0xc02, x9	// Set all CSR bits
	csrrc x4, 0xc02, x9	// Clear all CSR bits
	csrrw x4, 0xc02, x2	// Restore CSR

// Testing CSR 0xc03
	csrr x5, 0xc03	// Read CSR
	li x2, -1
	csrrw x1, 0xc03, x2	// Write all 1s to CSR
	csrrw x1, 0xc03, x0	// Write all 0s to CSR
	csrrs x1, 0xc03, x2	// Set all CSR bits
	csrrc x1, 0xc03, x2	// Clear all CSR bits
	csrrw x1, 0xc03, x5	// Restore CSR

// Testing CSR 0xc04
	csrr x9, 0xc04	// Read CSR
	li x14, -1
	csrrw x17, 0xc04, x14	// Write all 1s to CSR
	csrrw x17, 0xc04, x0	// Write all 0s to CSR
	csrrs x17, 0xc04, x14	// Set all CSR bits
	csrrc x17, 0xc04, x14	// Clear all CSR bits
	csrrw x17, 0xc04, x9	// Restore CSR

// Testing CSR 0xc05
	csrr x22, 0xc05	// Read CSR
	li x25, -1
	csrrw x27, 0xc05, x25	// Write all 1s to CSR
	csrrw x27, 0xc05, x0	// Write all 0s to CSR
	csrrs x27, 0xc05, x25	// Set all CSR bits
	csrrc x27, 0xc05, x25	// Clear all CSR bits
	csrrw x27, 0xc05, x22	// Restore CSR

// Testing CSR 0xc06
	csrr x19, 0xc06	// Read CSR
	li x10, -1
	csrrw x26, 0xc06, x10	// Write all 1s to CSR
	csrrw x26, 0xc06, x0	// Write all 0s to CSR
	csrrs x26, 0xc06, x10	// Set all CSR bits
	csrrc x26, 0xc06, x10	// Clear all CSR bits
	csrrw x26, 0xc06, x19	// Restore CSR

// Testing CSR 0xc07
	csrr x3, 0xc07	// Read CSR
	li x11, -1
	csrrw x16, 0xc07, x11	// Write all 1s to CSR
	csrrw x16, 0xc07, x0	// Write all 0s to CSR
	csrrs x16, 0xc07, x11	// Set all CSR bits
	csrrc x16, 0xc07, x11	// Clear all CSR bits
	csrrw x16, 0xc07, x3	// Restore CSR

// Testing CSR 0xc08
	csrr x19, 0xc08	// Read CSR
	li x11, -1
	csrrw x9, 0xc08, x11	// Write all 1s to CSR
	csrrw x9, 0xc08, x0	// Write all 0s to CSR
	csrrs x9, 0xc08, x11	// Set all CSR bits
	csrrc x9, 0xc08, x11	// Clear all CSR bits
	csrrw x9, 0xc08, x19	// Restore CSR

// Testing CSR 0xc09
	csrr x11, 0xc09	// Read CSR
	li x8, -1
	csrrw x2, 0xc09, x8	// Write all 1s to CSR
	csrrw x2, 0xc09, x0	// Write all 0s to CSR
	csrrs x2, 0xc09, x8	// Set all CSR bits
	csrrc x2, 0xc09, x8	// Clear all CSR bits
	csrrw x2, 0xc09, x11	// Restore CSR

// Testing CSR 0xc0a
	csrr x24, 0xc0a	// Read CSR
	li x17, -1
	csrrw x8, 0xc0a, x17	// Write all 1s to CSR
	csrrw x8, 0xc0a, x0	// Write all 0s to CSR
	csrrs x8, 0xc0a, x17	// Set all CSR bits
	csrrc x8, 0xc0a, x17	// Clear all CSR bits
	csrrw x8, 0xc0a, x24	// Restore CSR

// Testing CSR 0xc0b
	csrr x15, 0xc0b	// Read CSR
	li x17, -1
	csrrw x23, 0xc0b, x17	// Write all 1s to CSR
	csrrw x23, 0xc0b, x0	// Write all 0s to CSR
	csrrs x23, 0xc0b, x17	// Set all CSR bits
	csrrc x23, 0xc0b, x17	// Clear all CSR bits
	csrrw x23, 0xc0b, x15	// Restore CSR

// Testing CSR 0xc0c
	csrr x1, 0xc0c	// Read CSR
	li x22, -1
	csrrw x27, 0xc0c, x22	// Write all 1s to CSR
	csrrw x27, 0xc0c, x0	// Write all 0s to CSR
	csrrs x27, 0xc0c, x22	// Set all CSR bits
	csrrc x27, 0xc0c, x22	// Clear all CSR bits
	csrrw x27, 0xc0c, x1	// Restore CSR

// Testing CSR 0xc0d
	csrr x13, 0xc0d	// Read CSR
	li x11, -1
	csrrw x2, 0xc0d, x11	// Write all 1s to CSR
	csrrw x2, 0xc0d, x0	// Write all 0s to CSR
	csrrs x2, 0xc0d, x11	// Set all CSR bits
	csrrc x2, 0xc0d, x11	// Clear all CSR bits
	csrrw x2, 0xc0d, x13	// Restore CSR

// Testing CSR 0xc0e
	csrr x17, 0xc0e	// Read CSR
	li x29, -1
	csrrw x7, 0xc0e, x29	// Write all 1s to CSR
	csrrw x7, 0xc0e, x0	// Write all 0s to CSR
	csrrs x7, 0xc0e, x29	// Set all CSR bits
	csrrc x7, 0xc0e, x29	// Clear all CSR bits
	csrrw x7, 0xc0e, x17	// Restore CSR

// Testing CSR 0xc0f
	csrr x23, 0xc0f	// Read CSR
	li x24, -1
	csrrw x4, 0xc0f, x24	// Write all 1s to CSR
	csrrw x4, 0xc0f, x0	// Write all 0s to CSR
	csrrs x4, 0xc0f, x24	// Set all CSR bits
	csrrc x4, 0xc0f, x24	// Clear all CSR bits
	csrrw x4, 0xc0f, x23	// Restore CSR

// Testing CSR 0xc10
	csrr x18, 0xc10	// Read CSR
	li x8, -1
	csrrw x1, 0xc10, x8	// Write all 1s to CSR
	csrrw x1, 0xc10, x0	// Write all 0s to CSR
	csrrs x1, 0xc10, x8	// Set all CSR bits
	csrrc x1, 0xc10, x8	// Clear all CSR bits
	csrrw x1, 0xc10, x18	// Restore CSR

// Testing CSR 0xc11
	csrr x27, 0xc11	// Read CSR
	li x24, -1
	csrrw x18, 0xc11, x24	// Write all 1s to CSR
	csrrw x18, 0xc11, x0	// Write all 0s to CSR
	csrrs x18, 0xc11, x24	// Set all CSR bits
	csrrc x18, 0xc11, x24	// Clear all CSR bits
	csrrw x18, 0xc11, x27	// Restore CSR

// Testing CSR 0xc12
	csrr x11, 0xc12	// Read CSR
	li x5, -1
	csrrw x26, 0xc12, x5	// Write all 1s to CSR
	csrrw x26, 0xc12, x0	// Write all 0s to CSR
	csrrs x26, 0xc12, x5	// Set all CSR bits
	csrrc x26, 0xc12, x5	// Clear all CSR bits
	csrrw x26, 0xc12, x11	// Restore CSR

// Testing CSR 0xc13
	csrr x23, 0xc13	// Read CSR
	li x8, -1
	csrrw x19, 0xc13, x8	// Write all 1s to CSR
	csrrw x19, 0xc13, x0	// Write all 0s to CSR
	csrrs x19, 0xc13, x8	// Set all CSR bits
	csrrc x19, 0xc13, x8	// Clear all CSR bits
	csrrw x19, 0xc13, x23	// Restore CSR

// Testing CSR 0xc14
	csrr x16, 0xc14	// Read CSR
	li x18, -1
	csrrw x14, 0xc14, x18	// Write all 1s to CSR
	csrrw x14, 0xc14, x0	// Write all 0s to CSR
	csrrs x14, 0xc14, x18	// Set all CSR bits
	csrrc x14, 0xc14, x18	// Clear all CSR bits
	csrrw x14, 0xc14, x16	// Restore CSR

// Testing CSR 0xc15
	csrr x6, 0xc15	// Read CSR
	li x15, -1
	csrrw x9, 0xc15, x15	// Write all 1s to CSR
	csrrw x9, 0xc15, x0	// Write all 0s to CSR
	csrrs x9, 0xc15, x15	// Set all CSR bits
	csrrc x9, 0xc15, x15	// Clear all CSR bits
	csrrw x9, 0xc15, x6	// Restore CSR

// Testing CSR 0xc16
	csrr x6, 0xc16	// Read CSR
	li x2, -1
	csrrw x12, 0xc16, x2	// Write all 1s to CSR
	csrrw x12, 0xc16, x0	// Write all 0s to CSR
	csrrs x12, 0xc16, x2	// Set all CSR bits
	csrrc x12, 0xc16, x2	// Clear all CSR bits
	csrrw x12, 0xc16, x6	// Restore CSR

// Testing CSR 0xc17
	csrr x31, 0xc17	// Read CSR
	li x22, -1
	csrrw x10, 0xc17, x22	// Write all 1s to CSR
	csrrw x10, 0xc17, x0	// Write all 0s to CSR
	csrrs x10, 0xc17, x22	// Set all CSR bits
	csrrc x10, 0xc17, x22	// Clear all CSR bits
	csrrw x10, 0xc17, x31	// Restore CSR

// Testing CSR 0xc18
	csrr x28, 0xc18	// Read CSR
	li x11, -1
	csrrw x24, 0xc18, x11	// Write all 1s to CSR
	csrrw x24, 0xc18, x0	// Write all 0s to CSR
	csrrs x24, 0xc18, x11	// Set all CSR bits
	csrrc x24, 0xc18, x11	// Clear all CSR bits
	csrrw x24, 0xc18, x28	// Restore CSR

// Testing CSR 0xc19
	csrr x21, 0xc19	// Read CSR
	li x9, -1
	csrrw x8, 0xc19, x9	// Write all 1s to CSR
	csrrw x8, 0xc19, x0	// Write all 0s to CSR
	csrrs x8, 0xc19, x9	// Set all CSR bits
	csrrc x8, 0xc19, x9	// Clear all CSR bits
	csrrw x8, 0xc19, x21	// Restore CSR

// Testing CSR 0xc1a
	csrr x13, 0xc1a	// Read CSR
	li x1, -1
	csrrw x2, 0xc1a, x1	// Write all 1s to CSR
	csrrw x2, 0xc1a, x0	// Write all 0s to CSR
	csrrs x2, 0xc1a, x1	// Set all CSR bits
	csrrc x2, 0xc1a, x1	// Clear all CSR bits
	csrrw x2, 0xc1a, x13	// Restore CSR

// Testing CSR 0xc1b
	csrr x28, 0xc1b	// Read CSR
	li x29, -1
	csrrw x25, 0xc1b, x29	// Write all 1s to CSR
	csrrw x25, 0xc1b, x0	// Write all 0s to CSR
	csrrs x25, 0xc1b, x29	// Set all CSR bits
	csrrc x25, 0xc1b, x29	// Clear all CSR bits
	csrrw x25, 0xc1b, x28	// Restore CSR

// Testing CSR 0xc1c
	csrr x22, 0xc1c	// Read CSR
	li x31, -1
	csrrw x4, 0xc1c, x31	// Write all 1s to CSR
	csrrw x4, 0xc1c, x0	// Write all 0s to CSR
	csrrs x4, 0xc1c, x31	// Set all CSR bits
	csrrc x4, 0xc1c, x31	// Clear all CSR bits
	csrrw x4, 0xc1c, x22	// Restore CSR

// Testing CSR 0xc1d
	csrr x5, 0xc1d	// Read CSR
	li x20, -1
	csrrw x11, 0xc1d, x20	// Write all 1s to CSR
	csrrw x11, 0xc1d, x0	// Write all 0s to CSR
	csrrs x11, 0xc1d, x20	// Set all CSR bits
	csrrc x11, 0xc1d, x20	// Clear all CSR bits
	csrrw x11, 0xc1d, x5	// Restore CSR

// Testing CSR 0xc1e
	csrr x29, 0xc1e	// Read CSR
	li x19, -1
	csrrw x6, 0xc1e, x19	// Write all 1s to CSR
	csrrw x6, 0xc1e, x0	// Write all 0s to CSR
	csrrs x6, 0xc1e, x19	// Set all CSR bits
	csrrc x6, 0xc1e, x19	// Clear all CSR bits
	csrrw x6, 0xc1e, x29	// Restore CSR

// Testing CSR 0xc1f
	csrr x1, 0xc1f	// Read CSR
	li x2, -1
	csrrw x26, 0xc1f, x2	// Write all 1s to CSR
	csrrw x26, 0xc1f, x0	// Write all 0s to CSR
	csrrs x26, 0xc1f, x2	// Set all CSR bits
	csrrc x26, 0xc1f, x2	// Clear all CSR bits
	csrrw x26, 0xc1f, x1	// Restore CSR

// Testing CSR 0xc20
	csrr x18, 0xc20	// Read CSR
	li x30, -1
	csrrw x6, 0xc20, x30	// Write all 1s to CSR
	csrrw x6, 0xc20, x0	// Write all 0s to CSR
	csrrs x6, 0xc20, x30	// Set all CSR bits
	csrrc x6, 0xc20, x30	// Clear all CSR bits
	csrrw x6, 0xc20, x18	// Restore CSR

// Testing CSR 0xc21
	csrr x31, 0xc21	// Read CSR
	li x19, -1
	csrrw x5, 0xc21, x19	// Write all 1s to CSR
	csrrw x5, 0xc21, x0	// Write all 0s to CSR
	csrrs x5, 0xc21, x19	// Set all CSR bits
	csrrc x5, 0xc21, x19	// Clear all CSR bits
	csrrw x5, 0xc21, x31	// Restore CSR

// Testing CSR 0xc22
	csrr x3, 0xc22	// Read CSR
	li x5, -1
	csrrw x18, 0xc22, x5	// Write all 1s to CSR
	csrrw x18, 0xc22, x0	// Write all 0s to CSR
	csrrs x18, 0xc22, x5	// Set all CSR bits
	csrrc x18, 0xc22, x5	// Clear all CSR bits
	csrrw x18, 0xc22, x3	// Restore CSR

// Testing CSR 0xc23
	csrr x6, 0xc23	// Read CSR
	li x14, -1
	csrrw x13, 0xc23, x14	// Write all 1s to CSR
	csrrw x13, 0xc23, x0	// Write all 0s to CSR
	csrrs x13, 0xc23, x14	// Set all CSR bits
	csrrc x13, 0xc23, x14	// Clear all CSR bits
	csrrw x13, 0xc23, x6	// Restore CSR

// Testing CSR 0xc24
	csrr x1, 0xc24	// Read CSR
	li x12, -1
	csrrw x10, 0xc24, x12	// Write all 1s to CSR
	csrrw x10, 0xc24, x0	// Write all 0s to CSR
	csrrs x10, 0xc24, x12	// Set all CSR bits
	csrrc x10, 0xc24, x12	// Clear all CSR bits
	csrrw x10, 0xc24, x1	// Restore CSR

// Testing CSR 0xc25
	csrr x12, 0xc25	// Read CSR
	li x25, -1
	csrrw x19, 0xc25, x25	// Write all 1s to CSR
	csrrw x19, 0xc25, x0	// Write all 0s to CSR
	csrrs x19, 0xc25, x25	// Set all CSR bits
	csrrc x19, 0xc25, x25	// Clear all CSR bits
	csrrw x19, 0xc25, x12	// Restore CSR

// Testing CSR 0xc26
	csrr x25, 0xc26	// Read CSR
	li x1, -1
	csrrw x8, 0xc26, x1	// Write all 1s to CSR
	csrrw x8, 0xc26, x0	// Write all 0s to CSR
	csrrs x8, 0xc26, x1	// Set all CSR bits
	csrrc x8, 0xc26, x1	// Clear all CSR bits
	csrrw x8, 0xc26, x25	// Restore CSR

// Testing CSR 0xc27
	csrr x19, 0xc27	// Read CSR
	li x30, -1
	csrrw x1, 0xc27, x30	// Write all 1s to CSR
	csrrw x1, 0xc27, x0	// Write all 0s to CSR
	csrrs x1, 0xc27, x30	// Set all CSR bits
	csrrc x1, 0xc27, x30	// Clear all CSR bits
	csrrw x1, 0xc27, x19	// Restore CSR

// Testing CSR 0xc28
	csrr x12, 0xc28	// Read CSR
	li x25, -1
	csrrw x11, 0xc28, x25	// Write all 1s to CSR
	csrrw x11, 0xc28, x0	// Write all 0s to CSR
	csrrs x11, 0xc28, x25	// Set all CSR bits
	csrrc x11, 0xc28, x25	// Clear all CSR bits
	csrrw x11, 0xc28, x12	// Restore CSR

// Testing CSR 0xc29
	csrr x3, 0xc29	// Read CSR
	li x19, -1
	csrrw x22, 0xc29, x19	// Write all 1s to CSR
	csrrw x22, 0xc29, x0	// Write all 0s to CSR
	csrrs x22, 0xc29, x19	// Set all CSR bits
	csrrc x22, 0xc29, x19	// Clear all CSR bits
	csrrw x22, 0xc29, x3	// Restore CSR

// Testing CSR 0xc2a
	csrr x22, 0xc2a	// Read CSR
	li x12, -1
	csrrw x3, 0xc2a, x12	// Write all 1s to CSR
	csrrw x3, 0xc2a, x0	// Write all 0s to CSR
	csrrs x3, 0xc2a, x12	// Set all CSR bits
	csrrc x3, 0xc2a, x12	// Clear all CSR bits
	csrrw x3, 0xc2a, x22	// Restore CSR

// Testing CSR 0xc2b
	csrr x14, 0xc2b	// Read CSR
	li x7, -1
	csrrw x12, 0xc2b, x7	// Write all 1s to CSR
	csrrw x12, 0xc2b, x0	// Write all 0s to CSR
	csrrs x12, 0xc2b, x7	// Set all CSR bits
	csrrc x12, 0xc2b, x7	// Clear all CSR bits
	csrrw x12, 0xc2b, x14	// Restore CSR

// Testing CSR 0xc2c
	csrr x31, 0xc2c	// Read CSR
	li x9, -1
	csrrw x19, 0xc2c, x9	// Write all 1s to CSR
	csrrw x19, 0xc2c, x0	// Write all 0s to CSR
	csrrs x19, 0xc2c, x9	// Set all CSR bits
	csrrc x19, 0xc2c, x9	// Clear all CSR bits
	csrrw x19, 0xc2c, x31	// Restore CSR

// Testing CSR 0xc2d
	csrr x26, 0xc2d	// Read CSR
	li x5, -1
	csrrw x7, 0xc2d, x5	// Write all 1s to CSR
	csrrw x7, 0xc2d, x0	// Write all 0s to CSR
	csrrs x7, 0xc2d, x5	// Set all CSR bits
	csrrc x7, 0xc2d, x5	// Clear all CSR bits
	csrrw x7, 0xc2d, x26	// Restore CSR

// Testing CSR 0xc2e
	csrr x27, 0xc2e	// Read CSR
	li x17, -1
	csrrw x6, 0xc2e, x17	// Write all 1s to CSR
	csrrw x6, 0xc2e, x0	// Write all 0s to CSR
	csrrs x6, 0xc2e, x17	// Set all CSR bits
	csrrc x6, 0xc2e, x17	// Clear all CSR bits
	csrrw x6, 0xc2e, x27	// Restore CSR

// Testing CSR 0xc2f
	csrr x20, 0xc2f	// Read CSR
	li x5, -1
	csrrw x31, 0xc2f, x5	// Write all 1s to CSR
	csrrw x31, 0xc2f, x0	// Write all 0s to CSR
	csrrs x31, 0xc2f, x5	// Set all CSR bits
	csrrc x31, 0xc2f, x5	// Clear all CSR bits
	csrrw x31, 0xc2f, x20	// Restore CSR

// Testing CSR 0xc30
	csrr x27, 0xc30	// Read CSR
	li x17, -1
	csrrw x26, 0xc30, x17	// Write all 1s to CSR
	csrrw x26, 0xc30, x0	// Write all 0s to CSR
	csrrs x26, 0xc30, x17	// Set all CSR bits
	csrrc x26, 0xc30, x17	// Clear all CSR bits
	csrrw x26, 0xc30, x27	// Restore CSR

// Testing CSR 0xc31
	csrr x30, 0xc31	// Read CSR
	li x4, -1
	csrrw x11, 0xc31, x4	// Write all 1s to CSR
	csrrw x11, 0xc31, x0	// Write all 0s to CSR
	csrrs x11, 0xc31, x4	// Set all CSR bits
	csrrc x11, 0xc31, x4	// Clear all CSR bits
	csrrw x11, 0xc31, x30	// Restore CSR

// Testing CSR 0xc32
	csrr x19, 0xc32	// Read CSR
	li x21, -1
	csrrw x18, 0xc32, x21	// Write all 1s to CSR
	csrrw x18, 0xc32, x0	// Write all 0s to CSR
	csrrs x18, 0xc32, x21	// Set all CSR bits
	csrrc x18, 0xc32, x21	// Clear all CSR bits
	csrrw x18, 0xc32, x19	// Restore CSR

// Testing CSR 0xc33
	csrr x20, 0xc33	// Read CSR
	li x4, -1
	csrrw x6, 0xc33, x4	// Write all 1s to CSR
	csrrw x6, 0xc33, x0	// Write all 0s to CSR
	csrrs x6, 0xc33, x4	// Set all CSR bits
	csrrc x6, 0xc33, x4	// Clear all CSR bits
	csrrw x6, 0xc33, x20	// Restore CSR

// Testing CSR 0xc34
	csrr x12, 0xc34	// Read CSR
	li x9, -1
	csrrw x15, 0xc34, x9	// Write all 1s to CSR
	csrrw x15, 0xc34, x0	// Write all 0s to CSR
	csrrs x15, 0xc34, x9	// Set all CSR bits
	csrrc x15, 0xc34, x9	// Clear all CSR bits
	csrrw x15, 0xc34, x12	// Restore CSR

// Testing CSR 0xc35
	csrr x9, 0xc35	// Read CSR
	li x15, -1
	csrrw x6, 0xc35, x15	// Write all 1s to CSR
	csrrw x6, 0xc35, x0	// Write all 0s to CSR
	csrrs x6, 0xc35, x15	// Set all CSR bits
	csrrc x6, 0xc35, x15	// Clear all CSR bits
	csrrw x6, 0xc35, x9	// Restore CSR

// Testing CSR 0xc36
	csrr x13, 0xc36	// Read CSR
	li x14, -1
	csrrw x12, 0xc36, x14	// Write all 1s to CSR
	csrrw x12, 0xc36, x0	// Write all 0s to CSR
	csrrs x12, 0xc36, x14	// Set all CSR bits
	csrrc x12, 0xc36, x14	// Clear all CSR bits
	csrrw x12, 0xc36, x13	// Restore CSR

// Testing CSR 0xc37
	csrr x4, 0xc37	// Read CSR
	li x11, -1
	csrrw x5, 0xc37, x11	// Write all 1s to CSR
	csrrw x5, 0xc37, x0	// Write all 0s to CSR
	csrrs x5, 0xc37, x11	// Set all CSR bits
	csrrc x5, 0xc37, x11	// Clear all CSR bits
	csrrw x5, 0xc37, x4	// Restore CSR

// Testing CSR 0xc38
	csrr x9, 0xc38	// Read CSR
	li x28, -1
	csrrw x26, 0xc38, x28	// Write all 1s to CSR
	csrrw x26, 0xc38, x0	// Write all 0s to CSR
	csrrs x26, 0xc38, x28	// Set all CSR bits
	csrrc x26, 0xc38, x28	// Clear all CSR bits
	csrrw x26, 0xc38, x9	// Restore CSR

// Testing CSR 0xc39
	csrr x6, 0xc39	// Read CSR
	li x11, -1
	csrrw x15, 0xc39, x11	// Write all 1s to CSR
	csrrw x15, 0xc39, x0	// Write all 0s to CSR
	csrrs x15, 0xc39, x11	// Set all CSR bits
	csrrc x15, 0xc39, x11	// Clear all CSR bits
	csrrw x15, 0xc39, x6	// Restore CSR

// Testing CSR 0xc3a
	csrr x25, 0xc3a	// Read CSR
	li x3, -1
	csrrw x12, 0xc3a, x3	// Write all 1s to CSR
	csrrw x12, 0xc3a, x0	// Write all 0s to CSR
	csrrs x12, 0xc3a, x3	// Set all CSR bits
	csrrc x12, 0xc3a, x3	// Clear all CSR bits
	csrrw x12, 0xc3a, x25	// Restore CSR

// Testing CSR 0xc3b
	csrr x26, 0xc3b	// Read CSR
	li x12, -1
	csrrw x9, 0xc3b, x12	// Write all 1s to CSR
	csrrw x9, 0xc3b, x0	// Write all 0s to CSR
	csrrs x9, 0xc3b, x12	// Set all CSR bits
	csrrc x9, 0xc3b, x12	// Clear all CSR bits
	csrrw x9, 0xc3b, x26	// Restore CSR

// Testing CSR 0xc3c
	csrr x28, 0xc3c	// Read CSR
	li x22, -1
	csrrw x12, 0xc3c, x22	// Write all 1s to CSR
	csrrw x12, 0xc3c, x0	// Write all 0s to CSR
	csrrs x12, 0xc3c, x22	// Set all CSR bits
	csrrc x12, 0xc3c, x22	// Clear all CSR bits
	csrrw x12, 0xc3c, x28	// Restore CSR

// Testing CSR 0xc3d
	csrr x27, 0xc3d	// Read CSR
	li x5, -1
	csrrw x14, 0xc3d, x5	// Write all 1s to CSR
	csrrw x14, 0xc3d, x0	// Write all 0s to CSR
	csrrs x14, 0xc3d, x5	// Set all CSR bits
	csrrc x14, 0xc3d, x5	// Clear all CSR bits
	csrrw x14, 0xc3d, x27	// Restore CSR

// Testing CSR 0xc3e
	csrr x31, 0xc3e	// Read CSR
	li x7, -1
	csrrw x6, 0xc3e, x7	// Write all 1s to CSR
	csrrw x6, 0xc3e, x0	// Write all 0s to CSR
	csrrs x6, 0xc3e, x7	// Set all CSR bits
	csrrc x6, 0xc3e, x7	// Clear all CSR bits
	csrrw x6, 0xc3e, x31	// Restore CSR

// Testing CSR 0xc3f
	csrr x19, 0xc3f	// Read CSR
	li x15, -1
	csrrw x20, 0xc3f, x15	// Write all 1s to CSR
	csrrw x20, 0xc3f, x0	// Write all 0s to CSR
	csrrs x20, 0xc3f, x15	// Set all CSR bits
	csrrc x20, 0xc3f, x15	// Clear all CSR bits
	csrrw x20, 0xc3f, x19	// Restore CSR

// Testing CSR 0xc40
	csrr x14, 0xc40	// Read CSR
	li x22, -1
	csrrw x26, 0xc40, x22	// Write all 1s to CSR
	csrrw x26, 0xc40, x0	// Write all 0s to CSR
	csrrs x26, 0xc40, x22	// Set all CSR bits
	csrrc x26, 0xc40, x22	// Clear all CSR bits
	csrrw x26, 0xc40, x14	// Restore CSR

// Testing CSR 0xc41
	csrr x19, 0xc41	// Read CSR
	li x23, -1
	csrrw x8, 0xc41, x23	// Write all 1s to CSR
	csrrw x8, 0xc41, x0	// Write all 0s to CSR
	csrrs x8, 0xc41, x23	// Set all CSR bits
	csrrc x8, 0xc41, x23	// Clear all CSR bits
	csrrw x8, 0xc41, x19	// Restore CSR

// Testing CSR 0xc42
	csrr x25, 0xc42	// Read CSR
	li x1, -1
	csrrw x12, 0xc42, x1	// Write all 1s to CSR
	csrrw x12, 0xc42, x0	// Write all 0s to CSR
	csrrs x12, 0xc42, x1	// Set all CSR bits
	csrrc x12, 0xc42, x1	// Clear all CSR bits
	csrrw x12, 0xc42, x25	// Restore CSR

// Testing CSR 0xc43
	csrr x5, 0xc43	// Read CSR
	li x1, -1
	csrrw x15, 0xc43, x1	// Write all 1s to CSR
	csrrw x15, 0xc43, x0	// Write all 0s to CSR
	csrrs x15, 0xc43, x1	// Set all CSR bits
	csrrc x15, 0xc43, x1	// Clear all CSR bits
	csrrw x15, 0xc43, x5	// Restore CSR

// Testing CSR 0xc44
	csrr x14, 0xc44	// Read CSR
	li x30, -1
	csrrw x19, 0xc44, x30	// Write all 1s to CSR
	csrrw x19, 0xc44, x0	// Write all 0s to CSR
	csrrs x19, 0xc44, x30	// Set all CSR bits
	csrrc x19, 0xc44, x30	// Clear all CSR bits
	csrrw x19, 0xc44, x14	// Restore CSR

// Testing CSR 0xc45
	csrr x26, 0xc45	// Read CSR
	li x4, -1
	csrrw x27, 0xc45, x4	// Write all 1s to CSR
	csrrw x27, 0xc45, x0	// Write all 0s to CSR
	csrrs x27, 0xc45, x4	// Set all CSR bits
	csrrc x27, 0xc45, x4	// Clear all CSR bits
	csrrw x27, 0xc45, x26	// Restore CSR

// Testing CSR 0xc46
	csrr x2, 0xc46	// Read CSR
	li x13, -1
	csrrw x10, 0xc46, x13	// Write all 1s to CSR
	csrrw x10, 0xc46, x0	// Write all 0s to CSR
	csrrs x10, 0xc46, x13	// Set all CSR bits
	csrrc x10, 0xc46, x13	// Clear all CSR bits
	csrrw x10, 0xc46, x2	// Restore CSR

// Testing CSR 0xc47
	csrr x20, 0xc47	// Read CSR
	li x23, -1
	csrrw x7, 0xc47, x23	// Write all 1s to CSR
	csrrw x7, 0xc47, x0	// Write all 0s to CSR
	csrrs x7, 0xc47, x23	// Set all CSR bits
	csrrc x7, 0xc47, x23	// Clear all CSR bits
	csrrw x7, 0xc47, x20	// Restore CSR

// Testing CSR 0xc48
	csrr x14, 0xc48	// Read CSR
	li x1, -1
	csrrw x28, 0xc48, x1	// Write all 1s to CSR
	csrrw x28, 0xc48, x0	// Write all 0s to CSR
	csrrs x28, 0xc48, x1	// Set all CSR bits
	csrrc x28, 0xc48, x1	// Clear all CSR bits
	csrrw x28, 0xc48, x14	// Restore CSR

// Testing CSR 0xc49
	csrr x23, 0xc49	// Read CSR
	li x20, -1
	csrrw x8, 0xc49, x20	// Write all 1s to CSR
	csrrw x8, 0xc49, x0	// Write all 0s to CSR
	csrrs x8, 0xc49, x20	// Set all CSR bits
	csrrc x8, 0xc49, x20	// Clear all CSR bits
	csrrw x8, 0xc49, x23	// Restore CSR

// Testing CSR 0xc4a
	csrr x13, 0xc4a	// Read CSR
	li x20, -1
	csrrw x31, 0xc4a, x20	// Write all 1s to CSR
	csrrw x31, 0xc4a, x0	// Write all 0s to CSR
	csrrs x31, 0xc4a, x20	// Set all CSR bits
	csrrc x31, 0xc4a, x20	// Clear all CSR bits
	csrrw x31, 0xc4a, x13	// Restore CSR

// Testing CSR 0xc4b
	csrr x16, 0xc4b	// Read CSR
	li x27, -1
	csrrw x31, 0xc4b, x27	// Write all 1s to CSR
	csrrw x31, 0xc4b, x0	// Write all 0s to CSR
	csrrs x31, 0xc4b, x27	// Set all CSR bits
	csrrc x31, 0xc4b, x27	// Clear all CSR bits
	csrrw x31, 0xc4b, x16	// Restore CSR

// Testing CSR 0xc4c
	csrr x16, 0xc4c	// Read CSR
	li x20, -1
	csrrw x14, 0xc4c, x20	// Write all 1s to CSR
	csrrw x14, 0xc4c, x0	// Write all 0s to CSR
	csrrs x14, 0xc4c, x20	// Set all CSR bits
	csrrc x14, 0xc4c, x20	// Clear all CSR bits
	csrrw x14, 0xc4c, x16	// Restore CSR

// Testing CSR 0xc4d
	csrr x13, 0xc4d	// Read CSR
	li x30, -1
	csrrw x2, 0xc4d, x30	// Write all 1s to CSR
	csrrw x2, 0xc4d, x0	// Write all 0s to CSR
	csrrs x2, 0xc4d, x30	// Set all CSR bits
	csrrc x2, 0xc4d, x30	// Clear all CSR bits
	csrrw x2, 0xc4d, x13	// Restore CSR

// Testing CSR 0xc4e
	csrr x10, 0xc4e	// Read CSR
	li x6, -1
	csrrw x28, 0xc4e, x6	// Write all 1s to CSR
	csrrw x28, 0xc4e, x0	// Write all 0s to CSR
	csrrs x28, 0xc4e, x6	// Set all CSR bits
	csrrc x28, 0xc4e, x6	// Clear all CSR bits
	csrrw x28, 0xc4e, x10	// Restore CSR

// Testing CSR 0xc4f
	csrr x27, 0xc4f	// Read CSR
	li x11, -1
	csrrw x4, 0xc4f, x11	// Write all 1s to CSR
	csrrw x4, 0xc4f, x0	// Write all 0s to CSR
	csrrs x4, 0xc4f, x11	// Set all CSR bits
	csrrc x4, 0xc4f, x11	// Clear all CSR bits
	csrrw x4, 0xc4f, x27	// Restore CSR

// Testing CSR 0xc50
	csrr x17, 0xc50	// Read CSR
	li x20, -1
	csrrw x15, 0xc50, x20	// Write all 1s to CSR
	csrrw x15, 0xc50, x0	// Write all 0s to CSR
	csrrs x15, 0xc50, x20	// Set all CSR bits
	csrrc x15, 0xc50, x20	// Clear all CSR bits
	csrrw x15, 0xc50, x17	// Restore CSR

// Testing CSR 0xc51
	csrr x6, 0xc51	// Read CSR
	li x19, -1
	csrrw x28, 0xc51, x19	// Write all 1s to CSR
	csrrw x28, 0xc51, x0	// Write all 0s to CSR
	csrrs x28, 0xc51, x19	// Set all CSR bits
	csrrc x28, 0xc51, x19	// Clear all CSR bits
	csrrw x28, 0xc51, x6	// Restore CSR

// Testing CSR 0xc52
	csrr x13, 0xc52	// Read CSR
	li x8, -1
	csrrw x23, 0xc52, x8	// Write all 1s to CSR
	csrrw x23, 0xc52, x0	// Write all 0s to CSR
	csrrs x23, 0xc52, x8	// Set all CSR bits
	csrrc x23, 0xc52, x8	// Clear all CSR bits
	csrrw x23, 0xc52, x13	// Restore CSR

// Testing CSR 0xc53
	csrr x5, 0xc53	// Read CSR
	li x9, -1
	csrrw x1, 0xc53, x9	// Write all 1s to CSR
	csrrw x1, 0xc53, x0	// Write all 0s to CSR
	csrrs x1, 0xc53, x9	// Set all CSR bits
	csrrc x1, 0xc53, x9	// Clear all CSR bits
	csrrw x1, 0xc53, x5	// Restore CSR

// Testing CSR 0xc54
	csrr x31, 0xc54	// Read CSR
	li x29, -1
	csrrw x15, 0xc54, x29	// Write all 1s to CSR
	csrrw x15, 0xc54, x0	// Write all 0s to CSR
	csrrs x15, 0xc54, x29	// Set all CSR bits
	csrrc x15, 0xc54, x29	// Clear all CSR bits
	csrrw x15, 0xc54, x31	// Restore CSR

// Testing CSR 0xc55
	csrr x26, 0xc55	// Read CSR
	li x25, -1
	csrrw x11, 0xc55, x25	// Write all 1s to CSR
	csrrw x11, 0xc55, x0	// Write all 0s to CSR
	csrrs x11, 0xc55, x25	// Set all CSR bits
	csrrc x11, 0xc55, x25	// Clear all CSR bits
	csrrw x11, 0xc55, x26	// Restore CSR

// Testing CSR 0xc56
	csrr x16, 0xc56	// Read CSR
	li x28, -1
	csrrw x12, 0xc56, x28	// Write all 1s to CSR
	csrrw x12, 0xc56, x0	// Write all 0s to CSR
	csrrs x12, 0xc56, x28	// Set all CSR bits
	csrrc x12, 0xc56, x28	// Clear all CSR bits
	csrrw x12, 0xc56, x16	// Restore CSR

// Testing CSR 0xc57
	csrr x17, 0xc57	// Read CSR
	li x25, -1
	csrrw x8, 0xc57, x25	// Write all 1s to CSR
	csrrw x8, 0xc57, x0	// Write all 0s to CSR
	csrrs x8, 0xc57, x25	// Set all CSR bits
	csrrc x8, 0xc57, x25	// Clear all CSR bits
	csrrw x8, 0xc57, x17	// Restore CSR

// Testing CSR 0xc58
	csrr x10, 0xc58	// Read CSR
	li x19, -1
	csrrw x27, 0xc58, x19	// Write all 1s to CSR
	csrrw x27, 0xc58, x0	// Write all 0s to CSR
	csrrs x27, 0xc58, x19	// Set all CSR bits
	csrrc x27, 0xc58, x19	// Clear all CSR bits
	csrrw x27, 0xc58, x10	// Restore CSR

// Testing CSR 0xc59
	csrr x1, 0xc59	// Read CSR
	li x16, -1
	csrrw x23, 0xc59, x16	// Write all 1s to CSR
	csrrw x23, 0xc59, x0	// Write all 0s to CSR
	csrrs x23, 0xc59, x16	// Set all CSR bits
	csrrc x23, 0xc59, x16	// Clear all CSR bits
	csrrw x23, 0xc59, x1	// Restore CSR

// Testing CSR 0xc5a
	csrr x5, 0xc5a	// Read CSR
	li x9, -1
	csrrw x7, 0xc5a, x9	// Write all 1s to CSR
	csrrw x7, 0xc5a, x0	// Write all 0s to CSR
	csrrs x7, 0xc5a, x9	// Set all CSR bits
	csrrc x7, 0xc5a, x9	// Clear all CSR bits
	csrrw x7, 0xc5a, x5	// Restore CSR

// Testing CSR 0xc5b
	csrr x12, 0xc5b	// Read CSR
	li x1, -1
	csrrw x28, 0xc5b, x1	// Write all 1s to CSR
	csrrw x28, 0xc5b, x0	// Write all 0s to CSR
	csrrs x28, 0xc5b, x1	// Set all CSR bits
	csrrc x28, 0xc5b, x1	// Clear all CSR bits
	csrrw x28, 0xc5b, x12	// Restore CSR

// Testing CSR 0xc5c
	csrr x10, 0xc5c	// Read CSR
	li x20, -1
	csrrw x14, 0xc5c, x20	// Write all 1s to CSR
	csrrw x14, 0xc5c, x0	// Write all 0s to CSR
	csrrs x14, 0xc5c, x20	// Set all CSR bits
	csrrc x14, 0xc5c, x20	// Clear all CSR bits
	csrrw x14, 0xc5c, x10	// Restore CSR

// Testing CSR 0xc5d
	csrr x31, 0xc5d	// Read CSR
	li x24, -1
	csrrw x8, 0xc5d, x24	// Write all 1s to CSR
	csrrw x8, 0xc5d, x0	// Write all 0s to CSR
	csrrs x8, 0xc5d, x24	// Set all CSR bits
	csrrc x8, 0xc5d, x24	// Clear all CSR bits
	csrrw x8, 0xc5d, x31	// Restore CSR

// Testing CSR 0xc5e
	csrr x30, 0xc5e	// Read CSR
	li x1, -1
	csrrw x8, 0xc5e, x1	// Write all 1s to CSR
	csrrw x8, 0xc5e, x0	// Write all 0s to CSR
	csrrs x8, 0xc5e, x1	// Set all CSR bits
	csrrc x8, 0xc5e, x1	// Clear all CSR bits
	csrrw x8, 0xc5e, x30	// Restore CSR

// Testing CSR 0xc5f
	csrr x28, 0xc5f	// Read CSR
	li x26, -1
	csrrw x20, 0xc5f, x26	// Write all 1s to CSR
	csrrw x20, 0xc5f, x0	// Write all 0s to CSR
	csrrs x20, 0xc5f, x26	// Set all CSR bits
	csrrc x20, 0xc5f, x26	// Clear all CSR bits
	csrrw x20, 0xc5f, x28	// Restore CSR

// Testing CSR 0xc60
	csrr x13, 0xc60	// Read CSR
	li x5, -1
	csrrw x28, 0xc60, x5	// Write all 1s to CSR
	csrrw x28, 0xc60, x0	// Write all 0s to CSR
	csrrs x28, 0xc60, x5	// Set all CSR bits
	csrrc x28, 0xc60, x5	// Clear all CSR bits
	csrrw x28, 0xc60, x13	// Restore CSR

// Testing CSR 0xc61
	csrr x9, 0xc61	// Read CSR
	li x24, -1
	csrrw x31, 0xc61, x24	// Write all 1s to CSR
	csrrw x31, 0xc61, x0	// Write all 0s to CSR
	csrrs x31, 0xc61, x24	// Set all CSR bits
	csrrc x31, 0xc61, x24	// Clear all CSR bits
	csrrw x31, 0xc61, x9	// Restore CSR

// Testing CSR 0xc62
	csrr x21, 0xc62	// Read CSR
	li x19, -1
	csrrw x26, 0xc62, x19	// Write all 1s to CSR
	csrrw x26, 0xc62, x0	// Write all 0s to CSR
	csrrs x26, 0xc62, x19	// Set all CSR bits
	csrrc x26, 0xc62, x19	// Clear all CSR bits
	csrrw x26, 0xc62, x21	// Restore CSR

// Testing CSR 0xc63
	csrr x18, 0xc63	// Read CSR
	li x7, -1
	csrrw x25, 0xc63, x7	// Write all 1s to CSR
	csrrw x25, 0xc63, x0	// Write all 0s to CSR
	csrrs x25, 0xc63, x7	// Set all CSR bits
	csrrc x25, 0xc63, x7	// Clear all CSR bits
	csrrw x25, 0xc63, x18	// Restore CSR

// Testing CSR 0xc64
	csrr x5, 0xc64	// Read CSR
	li x29, -1
	csrrw x13, 0xc64, x29	// Write all 1s to CSR
	csrrw x13, 0xc64, x0	// Write all 0s to CSR
	csrrs x13, 0xc64, x29	// Set all CSR bits
	csrrc x13, 0xc64, x29	// Clear all CSR bits
	csrrw x13, 0xc64, x5	// Restore CSR

// Testing CSR 0xc65
	csrr x19, 0xc65	// Read CSR
	li x27, -1
	csrrw x22, 0xc65, x27	// Write all 1s to CSR
	csrrw x22, 0xc65, x0	// Write all 0s to CSR
	csrrs x22, 0xc65, x27	// Set all CSR bits
	csrrc x22, 0xc65, x27	// Clear all CSR bits
	csrrw x22, 0xc65, x19	// Restore CSR

// Testing CSR 0xc66
	csrr x28, 0xc66	// Read CSR
	li x31, -1
	csrrw x24, 0xc66, x31	// Write all 1s to CSR
	csrrw x24, 0xc66, x0	// Write all 0s to CSR
	csrrs x24, 0xc66, x31	// Set all CSR bits
	csrrc x24, 0xc66, x31	// Clear all CSR bits
	csrrw x24, 0xc66, x28	// Restore CSR

// Testing CSR 0xc67
	csrr x16, 0xc67	// Read CSR
	li x12, -1
	csrrw x29, 0xc67, x12	// Write all 1s to CSR
	csrrw x29, 0xc67, x0	// Write all 0s to CSR
	csrrs x29, 0xc67, x12	// Set all CSR bits
	csrrc x29, 0xc67, x12	// Clear all CSR bits
	csrrw x29, 0xc67, x16	// Restore CSR

// Testing CSR 0xc68
	csrr x28, 0xc68	// Read CSR
	li x27, -1
	csrrw x22, 0xc68, x27	// Write all 1s to CSR
	csrrw x22, 0xc68, x0	// Write all 0s to CSR
	csrrs x22, 0xc68, x27	// Set all CSR bits
	csrrc x22, 0xc68, x27	// Clear all CSR bits
	csrrw x22, 0xc68, x28	// Restore CSR

// Testing CSR 0xc69
	csrr x16, 0xc69	// Read CSR
	li x20, -1
	csrrw x23, 0xc69, x20	// Write all 1s to CSR
	csrrw x23, 0xc69, x0	// Write all 0s to CSR
	csrrs x23, 0xc69, x20	// Set all CSR bits
	csrrc x23, 0xc69, x20	// Clear all CSR bits
	csrrw x23, 0xc69, x16	// Restore CSR

// Testing CSR 0xc6a
	csrr x26, 0xc6a	// Read CSR
	li x5, -1
	csrrw x1, 0xc6a, x5	// Write all 1s to CSR
	csrrw x1, 0xc6a, x0	// Write all 0s to CSR
	csrrs x1, 0xc6a, x5	// Set all CSR bits
	csrrc x1, 0xc6a, x5	// Clear all CSR bits
	csrrw x1, 0xc6a, x26	// Restore CSR

// Testing CSR 0xc6b
	csrr x24, 0xc6b	// Read CSR
	li x20, -1
	csrrw x13, 0xc6b, x20	// Write all 1s to CSR
	csrrw x13, 0xc6b, x0	// Write all 0s to CSR
	csrrs x13, 0xc6b, x20	// Set all CSR bits
	csrrc x13, 0xc6b, x20	// Clear all CSR bits
	csrrw x13, 0xc6b, x24	// Restore CSR

// Testing CSR 0xc6c
	csrr x22, 0xc6c	// Read CSR
	li x27, -1
	csrrw x14, 0xc6c, x27	// Write all 1s to CSR
	csrrw x14, 0xc6c, x0	// Write all 0s to CSR
	csrrs x14, 0xc6c, x27	// Set all CSR bits
	csrrc x14, 0xc6c, x27	// Clear all CSR bits
	csrrw x14, 0xc6c, x22	// Restore CSR

// Testing CSR 0xc6d
	csrr x12, 0xc6d	// Read CSR
	li x10, -1
	csrrw x26, 0xc6d, x10	// Write all 1s to CSR
	csrrw x26, 0xc6d, x0	// Write all 0s to CSR
	csrrs x26, 0xc6d, x10	// Set all CSR bits
	csrrc x26, 0xc6d, x10	// Clear all CSR bits
	csrrw x26, 0xc6d, x12	// Restore CSR

// Testing CSR 0xc6e
	csrr x5, 0xc6e	// Read CSR
	li x10, -1
	csrrw x31, 0xc6e, x10	// Write all 1s to CSR
	csrrw x31, 0xc6e, x0	// Write all 0s to CSR
	csrrs x31, 0xc6e, x10	// Set all CSR bits
	csrrc x31, 0xc6e, x10	// Clear all CSR bits
	csrrw x31, 0xc6e, x5	// Restore CSR

// Testing CSR 0xc6f
	csrr x16, 0xc6f	// Read CSR
	li x9, -1
	csrrw x13, 0xc6f, x9	// Write all 1s to CSR
	csrrw x13, 0xc6f, x0	// Write all 0s to CSR
	csrrs x13, 0xc6f, x9	// Set all CSR bits
	csrrc x13, 0xc6f, x9	// Clear all CSR bits
	csrrw x13, 0xc6f, x16	// Restore CSR

// Testing CSR 0xc70
	csrr x23, 0xc70	// Read CSR
	li x20, -1
	csrrw x8, 0xc70, x20	// Write all 1s to CSR
	csrrw x8, 0xc70, x0	// Write all 0s to CSR
	csrrs x8, 0xc70, x20	// Set all CSR bits
	csrrc x8, 0xc70, x20	// Clear all CSR bits
	csrrw x8, 0xc70, x23	// Restore CSR

// Testing CSR 0xc71
	csrr x26, 0xc71	// Read CSR
	li x27, -1
	csrrw x15, 0xc71, x27	// Write all 1s to CSR
	csrrw x15, 0xc71, x0	// Write all 0s to CSR
	csrrs x15, 0xc71, x27	// Set all CSR bits
	csrrc x15, 0xc71, x27	// Clear all CSR bits
	csrrw x15, 0xc71, x26	// Restore CSR

// Testing CSR 0xc72
	csrr x26, 0xc72	// Read CSR
	li x30, -1
	csrrw x31, 0xc72, x30	// Write all 1s to CSR
	csrrw x31, 0xc72, x0	// Write all 0s to CSR
	csrrs x31, 0xc72, x30	// Set all CSR bits
	csrrc x31, 0xc72, x30	// Clear all CSR bits
	csrrw x31, 0xc72, x26	// Restore CSR

// Testing CSR 0xc73
	csrr x7, 0xc73	// Read CSR
	li x23, -1
	csrrw x6, 0xc73, x23	// Write all 1s to CSR
	csrrw x6, 0xc73, x0	// Write all 0s to CSR
	csrrs x6, 0xc73, x23	// Set all CSR bits
	csrrc x6, 0xc73, x23	// Clear all CSR bits
	csrrw x6, 0xc73, x7	// Restore CSR

// Testing CSR 0xc74
	csrr x16, 0xc74	// Read CSR
	li x25, -1
	csrrw x31, 0xc74, x25	// Write all 1s to CSR
	csrrw x31, 0xc74, x0	// Write all 0s to CSR
	csrrs x31, 0xc74, x25	// Set all CSR bits
	csrrc x31, 0xc74, x25	// Clear all CSR bits
	csrrw x31, 0xc74, x16	// Restore CSR

// Testing CSR 0xc75
	csrr x15, 0xc75	// Read CSR
	li x2, -1
	csrrw x24, 0xc75, x2	// Write all 1s to CSR
	csrrw x24, 0xc75, x0	// Write all 0s to CSR
	csrrs x24, 0xc75, x2	// Set all CSR bits
	csrrc x24, 0xc75, x2	// Clear all CSR bits
	csrrw x24, 0xc75, x15	// Restore CSR

// Testing CSR 0xc76
	csrr x30, 0xc76	// Read CSR
	li x27, -1
	csrrw x24, 0xc76, x27	// Write all 1s to CSR
	csrrw x24, 0xc76, x0	// Write all 0s to CSR
	csrrs x24, 0xc76, x27	// Set all CSR bits
	csrrc x24, 0xc76, x27	// Clear all CSR bits
	csrrw x24, 0xc76, x30	// Restore CSR

// Testing CSR 0xc77
	csrr x14, 0xc77	// Read CSR
	li x7, -1
	csrrw x17, 0xc77, x7	// Write all 1s to CSR
	csrrw x17, 0xc77, x0	// Write all 0s to CSR
	csrrs x17, 0xc77, x7	// Set all CSR bits
	csrrc x17, 0xc77, x7	// Clear all CSR bits
	csrrw x17, 0xc77, x14	// Restore CSR

// Testing CSR 0xc78
	csrr x10, 0xc78	// Read CSR
	li x23, -1
	csrrw x28, 0xc78, x23	// Write all 1s to CSR
	csrrw x28, 0xc78, x0	// Write all 0s to CSR
	csrrs x28, 0xc78, x23	// Set all CSR bits
	csrrc x28, 0xc78, x23	// Clear all CSR bits
	csrrw x28, 0xc78, x10	// Restore CSR

// Testing CSR 0xc79
	csrr x14, 0xc79	// Read CSR
	li x4, -1
	csrrw x10, 0xc79, x4	// Write all 1s to CSR
	csrrw x10, 0xc79, x0	// Write all 0s to CSR
	csrrs x10, 0xc79, x4	// Set all CSR bits
	csrrc x10, 0xc79, x4	// Clear all CSR bits
	csrrw x10, 0xc79, x14	// Restore CSR

// Testing CSR 0xc7a
	csrr x9, 0xc7a	// Read CSR
	li x6, -1
	csrrw x5, 0xc7a, x6	// Write all 1s to CSR
	csrrw x5, 0xc7a, x0	// Write all 0s to CSR
	csrrs x5, 0xc7a, x6	// Set all CSR bits
	csrrc x5, 0xc7a, x6	// Clear all CSR bits
	csrrw x5, 0xc7a, x9	// Restore CSR

// Testing CSR 0xc7b
	csrr x25, 0xc7b	// Read CSR
	li x7, -1
	csrrw x10, 0xc7b, x7	// Write all 1s to CSR
	csrrw x10, 0xc7b, x0	// Write all 0s to CSR
	csrrs x10, 0xc7b, x7	// Set all CSR bits
	csrrc x10, 0xc7b, x7	// Clear all CSR bits
	csrrw x10, 0xc7b, x25	// Restore CSR

// Testing CSR 0xc7c
	csrr x5, 0xc7c	// Read CSR
	li x6, -1
	csrrw x12, 0xc7c, x6	// Write all 1s to CSR
	csrrw x12, 0xc7c, x0	// Write all 0s to CSR
	csrrs x12, 0xc7c, x6	// Set all CSR bits
	csrrc x12, 0xc7c, x6	// Clear all CSR bits
	csrrw x12, 0xc7c, x5	// Restore CSR

// Testing CSR 0xc7d
	csrr x7, 0xc7d	// Read CSR
	li x28, -1
	csrrw x19, 0xc7d, x28	// Write all 1s to CSR
	csrrw x19, 0xc7d, x0	// Write all 0s to CSR
	csrrs x19, 0xc7d, x28	// Set all CSR bits
	csrrc x19, 0xc7d, x28	// Clear all CSR bits
	csrrw x19, 0xc7d, x7	// Restore CSR

// Testing CSR 0xc7e
	csrr x19, 0xc7e	// Read CSR
	li x26, -1
	csrrw x6, 0xc7e, x26	// Write all 1s to CSR
	csrrw x6, 0xc7e, x0	// Write all 0s to CSR
	csrrs x6, 0xc7e, x26	// Set all CSR bits
	csrrc x6, 0xc7e, x26	// Clear all CSR bits
	csrrw x6, 0xc7e, x19	// Restore CSR

// Testing CSR 0xc7f
	csrr x2, 0xc7f	// Read CSR
	li x4, -1
	csrrw x5, 0xc7f, x4	// Write all 1s to CSR
	csrrw x5, 0xc7f, x0	// Write all 0s to CSR
	csrrs x5, 0xc7f, x4	// Set all CSR bits
	csrrc x5, 0xc7f, x4	// Clear all CSR bits
	csrrw x5, 0xc7f, x2	// Restore CSR

// Testing CSR 0xc80
	csrr x30, 0xc80	// Read CSR
	li x9, -1
	csrrw x19, 0xc80, x9	// Write all 1s to CSR
	csrrw x19, 0xc80, x0	// Write all 0s to CSR
	csrrs x19, 0xc80, x9	// Set all CSR bits
	csrrc x19, 0xc80, x9	// Clear all CSR bits
	csrrw x19, 0xc80, x30	// Restore CSR

// Testing CSR 0xc81
	csrr x10, 0xc81	// Read CSR
	li x2, -1
	csrrw x6, 0xc81, x2	// Write all 1s to CSR
	csrrw x6, 0xc81, x0	// Write all 0s to CSR
	csrrs x6, 0xc81, x2	// Set all CSR bits
	csrrc x6, 0xc81, x2	// Clear all CSR bits
	csrrw x6, 0xc81, x10	// Restore CSR

// Testing CSR 0xc82
	csrr x9, 0xc82	// Read CSR
	li x19, -1
	csrrw x31, 0xc82, x19	// Write all 1s to CSR
	csrrw x31, 0xc82, x0	// Write all 0s to CSR
	csrrs x31, 0xc82, x19	// Set all CSR bits
	csrrc x31, 0xc82, x19	// Clear all CSR bits
	csrrw x31, 0xc82, x9	// Restore CSR

// Testing CSR 0xc83
	csrr x27, 0xc83	// Read CSR
	li x12, -1
	csrrw x4, 0xc83, x12	// Write all 1s to CSR
	csrrw x4, 0xc83, x0	// Write all 0s to CSR
	csrrs x4, 0xc83, x12	// Set all CSR bits
	csrrc x4, 0xc83, x12	// Clear all CSR bits
	csrrw x4, 0xc83, x27	// Restore CSR

// Testing CSR 0xc84
	csrr x14, 0xc84	// Read CSR
	li x9, -1
	csrrw x11, 0xc84, x9	// Write all 1s to CSR
	csrrw x11, 0xc84, x0	// Write all 0s to CSR
	csrrs x11, 0xc84, x9	// Set all CSR bits
	csrrc x11, 0xc84, x9	// Clear all CSR bits
	csrrw x11, 0xc84, x14	// Restore CSR

// Testing CSR 0xc85
	csrr x23, 0xc85	// Read CSR
	li x20, -1
	csrrw x18, 0xc85, x20	// Write all 1s to CSR
	csrrw x18, 0xc85, x0	// Write all 0s to CSR
	csrrs x18, 0xc85, x20	// Set all CSR bits
	csrrc x18, 0xc85, x20	// Clear all CSR bits
	csrrw x18, 0xc85, x23	// Restore CSR

// Testing CSR 0xc86
	csrr x17, 0xc86	// Read CSR
	li x21, -1
	csrrw x9, 0xc86, x21	// Write all 1s to CSR
	csrrw x9, 0xc86, x0	// Write all 0s to CSR
	csrrs x9, 0xc86, x21	// Set all CSR bits
	csrrc x9, 0xc86, x21	// Clear all CSR bits
	csrrw x9, 0xc86, x17	// Restore CSR

// Testing CSR 0xc87
	csrr x28, 0xc87	// Read CSR
	li x4, -1
	csrrw x31, 0xc87, x4	// Write all 1s to CSR
	csrrw x31, 0xc87, x0	// Write all 0s to CSR
	csrrs x31, 0xc87, x4	// Set all CSR bits
	csrrc x31, 0xc87, x4	// Clear all CSR bits
	csrrw x31, 0xc87, x28	// Restore CSR

// Testing CSR 0xc88
	csrr x18, 0xc88	// Read CSR
	li x31, -1
	csrrw x26, 0xc88, x31	// Write all 1s to CSR
	csrrw x26, 0xc88, x0	// Write all 0s to CSR
	csrrs x26, 0xc88, x31	// Set all CSR bits
	csrrc x26, 0xc88, x31	// Clear all CSR bits
	csrrw x26, 0xc88, x18	// Restore CSR

// Testing CSR 0xc89
	csrr x2, 0xc89	// Read CSR
	li x1, -1
	csrrw x11, 0xc89, x1	// Write all 1s to CSR
	csrrw x11, 0xc89, x0	// Write all 0s to CSR
	csrrs x11, 0xc89, x1	// Set all CSR bits
	csrrc x11, 0xc89, x1	// Clear all CSR bits
	csrrw x11, 0xc89, x2	// Restore CSR

// Testing CSR 0xc8a
	csrr x24, 0xc8a	// Read CSR
	li x14, -1
	csrrw x20, 0xc8a, x14	// Write all 1s to CSR
	csrrw x20, 0xc8a, x0	// Write all 0s to CSR
	csrrs x20, 0xc8a, x14	// Set all CSR bits
	csrrc x20, 0xc8a, x14	// Clear all CSR bits
	csrrw x20, 0xc8a, x24	// Restore CSR

// Testing CSR 0xc8b
	csrr x16, 0xc8b	// Read CSR
	li x26, -1
	csrrw x11, 0xc8b, x26	// Write all 1s to CSR
	csrrw x11, 0xc8b, x0	// Write all 0s to CSR
	csrrs x11, 0xc8b, x26	// Set all CSR bits
	csrrc x11, 0xc8b, x26	// Clear all CSR bits
	csrrw x11, 0xc8b, x16	// Restore CSR

// Testing CSR 0xc8c
	csrr x29, 0xc8c	// Read CSR
	li x22, -1
	csrrw x19, 0xc8c, x22	// Write all 1s to CSR
	csrrw x19, 0xc8c, x0	// Write all 0s to CSR
	csrrs x19, 0xc8c, x22	// Set all CSR bits
	csrrc x19, 0xc8c, x22	// Clear all CSR bits
	csrrw x19, 0xc8c, x29	// Restore CSR

// Testing CSR 0xc8d
	csrr x26, 0xc8d	// Read CSR
	li x8, -1
	csrrw x4, 0xc8d, x8	// Write all 1s to CSR
	csrrw x4, 0xc8d, x0	// Write all 0s to CSR
	csrrs x4, 0xc8d, x8	// Set all CSR bits
	csrrc x4, 0xc8d, x8	// Clear all CSR bits
	csrrw x4, 0xc8d, x26	// Restore CSR

// Testing CSR 0xc8e
	csrr x14, 0xc8e	// Read CSR
	li x22, -1
	csrrw x31, 0xc8e, x22	// Write all 1s to CSR
	csrrw x31, 0xc8e, x0	// Write all 0s to CSR
	csrrs x31, 0xc8e, x22	// Set all CSR bits
	csrrc x31, 0xc8e, x22	// Clear all CSR bits
	csrrw x31, 0xc8e, x14	// Restore CSR

// Testing CSR 0xc8f
	csrr x3, 0xc8f	// Read CSR
	li x19, -1
	csrrw x28, 0xc8f, x19	// Write all 1s to CSR
	csrrw x28, 0xc8f, x0	// Write all 0s to CSR
	csrrs x28, 0xc8f, x19	// Set all CSR bits
	csrrc x28, 0xc8f, x19	// Clear all CSR bits
	csrrw x28, 0xc8f, x3	// Restore CSR

// Testing CSR 0xc90
	csrr x9, 0xc90	// Read CSR
	li x28, -1
	csrrw x25, 0xc90, x28	// Write all 1s to CSR
	csrrw x25, 0xc90, x0	// Write all 0s to CSR
	csrrs x25, 0xc90, x28	// Set all CSR bits
	csrrc x25, 0xc90, x28	// Clear all CSR bits
	csrrw x25, 0xc90, x9	// Restore CSR

// Testing CSR 0xc91
	csrr x18, 0xc91	// Read CSR
	li x12, -1
	csrrw x29, 0xc91, x12	// Write all 1s to CSR
	csrrw x29, 0xc91, x0	// Write all 0s to CSR
	csrrs x29, 0xc91, x12	// Set all CSR bits
	csrrc x29, 0xc91, x12	// Clear all CSR bits
	csrrw x29, 0xc91, x18	// Restore CSR

// Testing CSR 0xc92
	csrr x24, 0xc92	// Read CSR
	li x26, -1
	csrrw x5, 0xc92, x26	// Write all 1s to CSR
	csrrw x5, 0xc92, x0	// Write all 0s to CSR
	csrrs x5, 0xc92, x26	// Set all CSR bits
	csrrc x5, 0xc92, x26	// Clear all CSR bits
	csrrw x5, 0xc92, x24	// Restore CSR

// Testing CSR 0xc93
	csrr x2, 0xc93	// Read CSR
	li x1, -1
	csrrw x5, 0xc93, x1	// Write all 1s to CSR
	csrrw x5, 0xc93, x0	// Write all 0s to CSR
	csrrs x5, 0xc93, x1	// Set all CSR bits
	csrrc x5, 0xc93, x1	// Clear all CSR bits
	csrrw x5, 0xc93, x2	// Restore CSR

// Testing CSR 0xc94
	csrr x13, 0xc94	// Read CSR
	li x27, -1
	csrrw x12, 0xc94, x27	// Write all 1s to CSR
	csrrw x12, 0xc94, x0	// Write all 0s to CSR
	csrrs x12, 0xc94, x27	// Set all CSR bits
	csrrc x12, 0xc94, x27	// Clear all CSR bits
	csrrw x12, 0xc94, x13	// Restore CSR

// Testing CSR 0xc95
	csrr x26, 0xc95	// Read CSR
	li x1, -1
	csrrw x12, 0xc95, x1	// Write all 1s to CSR
	csrrw x12, 0xc95, x0	// Write all 0s to CSR
	csrrs x12, 0xc95, x1	// Set all CSR bits
	csrrc x12, 0xc95, x1	// Clear all CSR bits
	csrrw x12, 0xc95, x26	// Restore CSR

// Testing CSR 0xc96
	csrr x26, 0xc96	// Read CSR
	li x11, -1
	csrrw x17, 0xc96, x11	// Write all 1s to CSR
	csrrw x17, 0xc96, x0	// Write all 0s to CSR
	csrrs x17, 0xc96, x11	// Set all CSR bits
	csrrc x17, 0xc96, x11	// Clear all CSR bits
	csrrw x17, 0xc96, x26	// Restore CSR

// Testing CSR 0xc97
	csrr x19, 0xc97	// Read CSR
	li x30, -1
	csrrw x27, 0xc97, x30	// Write all 1s to CSR
	csrrw x27, 0xc97, x0	// Write all 0s to CSR
	csrrs x27, 0xc97, x30	// Set all CSR bits
	csrrc x27, 0xc97, x30	// Clear all CSR bits
	csrrw x27, 0xc97, x19	// Restore CSR

// Testing CSR 0xc98
	csrr x27, 0xc98	// Read CSR
	li x26, -1
	csrrw x19, 0xc98, x26	// Write all 1s to CSR
	csrrw x19, 0xc98, x0	// Write all 0s to CSR
	csrrs x19, 0xc98, x26	// Set all CSR bits
	csrrc x19, 0xc98, x26	// Clear all CSR bits
	csrrw x19, 0xc98, x27	// Restore CSR

// Testing CSR 0xc99
	csrr x13, 0xc99	// Read CSR
	li x18, -1
	csrrw x31, 0xc99, x18	// Write all 1s to CSR
	csrrw x31, 0xc99, x0	// Write all 0s to CSR
	csrrs x31, 0xc99, x18	// Set all CSR bits
	csrrc x31, 0xc99, x18	// Clear all CSR bits
	csrrw x31, 0xc99, x13	// Restore CSR

// Testing CSR 0xc9a
	csrr x30, 0xc9a	// Read CSR
	li x23, -1
	csrrw x4, 0xc9a, x23	// Write all 1s to CSR
	csrrw x4, 0xc9a, x0	// Write all 0s to CSR
	csrrs x4, 0xc9a, x23	// Set all CSR bits
	csrrc x4, 0xc9a, x23	// Clear all CSR bits
	csrrw x4, 0xc9a, x30	// Restore CSR

// Testing CSR 0xc9b
	csrr x4, 0xc9b	// Read CSR
	li x20, -1
	csrrw x18, 0xc9b, x20	// Write all 1s to CSR
	csrrw x18, 0xc9b, x0	// Write all 0s to CSR
	csrrs x18, 0xc9b, x20	// Set all CSR bits
	csrrc x18, 0xc9b, x20	// Clear all CSR bits
	csrrw x18, 0xc9b, x4	// Restore CSR

// Testing CSR 0xc9c
	csrr x7, 0xc9c	// Read CSR
	li x21, -1
	csrrw x11, 0xc9c, x21	// Write all 1s to CSR
	csrrw x11, 0xc9c, x0	// Write all 0s to CSR
	csrrs x11, 0xc9c, x21	// Set all CSR bits
	csrrc x11, 0xc9c, x21	// Clear all CSR bits
	csrrw x11, 0xc9c, x7	// Restore CSR

// Testing CSR 0xc9d
	csrr x18, 0xc9d	// Read CSR
	li x13, -1
	csrrw x5, 0xc9d, x13	// Write all 1s to CSR
	csrrw x5, 0xc9d, x0	// Write all 0s to CSR
	csrrs x5, 0xc9d, x13	// Set all CSR bits
	csrrc x5, 0xc9d, x13	// Clear all CSR bits
	csrrw x5, 0xc9d, x18	// Restore CSR

// Testing CSR 0xc9e
	csrr x2, 0xc9e	// Read CSR
	li x29, -1
	csrrw x3, 0xc9e, x29	// Write all 1s to CSR
	csrrw x3, 0xc9e, x0	// Write all 0s to CSR
	csrrs x3, 0xc9e, x29	// Set all CSR bits
	csrrc x3, 0xc9e, x29	// Clear all CSR bits
	csrrw x3, 0xc9e, x2	// Restore CSR

// Testing CSR 0xc9f
	csrr x30, 0xc9f	// Read CSR
	li x2, -1
	csrrw x21, 0xc9f, x2	// Write all 1s to CSR
	csrrw x21, 0xc9f, x0	// Write all 0s to CSR
	csrrs x21, 0xc9f, x2	// Set all CSR bits
	csrrc x21, 0xc9f, x2	// Clear all CSR bits
	csrrw x21, 0xc9f, x30	// Restore CSR

// Testing CSR 0xca0
	csrr x12, 0xca0	// Read CSR
	li x7, -1
	csrrw x29, 0xca0, x7	// Write all 1s to CSR
	csrrw x29, 0xca0, x0	// Write all 0s to CSR
	csrrs x29, 0xca0, x7	// Set all CSR bits
	csrrc x29, 0xca0, x7	// Clear all CSR bits
	csrrw x29, 0xca0, x12	// Restore CSR

// Testing CSR 0xca1
	csrr x14, 0xca1	// Read CSR
	li x19, -1
	csrrw x23, 0xca1, x19	// Write all 1s to CSR
	csrrw x23, 0xca1, x0	// Write all 0s to CSR
	csrrs x23, 0xca1, x19	// Set all CSR bits
	csrrc x23, 0xca1, x19	// Clear all CSR bits
	csrrw x23, 0xca1, x14	// Restore CSR

// Testing CSR 0xca2
	csrr x21, 0xca2	// Read CSR
	li x4, -1
	csrrw x14, 0xca2, x4	// Write all 1s to CSR
	csrrw x14, 0xca2, x0	// Write all 0s to CSR
	csrrs x14, 0xca2, x4	// Set all CSR bits
	csrrc x14, 0xca2, x4	// Clear all CSR bits
	csrrw x14, 0xca2, x21	// Restore CSR

// Testing CSR 0xca3
	csrr x7, 0xca3	// Read CSR
	li x11, -1
	csrrw x3, 0xca3, x11	// Write all 1s to CSR
	csrrw x3, 0xca3, x0	// Write all 0s to CSR
	csrrs x3, 0xca3, x11	// Set all CSR bits
	csrrc x3, 0xca3, x11	// Clear all CSR bits
	csrrw x3, 0xca3, x7	// Restore CSR

// Testing CSR 0xca4
	csrr x4, 0xca4	// Read CSR
	li x30, -1
	csrrw x24, 0xca4, x30	// Write all 1s to CSR
	csrrw x24, 0xca4, x0	// Write all 0s to CSR
	csrrs x24, 0xca4, x30	// Set all CSR bits
	csrrc x24, 0xca4, x30	// Clear all CSR bits
	csrrw x24, 0xca4, x4	// Restore CSR

// Testing CSR 0xca5
	csrr x25, 0xca5	// Read CSR
	li x26, -1
	csrrw x5, 0xca5, x26	// Write all 1s to CSR
	csrrw x5, 0xca5, x0	// Write all 0s to CSR
	csrrs x5, 0xca5, x26	// Set all CSR bits
	csrrc x5, 0xca5, x26	// Clear all CSR bits
	csrrw x5, 0xca5, x25	// Restore CSR

// Testing CSR 0xca6
	csrr x9, 0xca6	// Read CSR
	li x8, -1
	csrrw x30, 0xca6, x8	// Write all 1s to CSR
	csrrw x30, 0xca6, x0	// Write all 0s to CSR
	csrrs x30, 0xca6, x8	// Set all CSR bits
	csrrc x30, 0xca6, x8	// Clear all CSR bits
	csrrw x30, 0xca6, x9	// Restore CSR

// Testing CSR 0xca7
	csrr x22, 0xca7	// Read CSR
	li x24, -1
	csrrw x6, 0xca7, x24	// Write all 1s to CSR
	csrrw x6, 0xca7, x0	// Write all 0s to CSR
	csrrs x6, 0xca7, x24	// Set all CSR bits
	csrrc x6, 0xca7, x24	// Clear all CSR bits
	csrrw x6, 0xca7, x22	// Restore CSR

// Testing CSR 0xca8
	csrr x7, 0xca8	// Read CSR
	li x30, -1
	csrrw x28, 0xca8, x30	// Write all 1s to CSR
	csrrw x28, 0xca8, x0	// Write all 0s to CSR
	csrrs x28, 0xca8, x30	// Set all CSR bits
	csrrc x28, 0xca8, x30	// Clear all CSR bits
	csrrw x28, 0xca8, x7	// Restore CSR

// Testing CSR 0xca9
	csrr x13, 0xca9	// Read CSR
	li x14, -1
	csrrw x7, 0xca9, x14	// Write all 1s to CSR
	csrrw x7, 0xca9, x0	// Write all 0s to CSR
	csrrs x7, 0xca9, x14	// Set all CSR bits
	csrrc x7, 0xca9, x14	// Clear all CSR bits
	csrrw x7, 0xca9, x13	// Restore CSR

// Testing CSR 0xcaa
	csrr x28, 0xcaa	// Read CSR
	li x7, -1
	csrrw x1, 0xcaa, x7	// Write all 1s to CSR
	csrrw x1, 0xcaa, x0	// Write all 0s to CSR
	csrrs x1, 0xcaa, x7	// Set all CSR bits
	csrrc x1, 0xcaa, x7	// Clear all CSR bits
	csrrw x1, 0xcaa, x28	// Restore CSR

// Testing CSR 0xcab
	csrr x31, 0xcab	// Read CSR
	li x17, -1
	csrrw x9, 0xcab, x17	// Write all 1s to CSR
	csrrw x9, 0xcab, x0	// Write all 0s to CSR
	csrrs x9, 0xcab, x17	// Set all CSR bits
	csrrc x9, 0xcab, x17	// Clear all CSR bits
	csrrw x9, 0xcab, x31	// Restore CSR

// Testing CSR 0xcac
	csrr x14, 0xcac	// Read CSR
	li x23, -1
	csrrw x26, 0xcac, x23	// Write all 1s to CSR
	csrrw x26, 0xcac, x0	// Write all 0s to CSR
	csrrs x26, 0xcac, x23	// Set all CSR bits
	csrrc x26, 0xcac, x23	// Clear all CSR bits
	csrrw x26, 0xcac, x14	// Restore CSR

// Testing CSR 0xcad
	csrr x7, 0xcad	// Read CSR
	li x31, -1
	csrrw x17, 0xcad, x31	// Write all 1s to CSR
	csrrw x17, 0xcad, x0	// Write all 0s to CSR
	csrrs x17, 0xcad, x31	// Set all CSR bits
	csrrc x17, 0xcad, x31	// Clear all CSR bits
	csrrw x17, 0xcad, x7	// Restore CSR

// Testing CSR 0xcae
	csrr x4, 0xcae	// Read CSR
	li x26, -1
	csrrw x25, 0xcae, x26	// Write all 1s to CSR
	csrrw x25, 0xcae, x0	// Write all 0s to CSR
	csrrs x25, 0xcae, x26	// Set all CSR bits
	csrrc x25, 0xcae, x26	// Clear all CSR bits
	csrrw x25, 0xcae, x4	// Restore CSR

// Testing CSR 0xcaf
	csrr x20, 0xcaf	// Read CSR
	li x12, -1
	csrrw x28, 0xcaf, x12	// Write all 1s to CSR
	csrrw x28, 0xcaf, x0	// Write all 0s to CSR
	csrrs x28, 0xcaf, x12	// Set all CSR bits
	csrrc x28, 0xcaf, x12	// Clear all CSR bits
	csrrw x28, 0xcaf, x20	// Restore CSR

// Testing CSR 0xcb0
	csrr x29, 0xcb0	// Read CSR
	li x21, -1
	csrrw x28, 0xcb0, x21	// Write all 1s to CSR
	csrrw x28, 0xcb0, x0	// Write all 0s to CSR
	csrrs x28, 0xcb0, x21	// Set all CSR bits
	csrrc x28, 0xcb0, x21	// Clear all CSR bits
	csrrw x28, 0xcb0, x29	// Restore CSR

// Testing CSR 0xcb1
	csrr x11, 0xcb1	// Read CSR
	li x9, -1
	csrrw x17, 0xcb1, x9	// Write all 1s to CSR
	csrrw x17, 0xcb1, x0	// Write all 0s to CSR
	csrrs x17, 0xcb1, x9	// Set all CSR bits
	csrrc x17, 0xcb1, x9	// Clear all CSR bits
	csrrw x17, 0xcb1, x11	// Restore CSR

// Testing CSR 0xcb2
	csrr x8, 0xcb2	// Read CSR
	li x16, -1
	csrrw x19, 0xcb2, x16	// Write all 1s to CSR
	csrrw x19, 0xcb2, x0	// Write all 0s to CSR
	csrrs x19, 0xcb2, x16	// Set all CSR bits
	csrrc x19, 0xcb2, x16	// Clear all CSR bits
	csrrw x19, 0xcb2, x8	// Restore CSR

// Testing CSR 0xcb3
	csrr x7, 0xcb3	// Read CSR
	li x19, -1
	csrrw x2, 0xcb3, x19	// Write all 1s to CSR
	csrrw x2, 0xcb3, x0	// Write all 0s to CSR
	csrrs x2, 0xcb3, x19	// Set all CSR bits
	csrrc x2, 0xcb3, x19	// Clear all CSR bits
	csrrw x2, 0xcb3, x7	// Restore CSR

// Testing CSR 0xcb4
	csrr x19, 0xcb4	// Read CSR
	li x29, -1
	csrrw x22, 0xcb4, x29	// Write all 1s to CSR
	csrrw x22, 0xcb4, x0	// Write all 0s to CSR
	csrrs x22, 0xcb4, x29	// Set all CSR bits
	csrrc x22, 0xcb4, x29	// Clear all CSR bits
	csrrw x22, 0xcb4, x19	// Restore CSR

// Testing CSR 0xcb5
	csrr x4, 0xcb5	// Read CSR
	li x9, -1
	csrrw x14, 0xcb5, x9	// Write all 1s to CSR
	csrrw x14, 0xcb5, x0	// Write all 0s to CSR
	csrrs x14, 0xcb5, x9	// Set all CSR bits
	csrrc x14, 0xcb5, x9	// Clear all CSR bits
	csrrw x14, 0xcb5, x4	// Restore CSR

// Testing CSR 0xcb6
	csrr x21, 0xcb6	// Read CSR
	li x4, -1
	csrrw x26, 0xcb6, x4	// Write all 1s to CSR
	csrrw x26, 0xcb6, x0	// Write all 0s to CSR
	csrrs x26, 0xcb6, x4	// Set all CSR bits
	csrrc x26, 0xcb6, x4	// Clear all CSR bits
	csrrw x26, 0xcb6, x21	// Restore CSR

// Testing CSR 0xcb7
	csrr x2, 0xcb7	// Read CSR
	li x4, -1
	csrrw x11, 0xcb7, x4	// Write all 1s to CSR
	csrrw x11, 0xcb7, x0	// Write all 0s to CSR
	csrrs x11, 0xcb7, x4	// Set all CSR bits
	csrrc x11, 0xcb7, x4	// Clear all CSR bits
	csrrw x11, 0xcb7, x2	// Restore CSR

// Testing CSR 0xcb8
	csrr x11, 0xcb8	// Read CSR
	li x4, -1
	csrrw x20, 0xcb8, x4	// Write all 1s to CSR
	csrrw x20, 0xcb8, x0	// Write all 0s to CSR
	csrrs x20, 0xcb8, x4	// Set all CSR bits
	csrrc x20, 0xcb8, x4	// Clear all CSR bits
	csrrw x20, 0xcb8, x11	// Restore CSR

// Testing CSR 0xcb9
	csrr x10, 0xcb9	// Read CSR
	li x31, -1
	csrrw x4, 0xcb9, x31	// Write all 1s to CSR
	csrrw x4, 0xcb9, x0	// Write all 0s to CSR
	csrrs x4, 0xcb9, x31	// Set all CSR bits
	csrrc x4, 0xcb9, x31	// Clear all CSR bits
	csrrw x4, 0xcb9, x10	// Restore CSR

// Testing CSR 0xcba
	csrr x8, 0xcba	// Read CSR
	li x28, -1
	csrrw x26, 0xcba, x28	// Write all 1s to CSR
	csrrw x26, 0xcba, x0	// Write all 0s to CSR
	csrrs x26, 0xcba, x28	// Set all CSR bits
	csrrc x26, 0xcba, x28	// Clear all CSR bits
	csrrw x26, 0xcba, x8	// Restore CSR

// Testing CSR 0xcbb
	csrr x10, 0xcbb	// Read CSR
	li x26, -1
	csrrw x19, 0xcbb, x26	// Write all 1s to CSR
	csrrw x19, 0xcbb, x0	// Write all 0s to CSR
	csrrs x19, 0xcbb, x26	// Set all CSR bits
	csrrc x19, 0xcbb, x26	// Clear all CSR bits
	csrrw x19, 0xcbb, x10	// Restore CSR

// Testing CSR 0xcbc
	csrr x3, 0xcbc	// Read CSR
	li x4, -1
	csrrw x13, 0xcbc, x4	// Write all 1s to CSR
	csrrw x13, 0xcbc, x0	// Write all 0s to CSR
	csrrs x13, 0xcbc, x4	// Set all CSR bits
	csrrc x13, 0xcbc, x4	// Clear all CSR bits
	csrrw x13, 0xcbc, x3	// Restore CSR

// Testing CSR 0xcbd
	csrr x16, 0xcbd	// Read CSR
	li x5, -1
	csrrw x30, 0xcbd, x5	// Write all 1s to CSR
	csrrw x30, 0xcbd, x0	// Write all 0s to CSR
	csrrs x30, 0xcbd, x5	// Set all CSR bits
	csrrc x30, 0xcbd, x5	// Clear all CSR bits
	csrrw x30, 0xcbd, x16	// Restore CSR

// Testing CSR 0xcbe
	csrr x11, 0xcbe	// Read CSR
	li x8, -1
	csrrw x5, 0xcbe, x8	// Write all 1s to CSR
	csrrw x5, 0xcbe, x0	// Write all 0s to CSR
	csrrs x5, 0xcbe, x8	// Set all CSR bits
	csrrc x5, 0xcbe, x8	// Clear all CSR bits
	csrrw x5, 0xcbe, x11	// Restore CSR

// Testing CSR 0xcbf
	csrr x8, 0xcbf	// Read CSR
	li x5, -1
	csrrw x2, 0xcbf, x5	// Write all 1s to CSR
	csrrw x2, 0xcbf, x0	// Write all 0s to CSR
	csrrs x2, 0xcbf, x5	// Set all CSR bits
	csrrc x2, 0xcbf, x5	// Clear all CSR bits
	csrrw x2, 0xcbf, x8	// Restore CSR

// Testing CSR 0xd00
	csrr x23, 0xd00	// Read CSR
	li x19, -1
	csrrw x2, 0xd00, x19	// Write all 1s to CSR
	csrrw x2, 0xd00, x0	// Write all 0s to CSR
	csrrs x2, 0xd00, x19	// Set all CSR bits
	csrrc x2, 0xd00, x19	// Clear all CSR bits
	csrrw x2, 0xd00, x23	// Restore CSR

// Testing CSR 0xd01
	csrr x15, 0xd01	// Read CSR
	li x16, -1
	csrrw x18, 0xd01, x16	// Write all 1s to CSR
	csrrw x18, 0xd01, x0	// Write all 0s to CSR
	csrrs x18, 0xd01, x16	// Set all CSR bits
	csrrc x18, 0xd01, x16	// Clear all CSR bits
	csrrw x18, 0xd01, x15	// Restore CSR

// Testing CSR 0xd02
	csrr x18, 0xd02	// Read CSR
	li x8, -1
	csrrw x14, 0xd02, x8	// Write all 1s to CSR
	csrrw x14, 0xd02, x0	// Write all 0s to CSR
	csrrs x14, 0xd02, x8	// Set all CSR bits
	csrrc x14, 0xd02, x8	// Clear all CSR bits
	csrrw x14, 0xd02, x18	// Restore CSR

// Testing CSR 0xd03
	csrr x28, 0xd03	// Read CSR
	li x8, -1
	csrrw x7, 0xd03, x8	// Write all 1s to CSR
	csrrw x7, 0xd03, x0	// Write all 0s to CSR
	csrrs x7, 0xd03, x8	// Set all CSR bits
	csrrc x7, 0xd03, x8	// Clear all CSR bits
	csrrw x7, 0xd03, x28	// Restore CSR

// Testing CSR 0xd04
	csrr x20, 0xd04	// Read CSR
	li x27, -1
	csrrw x4, 0xd04, x27	// Write all 1s to CSR
	csrrw x4, 0xd04, x0	// Write all 0s to CSR
	csrrs x4, 0xd04, x27	// Set all CSR bits
	csrrc x4, 0xd04, x27	// Clear all CSR bits
	csrrw x4, 0xd04, x20	// Restore CSR

// Testing CSR 0xd05
	csrr x11, 0xd05	// Read CSR
	li x6, -1
	csrrw x23, 0xd05, x6	// Write all 1s to CSR
	csrrw x23, 0xd05, x0	// Write all 0s to CSR
	csrrs x23, 0xd05, x6	// Set all CSR bits
	csrrc x23, 0xd05, x6	// Clear all CSR bits
	csrrw x23, 0xd05, x11	// Restore CSR

// Testing CSR 0xd06
	csrr x10, 0xd06	// Read CSR
	li x4, -1
	csrrw x15, 0xd06, x4	// Write all 1s to CSR
	csrrw x15, 0xd06, x0	// Write all 0s to CSR
	csrrs x15, 0xd06, x4	// Set all CSR bits
	csrrc x15, 0xd06, x4	// Clear all CSR bits
	csrrw x15, 0xd06, x10	// Restore CSR

// Testing CSR 0xd07
	csrr x15, 0xd07	// Read CSR
	li x7, -1
	csrrw x31, 0xd07, x7	// Write all 1s to CSR
	csrrw x31, 0xd07, x0	// Write all 0s to CSR
	csrrs x31, 0xd07, x7	// Set all CSR bits
	csrrc x31, 0xd07, x7	// Clear all CSR bits
	csrrw x31, 0xd07, x15	// Restore CSR

// Testing CSR 0xd08
	csrr x21, 0xd08	// Read CSR
	li x16, -1
	csrrw x9, 0xd08, x16	// Write all 1s to CSR
	csrrw x9, 0xd08, x0	// Write all 0s to CSR
	csrrs x9, 0xd08, x16	// Set all CSR bits
	csrrc x9, 0xd08, x16	// Clear all CSR bits
	csrrw x9, 0xd08, x21	// Restore CSR

// Testing CSR 0xd09
	csrr x26, 0xd09	// Read CSR
	li x16, -1
	csrrw x7, 0xd09, x16	// Write all 1s to CSR
	csrrw x7, 0xd09, x0	// Write all 0s to CSR
	csrrs x7, 0xd09, x16	// Set all CSR bits
	csrrc x7, 0xd09, x16	// Clear all CSR bits
	csrrw x7, 0xd09, x26	// Restore CSR

// Testing CSR 0xd0a
	csrr x26, 0xd0a	// Read CSR
	li x15, -1
	csrrw x22, 0xd0a, x15	// Write all 1s to CSR
	csrrw x22, 0xd0a, x0	// Write all 0s to CSR
	csrrs x22, 0xd0a, x15	// Set all CSR bits
	csrrc x22, 0xd0a, x15	// Clear all CSR bits
	csrrw x22, 0xd0a, x26	// Restore CSR

// Testing CSR 0xd0b
	csrr x6, 0xd0b	// Read CSR
	li x20, -1
	csrrw x7, 0xd0b, x20	// Write all 1s to CSR
	csrrw x7, 0xd0b, x0	// Write all 0s to CSR
	csrrs x7, 0xd0b, x20	// Set all CSR bits
	csrrc x7, 0xd0b, x20	// Clear all CSR bits
	csrrw x7, 0xd0b, x6	// Restore CSR

// Testing CSR 0xd0c
	csrr x27, 0xd0c	// Read CSR
	li x19, -1
	csrrw x13, 0xd0c, x19	// Write all 1s to CSR
	csrrw x13, 0xd0c, x0	// Write all 0s to CSR
	csrrs x13, 0xd0c, x19	// Set all CSR bits
	csrrc x13, 0xd0c, x19	// Clear all CSR bits
	csrrw x13, 0xd0c, x27	// Restore CSR

// Testing CSR 0xd0d
	csrr x12, 0xd0d	// Read CSR
	li x14, -1
	csrrw x9, 0xd0d, x14	// Write all 1s to CSR
	csrrw x9, 0xd0d, x0	// Write all 0s to CSR
	csrrs x9, 0xd0d, x14	// Set all CSR bits
	csrrc x9, 0xd0d, x14	// Clear all CSR bits
	csrrw x9, 0xd0d, x12	// Restore CSR

// Testing CSR 0xd0e
	csrr x13, 0xd0e	// Read CSR
	li x6, -1
	csrrw x5, 0xd0e, x6	// Write all 1s to CSR
	csrrw x5, 0xd0e, x0	// Write all 0s to CSR
	csrrs x5, 0xd0e, x6	// Set all CSR bits
	csrrc x5, 0xd0e, x6	// Clear all CSR bits
	csrrw x5, 0xd0e, x13	// Restore CSR

// Testing CSR 0xd0f
	csrr x24, 0xd0f	// Read CSR
	li x20, -1
	csrrw x18, 0xd0f, x20	// Write all 1s to CSR
	csrrw x18, 0xd0f, x0	// Write all 0s to CSR
	csrrs x18, 0xd0f, x20	// Set all CSR bits
	csrrc x18, 0xd0f, x20	// Clear all CSR bits
	csrrw x18, 0xd0f, x24	// Restore CSR

// Testing CSR 0xd10
	csrr x16, 0xd10	// Read CSR
	li x4, -1
	csrrw x26, 0xd10, x4	// Write all 1s to CSR
	csrrw x26, 0xd10, x0	// Write all 0s to CSR
	csrrs x26, 0xd10, x4	// Set all CSR bits
	csrrc x26, 0xd10, x4	// Clear all CSR bits
	csrrw x26, 0xd10, x16	// Restore CSR

// Testing CSR 0xd11
	csrr x8, 0xd11	// Read CSR
	li x20, -1
	csrrw x29, 0xd11, x20	// Write all 1s to CSR
	csrrw x29, 0xd11, x0	// Write all 0s to CSR
	csrrs x29, 0xd11, x20	// Set all CSR bits
	csrrc x29, 0xd11, x20	// Clear all CSR bits
	csrrw x29, 0xd11, x8	// Restore CSR

// Testing CSR 0xd12
	csrr x12, 0xd12	// Read CSR
	li x22, -1
	csrrw x28, 0xd12, x22	// Write all 1s to CSR
	csrrw x28, 0xd12, x0	// Write all 0s to CSR
	csrrs x28, 0xd12, x22	// Set all CSR bits
	csrrc x28, 0xd12, x22	// Clear all CSR bits
	csrrw x28, 0xd12, x12	// Restore CSR

// Testing CSR 0xd13
	csrr x19, 0xd13	// Read CSR
	li x9, -1
	csrrw x1, 0xd13, x9	// Write all 1s to CSR
	csrrw x1, 0xd13, x0	// Write all 0s to CSR
	csrrs x1, 0xd13, x9	// Set all CSR bits
	csrrc x1, 0xd13, x9	// Clear all CSR bits
	csrrw x1, 0xd13, x19	// Restore CSR

// Testing CSR 0xd14
	csrr x10, 0xd14	// Read CSR
	li x15, -1
	csrrw x28, 0xd14, x15	// Write all 1s to CSR
	csrrw x28, 0xd14, x0	// Write all 0s to CSR
	csrrs x28, 0xd14, x15	// Set all CSR bits
	csrrc x28, 0xd14, x15	// Clear all CSR bits
	csrrw x28, 0xd14, x10	// Restore CSR

// Testing CSR 0xd15
	csrr x29, 0xd15	// Read CSR
	li x7, -1
	csrrw x13, 0xd15, x7	// Write all 1s to CSR
	csrrw x13, 0xd15, x0	// Write all 0s to CSR
	csrrs x13, 0xd15, x7	// Set all CSR bits
	csrrc x13, 0xd15, x7	// Clear all CSR bits
	csrrw x13, 0xd15, x29	// Restore CSR

// Testing CSR 0xd16
	csrr x8, 0xd16	// Read CSR
	li x10, -1
	csrrw x19, 0xd16, x10	// Write all 1s to CSR
	csrrw x19, 0xd16, x0	// Write all 0s to CSR
	csrrs x19, 0xd16, x10	// Set all CSR bits
	csrrc x19, 0xd16, x10	// Clear all CSR bits
	csrrw x19, 0xd16, x8	// Restore CSR

// Testing CSR 0xd17
	csrr x11, 0xd17	// Read CSR
	li x1, -1
	csrrw x12, 0xd17, x1	// Write all 1s to CSR
	csrrw x12, 0xd17, x0	// Write all 0s to CSR
	csrrs x12, 0xd17, x1	// Set all CSR bits
	csrrc x12, 0xd17, x1	// Clear all CSR bits
	csrrw x12, 0xd17, x11	// Restore CSR

// Testing CSR 0xd18
	csrr x27, 0xd18	// Read CSR
	li x2, -1
	csrrw x14, 0xd18, x2	// Write all 1s to CSR
	csrrw x14, 0xd18, x0	// Write all 0s to CSR
	csrrs x14, 0xd18, x2	// Set all CSR bits
	csrrc x14, 0xd18, x2	// Clear all CSR bits
	csrrw x14, 0xd18, x27	// Restore CSR

// Testing CSR 0xd19
	csrr x30, 0xd19	// Read CSR
	li x24, -1
	csrrw x25, 0xd19, x24	// Write all 1s to CSR
	csrrw x25, 0xd19, x0	// Write all 0s to CSR
	csrrs x25, 0xd19, x24	// Set all CSR bits
	csrrc x25, 0xd19, x24	// Clear all CSR bits
	csrrw x25, 0xd19, x30	// Restore CSR

// Testing CSR 0xd1a
	csrr x1, 0xd1a	// Read CSR
	li x19, -1
	csrrw x26, 0xd1a, x19	// Write all 1s to CSR
	csrrw x26, 0xd1a, x0	// Write all 0s to CSR
	csrrs x26, 0xd1a, x19	// Set all CSR bits
	csrrc x26, 0xd1a, x19	// Clear all CSR bits
	csrrw x26, 0xd1a, x1	// Restore CSR

// Testing CSR 0xd1b
	csrr x21, 0xd1b	// Read CSR
	li x18, -1
	csrrw x26, 0xd1b, x18	// Write all 1s to CSR
	csrrw x26, 0xd1b, x0	// Write all 0s to CSR
	csrrs x26, 0xd1b, x18	// Set all CSR bits
	csrrc x26, 0xd1b, x18	// Clear all CSR bits
	csrrw x26, 0xd1b, x21	// Restore CSR

// Testing CSR 0xd1c
	csrr x1, 0xd1c	// Read CSR
	li x24, -1
	csrrw x2, 0xd1c, x24	// Write all 1s to CSR
	csrrw x2, 0xd1c, x0	// Write all 0s to CSR
	csrrs x2, 0xd1c, x24	// Set all CSR bits
	csrrc x2, 0xd1c, x24	// Clear all CSR bits
	csrrw x2, 0xd1c, x1	// Restore CSR

// Testing CSR 0xd1d
	csrr x2, 0xd1d	// Read CSR
	li x14, -1
	csrrw x31, 0xd1d, x14	// Write all 1s to CSR
	csrrw x31, 0xd1d, x0	// Write all 0s to CSR
	csrrs x31, 0xd1d, x14	// Set all CSR bits
	csrrc x31, 0xd1d, x14	// Clear all CSR bits
	csrrw x31, 0xd1d, x2	// Restore CSR

// Testing CSR 0xd1e
	csrr x20, 0xd1e	// Read CSR
	li x10, -1
	csrrw x15, 0xd1e, x10	// Write all 1s to CSR
	csrrw x15, 0xd1e, x0	// Write all 0s to CSR
	csrrs x15, 0xd1e, x10	// Set all CSR bits
	csrrc x15, 0xd1e, x10	// Clear all CSR bits
	csrrw x15, 0xd1e, x20	// Restore CSR

// Testing CSR 0xd1f
	csrr x11, 0xd1f	// Read CSR
	li x21, -1
	csrrw x1, 0xd1f, x21	// Write all 1s to CSR
	csrrw x1, 0xd1f, x0	// Write all 0s to CSR
	csrrs x1, 0xd1f, x21	// Set all CSR bits
	csrrc x1, 0xd1f, x21	// Clear all CSR bits
	csrrw x1, 0xd1f, x11	// Restore CSR

// Testing CSR 0xd20
	csrr x29, 0xd20	// Read CSR
	li x18, -1
	csrrw x13, 0xd20, x18	// Write all 1s to CSR
	csrrw x13, 0xd20, x0	// Write all 0s to CSR
	csrrs x13, 0xd20, x18	// Set all CSR bits
	csrrc x13, 0xd20, x18	// Clear all CSR bits
	csrrw x13, 0xd20, x29	// Restore CSR

// Testing CSR 0xd21
	csrr x4, 0xd21	// Read CSR
	li x14, -1
	csrrw x9, 0xd21, x14	// Write all 1s to CSR
	csrrw x9, 0xd21, x0	// Write all 0s to CSR
	csrrs x9, 0xd21, x14	// Set all CSR bits
	csrrc x9, 0xd21, x14	// Clear all CSR bits
	csrrw x9, 0xd21, x4	// Restore CSR

// Testing CSR 0xd22
	csrr x26, 0xd22	// Read CSR
	li x24, -1
	csrrw x2, 0xd22, x24	// Write all 1s to CSR
	csrrw x2, 0xd22, x0	// Write all 0s to CSR
	csrrs x2, 0xd22, x24	// Set all CSR bits
	csrrc x2, 0xd22, x24	// Clear all CSR bits
	csrrw x2, 0xd22, x26	// Restore CSR

// Testing CSR 0xd23
	csrr x26, 0xd23	// Read CSR
	li x11, -1
	csrrw x2, 0xd23, x11	// Write all 1s to CSR
	csrrw x2, 0xd23, x0	// Write all 0s to CSR
	csrrs x2, 0xd23, x11	// Set all CSR bits
	csrrc x2, 0xd23, x11	// Clear all CSR bits
	csrrw x2, 0xd23, x26	// Restore CSR

// Testing CSR 0xd24
	csrr x2, 0xd24	// Read CSR
	li x12, -1
	csrrw x21, 0xd24, x12	// Write all 1s to CSR
	csrrw x21, 0xd24, x0	// Write all 0s to CSR
	csrrs x21, 0xd24, x12	// Set all CSR bits
	csrrc x21, 0xd24, x12	// Clear all CSR bits
	csrrw x21, 0xd24, x2	// Restore CSR

// Testing CSR 0xd25
	csrr x26, 0xd25	// Read CSR
	li x22, -1
	csrrw x25, 0xd25, x22	// Write all 1s to CSR
	csrrw x25, 0xd25, x0	// Write all 0s to CSR
	csrrs x25, 0xd25, x22	// Set all CSR bits
	csrrc x25, 0xd25, x22	// Clear all CSR bits
	csrrw x25, 0xd25, x26	// Restore CSR

// Testing CSR 0xd26
	csrr x22, 0xd26	// Read CSR
	li x4, -1
	csrrw x20, 0xd26, x4	// Write all 1s to CSR
	csrrw x20, 0xd26, x0	// Write all 0s to CSR
	csrrs x20, 0xd26, x4	// Set all CSR bits
	csrrc x20, 0xd26, x4	// Clear all CSR bits
	csrrw x20, 0xd26, x22	// Restore CSR

// Testing CSR 0xd27
	csrr x23, 0xd27	// Read CSR
	li x24, -1
	csrrw x28, 0xd27, x24	// Write all 1s to CSR
	csrrw x28, 0xd27, x0	// Write all 0s to CSR
	csrrs x28, 0xd27, x24	// Set all CSR bits
	csrrc x28, 0xd27, x24	// Clear all CSR bits
	csrrw x28, 0xd27, x23	// Restore CSR

// Testing CSR 0xd28
	csrr x1, 0xd28	// Read CSR
	li x29, -1
	csrrw x21, 0xd28, x29	// Write all 1s to CSR
	csrrw x21, 0xd28, x0	// Write all 0s to CSR
	csrrs x21, 0xd28, x29	// Set all CSR bits
	csrrc x21, 0xd28, x29	// Clear all CSR bits
	csrrw x21, 0xd28, x1	// Restore CSR

// Testing CSR 0xd29
	csrr x17, 0xd29	// Read CSR
	li x21, -1
	csrrw x4, 0xd29, x21	// Write all 1s to CSR
	csrrw x4, 0xd29, x0	// Write all 0s to CSR
	csrrs x4, 0xd29, x21	// Set all CSR bits
	csrrc x4, 0xd29, x21	// Clear all CSR bits
	csrrw x4, 0xd29, x17	// Restore CSR

// Testing CSR 0xd2a
	csrr x27, 0xd2a	// Read CSR
	li x19, -1
	csrrw x25, 0xd2a, x19	// Write all 1s to CSR
	csrrw x25, 0xd2a, x0	// Write all 0s to CSR
	csrrs x25, 0xd2a, x19	// Set all CSR bits
	csrrc x25, 0xd2a, x19	// Clear all CSR bits
	csrrw x25, 0xd2a, x27	// Restore CSR

// Testing CSR 0xd2b
	csrr x18, 0xd2b	// Read CSR
	li x2, -1
	csrrw x7, 0xd2b, x2	// Write all 1s to CSR
	csrrw x7, 0xd2b, x0	// Write all 0s to CSR
	csrrs x7, 0xd2b, x2	// Set all CSR bits
	csrrc x7, 0xd2b, x2	// Clear all CSR bits
	csrrw x7, 0xd2b, x18	// Restore CSR

// Testing CSR 0xd2c
	csrr x19, 0xd2c	// Read CSR
	li x27, -1
	csrrw x14, 0xd2c, x27	// Write all 1s to CSR
	csrrw x14, 0xd2c, x0	// Write all 0s to CSR
	csrrs x14, 0xd2c, x27	// Set all CSR bits
	csrrc x14, 0xd2c, x27	// Clear all CSR bits
	csrrw x14, 0xd2c, x19	// Restore CSR

// Testing CSR 0xd2d
	csrr x9, 0xd2d	// Read CSR
	li x4, -1
	csrrw x6, 0xd2d, x4	// Write all 1s to CSR
	csrrw x6, 0xd2d, x0	// Write all 0s to CSR
	csrrs x6, 0xd2d, x4	// Set all CSR bits
	csrrc x6, 0xd2d, x4	// Clear all CSR bits
	csrrw x6, 0xd2d, x9	// Restore CSR

// Testing CSR 0xd2e
	csrr x4, 0xd2e	// Read CSR
	li x28, -1
	csrrw x5, 0xd2e, x28	// Write all 1s to CSR
	csrrw x5, 0xd2e, x0	// Write all 0s to CSR
	csrrs x5, 0xd2e, x28	// Set all CSR bits
	csrrc x5, 0xd2e, x28	// Clear all CSR bits
	csrrw x5, 0xd2e, x4	// Restore CSR

// Testing CSR 0xd2f
	csrr x18, 0xd2f	// Read CSR
	li x8, -1
	csrrw x16, 0xd2f, x8	// Write all 1s to CSR
	csrrw x16, 0xd2f, x0	// Write all 0s to CSR
	csrrs x16, 0xd2f, x8	// Set all CSR bits
	csrrc x16, 0xd2f, x8	// Clear all CSR bits
	csrrw x16, 0xd2f, x18	// Restore CSR

// Testing CSR 0xd30
	csrr x30, 0xd30	// Read CSR
	li x20, -1
	csrrw x9, 0xd30, x20	// Write all 1s to CSR
	csrrw x9, 0xd30, x0	// Write all 0s to CSR
	csrrs x9, 0xd30, x20	// Set all CSR bits
	csrrc x9, 0xd30, x20	// Clear all CSR bits
	csrrw x9, 0xd30, x30	// Restore CSR

// Testing CSR 0xd31
	csrr x13, 0xd31	// Read CSR
	li x7, -1
	csrrw x2, 0xd31, x7	// Write all 1s to CSR
	csrrw x2, 0xd31, x0	// Write all 0s to CSR
	csrrs x2, 0xd31, x7	// Set all CSR bits
	csrrc x2, 0xd31, x7	// Clear all CSR bits
	csrrw x2, 0xd31, x13	// Restore CSR

// Testing CSR 0xd32
	csrr x17, 0xd32	// Read CSR
	li x28, -1
	csrrw x16, 0xd32, x28	// Write all 1s to CSR
	csrrw x16, 0xd32, x0	// Write all 0s to CSR
	csrrs x16, 0xd32, x28	// Set all CSR bits
	csrrc x16, 0xd32, x28	// Clear all CSR bits
	csrrw x16, 0xd32, x17	// Restore CSR

// Testing CSR 0xd33
	csrr x3, 0xd33	// Read CSR
	li x28, -1
	csrrw x8, 0xd33, x28	// Write all 1s to CSR
	csrrw x8, 0xd33, x0	// Write all 0s to CSR
	csrrs x8, 0xd33, x28	// Set all CSR bits
	csrrc x8, 0xd33, x28	// Clear all CSR bits
	csrrw x8, 0xd33, x3	// Restore CSR

// Testing CSR 0xd34
	csrr x5, 0xd34	// Read CSR
	li x13, -1
	csrrw x23, 0xd34, x13	// Write all 1s to CSR
	csrrw x23, 0xd34, x0	// Write all 0s to CSR
	csrrs x23, 0xd34, x13	// Set all CSR bits
	csrrc x23, 0xd34, x13	// Clear all CSR bits
	csrrw x23, 0xd34, x5	// Restore CSR

// Testing CSR 0xd35
	csrr x30, 0xd35	// Read CSR
	li x22, -1
	csrrw x15, 0xd35, x22	// Write all 1s to CSR
	csrrw x15, 0xd35, x0	// Write all 0s to CSR
	csrrs x15, 0xd35, x22	// Set all CSR bits
	csrrc x15, 0xd35, x22	// Clear all CSR bits
	csrrw x15, 0xd35, x30	// Restore CSR

// Testing CSR 0xd36
	csrr x3, 0xd36	// Read CSR
	li x8, -1
	csrrw x28, 0xd36, x8	// Write all 1s to CSR
	csrrw x28, 0xd36, x0	// Write all 0s to CSR
	csrrs x28, 0xd36, x8	// Set all CSR bits
	csrrc x28, 0xd36, x8	// Clear all CSR bits
	csrrw x28, 0xd36, x3	// Restore CSR

// Testing CSR 0xd37
	csrr x25, 0xd37	// Read CSR
	li x4, -1
	csrrw x5, 0xd37, x4	// Write all 1s to CSR
	csrrw x5, 0xd37, x0	// Write all 0s to CSR
	csrrs x5, 0xd37, x4	// Set all CSR bits
	csrrc x5, 0xd37, x4	// Clear all CSR bits
	csrrw x5, 0xd37, x25	// Restore CSR

// Testing CSR 0xd38
	csrr x14, 0xd38	// Read CSR
	li x28, -1
	csrrw x22, 0xd38, x28	// Write all 1s to CSR
	csrrw x22, 0xd38, x0	// Write all 0s to CSR
	csrrs x22, 0xd38, x28	// Set all CSR bits
	csrrc x22, 0xd38, x28	// Clear all CSR bits
	csrrw x22, 0xd38, x14	// Restore CSR

// Testing CSR 0xd39
	csrr x16, 0xd39	// Read CSR
	li x14, -1
	csrrw x9, 0xd39, x14	// Write all 1s to CSR
	csrrw x9, 0xd39, x0	// Write all 0s to CSR
	csrrs x9, 0xd39, x14	// Set all CSR bits
	csrrc x9, 0xd39, x14	// Clear all CSR bits
	csrrw x9, 0xd39, x16	// Restore CSR

// Testing CSR 0xd3a
	csrr x20, 0xd3a	// Read CSR
	li x26, -1
	csrrw x7, 0xd3a, x26	// Write all 1s to CSR
	csrrw x7, 0xd3a, x0	// Write all 0s to CSR
	csrrs x7, 0xd3a, x26	// Set all CSR bits
	csrrc x7, 0xd3a, x26	// Clear all CSR bits
	csrrw x7, 0xd3a, x20	// Restore CSR

// Testing CSR 0xd3b
	csrr x18, 0xd3b	// Read CSR
	li x2, -1
	csrrw x23, 0xd3b, x2	// Write all 1s to CSR
	csrrw x23, 0xd3b, x0	// Write all 0s to CSR
	csrrs x23, 0xd3b, x2	// Set all CSR bits
	csrrc x23, 0xd3b, x2	// Clear all CSR bits
	csrrw x23, 0xd3b, x18	// Restore CSR

// Testing CSR 0xd3c
	csrr x22, 0xd3c	// Read CSR
	li x13, -1
	csrrw x5, 0xd3c, x13	// Write all 1s to CSR
	csrrw x5, 0xd3c, x0	// Write all 0s to CSR
	csrrs x5, 0xd3c, x13	// Set all CSR bits
	csrrc x5, 0xd3c, x13	// Clear all CSR bits
	csrrw x5, 0xd3c, x22	// Restore CSR

// Testing CSR 0xd3d
	csrr x23, 0xd3d	// Read CSR
	li x16, -1
	csrrw x24, 0xd3d, x16	// Write all 1s to CSR
	csrrw x24, 0xd3d, x0	// Write all 0s to CSR
	csrrs x24, 0xd3d, x16	// Set all CSR bits
	csrrc x24, 0xd3d, x16	// Clear all CSR bits
	csrrw x24, 0xd3d, x23	// Restore CSR

// Testing CSR 0xd3e
	csrr x19, 0xd3e	// Read CSR
	li x26, -1
	csrrw x5, 0xd3e, x26	// Write all 1s to CSR
	csrrw x5, 0xd3e, x0	// Write all 0s to CSR
	csrrs x5, 0xd3e, x26	// Set all CSR bits
	csrrc x5, 0xd3e, x26	// Clear all CSR bits
	csrrw x5, 0xd3e, x19	// Restore CSR

// Testing CSR 0xd3f
	csrr x2, 0xd3f	// Read CSR
	li x29, -1
	csrrw x10, 0xd3f, x29	// Write all 1s to CSR
	csrrw x10, 0xd3f, x0	// Write all 0s to CSR
	csrrs x10, 0xd3f, x29	// Set all CSR bits
	csrrc x10, 0xd3f, x29	// Clear all CSR bits
	csrrw x10, 0xd3f, x2	// Restore CSR

// Testing CSR 0xd40
	csrr x13, 0xd40	// Read CSR
	li x19, -1
	csrrw x16, 0xd40, x19	// Write all 1s to CSR
	csrrw x16, 0xd40, x0	// Write all 0s to CSR
	csrrs x16, 0xd40, x19	// Set all CSR bits
	csrrc x16, 0xd40, x19	// Clear all CSR bits
	csrrw x16, 0xd40, x13	// Restore CSR

// Testing CSR 0xd41
	csrr x22, 0xd41	// Read CSR
	li x15, -1
	csrrw x20, 0xd41, x15	// Write all 1s to CSR
	csrrw x20, 0xd41, x0	// Write all 0s to CSR
	csrrs x20, 0xd41, x15	// Set all CSR bits
	csrrc x20, 0xd41, x15	// Clear all CSR bits
	csrrw x20, 0xd41, x22	// Restore CSR

// Testing CSR 0xd42
	csrr x24, 0xd42	// Read CSR
	li x26, -1
	csrrw x14, 0xd42, x26	// Write all 1s to CSR
	csrrw x14, 0xd42, x0	// Write all 0s to CSR
	csrrs x14, 0xd42, x26	// Set all CSR bits
	csrrc x14, 0xd42, x26	// Clear all CSR bits
	csrrw x14, 0xd42, x24	// Restore CSR

// Testing CSR 0xd43
	csrr x11, 0xd43	// Read CSR
	li x25, -1
	csrrw x21, 0xd43, x25	// Write all 1s to CSR
	csrrw x21, 0xd43, x0	// Write all 0s to CSR
	csrrs x21, 0xd43, x25	// Set all CSR bits
	csrrc x21, 0xd43, x25	// Clear all CSR bits
	csrrw x21, 0xd43, x11	// Restore CSR

// Testing CSR 0xd44
	csrr x28, 0xd44	// Read CSR
	li x18, -1
	csrrw x8, 0xd44, x18	// Write all 1s to CSR
	csrrw x8, 0xd44, x0	// Write all 0s to CSR
	csrrs x8, 0xd44, x18	// Set all CSR bits
	csrrc x8, 0xd44, x18	// Clear all CSR bits
	csrrw x8, 0xd44, x28	// Restore CSR

// Testing CSR 0xd45
	csrr x27, 0xd45	// Read CSR
	li x3, -1
	csrrw x10, 0xd45, x3	// Write all 1s to CSR
	csrrw x10, 0xd45, x0	// Write all 0s to CSR
	csrrs x10, 0xd45, x3	// Set all CSR bits
	csrrc x10, 0xd45, x3	// Clear all CSR bits
	csrrw x10, 0xd45, x27	// Restore CSR

// Testing CSR 0xd46
	csrr x28, 0xd46	// Read CSR
	li x18, -1
	csrrw x17, 0xd46, x18	// Write all 1s to CSR
	csrrw x17, 0xd46, x0	// Write all 0s to CSR
	csrrs x17, 0xd46, x18	// Set all CSR bits
	csrrc x17, 0xd46, x18	// Clear all CSR bits
	csrrw x17, 0xd46, x28	// Restore CSR

// Testing CSR 0xd47
	csrr x8, 0xd47	// Read CSR
	li x11, -1
	csrrw x30, 0xd47, x11	// Write all 1s to CSR
	csrrw x30, 0xd47, x0	// Write all 0s to CSR
	csrrs x30, 0xd47, x11	// Set all CSR bits
	csrrc x30, 0xd47, x11	// Clear all CSR bits
	csrrw x30, 0xd47, x8	// Restore CSR

// Testing CSR 0xd48
	csrr x27, 0xd48	// Read CSR
	li x31, -1
	csrrw x24, 0xd48, x31	// Write all 1s to CSR
	csrrw x24, 0xd48, x0	// Write all 0s to CSR
	csrrs x24, 0xd48, x31	// Set all CSR bits
	csrrc x24, 0xd48, x31	// Clear all CSR bits
	csrrw x24, 0xd48, x27	// Restore CSR

// Testing CSR 0xd49
	csrr x10, 0xd49	// Read CSR
	li x8, -1
	csrrw x28, 0xd49, x8	// Write all 1s to CSR
	csrrw x28, 0xd49, x0	// Write all 0s to CSR
	csrrs x28, 0xd49, x8	// Set all CSR bits
	csrrc x28, 0xd49, x8	// Clear all CSR bits
	csrrw x28, 0xd49, x10	// Restore CSR

// Testing CSR 0xd4a
	csrr x17, 0xd4a	// Read CSR
	li x14, -1
	csrrw x9, 0xd4a, x14	// Write all 1s to CSR
	csrrw x9, 0xd4a, x0	// Write all 0s to CSR
	csrrs x9, 0xd4a, x14	// Set all CSR bits
	csrrc x9, 0xd4a, x14	// Clear all CSR bits
	csrrw x9, 0xd4a, x17	// Restore CSR

// Testing CSR 0xd4b
	csrr x10, 0xd4b	// Read CSR
	li x26, -1
	csrrw x13, 0xd4b, x26	// Write all 1s to CSR
	csrrw x13, 0xd4b, x0	// Write all 0s to CSR
	csrrs x13, 0xd4b, x26	// Set all CSR bits
	csrrc x13, 0xd4b, x26	// Clear all CSR bits
	csrrw x13, 0xd4b, x10	// Restore CSR

// Testing CSR 0xd4c
	csrr x11, 0xd4c	// Read CSR
	li x24, -1
	csrrw x27, 0xd4c, x24	// Write all 1s to CSR
	csrrw x27, 0xd4c, x0	// Write all 0s to CSR
	csrrs x27, 0xd4c, x24	// Set all CSR bits
	csrrc x27, 0xd4c, x24	// Clear all CSR bits
	csrrw x27, 0xd4c, x11	// Restore CSR

// Testing CSR 0xd4d
	csrr x27, 0xd4d	// Read CSR
	li x7, -1
	csrrw x4, 0xd4d, x7	// Write all 1s to CSR
	csrrw x4, 0xd4d, x0	// Write all 0s to CSR
	csrrs x4, 0xd4d, x7	// Set all CSR bits
	csrrc x4, 0xd4d, x7	// Clear all CSR bits
	csrrw x4, 0xd4d, x27	// Restore CSR

// Testing CSR 0xd4e
	csrr x10, 0xd4e	// Read CSR
	li x4, -1
	csrrw x7, 0xd4e, x4	// Write all 1s to CSR
	csrrw x7, 0xd4e, x0	// Write all 0s to CSR
	csrrs x7, 0xd4e, x4	// Set all CSR bits
	csrrc x7, 0xd4e, x4	// Clear all CSR bits
	csrrw x7, 0xd4e, x10	// Restore CSR

// Testing CSR 0xd4f
	csrr x8, 0xd4f	// Read CSR
	li x14, -1
	csrrw x31, 0xd4f, x14	// Write all 1s to CSR
	csrrw x31, 0xd4f, x0	// Write all 0s to CSR
	csrrs x31, 0xd4f, x14	// Set all CSR bits
	csrrc x31, 0xd4f, x14	// Clear all CSR bits
	csrrw x31, 0xd4f, x8	// Restore CSR

// Testing CSR 0xd50
	csrr x18, 0xd50	// Read CSR
	li x6, -1
	csrrw x11, 0xd50, x6	// Write all 1s to CSR
	csrrw x11, 0xd50, x0	// Write all 0s to CSR
	csrrs x11, 0xd50, x6	// Set all CSR bits
	csrrc x11, 0xd50, x6	// Clear all CSR bits
	csrrw x11, 0xd50, x18	// Restore CSR

// Testing CSR 0xd51
	csrr x7, 0xd51	// Read CSR
	li x14, -1
	csrrw x26, 0xd51, x14	// Write all 1s to CSR
	csrrw x26, 0xd51, x0	// Write all 0s to CSR
	csrrs x26, 0xd51, x14	// Set all CSR bits
	csrrc x26, 0xd51, x14	// Clear all CSR bits
	csrrw x26, 0xd51, x7	// Restore CSR

// Testing CSR 0xd52
	csrr x15, 0xd52	// Read CSR
	li x28, -1
	csrrw x8, 0xd52, x28	// Write all 1s to CSR
	csrrw x8, 0xd52, x0	// Write all 0s to CSR
	csrrs x8, 0xd52, x28	// Set all CSR bits
	csrrc x8, 0xd52, x28	// Clear all CSR bits
	csrrw x8, 0xd52, x15	// Restore CSR

// Testing CSR 0xd53
	csrr x9, 0xd53	// Read CSR
	li x17, -1
	csrrw x31, 0xd53, x17	// Write all 1s to CSR
	csrrw x31, 0xd53, x0	// Write all 0s to CSR
	csrrs x31, 0xd53, x17	// Set all CSR bits
	csrrc x31, 0xd53, x17	// Clear all CSR bits
	csrrw x31, 0xd53, x9	// Restore CSR

// Testing CSR 0xd54
	csrr x12, 0xd54	// Read CSR
	li x13, -1
	csrrw x28, 0xd54, x13	// Write all 1s to CSR
	csrrw x28, 0xd54, x0	// Write all 0s to CSR
	csrrs x28, 0xd54, x13	// Set all CSR bits
	csrrc x28, 0xd54, x13	// Clear all CSR bits
	csrrw x28, 0xd54, x12	// Restore CSR

// Testing CSR 0xd55
	csrr x3, 0xd55	// Read CSR
	li x19, -1
	csrrw x31, 0xd55, x19	// Write all 1s to CSR
	csrrw x31, 0xd55, x0	// Write all 0s to CSR
	csrrs x31, 0xd55, x19	// Set all CSR bits
	csrrc x31, 0xd55, x19	// Clear all CSR bits
	csrrw x31, 0xd55, x3	// Restore CSR

// Testing CSR 0xd56
	csrr x16, 0xd56	// Read CSR
	li x15, -1
	csrrw x22, 0xd56, x15	// Write all 1s to CSR
	csrrw x22, 0xd56, x0	// Write all 0s to CSR
	csrrs x22, 0xd56, x15	// Set all CSR bits
	csrrc x22, 0xd56, x15	// Clear all CSR bits
	csrrw x22, 0xd56, x16	// Restore CSR

// Testing CSR 0xd57
	csrr x4, 0xd57	// Read CSR
	li x6, -1
	csrrw x21, 0xd57, x6	// Write all 1s to CSR
	csrrw x21, 0xd57, x0	// Write all 0s to CSR
	csrrs x21, 0xd57, x6	// Set all CSR bits
	csrrc x21, 0xd57, x6	// Clear all CSR bits
	csrrw x21, 0xd57, x4	// Restore CSR

// Testing CSR 0xd58
	csrr x4, 0xd58	// Read CSR
	li x26, -1
	csrrw x17, 0xd58, x26	// Write all 1s to CSR
	csrrw x17, 0xd58, x0	// Write all 0s to CSR
	csrrs x17, 0xd58, x26	// Set all CSR bits
	csrrc x17, 0xd58, x26	// Clear all CSR bits
	csrrw x17, 0xd58, x4	// Restore CSR

// Testing CSR 0xd59
	csrr x26, 0xd59	// Read CSR
	li x9, -1
	csrrw x1, 0xd59, x9	// Write all 1s to CSR
	csrrw x1, 0xd59, x0	// Write all 0s to CSR
	csrrs x1, 0xd59, x9	// Set all CSR bits
	csrrc x1, 0xd59, x9	// Clear all CSR bits
	csrrw x1, 0xd59, x26	// Restore CSR

// Testing CSR 0xd5a
	csrr x13, 0xd5a	// Read CSR
	li x1, -1
	csrrw x7, 0xd5a, x1	// Write all 1s to CSR
	csrrw x7, 0xd5a, x0	// Write all 0s to CSR
	csrrs x7, 0xd5a, x1	// Set all CSR bits
	csrrc x7, 0xd5a, x1	// Clear all CSR bits
	csrrw x7, 0xd5a, x13	// Restore CSR

// Testing CSR 0xd5b
	csrr x20, 0xd5b	// Read CSR
	li x6, -1
	csrrw x26, 0xd5b, x6	// Write all 1s to CSR
	csrrw x26, 0xd5b, x0	// Write all 0s to CSR
	csrrs x26, 0xd5b, x6	// Set all CSR bits
	csrrc x26, 0xd5b, x6	// Clear all CSR bits
	csrrw x26, 0xd5b, x20	// Restore CSR

// Testing CSR 0xd5c
	csrr x2, 0xd5c	// Read CSR
	li x14, -1
	csrrw x11, 0xd5c, x14	// Write all 1s to CSR
	csrrw x11, 0xd5c, x0	// Write all 0s to CSR
	csrrs x11, 0xd5c, x14	// Set all CSR bits
	csrrc x11, 0xd5c, x14	// Clear all CSR bits
	csrrw x11, 0xd5c, x2	// Restore CSR

// Testing CSR 0xd5d
	csrr x29, 0xd5d	// Read CSR
	li x14, -1
	csrrw x26, 0xd5d, x14	// Write all 1s to CSR
	csrrw x26, 0xd5d, x0	// Write all 0s to CSR
	csrrs x26, 0xd5d, x14	// Set all CSR bits
	csrrc x26, 0xd5d, x14	// Clear all CSR bits
	csrrw x26, 0xd5d, x29	// Restore CSR

// Testing CSR 0xd5e
	csrr x24, 0xd5e	// Read CSR
	li x13, -1
	csrrw x2, 0xd5e, x13	// Write all 1s to CSR
	csrrw x2, 0xd5e, x0	// Write all 0s to CSR
	csrrs x2, 0xd5e, x13	// Set all CSR bits
	csrrc x2, 0xd5e, x13	// Clear all CSR bits
	csrrw x2, 0xd5e, x24	// Restore CSR

// Testing CSR 0xd5f
	csrr x9, 0xd5f	// Read CSR
	li x30, -1
	csrrw x16, 0xd5f, x30	// Write all 1s to CSR
	csrrw x16, 0xd5f, x0	// Write all 0s to CSR
	csrrs x16, 0xd5f, x30	// Set all CSR bits
	csrrc x16, 0xd5f, x30	// Clear all CSR bits
	csrrw x16, 0xd5f, x9	// Restore CSR

// Testing CSR 0xd60
	csrr x22, 0xd60	// Read CSR
	li x31, -1
	csrrw x19, 0xd60, x31	// Write all 1s to CSR
	csrrw x19, 0xd60, x0	// Write all 0s to CSR
	csrrs x19, 0xd60, x31	// Set all CSR bits
	csrrc x19, 0xd60, x31	// Clear all CSR bits
	csrrw x19, 0xd60, x22	// Restore CSR

// Testing CSR 0xd61
	csrr x19, 0xd61	// Read CSR
	li x1, -1
	csrrw x30, 0xd61, x1	// Write all 1s to CSR
	csrrw x30, 0xd61, x0	// Write all 0s to CSR
	csrrs x30, 0xd61, x1	// Set all CSR bits
	csrrc x30, 0xd61, x1	// Clear all CSR bits
	csrrw x30, 0xd61, x19	// Restore CSR

// Testing CSR 0xd62
	csrr x3, 0xd62	// Read CSR
	li x2, -1
	csrrw x5, 0xd62, x2	// Write all 1s to CSR
	csrrw x5, 0xd62, x0	// Write all 0s to CSR
	csrrs x5, 0xd62, x2	// Set all CSR bits
	csrrc x5, 0xd62, x2	// Clear all CSR bits
	csrrw x5, 0xd62, x3	// Restore CSR

// Testing CSR 0xd63
	csrr x31, 0xd63	// Read CSR
	li x20, -1
	csrrw x18, 0xd63, x20	// Write all 1s to CSR
	csrrw x18, 0xd63, x0	// Write all 0s to CSR
	csrrs x18, 0xd63, x20	// Set all CSR bits
	csrrc x18, 0xd63, x20	// Clear all CSR bits
	csrrw x18, 0xd63, x31	// Restore CSR

// Testing CSR 0xd64
	csrr x8, 0xd64	// Read CSR
	li x6, -1
	csrrw x29, 0xd64, x6	// Write all 1s to CSR
	csrrw x29, 0xd64, x0	// Write all 0s to CSR
	csrrs x29, 0xd64, x6	// Set all CSR bits
	csrrc x29, 0xd64, x6	// Clear all CSR bits
	csrrw x29, 0xd64, x8	// Restore CSR

// Testing CSR 0xd65
	csrr x28, 0xd65	// Read CSR
	li x24, -1
	csrrw x11, 0xd65, x24	// Write all 1s to CSR
	csrrw x11, 0xd65, x0	// Write all 0s to CSR
	csrrs x11, 0xd65, x24	// Set all CSR bits
	csrrc x11, 0xd65, x24	// Clear all CSR bits
	csrrw x11, 0xd65, x28	// Restore CSR

// Testing CSR 0xd66
	csrr x14, 0xd66	// Read CSR
	li x5, -1
	csrrw x17, 0xd66, x5	// Write all 1s to CSR
	csrrw x17, 0xd66, x0	// Write all 0s to CSR
	csrrs x17, 0xd66, x5	// Set all CSR bits
	csrrc x17, 0xd66, x5	// Clear all CSR bits
	csrrw x17, 0xd66, x14	// Restore CSR

// Testing CSR 0xd67
	csrr x10, 0xd67	// Read CSR
	li x30, -1
	csrrw x25, 0xd67, x30	// Write all 1s to CSR
	csrrw x25, 0xd67, x0	// Write all 0s to CSR
	csrrs x25, 0xd67, x30	// Set all CSR bits
	csrrc x25, 0xd67, x30	// Clear all CSR bits
	csrrw x25, 0xd67, x10	// Restore CSR

// Testing CSR 0xd68
	csrr x30, 0xd68	// Read CSR
	li x16, -1
	csrrw x8, 0xd68, x16	// Write all 1s to CSR
	csrrw x8, 0xd68, x0	// Write all 0s to CSR
	csrrs x8, 0xd68, x16	// Set all CSR bits
	csrrc x8, 0xd68, x16	// Clear all CSR bits
	csrrw x8, 0xd68, x30	// Restore CSR

// Testing CSR 0xd69
	csrr x21, 0xd69	// Read CSR
	li x3, -1
	csrrw x9, 0xd69, x3	// Write all 1s to CSR
	csrrw x9, 0xd69, x0	// Write all 0s to CSR
	csrrs x9, 0xd69, x3	// Set all CSR bits
	csrrc x9, 0xd69, x3	// Clear all CSR bits
	csrrw x9, 0xd69, x21	// Restore CSR

// Testing CSR 0xd6a
	csrr x5, 0xd6a	// Read CSR
	li x20, -1
	csrrw x7, 0xd6a, x20	// Write all 1s to CSR
	csrrw x7, 0xd6a, x0	// Write all 0s to CSR
	csrrs x7, 0xd6a, x20	// Set all CSR bits
	csrrc x7, 0xd6a, x20	// Clear all CSR bits
	csrrw x7, 0xd6a, x5	// Restore CSR

// Testing CSR 0xd6b
	csrr x8, 0xd6b	// Read CSR
	li x5, -1
	csrrw x1, 0xd6b, x5	// Write all 1s to CSR
	csrrw x1, 0xd6b, x0	// Write all 0s to CSR
	csrrs x1, 0xd6b, x5	// Set all CSR bits
	csrrc x1, 0xd6b, x5	// Clear all CSR bits
	csrrw x1, 0xd6b, x8	// Restore CSR

// Testing CSR 0xd6c
	csrr x29, 0xd6c	// Read CSR
	li x23, -1
	csrrw x1, 0xd6c, x23	// Write all 1s to CSR
	csrrw x1, 0xd6c, x0	// Write all 0s to CSR
	csrrs x1, 0xd6c, x23	// Set all CSR bits
	csrrc x1, 0xd6c, x23	// Clear all CSR bits
	csrrw x1, 0xd6c, x29	// Restore CSR

// Testing CSR 0xd6d
	csrr x15, 0xd6d	// Read CSR
	li x9, -1
	csrrw x10, 0xd6d, x9	// Write all 1s to CSR
	csrrw x10, 0xd6d, x0	// Write all 0s to CSR
	csrrs x10, 0xd6d, x9	// Set all CSR bits
	csrrc x10, 0xd6d, x9	// Clear all CSR bits
	csrrw x10, 0xd6d, x15	// Restore CSR

// Testing CSR 0xd6e
	csrr x24, 0xd6e	// Read CSR
	li x17, -1
	csrrw x1, 0xd6e, x17	// Write all 1s to CSR
	csrrw x1, 0xd6e, x0	// Write all 0s to CSR
	csrrs x1, 0xd6e, x17	// Set all CSR bits
	csrrc x1, 0xd6e, x17	// Clear all CSR bits
	csrrw x1, 0xd6e, x24	// Restore CSR

// Testing CSR 0xd6f
	csrr x13, 0xd6f	// Read CSR
	li x15, -1
	csrrw x26, 0xd6f, x15	// Write all 1s to CSR
	csrrw x26, 0xd6f, x0	// Write all 0s to CSR
	csrrs x26, 0xd6f, x15	// Set all CSR bits
	csrrc x26, 0xd6f, x15	// Clear all CSR bits
	csrrw x26, 0xd6f, x13	// Restore CSR

// Testing CSR 0xd70
	csrr x20, 0xd70	// Read CSR
	li x25, -1
	csrrw x21, 0xd70, x25	// Write all 1s to CSR
	csrrw x21, 0xd70, x0	// Write all 0s to CSR
	csrrs x21, 0xd70, x25	// Set all CSR bits
	csrrc x21, 0xd70, x25	// Clear all CSR bits
	csrrw x21, 0xd70, x20	// Restore CSR

// Testing CSR 0xd71
	csrr x6, 0xd71	// Read CSR
	li x2, -1
	csrrw x21, 0xd71, x2	// Write all 1s to CSR
	csrrw x21, 0xd71, x0	// Write all 0s to CSR
	csrrs x21, 0xd71, x2	// Set all CSR bits
	csrrc x21, 0xd71, x2	// Clear all CSR bits
	csrrw x21, 0xd71, x6	// Restore CSR

// Testing CSR 0xd72
	csrr x28, 0xd72	// Read CSR
	li x1, -1
	csrrw x17, 0xd72, x1	// Write all 1s to CSR
	csrrw x17, 0xd72, x0	// Write all 0s to CSR
	csrrs x17, 0xd72, x1	// Set all CSR bits
	csrrc x17, 0xd72, x1	// Clear all CSR bits
	csrrw x17, 0xd72, x28	// Restore CSR

// Testing CSR 0xd73
	csrr x13, 0xd73	// Read CSR
	li x12, -1
	csrrw x3, 0xd73, x12	// Write all 1s to CSR
	csrrw x3, 0xd73, x0	// Write all 0s to CSR
	csrrs x3, 0xd73, x12	// Set all CSR bits
	csrrc x3, 0xd73, x12	// Clear all CSR bits
	csrrw x3, 0xd73, x13	// Restore CSR

// Testing CSR 0xd74
	csrr x28, 0xd74	// Read CSR
	li x11, -1
	csrrw x1, 0xd74, x11	// Write all 1s to CSR
	csrrw x1, 0xd74, x0	// Write all 0s to CSR
	csrrs x1, 0xd74, x11	// Set all CSR bits
	csrrc x1, 0xd74, x11	// Clear all CSR bits
	csrrw x1, 0xd74, x28	// Restore CSR

// Testing CSR 0xd75
	csrr x31, 0xd75	// Read CSR
	li x22, -1
	csrrw x29, 0xd75, x22	// Write all 1s to CSR
	csrrw x29, 0xd75, x0	// Write all 0s to CSR
	csrrs x29, 0xd75, x22	// Set all CSR bits
	csrrc x29, 0xd75, x22	// Clear all CSR bits
	csrrw x29, 0xd75, x31	// Restore CSR

// Testing CSR 0xd76
	csrr x15, 0xd76	// Read CSR
	li x24, -1
	csrrw x17, 0xd76, x24	// Write all 1s to CSR
	csrrw x17, 0xd76, x0	// Write all 0s to CSR
	csrrs x17, 0xd76, x24	// Set all CSR bits
	csrrc x17, 0xd76, x24	// Clear all CSR bits
	csrrw x17, 0xd76, x15	// Restore CSR

// Testing CSR 0xd77
	csrr x8, 0xd77	// Read CSR
	li x9, -1
	csrrw x13, 0xd77, x9	// Write all 1s to CSR
	csrrw x13, 0xd77, x0	// Write all 0s to CSR
	csrrs x13, 0xd77, x9	// Set all CSR bits
	csrrc x13, 0xd77, x9	// Clear all CSR bits
	csrrw x13, 0xd77, x8	// Restore CSR

// Testing CSR 0xd78
	csrr x2, 0xd78	// Read CSR
	li x14, -1
	csrrw x28, 0xd78, x14	// Write all 1s to CSR
	csrrw x28, 0xd78, x0	// Write all 0s to CSR
	csrrs x28, 0xd78, x14	// Set all CSR bits
	csrrc x28, 0xd78, x14	// Clear all CSR bits
	csrrw x28, 0xd78, x2	// Restore CSR

// Testing CSR 0xd79
	csrr x15, 0xd79	// Read CSR
	li x31, -1
	csrrw x16, 0xd79, x31	// Write all 1s to CSR
	csrrw x16, 0xd79, x0	// Write all 0s to CSR
	csrrs x16, 0xd79, x31	// Set all CSR bits
	csrrc x16, 0xd79, x31	// Clear all CSR bits
	csrrw x16, 0xd79, x15	// Restore CSR

// Testing CSR 0xd7a
	csrr x6, 0xd7a	// Read CSR
	li x27, -1
	csrrw x7, 0xd7a, x27	// Write all 1s to CSR
	csrrw x7, 0xd7a, x0	// Write all 0s to CSR
	csrrs x7, 0xd7a, x27	// Set all CSR bits
	csrrc x7, 0xd7a, x27	// Clear all CSR bits
	csrrw x7, 0xd7a, x6	// Restore CSR

// Testing CSR 0xd7b
	csrr x21, 0xd7b	// Read CSR
	li x4, -1
	csrrw x28, 0xd7b, x4	// Write all 1s to CSR
	csrrw x28, 0xd7b, x0	// Write all 0s to CSR
	csrrs x28, 0xd7b, x4	// Set all CSR bits
	csrrc x28, 0xd7b, x4	// Clear all CSR bits
	csrrw x28, 0xd7b, x21	// Restore CSR

// Testing CSR 0xd7c
	csrr x18, 0xd7c	// Read CSR
	li x17, -1
	csrrw x4, 0xd7c, x17	// Write all 1s to CSR
	csrrw x4, 0xd7c, x0	// Write all 0s to CSR
	csrrs x4, 0xd7c, x17	// Set all CSR bits
	csrrc x4, 0xd7c, x17	// Clear all CSR bits
	csrrw x4, 0xd7c, x18	// Restore CSR

// Testing CSR 0xd7d
	csrr x17, 0xd7d	// Read CSR
	li x7, -1
	csrrw x21, 0xd7d, x7	// Write all 1s to CSR
	csrrw x21, 0xd7d, x0	// Write all 0s to CSR
	csrrs x21, 0xd7d, x7	// Set all CSR bits
	csrrc x21, 0xd7d, x7	// Clear all CSR bits
	csrrw x21, 0xd7d, x17	// Restore CSR

// Testing CSR 0xd7e
	csrr x25, 0xd7e	// Read CSR
	li x23, -1
	csrrw x28, 0xd7e, x23	// Write all 1s to CSR
	csrrw x28, 0xd7e, x0	// Write all 0s to CSR
	csrrs x28, 0xd7e, x23	// Set all CSR bits
	csrrc x28, 0xd7e, x23	// Clear all CSR bits
	csrrw x28, 0xd7e, x25	// Restore CSR

// Testing CSR 0xd7f
	csrr x24, 0xd7f	// Read CSR
	li x28, -1
	csrrw x18, 0xd7f, x28	// Write all 1s to CSR
	csrrw x18, 0xd7f, x0	// Write all 0s to CSR
	csrrs x18, 0xd7f, x28	// Set all CSR bits
	csrrc x18, 0xd7f, x28	// Clear all CSR bits
	csrrw x18, 0xd7f, x24	// Restore CSR

// Testing CSR 0xd80
	csrr x30, 0xd80	// Read CSR
	li x13, -1
	csrrw x11, 0xd80, x13	// Write all 1s to CSR
	csrrw x11, 0xd80, x0	// Write all 0s to CSR
	csrrs x11, 0xd80, x13	// Set all CSR bits
	csrrc x11, 0xd80, x13	// Clear all CSR bits
	csrrw x11, 0xd80, x30	// Restore CSR

// Testing CSR 0xd81
	csrr x9, 0xd81	// Read CSR
	li x8, -1
	csrrw x24, 0xd81, x8	// Write all 1s to CSR
	csrrw x24, 0xd81, x0	// Write all 0s to CSR
	csrrs x24, 0xd81, x8	// Set all CSR bits
	csrrc x24, 0xd81, x8	// Clear all CSR bits
	csrrw x24, 0xd81, x9	// Restore CSR

// Testing CSR 0xd82
	csrr x20, 0xd82	// Read CSR
	li x2, -1
	csrrw x11, 0xd82, x2	// Write all 1s to CSR
	csrrw x11, 0xd82, x0	// Write all 0s to CSR
	csrrs x11, 0xd82, x2	// Set all CSR bits
	csrrc x11, 0xd82, x2	// Clear all CSR bits
	csrrw x11, 0xd82, x20	// Restore CSR

// Testing CSR 0xd83
	csrr x31, 0xd83	// Read CSR
	li x22, -1
	csrrw x9, 0xd83, x22	// Write all 1s to CSR
	csrrw x9, 0xd83, x0	// Write all 0s to CSR
	csrrs x9, 0xd83, x22	// Set all CSR bits
	csrrc x9, 0xd83, x22	// Clear all CSR bits
	csrrw x9, 0xd83, x31	// Restore CSR

// Testing CSR 0xd84
	csrr x29, 0xd84	// Read CSR
	li x3, -1
	csrrw x23, 0xd84, x3	// Write all 1s to CSR
	csrrw x23, 0xd84, x0	// Write all 0s to CSR
	csrrs x23, 0xd84, x3	// Set all CSR bits
	csrrc x23, 0xd84, x3	// Clear all CSR bits
	csrrw x23, 0xd84, x29	// Restore CSR

// Testing CSR 0xd85
	csrr x31, 0xd85	// Read CSR
	li x26, -1
	csrrw x20, 0xd85, x26	// Write all 1s to CSR
	csrrw x20, 0xd85, x0	// Write all 0s to CSR
	csrrs x20, 0xd85, x26	// Set all CSR bits
	csrrc x20, 0xd85, x26	// Clear all CSR bits
	csrrw x20, 0xd85, x31	// Restore CSR

// Testing CSR 0xd86
	csrr x19, 0xd86	// Read CSR
	li x27, -1
	csrrw x26, 0xd86, x27	// Write all 1s to CSR
	csrrw x26, 0xd86, x0	// Write all 0s to CSR
	csrrs x26, 0xd86, x27	// Set all CSR bits
	csrrc x26, 0xd86, x27	// Clear all CSR bits
	csrrw x26, 0xd86, x19	// Restore CSR

// Testing CSR 0xd87
	csrr x6, 0xd87	// Read CSR
	li x4, -1
	csrrw x15, 0xd87, x4	// Write all 1s to CSR
	csrrw x15, 0xd87, x0	// Write all 0s to CSR
	csrrs x15, 0xd87, x4	// Set all CSR bits
	csrrc x15, 0xd87, x4	// Clear all CSR bits
	csrrw x15, 0xd87, x6	// Restore CSR

// Testing CSR 0xd88
	csrr x25, 0xd88	// Read CSR
	li x1, -1
	csrrw x16, 0xd88, x1	// Write all 1s to CSR
	csrrw x16, 0xd88, x0	// Write all 0s to CSR
	csrrs x16, 0xd88, x1	// Set all CSR bits
	csrrc x16, 0xd88, x1	// Clear all CSR bits
	csrrw x16, 0xd88, x25	// Restore CSR

// Testing CSR 0xd89
	csrr x12, 0xd89	// Read CSR
	li x9, -1
	csrrw x14, 0xd89, x9	// Write all 1s to CSR
	csrrw x14, 0xd89, x0	// Write all 0s to CSR
	csrrs x14, 0xd89, x9	// Set all CSR bits
	csrrc x14, 0xd89, x9	// Clear all CSR bits
	csrrw x14, 0xd89, x12	// Restore CSR

// Testing CSR 0xd8a
	csrr x29, 0xd8a	// Read CSR
	li x6, -1
	csrrw x2, 0xd8a, x6	// Write all 1s to CSR
	csrrw x2, 0xd8a, x0	// Write all 0s to CSR
	csrrs x2, 0xd8a, x6	// Set all CSR bits
	csrrc x2, 0xd8a, x6	// Clear all CSR bits
	csrrw x2, 0xd8a, x29	// Restore CSR

// Testing CSR 0xd8b
	csrr x23, 0xd8b	// Read CSR
	li x17, -1
	csrrw x6, 0xd8b, x17	// Write all 1s to CSR
	csrrw x6, 0xd8b, x0	// Write all 0s to CSR
	csrrs x6, 0xd8b, x17	// Set all CSR bits
	csrrc x6, 0xd8b, x17	// Clear all CSR bits
	csrrw x6, 0xd8b, x23	// Restore CSR

// Testing CSR 0xd8c
	csrr x28, 0xd8c	// Read CSR
	li x6, -1
	csrrw x14, 0xd8c, x6	// Write all 1s to CSR
	csrrw x14, 0xd8c, x0	// Write all 0s to CSR
	csrrs x14, 0xd8c, x6	// Set all CSR bits
	csrrc x14, 0xd8c, x6	// Clear all CSR bits
	csrrw x14, 0xd8c, x28	// Restore CSR

// Testing CSR 0xd8d
	csrr x24, 0xd8d	// Read CSR
	li x23, -1
	csrrw x30, 0xd8d, x23	// Write all 1s to CSR
	csrrw x30, 0xd8d, x0	// Write all 0s to CSR
	csrrs x30, 0xd8d, x23	// Set all CSR bits
	csrrc x30, 0xd8d, x23	// Clear all CSR bits
	csrrw x30, 0xd8d, x24	// Restore CSR

// Testing CSR 0xd8e
	csrr x23, 0xd8e	// Read CSR
	li x30, -1
	csrrw x25, 0xd8e, x30	// Write all 1s to CSR
	csrrw x25, 0xd8e, x0	// Write all 0s to CSR
	csrrs x25, 0xd8e, x30	// Set all CSR bits
	csrrc x25, 0xd8e, x30	// Clear all CSR bits
	csrrw x25, 0xd8e, x23	// Restore CSR

// Testing CSR 0xd8f
	csrr x28, 0xd8f	// Read CSR
	li x24, -1
	csrrw x7, 0xd8f, x24	// Write all 1s to CSR
	csrrw x7, 0xd8f, x0	// Write all 0s to CSR
	csrrs x7, 0xd8f, x24	// Set all CSR bits
	csrrc x7, 0xd8f, x24	// Clear all CSR bits
	csrrw x7, 0xd8f, x28	// Restore CSR

// Testing CSR 0xd90
	csrr x10, 0xd90	// Read CSR
	li x20, -1
	csrrw x31, 0xd90, x20	// Write all 1s to CSR
	csrrw x31, 0xd90, x0	// Write all 0s to CSR
	csrrs x31, 0xd90, x20	// Set all CSR bits
	csrrc x31, 0xd90, x20	// Clear all CSR bits
	csrrw x31, 0xd90, x10	// Restore CSR

// Testing CSR 0xd91
	csrr x18, 0xd91	// Read CSR
	li x19, -1
	csrrw x2, 0xd91, x19	// Write all 1s to CSR
	csrrw x2, 0xd91, x0	// Write all 0s to CSR
	csrrs x2, 0xd91, x19	// Set all CSR bits
	csrrc x2, 0xd91, x19	// Clear all CSR bits
	csrrw x2, 0xd91, x18	// Restore CSR

// Testing CSR 0xd92
	csrr x2, 0xd92	// Read CSR
	li x8, -1
	csrrw x1, 0xd92, x8	// Write all 1s to CSR
	csrrw x1, 0xd92, x0	// Write all 0s to CSR
	csrrs x1, 0xd92, x8	// Set all CSR bits
	csrrc x1, 0xd92, x8	// Clear all CSR bits
	csrrw x1, 0xd92, x2	// Restore CSR

// Testing CSR 0xd93
	csrr x19, 0xd93	// Read CSR
	li x25, -1
	csrrw x28, 0xd93, x25	// Write all 1s to CSR
	csrrw x28, 0xd93, x0	// Write all 0s to CSR
	csrrs x28, 0xd93, x25	// Set all CSR bits
	csrrc x28, 0xd93, x25	// Clear all CSR bits
	csrrw x28, 0xd93, x19	// Restore CSR

// Testing CSR 0xd94
	csrr x22, 0xd94	// Read CSR
	li x25, -1
	csrrw x12, 0xd94, x25	// Write all 1s to CSR
	csrrw x12, 0xd94, x0	// Write all 0s to CSR
	csrrs x12, 0xd94, x25	// Set all CSR bits
	csrrc x12, 0xd94, x25	// Clear all CSR bits
	csrrw x12, 0xd94, x22	// Restore CSR

// Testing CSR 0xd95
	csrr x26, 0xd95	// Read CSR
	li x9, -1
	csrrw x15, 0xd95, x9	// Write all 1s to CSR
	csrrw x15, 0xd95, x0	// Write all 0s to CSR
	csrrs x15, 0xd95, x9	// Set all CSR bits
	csrrc x15, 0xd95, x9	// Clear all CSR bits
	csrrw x15, 0xd95, x26	// Restore CSR

// Testing CSR 0xd96
	csrr x26, 0xd96	// Read CSR
	li x31, -1
	csrrw x24, 0xd96, x31	// Write all 1s to CSR
	csrrw x24, 0xd96, x0	// Write all 0s to CSR
	csrrs x24, 0xd96, x31	// Set all CSR bits
	csrrc x24, 0xd96, x31	// Clear all CSR bits
	csrrw x24, 0xd96, x26	// Restore CSR

// Testing CSR 0xd97
	csrr x20, 0xd97	// Read CSR
	li x10, -1
	csrrw x9, 0xd97, x10	// Write all 1s to CSR
	csrrw x9, 0xd97, x0	// Write all 0s to CSR
	csrrs x9, 0xd97, x10	// Set all CSR bits
	csrrc x9, 0xd97, x10	// Clear all CSR bits
	csrrw x9, 0xd97, x20	// Restore CSR

// Testing CSR 0xd98
	csrr x17, 0xd98	// Read CSR
	li x11, -1
	csrrw x12, 0xd98, x11	// Write all 1s to CSR
	csrrw x12, 0xd98, x0	// Write all 0s to CSR
	csrrs x12, 0xd98, x11	// Set all CSR bits
	csrrc x12, 0xd98, x11	// Clear all CSR bits
	csrrw x12, 0xd98, x17	// Restore CSR

// Testing CSR 0xd99
	csrr x5, 0xd99	// Read CSR
	li x3, -1
	csrrw x21, 0xd99, x3	// Write all 1s to CSR
	csrrw x21, 0xd99, x0	// Write all 0s to CSR
	csrrs x21, 0xd99, x3	// Set all CSR bits
	csrrc x21, 0xd99, x3	// Clear all CSR bits
	csrrw x21, 0xd99, x5	// Restore CSR

// Testing CSR 0xd9a
	csrr x15, 0xd9a	// Read CSR
	li x18, -1
	csrrw x4, 0xd9a, x18	// Write all 1s to CSR
	csrrw x4, 0xd9a, x0	// Write all 0s to CSR
	csrrs x4, 0xd9a, x18	// Set all CSR bits
	csrrc x4, 0xd9a, x18	// Clear all CSR bits
	csrrw x4, 0xd9a, x15	// Restore CSR

// Testing CSR 0xd9b
	csrr x27, 0xd9b	// Read CSR
	li x24, -1
	csrrw x4, 0xd9b, x24	// Write all 1s to CSR
	csrrw x4, 0xd9b, x0	// Write all 0s to CSR
	csrrs x4, 0xd9b, x24	// Set all CSR bits
	csrrc x4, 0xd9b, x24	// Clear all CSR bits
	csrrw x4, 0xd9b, x27	// Restore CSR

// Testing CSR 0xd9c
	csrr x5, 0xd9c	// Read CSR
	li x6, -1
	csrrw x11, 0xd9c, x6	// Write all 1s to CSR
	csrrw x11, 0xd9c, x0	// Write all 0s to CSR
	csrrs x11, 0xd9c, x6	// Set all CSR bits
	csrrc x11, 0xd9c, x6	// Clear all CSR bits
	csrrw x11, 0xd9c, x5	// Restore CSR

// Testing CSR 0xd9d
	csrr x14, 0xd9d	// Read CSR
	li x7, -1
	csrrw x18, 0xd9d, x7	// Write all 1s to CSR
	csrrw x18, 0xd9d, x0	// Write all 0s to CSR
	csrrs x18, 0xd9d, x7	// Set all CSR bits
	csrrc x18, 0xd9d, x7	// Clear all CSR bits
	csrrw x18, 0xd9d, x14	// Restore CSR

// Testing CSR 0xd9e
	csrr x9, 0xd9e	// Read CSR
	li x24, -1
	csrrw x12, 0xd9e, x24	// Write all 1s to CSR
	csrrw x12, 0xd9e, x0	// Write all 0s to CSR
	csrrs x12, 0xd9e, x24	// Set all CSR bits
	csrrc x12, 0xd9e, x24	// Clear all CSR bits
	csrrw x12, 0xd9e, x9	// Restore CSR

// Testing CSR 0xd9f
	csrr x21, 0xd9f	// Read CSR
	li x12, -1
	csrrw x9, 0xd9f, x12	// Write all 1s to CSR
	csrrw x9, 0xd9f, x0	// Write all 0s to CSR
	csrrs x9, 0xd9f, x12	// Set all CSR bits
	csrrc x9, 0xd9f, x12	// Clear all CSR bits
	csrrw x9, 0xd9f, x21	// Restore CSR

// Testing CSR 0xda0
	csrr x17, 0xda0	// Read CSR
	li x28, -1
	csrrw x24, 0xda0, x28	// Write all 1s to CSR
	csrrw x24, 0xda0, x0	// Write all 0s to CSR
	csrrs x24, 0xda0, x28	// Set all CSR bits
	csrrc x24, 0xda0, x28	// Clear all CSR bits
	csrrw x24, 0xda0, x17	// Restore CSR

// Testing CSR 0xda1
	csrr x1, 0xda1	// Read CSR
	li x17, -1
	csrrw x26, 0xda1, x17	// Write all 1s to CSR
	csrrw x26, 0xda1, x0	// Write all 0s to CSR
	csrrs x26, 0xda1, x17	// Set all CSR bits
	csrrc x26, 0xda1, x17	// Clear all CSR bits
	csrrw x26, 0xda1, x1	// Restore CSR

// Testing CSR 0xda2
	csrr x29, 0xda2	// Read CSR
	li x30, -1
	csrrw x3, 0xda2, x30	// Write all 1s to CSR
	csrrw x3, 0xda2, x0	// Write all 0s to CSR
	csrrs x3, 0xda2, x30	// Set all CSR bits
	csrrc x3, 0xda2, x30	// Clear all CSR bits
	csrrw x3, 0xda2, x29	// Restore CSR

// Testing CSR 0xda3
	csrr x31, 0xda3	// Read CSR
	li x22, -1
	csrrw x14, 0xda3, x22	// Write all 1s to CSR
	csrrw x14, 0xda3, x0	// Write all 0s to CSR
	csrrs x14, 0xda3, x22	// Set all CSR bits
	csrrc x14, 0xda3, x22	// Clear all CSR bits
	csrrw x14, 0xda3, x31	// Restore CSR

// Testing CSR 0xda4
	csrr x22, 0xda4	// Read CSR
	li x30, -1
	csrrw x4, 0xda4, x30	// Write all 1s to CSR
	csrrw x4, 0xda4, x0	// Write all 0s to CSR
	csrrs x4, 0xda4, x30	// Set all CSR bits
	csrrc x4, 0xda4, x30	// Clear all CSR bits
	csrrw x4, 0xda4, x22	// Restore CSR

// Testing CSR 0xda5
	csrr x19, 0xda5	// Read CSR
	li x27, -1
	csrrw x23, 0xda5, x27	// Write all 1s to CSR
	csrrw x23, 0xda5, x0	// Write all 0s to CSR
	csrrs x23, 0xda5, x27	// Set all CSR bits
	csrrc x23, 0xda5, x27	// Clear all CSR bits
	csrrw x23, 0xda5, x19	// Restore CSR

// Testing CSR 0xda6
	csrr x14, 0xda6	// Read CSR
	li x15, -1
	csrrw x26, 0xda6, x15	// Write all 1s to CSR
	csrrw x26, 0xda6, x0	// Write all 0s to CSR
	csrrs x26, 0xda6, x15	// Set all CSR bits
	csrrc x26, 0xda6, x15	// Clear all CSR bits
	csrrw x26, 0xda6, x14	// Restore CSR

// Testing CSR 0xda7
	csrr x3, 0xda7	// Read CSR
	li x24, -1
	csrrw x4, 0xda7, x24	// Write all 1s to CSR
	csrrw x4, 0xda7, x0	// Write all 0s to CSR
	csrrs x4, 0xda7, x24	// Set all CSR bits
	csrrc x4, 0xda7, x24	// Clear all CSR bits
	csrrw x4, 0xda7, x3	// Restore CSR

// Testing CSR 0xda8
	csrr x24, 0xda8	// Read CSR
	li x15, -1
	csrrw x27, 0xda8, x15	// Write all 1s to CSR
	csrrw x27, 0xda8, x0	// Write all 0s to CSR
	csrrs x27, 0xda8, x15	// Set all CSR bits
	csrrc x27, 0xda8, x15	// Clear all CSR bits
	csrrw x27, 0xda8, x24	// Restore CSR

// Testing CSR 0xda9
	csrr x21, 0xda9	// Read CSR
	li x5, -1
	csrrw x13, 0xda9, x5	// Write all 1s to CSR
	csrrw x13, 0xda9, x0	// Write all 0s to CSR
	csrrs x13, 0xda9, x5	// Set all CSR bits
	csrrc x13, 0xda9, x5	// Clear all CSR bits
	csrrw x13, 0xda9, x21	// Restore CSR

// Testing CSR 0xdaa
	csrr x24, 0xdaa	// Read CSR
	li x6, -1
	csrrw x14, 0xdaa, x6	// Write all 1s to CSR
	csrrw x14, 0xdaa, x0	// Write all 0s to CSR
	csrrs x14, 0xdaa, x6	// Set all CSR bits
	csrrc x14, 0xdaa, x6	// Clear all CSR bits
	csrrw x14, 0xdaa, x24	// Restore CSR

// Testing CSR 0xdab
	csrr x28, 0xdab	// Read CSR
	li x18, -1
	csrrw x31, 0xdab, x18	// Write all 1s to CSR
	csrrw x31, 0xdab, x0	// Write all 0s to CSR
	csrrs x31, 0xdab, x18	// Set all CSR bits
	csrrc x31, 0xdab, x18	// Clear all CSR bits
	csrrw x31, 0xdab, x28	// Restore CSR

// Testing CSR 0xdac
	csrr x2, 0xdac	// Read CSR
	li x12, -1
	csrrw x14, 0xdac, x12	// Write all 1s to CSR
	csrrw x14, 0xdac, x0	// Write all 0s to CSR
	csrrs x14, 0xdac, x12	// Set all CSR bits
	csrrc x14, 0xdac, x12	// Clear all CSR bits
	csrrw x14, 0xdac, x2	// Restore CSR

// Testing CSR 0xdad
	csrr x9, 0xdad	// Read CSR
	li x10, -1
	csrrw x5, 0xdad, x10	// Write all 1s to CSR
	csrrw x5, 0xdad, x0	// Write all 0s to CSR
	csrrs x5, 0xdad, x10	// Set all CSR bits
	csrrc x5, 0xdad, x10	// Clear all CSR bits
	csrrw x5, 0xdad, x9	// Restore CSR

// Testing CSR 0xdae
	csrr x3, 0xdae	// Read CSR
	li x21, -1
	csrrw x19, 0xdae, x21	// Write all 1s to CSR
	csrrw x19, 0xdae, x0	// Write all 0s to CSR
	csrrs x19, 0xdae, x21	// Set all CSR bits
	csrrc x19, 0xdae, x21	// Clear all CSR bits
	csrrw x19, 0xdae, x3	// Restore CSR

// Testing CSR 0xdaf
	csrr x15, 0xdaf	// Read CSR
	li x18, -1
	csrrw x30, 0xdaf, x18	// Write all 1s to CSR
	csrrw x30, 0xdaf, x0	// Write all 0s to CSR
	csrrs x30, 0xdaf, x18	// Set all CSR bits
	csrrc x30, 0xdaf, x18	// Clear all CSR bits
	csrrw x30, 0xdaf, x15	// Restore CSR

// Testing CSR 0xdb0
	csrr x11, 0xdb0	// Read CSR
	li x30, -1
	csrrw x26, 0xdb0, x30	// Write all 1s to CSR
	csrrw x26, 0xdb0, x0	// Write all 0s to CSR
	csrrs x26, 0xdb0, x30	// Set all CSR bits
	csrrc x26, 0xdb0, x30	// Clear all CSR bits
	csrrw x26, 0xdb0, x11	// Restore CSR

// Testing CSR 0xdb1
	csrr x20, 0xdb1	// Read CSR
	li x7, -1
	csrrw x18, 0xdb1, x7	// Write all 1s to CSR
	csrrw x18, 0xdb1, x0	// Write all 0s to CSR
	csrrs x18, 0xdb1, x7	// Set all CSR bits
	csrrc x18, 0xdb1, x7	// Clear all CSR bits
	csrrw x18, 0xdb1, x20	// Restore CSR

// Testing CSR 0xdb2
	csrr x22, 0xdb2	// Read CSR
	li x26, -1
	csrrw x30, 0xdb2, x26	// Write all 1s to CSR
	csrrw x30, 0xdb2, x0	// Write all 0s to CSR
	csrrs x30, 0xdb2, x26	// Set all CSR bits
	csrrc x30, 0xdb2, x26	// Clear all CSR bits
	csrrw x30, 0xdb2, x22	// Restore CSR

// Testing CSR 0xdb3
	csrr x2, 0xdb3	// Read CSR
	li x27, -1
	csrrw x8, 0xdb3, x27	// Write all 1s to CSR
	csrrw x8, 0xdb3, x0	// Write all 0s to CSR
	csrrs x8, 0xdb3, x27	// Set all CSR bits
	csrrc x8, 0xdb3, x27	// Clear all CSR bits
	csrrw x8, 0xdb3, x2	// Restore CSR

// Testing CSR 0xdb4
	csrr x15, 0xdb4	// Read CSR
	li x24, -1
	csrrw x21, 0xdb4, x24	// Write all 1s to CSR
	csrrw x21, 0xdb4, x0	// Write all 0s to CSR
	csrrs x21, 0xdb4, x24	// Set all CSR bits
	csrrc x21, 0xdb4, x24	// Clear all CSR bits
	csrrw x21, 0xdb4, x15	// Restore CSR

// Testing CSR 0xdb5
	csrr x17, 0xdb5	// Read CSR
	li x14, -1
	csrrw x5, 0xdb5, x14	// Write all 1s to CSR
	csrrw x5, 0xdb5, x0	// Write all 0s to CSR
	csrrs x5, 0xdb5, x14	// Set all CSR bits
	csrrc x5, 0xdb5, x14	// Clear all CSR bits
	csrrw x5, 0xdb5, x17	// Restore CSR

// Testing CSR 0xdb6
	csrr x18, 0xdb6	// Read CSR
	li x24, -1
	csrrw x2, 0xdb6, x24	// Write all 1s to CSR
	csrrw x2, 0xdb6, x0	// Write all 0s to CSR
	csrrs x2, 0xdb6, x24	// Set all CSR bits
	csrrc x2, 0xdb6, x24	// Clear all CSR bits
	csrrw x2, 0xdb6, x18	// Restore CSR

// Testing CSR 0xdb7
	csrr x7, 0xdb7	// Read CSR
	li x30, -1
	csrrw x10, 0xdb7, x30	// Write all 1s to CSR
	csrrw x10, 0xdb7, x0	// Write all 0s to CSR
	csrrs x10, 0xdb7, x30	// Set all CSR bits
	csrrc x10, 0xdb7, x30	// Clear all CSR bits
	csrrw x10, 0xdb7, x7	// Restore CSR

// Testing CSR 0xdb8
	csrr x18, 0xdb8	// Read CSR
	li x7, -1
	csrrw x9, 0xdb8, x7	// Write all 1s to CSR
	csrrw x9, 0xdb8, x0	// Write all 0s to CSR
	csrrs x9, 0xdb8, x7	// Set all CSR bits
	csrrc x9, 0xdb8, x7	// Clear all CSR bits
	csrrw x9, 0xdb8, x18	// Restore CSR

// Testing CSR 0xdb9
	csrr x2, 0xdb9	// Read CSR
	li x17, -1
	csrrw x12, 0xdb9, x17	// Write all 1s to CSR
	csrrw x12, 0xdb9, x0	// Write all 0s to CSR
	csrrs x12, 0xdb9, x17	// Set all CSR bits
	csrrc x12, 0xdb9, x17	// Clear all CSR bits
	csrrw x12, 0xdb9, x2	// Restore CSR

// Testing CSR 0xdba
	csrr x23, 0xdba	// Read CSR
	li x24, -1
	csrrw x10, 0xdba, x24	// Write all 1s to CSR
	csrrw x10, 0xdba, x0	// Write all 0s to CSR
	csrrs x10, 0xdba, x24	// Set all CSR bits
	csrrc x10, 0xdba, x24	// Clear all CSR bits
	csrrw x10, 0xdba, x23	// Restore CSR

// Testing CSR 0xdbb
	csrr x13, 0xdbb	// Read CSR
	li x5, -1
	csrrw x2, 0xdbb, x5	// Write all 1s to CSR
	csrrw x2, 0xdbb, x0	// Write all 0s to CSR
	csrrs x2, 0xdbb, x5	// Set all CSR bits
	csrrc x2, 0xdbb, x5	// Clear all CSR bits
	csrrw x2, 0xdbb, x13	// Restore CSR

// Testing CSR 0xdbc
	csrr x7, 0xdbc	// Read CSR
	li x20, -1
	csrrw x10, 0xdbc, x20	// Write all 1s to CSR
	csrrw x10, 0xdbc, x0	// Write all 0s to CSR
	csrrs x10, 0xdbc, x20	// Set all CSR bits
	csrrc x10, 0xdbc, x20	// Clear all CSR bits
	csrrw x10, 0xdbc, x7	// Restore CSR

// Testing CSR 0xdbd
	csrr x27, 0xdbd	// Read CSR
	li x7, -1
	csrrw x15, 0xdbd, x7	// Write all 1s to CSR
	csrrw x15, 0xdbd, x0	// Write all 0s to CSR
	csrrs x15, 0xdbd, x7	// Set all CSR bits
	csrrc x15, 0xdbd, x7	// Clear all CSR bits
	csrrw x15, 0xdbd, x27	// Restore CSR

// Testing CSR 0xdbe
	csrr x10, 0xdbe	// Read CSR
	li x1, -1
	csrrw x2, 0xdbe, x1	// Write all 1s to CSR
	csrrw x2, 0xdbe, x0	// Write all 0s to CSR
	csrrs x2, 0xdbe, x1	// Set all CSR bits
	csrrc x2, 0xdbe, x1	// Clear all CSR bits
	csrrw x2, 0xdbe, x10	// Restore CSR

// Testing CSR 0xdbf
	csrr x14, 0xdbf	// Read CSR
	li x23, -1
	csrrw x18, 0xdbf, x23	// Write all 1s to CSR
	csrrw x18, 0xdbf, x0	// Write all 0s to CSR
	csrrs x18, 0xdbf, x23	// Set all CSR bits
	csrrc x18, 0xdbf, x23	// Clear all CSR bits
	csrrw x18, 0xdbf, x14	// Restore CSR

// Testing CSR 0xe00
	csrr x31, 0xe00	// Read CSR
	li x1, -1
	csrrw x23, 0xe00, x1	// Write all 1s to CSR
	csrrw x23, 0xe00, x0	// Write all 0s to CSR
	csrrs x23, 0xe00, x1	// Set all CSR bits
	csrrc x23, 0xe00, x1	// Clear all CSR bits
	csrrw x23, 0xe00, x31	// Restore CSR

// Testing CSR 0xe01
	csrr x6, 0xe01	// Read CSR
	li x22, -1
	csrrw x4, 0xe01, x22	// Write all 1s to CSR
	csrrw x4, 0xe01, x0	// Write all 0s to CSR
	csrrs x4, 0xe01, x22	// Set all CSR bits
	csrrc x4, 0xe01, x22	// Clear all CSR bits
	csrrw x4, 0xe01, x6	// Restore CSR

// Testing CSR 0xe02
	csrr x12, 0xe02	// Read CSR
	li x14, -1
	csrrw x8, 0xe02, x14	// Write all 1s to CSR
	csrrw x8, 0xe02, x0	// Write all 0s to CSR
	csrrs x8, 0xe02, x14	// Set all CSR bits
	csrrc x8, 0xe02, x14	// Clear all CSR bits
	csrrw x8, 0xe02, x12	// Restore CSR

// Testing CSR 0xe03
	csrr x28, 0xe03	// Read CSR
	li x25, -1
	csrrw x9, 0xe03, x25	// Write all 1s to CSR
	csrrw x9, 0xe03, x0	// Write all 0s to CSR
	csrrs x9, 0xe03, x25	// Set all CSR bits
	csrrc x9, 0xe03, x25	// Clear all CSR bits
	csrrw x9, 0xe03, x28	// Restore CSR

// Testing CSR 0xe04
	csrr x25, 0xe04	// Read CSR
	li x13, -1
	csrrw x17, 0xe04, x13	// Write all 1s to CSR
	csrrw x17, 0xe04, x0	// Write all 0s to CSR
	csrrs x17, 0xe04, x13	// Set all CSR bits
	csrrc x17, 0xe04, x13	// Clear all CSR bits
	csrrw x17, 0xe04, x25	// Restore CSR

// Testing CSR 0xe05
	csrr x12, 0xe05	// Read CSR
	li x19, -1
	csrrw x5, 0xe05, x19	// Write all 1s to CSR
	csrrw x5, 0xe05, x0	// Write all 0s to CSR
	csrrs x5, 0xe05, x19	// Set all CSR bits
	csrrc x5, 0xe05, x19	// Clear all CSR bits
	csrrw x5, 0xe05, x12	// Restore CSR

// Testing CSR 0xe06
	csrr x24, 0xe06	// Read CSR
	li x3, -1
	csrrw x11, 0xe06, x3	// Write all 1s to CSR
	csrrw x11, 0xe06, x0	// Write all 0s to CSR
	csrrs x11, 0xe06, x3	// Set all CSR bits
	csrrc x11, 0xe06, x3	// Clear all CSR bits
	csrrw x11, 0xe06, x24	// Restore CSR

// Testing CSR 0xe07
	csrr x7, 0xe07	// Read CSR
	li x22, -1
	csrrw x2, 0xe07, x22	// Write all 1s to CSR
	csrrw x2, 0xe07, x0	// Write all 0s to CSR
	csrrs x2, 0xe07, x22	// Set all CSR bits
	csrrc x2, 0xe07, x22	// Clear all CSR bits
	csrrw x2, 0xe07, x7	// Restore CSR

// Testing CSR 0xe08
	csrr x13, 0xe08	// Read CSR
	li x28, -1
	csrrw x25, 0xe08, x28	// Write all 1s to CSR
	csrrw x25, 0xe08, x0	// Write all 0s to CSR
	csrrs x25, 0xe08, x28	// Set all CSR bits
	csrrc x25, 0xe08, x28	// Clear all CSR bits
	csrrw x25, 0xe08, x13	// Restore CSR

// Testing CSR 0xe09
	csrr x13, 0xe09	// Read CSR
	li x9, -1
	csrrw x11, 0xe09, x9	// Write all 1s to CSR
	csrrw x11, 0xe09, x0	// Write all 0s to CSR
	csrrs x11, 0xe09, x9	// Set all CSR bits
	csrrc x11, 0xe09, x9	// Clear all CSR bits
	csrrw x11, 0xe09, x13	// Restore CSR

// Testing CSR 0xe0a
	csrr x7, 0xe0a	// Read CSR
	li x17, -1
	csrrw x23, 0xe0a, x17	// Write all 1s to CSR
	csrrw x23, 0xe0a, x0	// Write all 0s to CSR
	csrrs x23, 0xe0a, x17	// Set all CSR bits
	csrrc x23, 0xe0a, x17	// Clear all CSR bits
	csrrw x23, 0xe0a, x7	// Restore CSR

// Testing CSR 0xe0b
	csrr x25, 0xe0b	// Read CSR
	li x8, -1
	csrrw x19, 0xe0b, x8	// Write all 1s to CSR
	csrrw x19, 0xe0b, x0	// Write all 0s to CSR
	csrrs x19, 0xe0b, x8	// Set all CSR bits
	csrrc x19, 0xe0b, x8	// Clear all CSR bits
	csrrw x19, 0xe0b, x25	// Restore CSR

// Testing CSR 0xe0c
	csrr x19, 0xe0c	// Read CSR
	li x26, -1
	csrrw x2, 0xe0c, x26	// Write all 1s to CSR
	csrrw x2, 0xe0c, x0	// Write all 0s to CSR
	csrrs x2, 0xe0c, x26	// Set all CSR bits
	csrrc x2, 0xe0c, x26	// Clear all CSR bits
	csrrw x2, 0xe0c, x19	// Restore CSR

// Testing CSR 0xe0d
	csrr x16, 0xe0d	// Read CSR
	li x26, -1
	csrrw x8, 0xe0d, x26	// Write all 1s to CSR
	csrrw x8, 0xe0d, x0	// Write all 0s to CSR
	csrrs x8, 0xe0d, x26	// Set all CSR bits
	csrrc x8, 0xe0d, x26	// Clear all CSR bits
	csrrw x8, 0xe0d, x16	// Restore CSR

// Testing CSR 0xe0e
	csrr x7, 0xe0e	// Read CSR
	li x9, -1
	csrrw x6, 0xe0e, x9	// Write all 1s to CSR
	csrrw x6, 0xe0e, x0	// Write all 0s to CSR
	csrrs x6, 0xe0e, x9	// Set all CSR bits
	csrrc x6, 0xe0e, x9	// Clear all CSR bits
	csrrw x6, 0xe0e, x7	// Restore CSR

// Testing CSR 0xe0f
	csrr x28, 0xe0f	// Read CSR
	li x6, -1
	csrrw x15, 0xe0f, x6	// Write all 1s to CSR
	csrrw x15, 0xe0f, x0	// Write all 0s to CSR
	csrrs x15, 0xe0f, x6	// Set all CSR bits
	csrrc x15, 0xe0f, x6	// Clear all CSR bits
	csrrw x15, 0xe0f, x28	// Restore CSR

// Testing CSR 0xe10
	csrr x8, 0xe10	// Read CSR
	li x2, -1
	csrrw x3, 0xe10, x2	// Write all 1s to CSR
	csrrw x3, 0xe10, x0	// Write all 0s to CSR
	csrrs x3, 0xe10, x2	// Set all CSR bits
	csrrc x3, 0xe10, x2	// Clear all CSR bits
	csrrw x3, 0xe10, x8	// Restore CSR

// Testing CSR 0xe11
	csrr x8, 0xe11	// Read CSR
	li x13, -1
	csrrw x14, 0xe11, x13	// Write all 1s to CSR
	csrrw x14, 0xe11, x0	// Write all 0s to CSR
	csrrs x14, 0xe11, x13	// Set all CSR bits
	csrrc x14, 0xe11, x13	// Clear all CSR bits
	csrrw x14, 0xe11, x8	// Restore CSR

// Testing CSR 0xe12
	csrr x21, 0xe12	// Read CSR
	li x25, -1
	csrrw x1, 0xe12, x25	// Write all 1s to CSR
	csrrw x1, 0xe12, x0	// Write all 0s to CSR
	csrrs x1, 0xe12, x25	// Set all CSR bits
	csrrc x1, 0xe12, x25	// Clear all CSR bits
	csrrw x1, 0xe12, x21	// Restore CSR

// Testing CSR 0xe13
	csrr x5, 0xe13	// Read CSR
	li x20, -1
	csrrw x10, 0xe13, x20	// Write all 1s to CSR
	csrrw x10, 0xe13, x0	// Write all 0s to CSR
	csrrs x10, 0xe13, x20	// Set all CSR bits
	csrrc x10, 0xe13, x20	// Clear all CSR bits
	csrrw x10, 0xe13, x5	// Restore CSR

// Testing CSR 0xe14
	csrr x23, 0xe14	// Read CSR
	li x26, -1
	csrrw x29, 0xe14, x26	// Write all 1s to CSR
	csrrw x29, 0xe14, x0	// Write all 0s to CSR
	csrrs x29, 0xe14, x26	// Set all CSR bits
	csrrc x29, 0xe14, x26	// Clear all CSR bits
	csrrw x29, 0xe14, x23	// Restore CSR

// Testing CSR 0xe15
	csrr x10, 0xe15	// Read CSR
	li x21, -1
	csrrw x2, 0xe15, x21	// Write all 1s to CSR
	csrrw x2, 0xe15, x0	// Write all 0s to CSR
	csrrs x2, 0xe15, x21	// Set all CSR bits
	csrrc x2, 0xe15, x21	// Clear all CSR bits
	csrrw x2, 0xe15, x10	// Restore CSR

// Testing CSR 0xe16
	csrr x19, 0xe16	// Read CSR
	li x7, -1
	csrrw x10, 0xe16, x7	// Write all 1s to CSR
	csrrw x10, 0xe16, x0	// Write all 0s to CSR
	csrrs x10, 0xe16, x7	// Set all CSR bits
	csrrc x10, 0xe16, x7	// Clear all CSR bits
	csrrw x10, 0xe16, x19	// Restore CSR

// Testing CSR 0xe17
	csrr x16, 0xe17	// Read CSR
	li x13, -1
	csrrw x4, 0xe17, x13	// Write all 1s to CSR
	csrrw x4, 0xe17, x0	// Write all 0s to CSR
	csrrs x4, 0xe17, x13	// Set all CSR bits
	csrrc x4, 0xe17, x13	// Clear all CSR bits
	csrrw x4, 0xe17, x16	// Restore CSR

// Testing CSR 0xe18
	csrr x20, 0xe18	// Read CSR
	li x22, -1
	csrrw x26, 0xe18, x22	// Write all 1s to CSR
	csrrw x26, 0xe18, x0	// Write all 0s to CSR
	csrrs x26, 0xe18, x22	// Set all CSR bits
	csrrc x26, 0xe18, x22	// Clear all CSR bits
	csrrw x26, 0xe18, x20	// Restore CSR

// Testing CSR 0xe19
	csrr x23, 0xe19	// Read CSR
	li x12, -1
	csrrw x3, 0xe19, x12	// Write all 1s to CSR
	csrrw x3, 0xe19, x0	// Write all 0s to CSR
	csrrs x3, 0xe19, x12	// Set all CSR bits
	csrrc x3, 0xe19, x12	// Clear all CSR bits
	csrrw x3, 0xe19, x23	// Restore CSR

// Testing CSR 0xe1a
	csrr x22, 0xe1a	// Read CSR
	li x15, -1
	csrrw x12, 0xe1a, x15	// Write all 1s to CSR
	csrrw x12, 0xe1a, x0	// Write all 0s to CSR
	csrrs x12, 0xe1a, x15	// Set all CSR bits
	csrrc x12, 0xe1a, x15	// Clear all CSR bits
	csrrw x12, 0xe1a, x22	// Restore CSR

// Testing CSR 0xe1b
	csrr x8, 0xe1b	// Read CSR
	li x20, -1
	csrrw x19, 0xe1b, x20	// Write all 1s to CSR
	csrrw x19, 0xe1b, x0	// Write all 0s to CSR
	csrrs x19, 0xe1b, x20	// Set all CSR bits
	csrrc x19, 0xe1b, x20	// Clear all CSR bits
	csrrw x19, 0xe1b, x8	// Restore CSR

// Testing CSR 0xe1c
	csrr x2, 0xe1c	// Read CSR
	li x26, -1
	csrrw x4, 0xe1c, x26	// Write all 1s to CSR
	csrrw x4, 0xe1c, x0	// Write all 0s to CSR
	csrrs x4, 0xe1c, x26	// Set all CSR bits
	csrrc x4, 0xe1c, x26	// Clear all CSR bits
	csrrw x4, 0xe1c, x2	// Restore CSR

// Testing CSR 0xe1d
	csrr x12, 0xe1d	// Read CSR
	li x22, -1
	csrrw x15, 0xe1d, x22	// Write all 1s to CSR
	csrrw x15, 0xe1d, x0	// Write all 0s to CSR
	csrrs x15, 0xe1d, x22	// Set all CSR bits
	csrrc x15, 0xe1d, x22	// Clear all CSR bits
	csrrw x15, 0xe1d, x12	// Restore CSR

// Testing CSR 0xe1e
	csrr x28, 0xe1e	// Read CSR
	li x7, -1
	csrrw x10, 0xe1e, x7	// Write all 1s to CSR
	csrrw x10, 0xe1e, x0	// Write all 0s to CSR
	csrrs x10, 0xe1e, x7	// Set all CSR bits
	csrrc x10, 0xe1e, x7	// Clear all CSR bits
	csrrw x10, 0xe1e, x28	// Restore CSR

// Testing CSR 0xe1f
	csrr x10, 0xe1f	// Read CSR
	li x24, -1
	csrrw x4, 0xe1f, x24	// Write all 1s to CSR
	csrrw x4, 0xe1f, x0	// Write all 0s to CSR
	csrrs x4, 0xe1f, x24	// Set all CSR bits
	csrrc x4, 0xe1f, x24	// Clear all CSR bits
	csrrw x4, 0xe1f, x10	// Restore CSR

// Testing CSR 0xe20
	csrr x25, 0xe20	// Read CSR
	li x1, -1
	csrrw x3, 0xe20, x1	// Write all 1s to CSR
	csrrw x3, 0xe20, x0	// Write all 0s to CSR
	csrrs x3, 0xe20, x1	// Set all CSR bits
	csrrc x3, 0xe20, x1	// Clear all CSR bits
	csrrw x3, 0xe20, x25	// Restore CSR

// Testing CSR 0xe21
	csrr x28, 0xe21	// Read CSR
	li x22, -1
	csrrw x20, 0xe21, x22	// Write all 1s to CSR
	csrrw x20, 0xe21, x0	// Write all 0s to CSR
	csrrs x20, 0xe21, x22	// Set all CSR bits
	csrrc x20, 0xe21, x22	// Clear all CSR bits
	csrrw x20, 0xe21, x28	// Restore CSR

// Testing CSR 0xe22
	csrr x14, 0xe22	// Read CSR
	li x28, -1
	csrrw x7, 0xe22, x28	// Write all 1s to CSR
	csrrw x7, 0xe22, x0	// Write all 0s to CSR
	csrrs x7, 0xe22, x28	// Set all CSR bits
	csrrc x7, 0xe22, x28	// Clear all CSR bits
	csrrw x7, 0xe22, x14	// Restore CSR

// Testing CSR 0xe23
	csrr x16, 0xe23	// Read CSR
	li x7, -1
	csrrw x27, 0xe23, x7	// Write all 1s to CSR
	csrrw x27, 0xe23, x0	// Write all 0s to CSR
	csrrs x27, 0xe23, x7	// Set all CSR bits
	csrrc x27, 0xe23, x7	// Clear all CSR bits
	csrrw x27, 0xe23, x16	// Restore CSR

// Testing CSR 0xe24
	csrr x18, 0xe24	// Read CSR
	li x22, -1
	csrrw x24, 0xe24, x22	// Write all 1s to CSR
	csrrw x24, 0xe24, x0	// Write all 0s to CSR
	csrrs x24, 0xe24, x22	// Set all CSR bits
	csrrc x24, 0xe24, x22	// Clear all CSR bits
	csrrw x24, 0xe24, x18	// Restore CSR

// Testing CSR 0xe25
	csrr x13, 0xe25	// Read CSR
	li x17, -1
	csrrw x16, 0xe25, x17	// Write all 1s to CSR
	csrrw x16, 0xe25, x0	// Write all 0s to CSR
	csrrs x16, 0xe25, x17	// Set all CSR bits
	csrrc x16, 0xe25, x17	// Clear all CSR bits
	csrrw x16, 0xe25, x13	// Restore CSR

// Testing CSR 0xe26
	csrr x31, 0xe26	// Read CSR
	li x6, -1
	csrrw x5, 0xe26, x6	// Write all 1s to CSR
	csrrw x5, 0xe26, x0	// Write all 0s to CSR
	csrrs x5, 0xe26, x6	// Set all CSR bits
	csrrc x5, 0xe26, x6	// Clear all CSR bits
	csrrw x5, 0xe26, x31	// Restore CSR

// Testing CSR 0xe27
	csrr x1, 0xe27	// Read CSR
	li x17, -1
	csrrw x15, 0xe27, x17	// Write all 1s to CSR
	csrrw x15, 0xe27, x0	// Write all 0s to CSR
	csrrs x15, 0xe27, x17	// Set all CSR bits
	csrrc x15, 0xe27, x17	// Clear all CSR bits
	csrrw x15, 0xe27, x1	// Restore CSR

// Testing CSR 0xe28
	csrr x3, 0xe28	// Read CSR
	li x28, -1
	csrrw x14, 0xe28, x28	// Write all 1s to CSR
	csrrw x14, 0xe28, x0	// Write all 0s to CSR
	csrrs x14, 0xe28, x28	// Set all CSR bits
	csrrc x14, 0xe28, x28	// Clear all CSR bits
	csrrw x14, 0xe28, x3	// Restore CSR

// Testing CSR 0xe29
	csrr x21, 0xe29	// Read CSR
	li x29, -1
	csrrw x23, 0xe29, x29	// Write all 1s to CSR
	csrrw x23, 0xe29, x0	// Write all 0s to CSR
	csrrs x23, 0xe29, x29	// Set all CSR bits
	csrrc x23, 0xe29, x29	// Clear all CSR bits
	csrrw x23, 0xe29, x21	// Restore CSR

// Testing CSR 0xe2a
	csrr x11, 0xe2a	// Read CSR
	li x31, -1
	csrrw x24, 0xe2a, x31	// Write all 1s to CSR
	csrrw x24, 0xe2a, x0	// Write all 0s to CSR
	csrrs x24, 0xe2a, x31	// Set all CSR bits
	csrrc x24, 0xe2a, x31	// Clear all CSR bits
	csrrw x24, 0xe2a, x11	// Restore CSR

// Testing CSR 0xe2b
	csrr x6, 0xe2b	// Read CSR
	li x3, -1
	csrrw x19, 0xe2b, x3	// Write all 1s to CSR
	csrrw x19, 0xe2b, x0	// Write all 0s to CSR
	csrrs x19, 0xe2b, x3	// Set all CSR bits
	csrrc x19, 0xe2b, x3	// Clear all CSR bits
	csrrw x19, 0xe2b, x6	// Restore CSR

// Testing CSR 0xe2c
	csrr x25, 0xe2c	// Read CSR
	li x31, -1
	csrrw x20, 0xe2c, x31	// Write all 1s to CSR
	csrrw x20, 0xe2c, x0	// Write all 0s to CSR
	csrrs x20, 0xe2c, x31	// Set all CSR bits
	csrrc x20, 0xe2c, x31	// Clear all CSR bits
	csrrw x20, 0xe2c, x25	// Restore CSR

// Testing CSR 0xe2d
	csrr x11, 0xe2d	// Read CSR
	li x15, -1
	csrrw x20, 0xe2d, x15	// Write all 1s to CSR
	csrrw x20, 0xe2d, x0	// Write all 0s to CSR
	csrrs x20, 0xe2d, x15	// Set all CSR bits
	csrrc x20, 0xe2d, x15	// Clear all CSR bits
	csrrw x20, 0xe2d, x11	// Restore CSR

// Testing CSR 0xe2e
	csrr x7, 0xe2e	// Read CSR
	li x23, -1
	csrrw x16, 0xe2e, x23	// Write all 1s to CSR
	csrrw x16, 0xe2e, x0	// Write all 0s to CSR
	csrrs x16, 0xe2e, x23	// Set all CSR bits
	csrrc x16, 0xe2e, x23	// Clear all CSR bits
	csrrw x16, 0xe2e, x7	// Restore CSR

// Testing CSR 0xe2f
	csrr x22, 0xe2f	// Read CSR
	li x26, -1
	csrrw x14, 0xe2f, x26	// Write all 1s to CSR
	csrrw x14, 0xe2f, x0	// Write all 0s to CSR
	csrrs x14, 0xe2f, x26	// Set all CSR bits
	csrrc x14, 0xe2f, x26	// Clear all CSR bits
	csrrw x14, 0xe2f, x22	// Restore CSR

// Testing CSR 0xe30
	csrr x2, 0xe30	// Read CSR
	li x6, -1
	csrrw x9, 0xe30, x6	// Write all 1s to CSR
	csrrw x9, 0xe30, x0	// Write all 0s to CSR
	csrrs x9, 0xe30, x6	// Set all CSR bits
	csrrc x9, 0xe30, x6	// Clear all CSR bits
	csrrw x9, 0xe30, x2	// Restore CSR

// Testing CSR 0xe31
	csrr x10, 0xe31	// Read CSR
	li x18, -1
	csrrw x28, 0xe31, x18	// Write all 1s to CSR
	csrrw x28, 0xe31, x0	// Write all 0s to CSR
	csrrs x28, 0xe31, x18	// Set all CSR bits
	csrrc x28, 0xe31, x18	// Clear all CSR bits
	csrrw x28, 0xe31, x10	// Restore CSR

// Testing CSR 0xe32
	csrr x22, 0xe32	// Read CSR
	li x14, -1
	csrrw x30, 0xe32, x14	// Write all 1s to CSR
	csrrw x30, 0xe32, x0	// Write all 0s to CSR
	csrrs x30, 0xe32, x14	// Set all CSR bits
	csrrc x30, 0xe32, x14	// Clear all CSR bits
	csrrw x30, 0xe32, x22	// Restore CSR

// Testing CSR 0xe33
	csrr x25, 0xe33	// Read CSR
	li x19, -1
	csrrw x1, 0xe33, x19	// Write all 1s to CSR
	csrrw x1, 0xe33, x0	// Write all 0s to CSR
	csrrs x1, 0xe33, x19	// Set all CSR bits
	csrrc x1, 0xe33, x19	// Clear all CSR bits
	csrrw x1, 0xe33, x25	// Restore CSR

// Testing CSR 0xe34
	csrr x21, 0xe34	// Read CSR
	li x16, -1
	csrrw x3, 0xe34, x16	// Write all 1s to CSR
	csrrw x3, 0xe34, x0	// Write all 0s to CSR
	csrrs x3, 0xe34, x16	// Set all CSR bits
	csrrc x3, 0xe34, x16	// Clear all CSR bits
	csrrw x3, 0xe34, x21	// Restore CSR

// Testing CSR 0xe35
	csrr x16, 0xe35	// Read CSR
	li x10, -1
	csrrw x24, 0xe35, x10	// Write all 1s to CSR
	csrrw x24, 0xe35, x0	// Write all 0s to CSR
	csrrs x24, 0xe35, x10	// Set all CSR bits
	csrrc x24, 0xe35, x10	// Clear all CSR bits
	csrrw x24, 0xe35, x16	// Restore CSR

// Testing CSR 0xe36
	csrr x15, 0xe36	// Read CSR
	li x22, -1
	csrrw x18, 0xe36, x22	// Write all 1s to CSR
	csrrw x18, 0xe36, x0	// Write all 0s to CSR
	csrrs x18, 0xe36, x22	// Set all CSR bits
	csrrc x18, 0xe36, x22	// Clear all CSR bits
	csrrw x18, 0xe36, x15	// Restore CSR

// Testing CSR 0xe37
	csrr x12, 0xe37	// Read CSR
	li x30, -1
	csrrw x16, 0xe37, x30	// Write all 1s to CSR
	csrrw x16, 0xe37, x0	// Write all 0s to CSR
	csrrs x16, 0xe37, x30	// Set all CSR bits
	csrrc x16, 0xe37, x30	// Clear all CSR bits
	csrrw x16, 0xe37, x12	// Restore CSR

// Testing CSR 0xe38
	csrr x20, 0xe38	// Read CSR
	li x3, -1
	csrrw x21, 0xe38, x3	// Write all 1s to CSR
	csrrw x21, 0xe38, x0	// Write all 0s to CSR
	csrrs x21, 0xe38, x3	// Set all CSR bits
	csrrc x21, 0xe38, x3	// Clear all CSR bits
	csrrw x21, 0xe38, x20	// Restore CSR

// Testing CSR 0xe39
	csrr x10, 0xe39	// Read CSR
	li x7, -1
	csrrw x25, 0xe39, x7	// Write all 1s to CSR
	csrrw x25, 0xe39, x0	// Write all 0s to CSR
	csrrs x25, 0xe39, x7	// Set all CSR bits
	csrrc x25, 0xe39, x7	// Clear all CSR bits
	csrrw x25, 0xe39, x10	// Restore CSR

// Testing CSR 0xe3a
	csrr x30, 0xe3a	// Read CSR
	li x14, -1
	csrrw x15, 0xe3a, x14	// Write all 1s to CSR
	csrrw x15, 0xe3a, x0	// Write all 0s to CSR
	csrrs x15, 0xe3a, x14	// Set all CSR bits
	csrrc x15, 0xe3a, x14	// Clear all CSR bits
	csrrw x15, 0xe3a, x30	// Restore CSR

// Testing CSR 0xe3b
	csrr x12, 0xe3b	// Read CSR
	li x15, -1
	csrrw x21, 0xe3b, x15	// Write all 1s to CSR
	csrrw x21, 0xe3b, x0	// Write all 0s to CSR
	csrrs x21, 0xe3b, x15	// Set all CSR bits
	csrrc x21, 0xe3b, x15	// Clear all CSR bits
	csrrw x21, 0xe3b, x12	// Restore CSR

// Testing CSR 0xe3c
	csrr x5, 0xe3c	// Read CSR
	li x25, -1
	csrrw x23, 0xe3c, x25	// Write all 1s to CSR
	csrrw x23, 0xe3c, x0	// Write all 0s to CSR
	csrrs x23, 0xe3c, x25	// Set all CSR bits
	csrrc x23, 0xe3c, x25	// Clear all CSR bits
	csrrw x23, 0xe3c, x5	// Restore CSR

// Testing CSR 0xe3d
	csrr x16, 0xe3d	// Read CSR
	li x29, -1
	csrrw x12, 0xe3d, x29	// Write all 1s to CSR
	csrrw x12, 0xe3d, x0	// Write all 0s to CSR
	csrrs x12, 0xe3d, x29	// Set all CSR bits
	csrrc x12, 0xe3d, x29	// Clear all CSR bits
	csrrw x12, 0xe3d, x16	// Restore CSR

// Testing CSR 0xe3e
	csrr x3, 0xe3e	// Read CSR
	li x9, -1
	csrrw x21, 0xe3e, x9	// Write all 1s to CSR
	csrrw x21, 0xe3e, x0	// Write all 0s to CSR
	csrrs x21, 0xe3e, x9	// Set all CSR bits
	csrrc x21, 0xe3e, x9	// Clear all CSR bits
	csrrw x21, 0xe3e, x3	// Restore CSR

// Testing CSR 0xe3f
	csrr x19, 0xe3f	// Read CSR
	li x7, -1
	csrrw x5, 0xe3f, x7	// Write all 1s to CSR
	csrrw x5, 0xe3f, x0	// Write all 0s to CSR
	csrrs x5, 0xe3f, x7	// Set all CSR bits
	csrrc x5, 0xe3f, x7	// Clear all CSR bits
	csrrw x5, 0xe3f, x19	// Restore CSR

// Testing CSR 0xe40
	csrr x22, 0xe40	// Read CSR
	li x17, -1
	csrrw x10, 0xe40, x17	// Write all 1s to CSR
	csrrw x10, 0xe40, x0	// Write all 0s to CSR
	csrrs x10, 0xe40, x17	// Set all CSR bits
	csrrc x10, 0xe40, x17	// Clear all CSR bits
	csrrw x10, 0xe40, x22	// Restore CSR

// Testing CSR 0xe41
	csrr x21, 0xe41	// Read CSR
	li x3, -1
	csrrw x6, 0xe41, x3	// Write all 1s to CSR
	csrrw x6, 0xe41, x0	// Write all 0s to CSR
	csrrs x6, 0xe41, x3	// Set all CSR bits
	csrrc x6, 0xe41, x3	// Clear all CSR bits
	csrrw x6, 0xe41, x21	// Restore CSR

// Testing CSR 0xe42
	csrr x24, 0xe42	// Read CSR
	li x1, -1
	csrrw x28, 0xe42, x1	// Write all 1s to CSR
	csrrw x28, 0xe42, x0	// Write all 0s to CSR
	csrrs x28, 0xe42, x1	// Set all CSR bits
	csrrc x28, 0xe42, x1	// Clear all CSR bits
	csrrw x28, 0xe42, x24	// Restore CSR

// Testing CSR 0xe43
	csrr x18, 0xe43	// Read CSR
	li x19, -1
	csrrw x24, 0xe43, x19	// Write all 1s to CSR
	csrrw x24, 0xe43, x0	// Write all 0s to CSR
	csrrs x24, 0xe43, x19	// Set all CSR bits
	csrrc x24, 0xe43, x19	// Clear all CSR bits
	csrrw x24, 0xe43, x18	// Restore CSR

// Testing CSR 0xe44
	csrr x25, 0xe44	// Read CSR
	li x22, -1
	csrrw x23, 0xe44, x22	// Write all 1s to CSR
	csrrw x23, 0xe44, x0	// Write all 0s to CSR
	csrrs x23, 0xe44, x22	// Set all CSR bits
	csrrc x23, 0xe44, x22	// Clear all CSR bits
	csrrw x23, 0xe44, x25	// Restore CSR

// Testing CSR 0xe45
	csrr x29, 0xe45	// Read CSR
	li x18, -1
	csrrw x31, 0xe45, x18	// Write all 1s to CSR
	csrrw x31, 0xe45, x0	// Write all 0s to CSR
	csrrs x31, 0xe45, x18	// Set all CSR bits
	csrrc x31, 0xe45, x18	// Clear all CSR bits
	csrrw x31, 0xe45, x29	// Restore CSR

// Testing CSR 0xe46
	csrr x15, 0xe46	// Read CSR
	li x26, -1
	csrrw x18, 0xe46, x26	// Write all 1s to CSR
	csrrw x18, 0xe46, x0	// Write all 0s to CSR
	csrrs x18, 0xe46, x26	// Set all CSR bits
	csrrc x18, 0xe46, x26	// Clear all CSR bits
	csrrw x18, 0xe46, x15	// Restore CSR

// Testing CSR 0xe47
	csrr x16, 0xe47	// Read CSR
	li x9, -1
	csrrw x6, 0xe47, x9	// Write all 1s to CSR
	csrrw x6, 0xe47, x0	// Write all 0s to CSR
	csrrs x6, 0xe47, x9	// Set all CSR bits
	csrrc x6, 0xe47, x9	// Clear all CSR bits
	csrrw x6, 0xe47, x16	// Restore CSR

// Testing CSR 0xe48
	csrr x1, 0xe48	// Read CSR
	li x27, -1
	csrrw x21, 0xe48, x27	// Write all 1s to CSR
	csrrw x21, 0xe48, x0	// Write all 0s to CSR
	csrrs x21, 0xe48, x27	// Set all CSR bits
	csrrc x21, 0xe48, x27	// Clear all CSR bits
	csrrw x21, 0xe48, x1	// Restore CSR

// Testing CSR 0xe49
	csrr x29, 0xe49	// Read CSR
	li x12, -1
	csrrw x14, 0xe49, x12	// Write all 1s to CSR
	csrrw x14, 0xe49, x0	// Write all 0s to CSR
	csrrs x14, 0xe49, x12	// Set all CSR bits
	csrrc x14, 0xe49, x12	// Clear all CSR bits
	csrrw x14, 0xe49, x29	// Restore CSR

// Testing CSR 0xe4a
	csrr x10, 0xe4a	// Read CSR
	li x14, -1
	csrrw x2, 0xe4a, x14	// Write all 1s to CSR
	csrrw x2, 0xe4a, x0	// Write all 0s to CSR
	csrrs x2, 0xe4a, x14	// Set all CSR bits
	csrrc x2, 0xe4a, x14	// Clear all CSR bits
	csrrw x2, 0xe4a, x10	// Restore CSR

// Testing CSR 0xe4b
	csrr x23, 0xe4b	// Read CSR
	li x30, -1
	csrrw x2, 0xe4b, x30	// Write all 1s to CSR
	csrrw x2, 0xe4b, x0	// Write all 0s to CSR
	csrrs x2, 0xe4b, x30	// Set all CSR bits
	csrrc x2, 0xe4b, x30	// Clear all CSR bits
	csrrw x2, 0xe4b, x23	// Restore CSR

// Testing CSR 0xe4c
	csrr x2, 0xe4c	// Read CSR
	li x8, -1
	csrrw x14, 0xe4c, x8	// Write all 1s to CSR
	csrrw x14, 0xe4c, x0	// Write all 0s to CSR
	csrrs x14, 0xe4c, x8	// Set all CSR bits
	csrrc x14, 0xe4c, x8	// Clear all CSR bits
	csrrw x14, 0xe4c, x2	// Restore CSR

// Testing CSR 0xe4d
	csrr x25, 0xe4d	// Read CSR
	li x31, -1
	csrrw x21, 0xe4d, x31	// Write all 1s to CSR
	csrrw x21, 0xe4d, x0	// Write all 0s to CSR
	csrrs x21, 0xe4d, x31	// Set all CSR bits
	csrrc x21, 0xe4d, x31	// Clear all CSR bits
	csrrw x21, 0xe4d, x25	// Restore CSR

// Testing CSR 0xe4e
	csrr x3, 0xe4e	// Read CSR
	li x2, -1
	csrrw x31, 0xe4e, x2	// Write all 1s to CSR
	csrrw x31, 0xe4e, x0	// Write all 0s to CSR
	csrrs x31, 0xe4e, x2	// Set all CSR bits
	csrrc x31, 0xe4e, x2	// Clear all CSR bits
	csrrw x31, 0xe4e, x3	// Restore CSR

// Testing CSR 0xe4f
	csrr x13, 0xe4f	// Read CSR
	li x16, -1
	csrrw x20, 0xe4f, x16	// Write all 1s to CSR
	csrrw x20, 0xe4f, x0	// Write all 0s to CSR
	csrrs x20, 0xe4f, x16	// Set all CSR bits
	csrrc x20, 0xe4f, x16	// Clear all CSR bits
	csrrw x20, 0xe4f, x13	// Restore CSR

// Testing CSR 0xe50
	csrr x7, 0xe50	// Read CSR
	li x4, -1
	csrrw x9, 0xe50, x4	// Write all 1s to CSR
	csrrw x9, 0xe50, x0	// Write all 0s to CSR
	csrrs x9, 0xe50, x4	// Set all CSR bits
	csrrc x9, 0xe50, x4	// Clear all CSR bits
	csrrw x9, 0xe50, x7	// Restore CSR

// Testing CSR 0xe51
	csrr x31, 0xe51	// Read CSR
	li x1, -1
	csrrw x6, 0xe51, x1	// Write all 1s to CSR
	csrrw x6, 0xe51, x0	// Write all 0s to CSR
	csrrs x6, 0xe51, x1	// Set all CSR bits
	csrrc x6, 0xe51, x1	// Clear all CSR bits
	csrrw x6, 0xe51, x31	// Restore CSR

// Testing CSR 0xe52
	csrr x16, 0xe52	// Read CSR
	li x20, -1
	csrrw x2, 0xe52, x20	// Write all 1s to CSR
	csrrw x2, 0xe52, x0	// Write all 0s to CSR
	csrrs x2, 0xe52, x20	// Set all CSR bits
	csrrc x2, 0xe52, x20	// Clear all CSR bits
	csrrw x2, 0xe52, x16	// Restore CSR

// Testing CSR 0xe53
	csrr x3, 0xe53	// Read CSR
	li x1, -1
	csrrw x9, 0xe53, x1	// Write all 1s to CSR
	csrrw x9, 0xe53, x0	// Write all 0s to CSR
	csrrs x9, 0xe53, x1	// Set all CSR bits
	csrrc x9, 0xe53, x1	// Clear all CSR bits
	csrrw x9, 0xe53, x3	// Restore CSR

// Testing CSR 0xe54
	csrr x31, 0xe54	// Read CSR
	li x5, -1
	csrrw x15, 0xe54, x5	// Write all 1s to CSR
	csrrw x15, 0xe54, x0	// Write all 0s to CSR
	csrrs x15, 0xe54, x5	// Set all CSR bits
	csrrc x15, 0xe54, x5	// Clear all CSR bits
	csrrw x15, 0xe54, x31	// Restore CSR

// Testing CSR 0xe55
	csrr x25, 0xe55	// Read CSR
	li x6, -1
	csrrw x29, 0xe55, x6	// Write all 1s to CSR
	csrrw x29, 0xe55, x0	// Write all 0s to CSR
	csrrs x29, 0xe55, x6	// Set all CSR bits
	csrrc x29, 0xe55, x6	// Clear all CSR bits
	csrrw x29, 0xe55, x25	// Restore CSR

// Testing CSR 0xe56
	csrr x27, 0xe56	// Read CSR
	li x7, -1
	csrrw x8, 0xe56, x7	// Write all 1s to CSR
	csrrw x8, 0xe56, x0	// Write all 0s to CSR
	csrrs x8, 0xe56, x7	// Set all CSR bits
	csrrc x8, 0xe56, x7	// Clear all CSR bits
	csrrw x8, 0xe56, x27	// Restore CSR

// Testing CSR 0xe57
	csrr x21, 0xe57	// Read CSR
	li x8, -1
	csrrw x30, 0xe57, x8	// Write all 1s to CSR
	csrrw x30, 0xe57, x0	// Write all 0s to CSR
	csrrs x30, 0xe57, x8	// Set all CSR bits
	csrrc x30, 0xe57, x8	// Clear all CSR bits
	csrrw x30, 0xe57, x21	// Restore CSR

// Testing CSR 0xe58
	csrr x18, 0xe58	// Read CSR
	li x22, -1
	csrrw x1, 0xe58, x22	// Write all 1s to CSR
	csrrw x1, 0xe58, x0	// Write all 0s to CSR
	csrrs x1, 0xe58, x22	// Set all CSR bits
	csrrc x1, 0xe58, x22	// Clear all CSR bits
	csrrw x1, 0xe58, x18	// Restore CSR

// Testing CSR 0xe59
	csrr x2, 0xe59	// Read CSR
	li x26, -1
	csrrw x15, 0xe59, x26	// Write all 1s to CSR
	csrrw x15, 0xe59, x0	// Write all 0s to CSR
	csrrs x15, 0xe59, x26	// Set all CSR bits
	csrrc x15, 0xe59, x26	// Clear all CSR bits
	csrrw x15, 0xe59, x2	// Restore CSR

// Testing CSR 0xe5a
	csrr x16, 0xe5a	// Read CSR
	li x11, -1
	csrrw x5, 0xe5a, x11	// Write all 1s to CSR
	csrrw x5, 0xe5a, x0	// Write all 0s to CSR
	csrrs x5, 0xe5a, x11	// Set all CSR bits
	csrrc x5, 0xe5a, x11	// Clear all CSR bits
	csrrw x5, 0xe5a, x16	// Restore CSR

// Testing CSR 0xe5b
	csrr x21, 0xe5b	// Read CSR
	li x3, -1
	csrrw x2, 0xe5b, x3	// Write all 1s to CSR
	csrrw x2, 0xe5b, x0	// Write all 0s to CSR
	csrrs x2, 0xe5b, x3	// Set all CSR bits
	csrrc x2, 0xe5b, x3	// Clear all CSR bits
	csrrw x2, 0xe5b, x21	// Restore CSR

// Testing CSR 0xe5c
	csrr x28, 0xe5c	// Read CSR
	li x22, -1
	csrrw x20, 0xe5c, x22	// Write all 1s to CSR
	csrrw x20, 0xe5c, x0	// Write all 0s to CSR
	csrrs x20, 0xe5c, x22	// Set all CSR bits
	csrrc x20, 0xe5c, x22	// Clear all CSR bits
	csrrw x20, 0xe5c, x28	// Restore CSR

// Testing CSR 0xe5d
	csrr x2, 0xe5d	// Read CSR
	li x29, -1
	csrrw x21, 0xe5d, x29	// Write all 1s to CSR
	csrrw x21, 0xe5d, x0	// Write all 0s to CSR
	csrrs x21, 0xe5d, x29	// Set all CSR bits
	csrrc x21, 0xe5d, x29	// Clear all CSR bits
	csrrw x21, 0xe5d, x2	// Restore CSR

// Testing CSR 0xe5e
	csrr x8, 0xe5e	// Read CSR
	li x31, -1
	csrrw x28, 0xe5e, x31	// Write all 1s to CSR
	csrrw x28, 0xe5e, x0	// Write all 0s to CSR
	csrrs x28, 0xe5e, x31	// Set all CSR bits
	csrrc x28, 0xe5e, x31	// Clear all CSR bits
	csrrw x28, 0xe5e, x8	// Restore CSR

// Testing CSR 0xe5f
	csrr x13, 0xe5f	// Read CSR
	li x25, -1
	csrrw x9, 0xe5f, x25	// Write all 1s to CSR
	csrrw x9, 0xe5f, x0	// Write all 0s to CSR
	csrrs x9, 0xe5f, x25	// Set all CSR bits
	csrrc x9, 0xe5f, x25	// Clear all CSR bits
	csrrw x9, 0xe5f, x13	// Restore CSR

// Testing CSR 0xe60
	csrr x26, 0xe60	// Read CSR
	li x1, -1
	csrrw x16, 0xe60, x1	// Write all 1s to CSR
	csrrw x16, 0xe60, x0	// Write all 0s to CSR
	csrrs x16, 0xe60, x1	// Set all CSR bits
	csrrc x16, 0xe60, x1	// Clear all CSR bits
	csrrw x16, 0xe60, x26	// Restore CSR

// Testing CSR 0xe61
	csrr x9, 0xe61	// Read CSR
	li x26, -1
	csrrw x30, 0xe61, x26	// Write all 1s to CSR
	csrrw x30, 0xe61, x0	// Write all 0s to CSR
	csrrs x30, 0xe61, x26	// Set all CSR bits
	csrrc x30, 0xe61, x26	// Clear all CSR bits
	csrrw x30, 0xe61, x9	// Restore CSR

// Testing CSR 0xe62
	csrr x4, 0xe62	// Read CSR
	li x18, -1
	csrrw x5, 0xe62, x18	// Write all 1s to CSR
	csrrw x5, 0xe62, x0	// Write all 0s to CSR
	csrrs x5, 0xe62, x18	// Set all CSR bits
	csrrc x5, 0xe62, x18	// Clear all CSR bits
	csrrw x5, 0xe62, x4	// Restore CSR

// Testing CSR 0xe63
	csrr x3, 0xe63	// Read CSR
	li x12, -1
	csrrw x24, 0xe63, x12	// Write all 1s to CSR
	csrrw x24, 0xe63, x0	// Write all 0s to CSR
	csrrs x24, 0xe63, x12	// Set all CSR bits
	csrrc x24, 0xe63, x12	// Clear all CSR bits
	csrrw x24, 0xe63, x3	// Restore CSR

// Testing CSR 0xe64
	csrr x11, 0xe64	// Read CSR
	li x21, -1
	csrrw x17, 0xe64, x21	// Write all 1s to CSR
	csrrw x17, 0xe64, x0	// Write all 0s to CSR
	csrrs x17, 0xe64, x21	// Set all CSR bits
	csrrc x17, 0xe64, x21	// Clear all CSR bits
	csrrw x17, 0xe64, x11	// Restore CSR

// Testing CSR 0xe65
	csrr x28, 0xe65	// Read CSR
	li x21, -1
	csrrw x7, 0xe65, x21	// Write all 1s to CSR
	csrrw x7, 0xe65, x0	// Write all 0s to CSR
	csrrs x7, 0xe65, x21	// Set all CSR bits
	csrrc x7, 0xe65, x21	// Clear all CSR bits
	csrrw x7, 0xe65, x28	// Restore CSR

// Testing CSR 0xe66
	csrr x28, 0xe66	// Read CSR
	li x18, -1
	csrrw x22, 0xe66, x18	// Write all 1s to CSR
	csrrw x22, 0xe66, x0	// Write all 0s to CSR
	csrrs x22, 0xe66, x18	// Set all CSR bits
	csrrc x22, 0xe66, x18	// Clear all CSR bits
	csrrw x22, 0xe66, x28	// Restore CSR

// Testing CSR 0xe67
	csrr x20, 0xe67	// Read CSR
	li x29, -1
	csrrw x26, 0xe67, x29	// Write all 1s to CSR
	csrrw x26, 0xe67, x0	// Write all 0s to CSR
	csrrs x26, 0xe67, x29	// Set all CSR bits
	csrrc x26, 0xe67, x29	// Clear all CSR bits
	csrrw x26, 0xe67, x20	// Restore CSR

// Testing CSR 0xe68
	csrr x20, 0xe68	// Read CSR
	li x26, -1
	csrrw x7, 0xe68, x26	// Write all 1s to CSR
	csrrw x7, 0xe68, x0	// Write all 0s to CSR
	csrrs x7, 0xe68, x26	// Set all CSR bits
	csrrc x7, 0xe68, x26	// Clear all CSR bits
	csrrw x7, 0xe68, x20	// Restore CSR

// Testing CSR 0xe69
	csrr x18, 0xe69	// Read CSR
	li x17, -1
	csrrw x31, 0xe69, x17	// Write all 1s to CSR
	csrrw x31, 0xe69, x0	// Write all 0s to CSR
	csrrs x31, 0xe69, x17	// Set all CSR bits
	csrrc x31, 0xe69, x17	// Clear all CSR bits
	csrrw x31, 0xe69, x18	// Restore CSR

// Testing CSR 0xe6a
	csrr x10, 0xe6a	// Read CSR
	li x17, -1
	csrrw x8, 0xe6a, x17	// Write all 1s to CSR
	csrrw x8, 0xe6a, x0	// Write all 0s to CSR
	csrrs x8, 0xe6a, x17	// Set all CSR bits
	csrrc x8, 0xe6a, x17	// Clear all CSR bits
	csrrw x8, 0xe6a, x10	// Restore CSR

// Testing CSR 0xe6b
	csrr x6, 0xe6b	// Read CSR
	li x3, -1
	csrrw x12, 0xe6b, x3	// Write all 1s to CSR
	csrrw x12, 0xe6b, x0	// Write all 0s to CSR
	csrrs x12, 0xe6b, x3	// Set all CSR bits
	csrrc x12, 0xe6b, x3	// Clear all CSR bits
	csrrw x12, 0xe6b, x6	// Restore CSR

// Testing CSR 0xe6c
	csrr x4, 0xe6c	// Read CSR
	li x10, -1
	csrrw x14, 0xe6c, x10	// Write all 1s to CSR
	csrrw x14, 0xe6c, x0	// Write all 0s to CSR
	csrrs x14, 0xe6c, x10	// Set all CSR bits
	csrrc x14, 0xe6c, x10	// Clear all CSR bits
	csrrw x14, 0xe6c, x4	// Restore CSR

// Testing CSR 0xe6d
	csrr x29, 0xe6d	// Read CSR
	li x14, -1
	csrrw x17, 0xe6d, x14	// Write all 1s to CSR
	csrrw x17, 0xe6d, x0	// Write all 0s to CSR
	csrrs x17, 0xe6d, x14	// Set all CSR bits
	csrrc x17, 0xe6d, x14	// Clear all CSR bits
	csrrw x17, 0xe6d, x29	// Restore CSR

// Testing CSR 0xe6e
	csrr x9, 0xe6e	// Read CSR
	li x17, -1
	csrrw x5, 0xe6e, x17	// Write all 1s to CSR
	csrrw x5, 0xe6e, x0	// Write all 0s to CSR
	csrrs x5, 0xe6e, x17	// Set all CSR bits
	csrrc x5, 0xe6e, x17	// Clear all CSR bits
	csrrw x5, 0xe6e, x9	// Restore CSR

// Testing CSR 0xe6f
	csrr x4, 0xe6f	// Read CSR
	li x12, -1
	csrrw x31, 0xe6f, x12	// Write all 1s to CSR
	csrrw x31, 0xe6f, x0	// Write all 0s to CSR
	csrrs x31, 0xe6f, x12	// Set all CSR bits
	csrrc x31, 0xe6f, x12	// Clear all CSR bits
	csrrw x31, 0xe6f, x4	// Restore CSR

// Testing CSR 0xe70
	csrr x13, 0xe70	// Read CSR
	li x4, -1
	csrrw x27, 0xe70, x4	// Write all 1s to CSR
	csrrw x27, 0xe70, x0	// Write all 0s to CSR
	csrrs x27, 0xe70, x4	// Set all CSR bits
	csrrc x27, 0xe70, x4	// Clear all CSR bits
	csrrw x27, 0xe70, x13	// Restore CSR

// Testing CSR 0xe71
	csrr x31, 0xe71	// Read CSR
	li x30, -1
	csrrw x6, 0xe71, x30	// Write all 1s to CSR
	csrrw x6, 0xe71, x0	// Write all 0s to CSR
	csrrs x6, 0xe71, x30	// Set all CSR bits
	csrrc x6, 0xe71, x30	// Clear all CSR bits
	csrrw x6, 0xe71, x31	// Restore CSR

// Testing CSR 0xe72
	csrr x27, 0xe72	// Read CSR
	li x2, -1
	csrrw x14, 0xe72, x2	// Write all 1s to CSR
	csrrw x14, 0xe72, x0	// Write all 0s to CSR
	csrrs x14, 0xe72, x2	// Set all CSR bits
	csrrc x14, 0xe72, x2	// Clear all CSR bits
	csrrw x14, 0xe72, x27	// Restore CSR

// Testing CSR 0xe73
	csrr x31, 0xe73	// Read CSR
	li x18, -1
	csrrw x1, 0xe73, x18	// Write all 1s to CSR
	csrrw x1, 0xe73, x0	// Write all 0s to CSR
	csrrs x1, 0xe73, x18	// Set all CSR bits
	csrrc x1, 0xe73, x18	// Clear all CSR bits
	csrrw x1, 0xe73, x31	// Restore CSR

// Testing CSR 0xe74
	csrr x19, 0xe74	// Read CSR
	li x9, -1
	csrrw x30, 0xe74, x9	// Write all 1s to CSR
	csrrw x30, 0xe74, x0	// Write all 0s to CSR
	csrrs x30, 0xe74, x9	// Set all CSR bits
	csrrc x30, 0xe74, x9	// Clear all CSR bits
	csrrw x30, 0xe74, x19	// Restore CSR

// Testing CSR 0xe75
	csrr x22, 0xe75	// Read CSR
	li x24, -1
	csrrw x19, 0xe75, x24	// Write all 1s to CSR
	csrrw x19, 0xe75, x0	// Write all 0s to CSR
	csrrs x19, 0xe75, x24	// Set all CSR bits
	csrrc x19, 0xe75, x24	// Clear all CSR bits
	csrrw x19, 0xe75, x22	// Restore CSR

// Testing CSR 0xe76
	csrr x24, 0xe76	// Read CSR
	li x31, -1
	csrrw x11, 0xe76, x31	// Write all 1s to CSR
	csrrw x11, 0xe76, x0	// Write all 0s to CSR
	csrrs x11, 0xe76, x31	// Set all CSR bits
	csrrc x11, 0xe76, x31	// Clear all CSR bits
	csrrw x11, 0xe76, x24	// Restore CSR

// Testing CSR 0xe77
	csrr x8, 0xe77	// Read CSR
	li x25, -1
	csrrw x1, 0xe77, x25	// Write all 1s to CSR
	csrrw x1, 0xe77, x0	// Write all 0s to CSR
	csrrs x1, 0xe77, x25	// Set all CSR bits
	csrrc x1, 0xe77, x25	// Clear all CSR bits
	csrrw x1, 0xe77, x8	// Restore CSR

// Testing CSR 0xe78
	csrr x2, 0xe78	// Read CSR
	li x30, -1
	csrrw x1, 0xe78, x30	// Write all 1s to CSR
	csrrw x1, 0xe78, x0	// Write all 0s to CSR
	csrrs x1, 0xe78, x30	// Set all CSR bits
	csrrc x1, 0xe78, x30	// Clear all CSR bits
	csrrw x1, 0xe78, x2	// Restore CSR

// Testing CSR 0xe79
	csrr x8, 0xe79	// Read CSR
	li x26, -1
	csrrw x27, 0xe79, x26	// Write all 1s to CSR
	csrrw x27, 0xe79, x0	// Write all 0s to CSR
	csrrs x27, 0xe79, x26	// Set all CSR bits
	csrrc x27, 0xe79, x26	// Clear all CSR bits
	csrrw x27, 0xe79, x8	// Restore CSR

// Testing CSR 0xe7a
	csrr x11, 0xe7a	// Read CSR
	li x4, -1
	csrrw x21, 0xe7a, x4	// Write all 1s to CSR
	csrrw x21, 0xe7a, x0	// Write all 0s to CSR
	csrrs x21, 0xe7a, x4	// Set all CSR bits
	csrrc x21, 0xe7a, x4	// Clear all CSR bits
	csrrw x21, 0xe7a, x11	// Restore CSR

// Testing CSR 0xe7b
	csrr x24, 0xe7b	// Read CSR
	li x27, -1
	csrrw x31, 0xe7b, x27	// Write all 1s to CSR
	csrrw x31, 0xe7b, x0	// Write all 0s to CSR
	csrrs x31, 0xe7b, x27	// Set all CSR bits
	csrrc x31, 0xe7b, x27	// Clear all CSR bits
	csrrw x31, 0xe7b, x24	// Restore CSR

// Testing CSR 0xe7c
	csrr x21, 0xe7c	// Read CSR
	li x23, -1
	csrrw x3, 0xe7c, x23	// Write all 1s to CSR
	csrrw x3, 0xe7c, x0	// Write all 0s to CSR
	csrrs x3, 0xe7c, x23	// Set all CSR bits
	csrrc x3, 0xe7c, x23	// Clear all CSR bits
	csrrw x3, 0xe7c, x21	// Restore CSR

// Testing CSR 0xe7d
	csrr x10, 0xe7d	// Read CSR
	li x9, -1
	csrrw x15, 0xe7d, x9	// Write all 1s to CSR
	csrrw x15, 0xe7d, x0	// Write all 0s to CSR
	csrrs x15, 0xe7d, x9	// Set all CSR bits
	csrrc x15, 0xe7d, x9	// Clear all CSR bits
	csrrw x15, 0xe7d, x10	// Restore CSR

// Testing CSR 0xe7e
	csrr x2, 0xe7e	// Read CSR
	li x25, -1
	csrrw x4, 0xe7e, x25	// Write all 1s to CSR
	csrrw x4, 0xe7e, x0	// Write all 0s to CSR
	csrrs x4, 0xe7e, x25	// Set all CSR bits
	csrrc x4, 0xe7e, x25	// Clear all CSR bits
	csrrw x4, 0xe7e, x2	// Restore CSR

// Testing CSR 0xe7f
	csrr x14, 0xe7f	// Read CSR
	li x8, -1
	csrrw x9, 0xe7f, x8	// Write all 1s to CSR
	csrrw x9, 0xe7f, x0	// Write all 0s to CSR
	csrrs x9, 0xe7f, x8	// Set all CSR bits
	csrrc x9, 0xe7f, x8	// Clear all CSR bits
	csrrw x9, 0xe7f, x14	// Restore CSR

// Testing CSR 0xe80
	csrr x9, 0xe80	// Read CSR
	li x29, -1
	csrrw x25, 0xe80, x29	// Write all 1s to CSR
	csrrw x25, 0xe80, x0	// Write all 0s to CSR
	csrrs x25, 0xe80, x29	// Set all CSR bits
	csrrc x25, 0xe80, x29	// Clear all CSR bits
	csrrw x25, 0xe80, x9	// Restore CSR

// Testing CSR 0xe81
	csrr x19, 0xe81	// Read CSR
	li x20, -1
	csrrw x24, 0xe81, x20	// Write all 1s to CSR
	csrrw x24, 0xe81, x0	// Write all 0s to CSR
	csrrs x24, 0xe81, x20	// Set all CSR bits
	csrrc x24, 0xe81, x20	// Clear all CSR bits
	csrrw x24, 0xe81, x19	// Restore CSR

// Testing CSR 0xe82
	csrr x22, 0xe82	// Read CSR
	li x24, -1
	csrrw x4, 0xe82, x24	// Write all 1s to CSR
	csrrw x4, 0xe82, x0	// Write all 0s to CSR
	csrrs x4, 0xe82, x24	// Set all CSR bits
	csrrc x4, 0xe82, x24	// Clear all CSR bits
	csrrw x4, 0xe82, x22	// Restore CSR

// Testing CSR 0xe83
	csrr x29, 0xe83	// Read CSR
	li x5, -1
	csrrw x18, 0xe83, x5	// Write all 1s to CSR
	csrrw x18, 0xe83, x0	// Write all 0s to CSR
	csrrs x18, 0xe83, x5	// Set all CSR bits
	csrrc x18, 0xe83, x5	// Clear all CSR bits
	csrrw x18, 0xe83, x29	// Restore CSR

// Testing CSR 0xe84
	csrr x4, 0xe84	// Read CSR
	li x12, -1
	csrrw x30, 0xe84, x12	// Write all 1s to CSR
	csrrw x30, 0xe84, x0	// Write all 0s to CSR
	csrrs x30, 0xe84, x12	// Set all CSR bits
	csrrc x30, 0xe84, x12	// Clear all CSR bits
	csrrw x30, 0xe84, x4	// Restore CSR

// Testing CSR 0xe85
	csrr x26, 0xe85	// Read CSR
	li x9, -1
	csrrw x30, 0xe85, x9	// Write all 1s to CSR
	csrrw x30, 0xe85, x0	// Write all 0s to CSR
	csrrs x30, 0xe85, x9	// Set all CSR bits
	csrrc x30, 0xe85, x9	// Clear all CSR bits
	csrrw x30, 0xe85, x26	// Restore CSR

// Testing CSR 0xe86
	csrr x12, 0xe86	// Read CSR
	li x2, -1
	csrrw x3, 0xe86, x2	// Write all 1s to CSR
	csrrw x3, 0xe86, x0	// Write all 0s to CSR
	csrrs x3, 0xe86, x2	// Set all CSR bits
	csrrc x3, 0xe86, x2	// Clear all CSR bits
	csrrw x3, 0xe86, x12	// Restore CSR

// Testing CSR 0xe87
	csrr x14, 0xe87	// Read CSR
	li x10, -1
	csrrw x31, 0xe87, x10	// Write all 1s to CSR
	csrrw x31, 0xe87, x0	// Write all 0s to CSR
	csrrs x31, 0xe87, x10	// Set all CSR bits
	csrrc x31, 0xe87, x10	// Clear all CSR bits
	csrrw x31, 0xe87, x14	// Restore CSR

// Testing CSR 0xe88
	csrr x26, 0xe88	// Read CSR
	li x12, -1
	csrrw x9, 0xe88, x12	// Write all 1s to CSR
	csrrw x9, 0xe88, x0	// Write all 0s to CSR
	csrrs x9, 0xe88, x12	// Set all CSR bits
	csrrc x9, 0xe88, x12	// Clear all CSR bits
	csrrw x9, 0xe88, x26	// Restore CSR

// Testing CSR 0xe89
	csrr x28, 0xe89	// Read CSR
	li x29, -1
	csrrw x1, 0xe89, x29	// Write all 1s to CSR
	csrrw x1, 0xe89, x0	// Write all 0s to CSR
	csrrs x1, 0xe89, x29	// Set all CSR bits
	csrrc x1, 0xe89, x29	// Clear all CSR bits
	csrrw x1, 0xe89, x28	// Restore CSR

// Testing CSR 0xe8a
	csrr x5, 0xe8a	// Read CSR
	li x16, -1
	csrrw x11, 0xe8a, x16	// Write all 1s to CSR
	csrrw x11, 0xe8a, x0	// Write all 0s to CSR
	csrrs x11, 0xe8a, x16	// Set all CSR bits
	csrrc x11, 0xe8a, x16	// Clear all CSR bits
	csrrw x11, 0xe8a, x5	// Restore CSR

// Testing CSR 0xe8b
	csrr x8, 0xe8b	// Read CSR
	li x7, -1
	csrrw x3, 0xe8b, x7	// Write all 1s to CSR
	csrrw x3, 0xe8b, x0	// Write all 0s to CSR
	csrrs x3, 0xe8b, x7	// Set all CSR bits
	csrrc x3, 0xe8b, x7	// Clear all CSR bits
	csrrw x3, 0xe8b, x8	// Restore CSR

// Testing CSR 0xe8c
	csrr x14, 0xe8c	// Read CSR
	li x12, -1
	csrrw x18, 0xe8c, x12	// Write all 1s to CSR
	csrrw x18, 0xe8c, x0	// Write all 0s to CSR
	csrrs x18, 0xe8c, x12	// Set all CSR bits
	csrrc x18, 0xe8c, x12	// Clear all CSR bits
	csrrw x18, 0xe8c, x14	// Restore CSR

// Testing CSR 0xe8d
	csrr x22, 0xe8d	// Read CSR
	li x3, -1
	csrrw x6, 0xe8d, x3	// Write all 1s to CSR
	csrrw x6, 0xe8d, x0	// Write all 0s to CSR
	csrrs x6, 0xe8d, x3	// Set all CSR bits
	csrrc x6, 0xe8d, x3	// Clear all CSR bits
	csrrw x6, 0xe8d, x22	// Restore CSR

// Testing CSR 0xe8e
	csrr x6, 0xe8e	// Read CSR
	li x21, -1
	csrrw x20, 0xe8e, x21	// Write all 1s to CSR
	csrrw x20, 0xe8e, x0	// Write all 0s to CSR
	csrrs x20, 0xe8e, x21	// Set all CSR bits
	csrrc x20, 0xe8e, x21	// Clear all CSR bits
	csrrw x20, 0xe8e, x6	// Restore CSR

// Testing CSR 0xe8f
	csrr x8, 0xe8f	// Read CSR
	li x27, -1
	csrrw x18, 0xe8f, x27	// Write all 1s to CSR
	csrrw x18, 0xe8f, x0	// Write all 0s to CSR
	csrrs x18, 0xe8f, x27	// Set all CSR bits
	csrrc x18, 0xe8f, x27	// Clear all CSR bits
	csrrw x18, 0xe8f, x8	// Restore CSR

// Testing CSR 0xe90
	csrr x3, 0xe90	// Read CSR
	li x10, -1
	csrrw x31, 0xe90, x10	// Write all 1s to CSR
	csrrw x31, 0xe90, x0	// Write all 0s to CSR
	csrrs x31, 0xe90, x10	// Set all CSR bits
	csrrc x31, 0xe90, x10	// Clear all CSR bits
	csrrw x31, 0xe90, x3	// Restore CSR

// Testing CSR 0xe91
	csrr x23, 0xe91	// Read CSR
	li x17, -1
	csrrw x25, 0xe91, x17	// Write all 1s to CSR
	csrrw x25, 0xe91, x0	// Write all 0s to CSR
	csrrs x25, 0xe91, x17	// Set all CSR bits
	csrrc x25, 0xe91, x17	// Clear all CSR bits
	csrrw x25, 0xe91, x23	// Restore CSR

// Testing CSR 0xe92
	csrr x25, 0xe92	// Read CSR
	li x13, -1
	csrrw x2, 0xe92, x13	// Write all 1s to CSR
	csrrw x2, 0xe92, x0	// Write all 0s to CSR
	csrrs x2, 0xe92, x13	// Set all CSR bits
	csrrc x2, 0xe92, x13	// Clear all CSR bits
	csrrw x2, 0xe92, x25	// Restore CSR

// Testing CSR 0xe93
	csrr x21, 0xe93	// Read CSR
	li x12, -1
	csrrw x7, 0xe93, x12	// Write all 1s to CSR
	csrrw x7, 0xe93, x0	// Write all 0s to CSR
	csrrs x7, 0xe93, x12	// Set all CSR bits
	csrrc x7, 0xe93, x12	// Clear all CSR bits
	csrrw x7, 0xe93, x21	// Restore CSR

// Testing CSR 0xe94
	csrr x15, 0xe94	// Read CSR
	li x19, -1
	csrrw x7, 0xe94, x19	// Write all 1s to CSR
	csrrw x7, 0xe94, x0	// Write all 0s to CSR
	csrrs x7, 0xe94, x19	// Set all CSR bits
	csrrc x7, 0xe94, x19	// Clear all CSR bits
	csrrw x7, 0xe94, x15	// Restore CSR

// Testing CSR 0xe95
	csrr x31, 0xe95	// Read CSR
	li x15, -1
	csrrw x17, 0xe95, x15	// Write all 1s to CSR
	csrrw x17, 0xe95, x0	// Write all 0s to CSR
	csrrs x17, 0xe95, x15	// Set all CSR bits
	csrrc x17, 0xe95, x15	// Clear all CSR bits
	csrrw x17, 0xe95, x31	// Restore CSR

// Testing CSR 0xe96
	csrr x4, 0xe96	// Read CSR
	li x30, -1
	csrrw x15, 0xe96, x30	// Write all 1s to CSR
	csrrw x15, 0xe96, x0	// Write all 0s to CSR
	csrrs x15, 0xe96, x30	// Set all CSR bits
	csrrc x15, 0xe96, x30	// Clear all CSR bits
	csrrw x15, 0xe96, x4	// Restore CSR

// Testing CSR 0xe97
	csrr x31, 0xe97	// Read CSR
	li x7, -1
	csrrw x29, 0xe97, x7	// Write all 1s to CSR
	csrrw x29, 0xe97, x0	// Write all 0s to CSR
	csrrs x29, 0xe97, x7	// Set all CSR bits
	csrrc x29, 0xe97, x7	// Clear all CSR bits
	csrrw x29, 0xe97, x31	// Restore CSR

// Testing CSR 0xe98
	csrr x12, 0xe98	// Read CSR
	li x28, -1
	csrrw x20, 0xe98, x28	// Write all 1s to CSR
	csrrw x20, 0xe98, x0	// Write all 0s to CSR
	csrrs x20, 0xe98, x28	// Set all CSR bits
	csrrc x20, 0xe98, x28	// Clear all CSR bits
	csrrw x20, 0xe98, x12	// Restore CSR

// Testing CSR 0xe99
	csrr x11, 0xe99	// Read CSR
	li x31, -1
	csrrw x23, 0xe99, x31	// Write all 1s to CSR
	csrrw x23, 0xe99, x0	// Write all 0s to CSR
	csrrs x23, 0xe99, x31	// Set all CSR bits
	csrrc x23, 0xe99, x31	// Clear all CSR bits
	csrrw x23, 0xe99, x11	// Restore CSR

// Testing CSR 0xe9a
	csrr x23, 0xe9a	// Read CSR
	li x27, -1
	csrrw x20, 0xe9a, x27	// Write all 1s to CSR
	csrrw x20, 0xe9a, x0	// Write all 0s to CSR
	csrrs x20, 0xe9a, x27	// Set all CSR bits
	csrrc x20, 0xe9a, x27	// Clear all CSR bits
	csrrw x20, 0xe9a, x23	// Restore CSR

// Testing CSR 0xe9b
	csrr x20, 0xe9b	// Read CSR
	li x29, -1
	csrrw x28, 0xe9b, x29	// Write all 1s to CSR
	csrrw x28, 0xe9b, x0	// Write all 0s to CSR
	csrrs x28, 0xe9b, x29	// Set all CSR bits
	csrrc x28, 0xe9b, x29	// Clear all CSR bits
	csrrw x28, 0xe9b, x20	// Restore CSR

// Testing CSR 0xe9c
	csrr x26, 0xe9c	// Read CSR
	li x1, -1
	csrrw x27, 0xe9c, x1	// Write all 1s to CSR
	csrrw x27, 0xe9c, x0	// Write all 0s to CSR
	csrrs x27, 0xe9c, x1	// Set all CSR bits
	csrrc x27, 0xe9c, x1	// Clear all CSR bits
	csrrw x27, 0xe9c, x26	// Restore CSR

// Testing CSR 0xe9d
	csrr x29, 0xe9d	// Read CSR
	li x14, -1
	csrrw x25, 0xe9d, x14	// Write all 1s to CSR
	csrrw x25, 0xe9d, x0	// Write all 0s to CSR
	csrrs x25, 0xe9d, x14	// Set all CSR bits
	csrrc x25, 0xe9d, x14	// Clear all CSR bits
	csrrw x25, 0xe9d, x29	// Restore CSR

// Testing CSR 0xe9e
	csrr x29, 0xe9e	// Read CSR
	li x21, -1
	csrrw x24, 0xe9e, x21	// Write all 1s to CSR
	csrrw x24, 0xe9e, x0	// Write all 0s to CSR
	csrrs x24, 0xe9e, x21	// Set all CSR bits
	csrrc x24, 0xe9e, x21	// Clear all CSR bits
	csrrw x24, 0xe9e, x29	// Restore CSR

// Testing CSR 0xe9f
	csrr x4, 0xe9f	// Read CSR
	li x11, -1
	csrrw x13, 0xe9f, x11	// Write all 1s to CSR
	csrrw x13, 0xe9f, x0	// Write all 0s to CSR
	csrrs x13, 0xe9f, x11	// Set all CSR bits
	csrrc x13, 0xe9f, x11	// Clear all CSR bits
	csrrw x13, 0xe9f, x4	// Restore CSR

// Testing CSR 0xea0
	csrr x14, 0xea0	// Read CSR
	li x12, -1
	csrrw x8, 0xea0, x12	// Write all 1s to CSR
	csrrw x8, 0xea0, x0	// Write all 0s to CSR
	csrrs x8, 0xea0, x12	// Set all CSR bits
	csrrc x8, 0xea0, x12	// Clear all CSR bits
	csrrw x8, 0xea0, x14	// Restore CSR

// Testing CSR 0xea1
	csrr x5, 0xea1	// Read CSR
	li x28, -1
	csrrw x29, 0xea1, x28	// Write all 1s to CSR
	csrrw x29, 0xea1, x0	// Write all 0s to CSR
	csrrs x29, 0xea1, x28	// Set all CSR bits
	csrrc x29, 0xea1, x28	// Clear all CSR bits
	csrrw x29, 0xea1, x5	// Restore CSR

// Testing CSR 0xea2
	csrr x12, 0xea2	// Read CSR
	li x30, -1
	csrrw x13, 0xea2, x30	// Write all 1s to CSR
	csrrw x13, 0xea2, x0	// Write all 0s to CSR
	csrrs x13, 0xea2, x30	// Set all CSR bits
	csrrc x13, 0xea2, x30	// Clear all CSR bits
	csrrw x13, 0xea2, x12	// Restore CSR

// Testing CSR 0xea3
	csrr x31, 0xea3	// Read CSR
	li x13, -1
	csrrw x23, 0xea3, x13	// Write all 1s to CSR
	csrrw x23, 0xea3, x0	// Write all 0s to CSR
	csrrs x23, 0xea3, x13	// Set all CSR bits
	csrrc x23, 0xea3, x13	// Clear all CSR bits
	csrrw x23, 0xea3, x31	// Restore CSR

// Testing CSR 0xea4
	csrr x18, 0xea4	// Read CSR
	li x29, -1
	csrrw x10, 0xea4, x29	// Write all 1s to CSR
	csrrw x10, 0xea4, x0	// Write all 0s to CSR
	csrrs x10, 0xea4, x29	// Set all CSR bits
	csrrc x10, 0xea4, x29	// Clear all CSR bits
	csrrw x10, 0xea4, x18	// Restore CSR

// Testing CSR 0xea5
	csrr x23, 0xea5	// Read CSR
	li x27, -1
	csrrw x22, 0xea5, x27	// Write all 1s to CSR
	csrrw x22, 0xea5, x0	// Write all 0s to CSR
	csrrs x22, 0xea5, x27	// Set all CSR bits
	csrrc x22, 0xea5, x27	// Clear all CSR bits
	csrrw x22, 0xea5, x23	// Restore CSR

// Testing CSR 0xea6
	csrr x7, 0xea6	// Read CSR
	li x26, -1
	csrrw x3, 0xea6, x26	// Write all 1s to CSR
	csrrw x3, 0xea6, x0	// Write all 0s to CSR
	csrrs x3, 0xea6, x26	// Set all CSR bits
	csrrc x3, 0xea6, x26	// Clear all CSR bits
	csrrw x3, 0xea6, x7	// Restore CSR

// Testing CSR 0xea7
	csrr x26, 0xea7	// Read CSR
	li x13, -1
	csrrw x27, 0xea7, x13	// Write all 1s to CSR
	csrrw x27, 0xea7, x0	// Write all 0s to CSR
	csrrs x27, 0xea7, x13	// Set all CSR bits
	csrrc x27, 0xea7, x13	// Clear all CSR bits
	csrrw x27, 0xea7, x26	// Restore CSR

// Testing CSR 0xea8
	csrr x7, 0xea8	// Read CSR
	li x6, -1
	csrrw x2, 0xea8, x6	// Write all 1s to CSR
	csrrw x2, 0xea8, x0	// Write all 0s to CSR
	csrrs x2, 0xea8, x6	// Set all CSR bits
	csrrc x2, 0xea8, x6	// Clear all CSR bits
	csrrw x2, 0xea8, x7	// Restore CSR

// Testing CSR 0xea9
	csrr x11, 0xea9	// Read CSR
	li x26, -1
	csrrw x28, 0xea9, x26	// Write all 1s to CSR
	csrrw x28, 0xea9, x0	// Write all 0s to CSR
	csrrs x28, 0xea9, x26	// Set all CSR bits
	csrrc x28, 0xea9, x26	// Clear all CSR bits
	csrrw x28, 0xea9, x11	// Restore CSR

// Testing CSR 0xeaa
	csrr x31, 0xeaa	// Read CSR
	li x13, -1
	csrrw x21, 0xeaa, x13	// Write all 1s to CSR
	csrrw x21, 0xeaa, x0	// Write all 0s to CSR
	csrrs x21, 0xeaa, x13	// Set all CSR bits
	csrrc x21, 0xeaa, x13	// Clear all CSR bits
	csrrw x21, 0xeaa, x31	// Restore CSR

// Testing CSR 0xeab
	csrr x3, 0xeab	// Read CSR
	li x29, -1
	csrrw x28, 0xeab, x29	// Write all 1s to CSR
	csrrw x28, 0xeab, x0	// Write all 0s to CSR
	csrrs x28, 0xeab, x29	// Set all CSR bits
	csrrc x28, 0xeab, x29	// Clear all CSR bits
	csrrw x28, 0xeab, x3	// Restore CSR

// Testing CSR 0xeac
	csrr x4, 0xeac	// Read CSR
	li x26, -1
	csrrw x20, 0xeac, x26	// Write all 1s to CSR
	csrrw x20, 0xeac, x0	// Write all 0s to CSR
	csrrs x20, 0xeac, x26	// Set all CSR bits
	csrrc x20, 0xeac, x26	// Clear all CSR bits
	csrrw x20, 0xeac, x4	// Restore CSR

// Testing CSR 0xead
	csrr x18, 0xead	// Read CSR
	li x20, -1
	csrrw x2, 0xead, x20	// Write all 1s to CSR
	csrrw x2, 0xead, x0	// Write all 0s to CSR
	csrrs x2, 0xead, x20	// Set all CSR bits
	csrrc x2, 0xead, x20	// Clear all CSR bits
	csrrw x2, 0xead, x18	// Restore CSR

// Testing CSR 0xeae
	csrr x12, 0xeae	// Read CSR
	li x5, -1
	csrrw x6, 0xeae, x5	// Write all 1s to CSR
	csrrw x6, 0xeae, x0	// Write all 0s to CSR
	csrrs x6, 0xeae, x5	// Set all CSR bits
	csrrc x6, 0xeae, x5	// Clear all CSR bits
	csrrw x6, 0xeae, x12	// Restore CSR

// Testing CSR 0xeaf
	csrr x12, 0xeaf	// Read CSR
	li x15, -1
	csrrw x14, 0xeaf, x15	// Write all 1s to CSR
	csrrw x14, 0xeaf, x0	// Write all 0s to CSR
	csrrs x14, 0xeaf, x15	// Set all CSR bits
	csrrc x14, 0xeaf, x15	// Clear all CSR bits
	csrrw x14, 0xeaf, x12	// Restore CSR

// Testing CSR 0xeb0
	csrr x11, 0xeb0	// Read CSR
	li x10, -1
	csrrw x30, 0xeb0, x10	// Write all 1s to CSR
	csrrw x30, 0xeb0, x0	// Write all 0s to CSR
	csrrs x30, 0xeb0, x10	// Set all CSR bits
	csrrc x30, 0xeb0, x10	// Clear all CSR bits
	csrrw x30, 0xeb0, x11	// Restore CSR

// Testing CSR 0xeb1
	csrr x25, 0xeb1	// Read CSR
	li x10, -1
	csrrw x31, 0xeb1, x10	// Write all 1s to CSR
	csrrw x31, 0xeb1, x0	// Write all 0s to CSR
	csrrs x31, 0xeb1, x10	// Set all CSR bits
	csrrc x31, 0xeb1, x10	// Clear all CSR bits
	csrrw x31, 0xeb1, x25	// Restore CSR

// Testing CSR 0xeb2
	csrr x11, 0xeb2	// Read CSR
	li x14, -1
	csrrw x24, 0xeb2, x14	// Write all 1s to CSR
	csrrw x24, 0xeb2, x0	// Write all 0s to CSR
	csrrs x24, 0xeb2, x14	// Set all CSR bits
	csrrc x24, 0xeb2, x14	// Clear all CSR bits
	csrrw x24, 0xeb2, x11	// Restore CSR

// Testing CSR 0xeb3
	csrr x6, 0xeb3	// Read CSR
	li x15, -1
	csrrw x22, 0xeb3, x15	// Write all 1s to CSR
	csrrw x22, 0xeb3, x0	// Write all 0s to CSR
	csrrs x22, 0xeb3, x15	// Set all CSR bits
	csrrc x22, 0xeb3, x15	// Clear all CSR bits
	csrrw x22, 0xeb3, x6	// Restore CSR

// Testing CSR 0xeb4
	csrr x5, 0xeb4	// Read CSR
	li x22, -1
	csrrw x15, 0xeb4, x22	// Write all 1s to CSR
	csrrw x15, 0xeb4, x0	// Write all 0s to CSR
	csrrs x15, 0xeb4, x22	// Set all CSR bits
	csrrc x15, 0xeb4, x22	// Clear all CSR bits
	csrrw x15, 0xeb4, x5	// Restore CSR

// Testing CSR 0xeb5
	csrr x5, 0xeb5	// Read CSR
	li x14, -1
	csrrw x18, 0xeb5, x14	// Write all 1s to CSR
	csrrw x18, 0xeb5, x0	// Write all 0s to CSR
	csrrs x18, 0xeb5, x14	// Set all CSR bits
	csrrc x18, 0xeb5, x14	// Clear all CSR bits
	csrrw x18, 0xeb5, x5	// Restore CSR

// Testing CSR 0xeb6
	csrr x21, 0xeb6	// Read CSR
	li x12, -1
	csrrw x11, 0xeb6, x12	// Write all 1s to CSR
	csrrw x11, 0xeb6, x0	// Write all 0s to CSR
	csrrs x11, 0xeb6, x12	// Set all CSR bits
	csrrc x11, 0xeb6, x12	// Clear all CSR bits
	csrrw x11, 0xeb6, x21	// Restore CSR

// Testing CSR 0xeb7
	csrr x4, 0xeb7	// Read CSR
	li x1, -1
	csrrw x30, 0xeb7, x1	// Write all 1s to CSR
	csrrw x30, 0xeb7, x0	// Write all 0s to CSR
	csrrs x30, 0xeb7, x1	// Set all CSR bits
	csrrc x30, 0xeb7, x1	// Clear all CSR bits
	csrrw x30, 0xeb7, x4	// Restore CSR

// Testing CSR 0xeb8
	csrr x29, 0xeb8	// Read CSR
	li x23, -1
	csrrw x5, 0xeb8, x23	// Write all 1s to CSR
	csrrw x5, 0xeb8, x0	// Write all 0s to CSR
	csrrs x5, 0xeb8, x23	// Set all CSR bits
	csrrc x5, 0xeb8, x23	// Clear all CSR bits
	csrrw x5, 0xeb8, x29	// Restore CSR

// Testing CSR 0xeb9
	csrr x23, 0xeb9	// Read CSR
	li x12, -1
	csrrw x11, 0xeb9, x12	// Write all 1s to CSR
	csrrw x11, 0xeb9, x0	// Write all 0s to CSR
	csrrs x11, 0xeb9, x12	// Set all CSR bits
	csrrc x11, 0xeb9, x12	// Clear all CSR bits
	csrrw x11, 0xeb9, x23	// Restore CSR

// Testing CSR 0xeba
	csrr x22, 0xeba	// Read CSR
	li x7, -1
	csrrw x4, 0xeba, x7	// Write all 1s to CSR
	csrrw x4, 0xeba, x0	// Write all 0s to CSR
	csrrs x4, 0xeba, x7	// Set all CSR bits
	csrrc x4, 0xeba, x7	// Clear all CSR bits
	csrrw x4, 0xeba, x22	// Restore CSR

// Testing CSR 0xebb
	csrr x23, 0xebb	// Read CSR
	li x30, -1
	csrrw x10, 0xebb, x30	// Write all 1s to CSR
	csrrw x10, 0xebb, x0	// Write all 0s to CSR
	csrrs x10, 0xebb, x30	// Set all CSR bits
	csrrc x10, 0xebb, x30	// Clear all CSR bits
	csrrw x10, 0xebb, x23	// Restore CSR

// Testing CSR 0xebc
	csrr x12, 0xebc	// Read CSR
	li x20, -1
	csrrw x2, 0xebc, x20	// Write all 1s to CSR
	csrrw x2, 0xebc, x0	// Write all 0s to CSR
	csrrs x2, 0xebc, x20	// Set all CSR bits
	csrrc x2, 0xebc, x20	// Clear all CSR bits
	csrrw x2, 0xebc, x12	// Restore CSR

// Testing CSR 0xebd
	csrr x4, 0xebd	// Read CSR
	li x23, -1
	csrrw x15, 0xebd, x23	// Write all 1s to CSR
	csrrw x15, 0xebd, x0	// Write all 0s to CSR
	csrrs x15, 0xebd, x23	// Set all CSR bits
	csrrc x15, 0xebd, x23	// Clear all CSR bits
	csrrw x15, 0xebd, x4	// Restore CSR

// Testing CSR 0xebe
	csrr x28, 0xebe	// Read CSR
	li x21, -1
	csrrw x18, 0xebe, x21	// Write all 1s to CSR
	csrrw x18, 0xebe, x0	// Write all 0s to CSR
	csrrs x18, 0xebe, x21	// Set all CSR bits
	csrrc x18, 0xebe, x21	// Clear all CSR bits
	csrrw x18, 0xebe, x28	// Restore CSR

// Testing CSR 0xebf
	csrr x28, 0xebf	// Read CSR
	li x21, -1
	csrrw x20, 0xebf, x21	// Write all 1s to CSR
	csrrw x20, 0xebf, x0	// Write all 0s to CSR
	csrrs x20, 0xebf, x21	// Set all CSR bits
	csrrc x20, 0xebf, x21	// Clear all CSR bits
	csrrw x20, 0xebf, x28	// Restore CSR

// Testing CSR 0xf00
	csrr x8, 0xf00	// Read CSR
	li x1, -1
	csrrw x15, 0xf00, x1	// Write all 1s to CSR
	csrrw x15, 0xf00, x0	// Write all 0s to CSR
	csrrs x15, 0xf00, x1	// Set all CSR bits
	csrrc x15, 0xf00, x1	// Clear all CSR bits
	csrrw x15, 0xf00, x8	// Restore CSR

// Testing CSR 0xf01
	csrr x16, 0xf01	// Read CSR
	li x3, -1
	csrrw x8, 0xf01, x3	// Write all 1s to CSR
	csrrw x8, 0xf01, x0	// Write all 0s to CSR
	csrrs x8, 0xf01, x3	// Set all CSR bits
	csrrc x8, 0xf01, x3	// Clear all CSR bits
	csrrw x8, 0xf01, x16	// Restore CSR

// Testing CSR 0xf02
	csrr x3, 0xf02	// Read CSR
	li x7, -1
	csrrw x30, 0xf02, x7	// Write all 1s to CSR
	csrrw x30, 0xf02, x0	// Write all 0s to CSR
	csrrs x30, 0xf02, x7	// Set all CSR bits
	csrrc x30, 0xf02, x7	// Clear all CSR bits
	csrrw x30, 0xf02, x3	// Restore CSR

// Testing CSR 0xf03
	csrr x21, 0xf03	// Read CSR
	li x31, -1
	csrrw x26, 0xf03, x31	// Write all 1s to CSR
	csrrw x26, 0xf03, x0	// Write all 0s to CSR
	csrrs x26, 0xf03, x31	// Set all CSR bits
	csrrc x26, 0xf03, x31	// Clear all CSR bits
	csrrw x26, 0xf03, x21	// Restore CSR

// Testing CSR 0xf04
	csrr x30, 0xf04	// Read CSR
	li x20, -1
	csrrw x7, 0xf04, x20	// Write all 1s to CSR
	csrrw x7, 0xf04, x0	// Write all 0s to CSR
	csrrs x7, 0xf04, x20	// Set all CSR bits
	csrrc x7, 0xf04, x20	// Clear all CSR bits
	csrrw x7, 0xf04, x30	// Restore CSR

// Testing CSR 0xf05
	csrr x12, 0xf05	// Read CSR
	li x10, -1
	csrrw x1, 0xf05, x10	// Write all 1s to CSR
	csrrw x1, 0xf05, x0	// Write all 0s to CSR
	csrrs x1, 0xf05, x10	// Set all CSR bits
	csrrc x1, 0xf05, x10	// Clear all CSR bits
	csrrw x1, 0xf05, x12	// Restore CSR

// Testing CSR 0xf06
	csrr x23, 0xf06	// Read CSR
	li x9, -1
	csrrw x28, 0xf06, x9	// Write all 1s to CSR
	csrrw x28, 0xf06, x0	// Write all 0s to CSR
	csrrs x28, 0xf06, x9	// Set all CSR bits
	csrrc x28, 0xf06, x9	// Clear all CSR bits
	csrrw x28, 0xf06, x23	// Restore CSR

// Testing CSR 0xf07
	csrr x22, 0xf07	// Read CSR
	li x1, -1
	csrrw x11, 0xf07, x1	// Write all 1s to CSR
	csrrw x11, 0xf07, x0	// Write all 0s to CSR
	csrrs x11, 0xf07, x1	// Set all CSR bits
	csrrc x11, 0xf07, x1	// Clear all CSR bits
	csrrw x11, 0xf07, x22	// Restore CSR

// Testing CSR 0xf08
	csrr x20, 0xf08	// Read CSR
	li x2, -1
	csrrw x12, 0xf08, x2	// Write all 1s to CSR
	csrrw x12, 0xf08, x0	// Write all 0s to CSR
	csrrs x12, 0xf08, x2	// Set all CSR bits
	csrrc x12, 0xf08, x2	// Clear all CSR bits
	csrrw x12, 0xf08, x20	// Restore CSR

// Testing CSR 0xf09
	csrr x6, 0xf09	// Read CSR
	li x14, -1
	csrrw x3, 0xf09, x14	// Write all 1s to CSR
	csrrw x3, 0xf09, x0	// Write all 0s to CSR
	csrrs x3, 0xf09, x14	// Set all CSR bits
	csrrc x3, 0xf09, x14	// Clear all CSR bits
	csrrw x3, 0xf09, x6	// Restore CSR

// Testing CSR 0xf0a
	csrr x24, 0xf0a	// Read CSR
	li x22, -1
	csrrw x14, 0xf0a, x22	// Write all 1s to CSR
	csrrw x14, 0xf0a, x0	// Write all 0s to CSR
	csrrs x14, 0xf0a, x22	// Set all CSR bits
	csrrc x14, 0xf0a, x22	// Clear all CSR bits
	csrrw x14, 0xf0a, x24	// Restore CSR

// Testing CSR 0xf0b
	csrr x30, 0xf0b	// Read CSR
	li x18, -1
	csrrw x29, 0xf0b, x18	// Write all 1s to CSR
	csrrw x29, 0xf0b, x0	// Write all 0s to CSR
	csrrs x29, 0xf0b, x18	// Set all CSR bits
	csrrc x29, 0xf0b, x18	// Clear all CSR bits
	csrrw x29, 0xf0b, x30	// Restore CSR

// Testing CSR 0xf0c
	csrr x23, 0xf0c	// Read CSR
	li x5, -1
	csrrw x22, 0xf0c, x5	// Write all 1s to CSR
	csrrw x22, 0xf0c, x0	// Write all 0s to CSR
	csrrs x22, 0xf0c, x5	// Set all CSR bits
	csrrc x22, 0xf0c, x5	// Clear all CSR bits
	csrrw x22, 0xf0c, x23	// Restore CSR

// Testing CSR 0xf0d
	csrr x15, 0xf0d	// Read CSR
	li x16, -1
	csrrw x18, 0xf0d, x16	// Write all 1s to CSR
	csrrw x18, 0xf0d, x0	// Write all 0s to CSR
	csrrs x18, 0xf0d, x16	// Set all CSR bits
	csrrc x18, 0xf0d, x16	// Clear all CSR bits
	csrrw x18, 0xf0d, x15	// Restore CSR

// Testing CSR 0xf0e
	csrr x22, 0xf0e	// Read CSR
	li x21, -1
	csrrw x11, 0xf0e, x21	// Write all 1s to CSR
	csrrw x11, 0xf0e, x0	// Write all 0s to CSR
	csrrs x11, 0xf0e, x21	// Set all CSR bits
	csrrc x11, 0xf0e, x21	// Clear all CSR bits
	csrrw x11, 0xf0e, x22	// Restore CSR

// Testing CSR 0xf0f
	csrr x1, 0xf0f	// Read CSR
	li x12, -1
	csrrw x3, 0xf0f, x12	// Write all 1s to CSR
	csrrw x3, 0xf0f, x0	// Write all 0s to CSR
	csrrs x3, 0xf0f, x12	// Set all CSR bits
	csrrc x3, 0xf0f, x12	// Clear all CSR bits
	csrrw x3, 0xf0f, x1	// Restore CSR

// Testing CSR 0xf10
	csrr x15, 0xf10	// Read CSR
	li x16, -1
	csrrw x23, 0xf10, x16	// Write all 1s to CSR
	csrrw x23, 0xf10, x0	// Write all 0s to CSR
	csrrs x23, 0xf10, x16	// Set all CSR bits
	csrrc x23, 0xf10, x16	// Clear all CSR bits
	csrrw x23, 0xf10, x15	// Restore CSR

// Testing CSR 0xf11
	csrr x1, 0xf11	// Read CSR
	li x31, -1
	csrrw x8, 0xf11, x31	// Write all 1s to CSR
	csrrw x8, 0xf11, x0	// Write all 0s to CSR
	csrrs x8, 0xf11, x31	// Set all CSR bits
	csrrc x8, 0xf11, x31	// Clear all CSR bits
	csrrw x8, 0xf11, x1	// Restore CSR

// Testing CSR 0xf12
	csrr x17, 0xf12	// Read CSR
	li x2, -1
	csrrw x22, 0xf12, x2	// Write all 1s to CSR
	csrrw x22, 0xf12, x0	// Write all 0s to CSR
	csrrs x22, 0xf12, x2	// Set all CSR bits
	csrrc x22, 0xf12, x2	// Clear all CSR bits
	csrrw x22, 0xf12, x17	// Restore CSR

// Testing CSR 0xf13
	csrr x4, 0xf13	// Read CSR
	li x30, -1
	csrrw x13, 0xf13, x30	// Write all 1s to CSR
	csrrw x13, 0xf13, x0	// Write all 0s to CSR
	csrrs x13, 0xf13, x30	// Set all CSR bits
	csrrc x13, 0xf13, x30	// Clear all CSR bits
	csrrw x13, 0xf13, x4	// Restore CSR

// Testing CSR 0xf14
	csrr x4, 0xf14	// Read CSR
	li x14, -1
	csrrw x5, 0xf14, x14	// Write all 1s to CSR
	csrrw x5, 0xf14, x0	// Write all 0s to CSR
	csrrs x5, 0xf14, x14	// Set all CSR bits
	csrrc x5, 0xf14, x14	// Clear all CSR bits
	csrrw x5, 0xf14, x4	// Restore CSR

// Testing CSR 0xf15
	csrr x28, 0xf15	// Read CSR
	li x16, -1
	csrrw x19, 0xf15, x16	// Write all 1s to CSR
	csrrw x19, 0xf15, x0	// Write all 0s to CSR
	csrrs x19, 0xf15, x16	// Set all CSR bits
	csrrc x19, 0xf15, x16	// Clear all CSR bits
	csrrw x19, 0xf15, x28	// Restore CSR

// Testing CSR 0xf16
	csrr x19, 0xf16	// Read CSR
	li x30, -1
	csrrw x10, 0xf16, x30	// Write all 1s to CSR
	csrrw x10, 0xf16, x0	// Write all 0s to CSR
	csrrs x10, 0xf16, x30	// Set all CSR bits
	csrrc x10, 0xf16, x30	// Clear all CSR bits
	csrrw x10, 0xf16, x19	// Restore CSR

// Testing CSR 0xf17
	csrr x19, 0xf17	// Read CSR
	li x13, -1
	csrrw x1, 0xf17, x13	// Write all 1s to CSR
	csrrw x1, 0xf17, x0	// Write all 0s to CSR
	csrrs x1, 0xf17, x13	// Set all CSR bits
	csrrc x1, 0xf17, x13	// Clear all CSR bits
	csrrw x1, 0xf17, x19	// Restore CSR

// Testing CSR 0xf18
	csrr x28, 0xf18	// Read CSR
	li x2, -1
	csrrw x18, 0xf18, x2	// Write all 1s to CSR
	csrrw x18, 0xf18, x0	// Write all 0s to CSR
	csrrs x18, 0xf18, x2	// Set all CSR bits
	csrrc x18, 0xf18, x2	// Clear all CSR bits
	csrrw x18, 0xf18, x28	// Restore CSR

// Testing CSR 0xf19
	csrr x19, 0xf19	// Read CSR
	li x7, -1
	csrrw x30, 0xf19, x7	// Write all 1s to CSR
	csrrw x30, 0xf19, x0	// Write all 0s to CSR
	csrrs x30, 0xf19, x7	// Set all CSR bits
	csrrc x30, 0xf19, x7	// Clear all CSR bits
	csrrw x30, 0xf19, x19	// Restore CSR

// Testing CSR 0xf1a
	csrr x6, 0xf1a	// Read CSR
	li x20, -1
	csrrw x15, 0xf1a, x20	// Write all 1s to CSR
	csrrw x15, 0xf1a, x0	// Write all 0s to CSR
	csrrs x15, 0xf1a, x20	// Set all CSR bits
	csrrc x15, 0xf1a, x20	// Clear all CSR bits
	csrrw x15, 0xf1a, x6	// Restore CSR

// Testing CSR 0xf1b
	csrr x6, 0xf1b	// Read CSR
	li x15, -1
	csrrw x7, 0xf1b, x15	// Write all 1s to CSR
	csrrw x7, 0xf1b, x0	// Write all 0s to CSR
	csrrs x7, 0xf1b, x15	// Set all CSR bits
	csrrc x7, 0xf1b, x15	// Clear all CSR bits
	csrrw x7, 0xf1b, x6	// Restore CSR

// Testing CSR 0xf1c
	csrr x1, 0xf1c	// Read CSR
	li x17, -1
	csrrw x25, 0xf1c, x17	// Write all 1s to CSR
	csrrw x25, 0xf1c, x0	// Write all 0s to CSR
	csrrs x25, 0xf1c, x17	// Set all CSR bits
	csrrc x25, 0xf1c, x17	// Clear all CSR bits
	csrrw x25, 0xf1c, x1	// Restore CSR

// Testing CSR 0xf1d
	csrr x2, 0xf1d	// Read CSR
	li x30, -1
	csrrw x17, 0xf1d, x30	// Write all 1s to CSR
	csrrw x17, 0xf1d, x0	// Write all 0s to CSR
	csrrs x17, 0xf1d, x30	// Set all CSR bits
	csrrc x17, 0xf1d, x30	// Clear all CSR bits
	csrrw x17, 0xf1d, x2	// Restore CSR

// Testing CSR 0xf1e
	csrr x16, 0xf1e	// Read CSR
	li x29, -1
	csrrw x13, 0xf1e, x29	// Write all 1s to CSR
	csrrw x13, 0xf1e, x0	// Write all 0s to CSR
	csrrs x13, 0xf1e, x29	// Set all CSR bits
	csrrc x13, 0xf1e, x29	// Clear all CSR bits
	csrrw x13, 0xf1e, x16	// Restore CSR

// Testing CSR 0xf1f
	csrr x9, 0xf1f	// Read CSR
	li x27, -1
	csrrw x21, 0xf1f, x27	// Write all 1s to CSR
	csrrw x21, 0xf1f, x0	// Write all 0s to CSR
	csrrs x21, 0xf1f, x27	// Set all CSR bits
	csrrc x21, 0xf1f, x27	// Clear all CSR bits
	csrrw x21, 0xf1f, x9	// Restore CSR

// Testing CSR 0xf20
	csrr x25, 0xf20	// Read CSR
	li x30, -1
	csrrw x27, 0xf20, x30	// Write all 1s to CSR
	csrrw x27, 0xf20, x0	// Write all 0s to CSR
	csrrs x27, 0xf20, x30	// Set all CSR bits
	csrrc x27, 0xf20, x30	// Clear all CSR bits
	csrrw x27, 0xf20, x25	// Restore CSR

// Testing CSR 0xf21
	csrr x15, 0xf21	// Read CSR
	li x11, -1
	csrrw x20, 0xf21, x11	// Write all 1s to CSR
	csrrw x20, 0xf21, x0	// Write all 0s to CSR
	csrrs x20, 0xf21, x11	// Set all CSR bits
	csrrc x20, 0xf21, x11	// Clear all CSR bits
	csrrw x20, 0xf21, x15	// Restore CSR

// Testing CSR 0xf22
	csrr x20, 0xf22	// Read CSR
	li x18, -1
	csrrw x21, 0xf22, x18	// Write all 1s to CSR
	csrrw x21, 0xf22, x0	// Write all 0s to CSR
	csrrs x21, 0xf22, x18	// Set all CSR bits
	csrrc x21, 0xf22, x18	// Clear all CSR bits
	csrrw x21, 0xf22, x20	// Restore CSR

// Testing CSR 0xf23
	csrr x21, 0xf23	// Read CSR
	li x4, -1
	csrrw x25, 0xf23, x4	// Write all 1s to CSR
	csrrw x25, 0xf23, x0	// Write all 0s to CSR
	csrrs x25, 0xf23, x4	// Set all CSR bits
	csrrc x25, 0xf23, x4	// Clear all CSR bits
	csrrw x25, 0xf23, x21	// Restore CSR

// Testing CSR 0xf24
	csrr x6, 0xf24	// Read CSR
	li x19, -1
	csrrw x22, 0xf24, x19	// Write all 1s to CSR
	csrrw x22, 0xf24, x0	// Write all 0s to CSR
	csrrs x22, 0xf24, x19	// Set all CSR bits
	csrrc x22, 0xf24, x19	// Clear all CSR bits
	csrrw x22, 0xf24, x6	// Restore CSR

// Testing CSR 0xf25
	csrr x21, 0xf25	// Read CSR
	li x24, -1
	csrrw x2, 0xf25, x24	// Write all 1s to CSR
	csrrw x2, 0xf25, x0	// Write all 0s to CSR
	csrrs x2, 0xf25, x24	// Set all CSR bits
	csrrc x2, 0xf25, x24	// Clear all CSR bits
	csrrw x2, 0xf25, x21	// Restore CSR

// Testing CSR 0xf26
	csrr x15, 0xf26	// Read CSR
	li x16, -1
	csrrw x29, 0xf26, x16	// Write all 1s to CSR
	csrrw x29, 0xf26, x0	// Write all 0s to CSR
	csrrs x29, 0xf26, x16	// Set all CSR bits
	csrrc x29, 0xf26, x16	// Clear all CSR bits
	csrrw x29, 0xf26, x15	// Restore CSR

// Testing CSR 0xf27
	csrr x16, 0xf27	// Read CSR
	li x9, -1
	csrrw x14, 0xf27, x9	// Write all 1s to CSR
	csrrw x14, 0xf27, x0	// Write all 0s to CSR
	csrrs x14, 0xf27, x9	// Set all CSR bits
	csrrc x14, 0xf27, x9	// Clear all CSR bits
	csrrw x14, 0xf27, x16	// Restore CSR

// Testing CSR 0xf28
	csrr x8, 0xf28	// Read CSR
	li x25, -1
	csrrw x26, 0xf28, x25	// Write all 1s to CSR
	csrrw x26, 0xf28, x0	// Write all 0s to CSR
	csrrs x26, 0xf28, x25	// Set all CSR bits
	csrrc x26, 0xf28, x25	// Clear all CSR bits
	csrrw x26, 0xf28, x8	// Restore CSR

// Testing CSR 0xf29
	csrr x2, 0xf29	// Read CSR
	li x30, -1
	csrrw x24, 0xf29, x30	// Write all 1s to CSR
	csrrw x24, 0xf29, x0	// Write all 0s to CSR
	csrrs x24, 0xf29, x30	// Set all CSR bits
	csrrc x24, 0xf29, x30	// Clear all CSR bits
	csrrw x24, 0xf29, x2	// Restore CSR

// Testing CSR 0xf2a
	csrr x31, 0xf2a	// Read CSR
	li x24, -1
	csrrw x11, 0xf2a, x24	// Write all 1s to CSR
	csrrw x11, 0xf2a, x0	// Write all 0s to CSR
	csrrs x11, 0xf2a, x24	// Set all CSR bits
	csrrc x11, 0xf2a, x24	// Clear all CSR bits
	csrrw x11, 0xf2a, x31	// Restore CSR

// Testing CSR 0xf2b
	csrr x13, 0xf2b	// Read CSR
	li x16, -1
	csrrw x8, 0xf2b, x16	// Write all 1s to CSR
	csrrw x8, 0xf2b, x0	// Write all 0s to CSR
	csrrs x8, 0xf2b, x16	// Set all CSR bits
	csrrc x8, 0xf2b, x16	// Clear all CSR bits
	csrrw x8, 0xf2b, x13	// Restore CSR

// Testing CSR 0xf2c
	csrr x20, 0xf2c	// Read CSR
	li x19, -1
	csrrw x1, 0xf2c, x19	// Write all 1s to CSR
	csrrw x1, 0xf2c, x0	// Write all 0s to CSR
	csrrs x1, 0xf2c, x19	// Set all CSR bits
	csrrc x1, 0xf2c, x19	// Clear all CSR bits
	csrrw x1, 0xf2c, x20	// Restore CSR

// Testing CSR 0xf2d
	csrr x18, 0xf2d	// Read CSR
	li x21, -1
	csrrw x31, 0xf2d, x21	// Write all 1s to CSR
	csrrw x31, 0xf2d, x0	// Write all 0s to CSR
	csrrs x31, 0xf2d, x21	// Set all CSR bits
	csrrc x31, 0xf2d, x21	// Clear all CSR bits
	csrrw x31, 0xf2d, x18	// Restore CSR

// Testing CSR 0xf2e
	csrr x7, 0xf2e	// Read CSR
	li x19, -1
	csrrw x25, 0xf2e, x19	// Write all 1s to CSR
	csrrw x25, 0xf2e, x0	// Write all 0s to CSR
	csrrs x25, 0xf2e, x19	// Set all CSR bits
	csrrc x25, 0xf2e, x19	// Clear all CSR bits
	csrrw x25, 0xf2e, x7	// Restore CSR

// Testing CSR 0xf2f
	csrr x11, 0xf2f	// Read CSR
	li x29, -1
	csrrw x7, 0xf2f, x29	// Write all 1s to CSR
	csrrw x7, 0xf2f, x0	// Write all 0s to CSR
	csrrs x7, 0xf2f, x29	// Set all CSR bits
	csrrc x7, 0xf2f, x29	// Clear all CSR bits
	csrrw x7, 0xf2f, x11	// Restore CSR

// Testing CSR 0xf30
	csrr x23, 0xf30	// Read CSR
	li x5, -1
	csrrw x26, 0xf30, x5	// Write all 1s to CSR
	csrrw x26, 0xf30, x0	// Write all 0s to CSR
	csrrs x26, 0xf30, x5	// Set all CSR bits
	csrrc x26, 0xf30, x5	// Clear all CSR bits
	csrrw x26, 0xf30, x23	// Restore CSR

// Testing CSR 0xf31
	csrr x10, 0xf31	// Read CSR
	li x18, -1
	csrrw x23, 0xf31, x18	// Write all 1s to CSR
	csrrw x23, 0xf31, x0	// Write all 0s to CSR
	csrrs x23, 0xf31, x18	// Set all CSR bits
	csrrc x23, 0xf31, x18	// Clear all CSR bits
	csrrw x23, 0xf31, x10	// Restore CSR

// Testing CSR 0xf32
	csrr x6, 0xf32	// Read CSR
	li x14, -1
	csrrw x28, 0xf32, x14	// Write all 1s to CSR
	csrrw x28, 0xf32, x0	// Write all 0s to CSR
	csrrs x28, 0xf32, x14	// Set all CSR bits
	csrrc x28, 0xf32, x14	// Clear all CSR bits
	csrrw x28, 0xf32, x6	// Restore CSR

// Testing CSR 0xf33
	csrr x30, 0xf33	// Read CSR
	li x20, -1
	csrrw x4, 0xf33, x20	// Write all 1s to CSR
	csrrw x4, 0xf33, x0	// Write all 0s to CSR
	csrrs x4, 0xf33, x20	// Set all CSR bits
	csrrc x4, 0xf33, x20	// Clear all CSR bits
	csrrw x4, 0xf33, x30	// Restore CSR

// Testing CSR 0xf34
	csrr x23, 0xf34	// Read CSR
	li x9, -1
	csrrw x13, 0xf34, x9	// Write all 1s to CSR
	csrrw x13, 0xf34, x0	// Write all 0s to CSR
	csrrs x13, 0xf34, x9	// Set all CSR bits
	csrrc x13, 0xf34, x9	// Clear all CSR bits
	csrrw x13, 0xf34, x23	// Restore CSR

// Testing CSR 0xf35
	csrr x7, 0xf35	// Read CSR
	li x3, -1
	csrrw x20, 0xf35, x3	// Write all 1s to CSR
	csrrw x20, 0xf35, x0	// Write all 0s to CSR
	csrrs x20, 0xf35, x3	// Set all CSR bits
	csrrc x20, 0xf35, x3	// Clear all CSR bits
	csrrw x20, 0xf35, x7	// Restore CSR

// Testing CSR 0xf36
	csrr x30, 0xf36	// Read CSR
	li x12, -1
	csrrw x27, 0xf36, x12	// Write all 1s to CSR
	csrrw x27, 0xf36, x0	// Write all 0s to CSR
	csrrs x27, 0xf36, x12	// Set all CSR bits
	csrrc x27, 0xf36, x12	// Clear all CSR bits
	csrrw x27, 0xf36, x30	// Restore CSR

// Testing CSR 0xf37
	csrr x13, 0xf37	// Read CSR
	li x5, -1
	csrrw x25, 0xf37, x5	// Write all 1s to CSR
	csrrw x25, 0xf37, x0	// Write all 0s to CSR
	csrrs x25, 0xf37, x5	// Set all CSR bits
	csrrc x25, 0xf37, x5	// Clear all CSR bits
	csrrw x25, 0xf37, x13	// Restore CSR

// Testing CSR 0xf38
	csrr x26, 0xf38	// Read CSR
	li x22, -1
	csrrw x31, 0xf38, x22	// Write all 1s to CSR
	csrrw x31, 0xf38, x0	// Write all 0s to CSR
	csrrs x31, 0xf38, x22	// Set all CSR bits
	csrrc x31, 0xf38, x22	// Clear all CSR bits
	csrrw x31, 0xf38, x26	// Restore CSR

// Testing CSR 0xf39
	csrr x28, 0xf39	// Read CSR
	li x14, -1
	csrrw x26, 0xf39, x14	// Write all 1s to CSR
	csrrw x26, 0xf39, x0	// Write all 0s to CSR
	csrrs x26, 0xf39, x14	// Set all CSR bits
	csrrc x26, 0xf39, x14	// Clear all CSR bits
	csrrw x26, 0xf39, x28	// Restore CSR

// Testing CSR 0xf3a
	csrr x18, 0xf3a	// Read CSR
	li x16, -1
	csrrw x29, 0xf3a, x16	// Write all 1s to CSR
	csrrw x29, 0xf3a, x0	// Write all 0s to CSR
	csrrs x29, 0xf3a, x16	// Set all CSR bits
	csrrc x29, 0xf3a, x16	// Clear all CSR bits
	csrrw x29, 0xf3a, x18	// Restore CSR

// Testing CSR 0xf3b
	csrr x4, 0xf3b	// Read CSR
	li x9, -1
	csrrw x14, 0xf3b, x9	// Write all 1s to CSR
	csrrw x14, 0xf3b, x0	// Write all 0s to CSR
	csrrs x14, 0xf3b, x9	// Set all CSR bits
	csrrc x14, 0xf3b, x9	// Clear all CSR bits
	csrrw x14, 0xf3b, x4	// Restore CSR

// Testing CSR 0xf3c
	csrr x12, 0xf3c	// Read CSR
	li x26, -1
	csrrw x28, 0xf3c, x26	// Write all 1s to CSR
	csrrw x28, 0xf3c, x0	// Write all 0s to CSR
	csrrs x28, 0xf3c, x26	// Set all CSR bits
	csrrc x28, 0xf3c, x26	// Clear all CSR bits
	csrrw x28, 0xf3c, x12	// Restore CSR

// Testing CSR 0xf3d
	csrr x12, 0xf3d	// Read CSR
	li x29, -1
	csrrw x27, 0xf3d, x29	// Write all 1s to CSR
	csrrw x27, 0xf3d, x0	// Write all 0s to CSR
	csrrs x27, 0xf3d, x29	// Set all CSR bits
	csrrc x27, 0xf3d, x29	// Clear all CSR bits
	csrrw x27, 0xf3d, x12	// Restore CSR

// Testing CSR 0xf3e
	csrr x25, 0xf3e	// Read CSR
	li x13, -1
	csrrw x12, 0xf3e, x13	// Write all 1s to CSR
	csrrw x12, 0xf3e, x0	// Write all 0s to CSR
	csrrs x12, 0xf3e, x13	// Set all CSR bits
	csrrc x12, 0xf3e, x13	// Clear all CSR bits
	csrrw x12, 0xf3e, x25	// Restore CSR

// Testing CSR 0xf3f
	csrr x27, 0xf3f	// Read CSR
	li x25, -1
	csrrw x14, 0xf3f, x25	// Write all 1s to CSR
	csrrw x14, 0xf3f, x0	// Write all 0s to CSR
	csrrs x14, 0xf3f, x25	// Set all CSR bits
	csrrc x14, 0xf3f, x25	// Clear all CSR bits
	csrrw x14, 0xf3f, x27	// Restore CSR

// Testing CSR 0xf40
	csrr x22, 0xf40	// Read CSR
	li x9, -1
	csrrw x1, 0xf40, x9	// Write all 1s to CSR
	csrrw x1, 0xf40, x0	// Write all 0s to CSR
	csrrs x1, 0xf40, x9	// Set all CSR bits
	csrrc x1, 0xf40, x9	// Clear all CSR bits
	csrrw x1, 0xf40, x22	// Restore CSR

// Testing CSR 0xf41
	csrr x7, 0xf41	// Read CSR
	li x30, -1
	csrrw x15, 0xf41, x30	// Write all 1s to CSR
	csrrw x15, 0xf41, x0	// Write all 0s to CSR
	csrrs x15, 0xf41, x30	// Set all CSR bits
	csrrc x15, 0xf41, x30	// Clear all CSR bits
	csrrw x15, 0xf41, x7	// Restore CSR

// Testing CSR 0xf42
	csrr x12, 0xf42	// Read CSR
	li x7, -1
	csrrw x3, 0xf42, x7	// Write all 1s to CSR
	csrrw x3, 0xf42, x0	// Write all 0s to CSR
	csrrs x3, 0xf42, x7	// Set all CSR bits
	csrrc x3, 0xf42, x7	// Clear all CSR bits
	csrrw x3, 0xf42, x12	// Restore CSR

// Testing CSR 0xf43
	csrr x11, 0xf43	// Read CSR
	li x1, -1
	csrrw x13, 0xf43, x1	// Write all 1s to CSR
	csrrw x13, 0xf43, x0	// Write all 0s to CSR
	csrrs x13, 0xf43, x1	// Set all CSR bits
	csrrc x13, 0xf43, x1	// Clear all CSR bits
	csrrw x13, 0xf43, x11	// Restore CSR

// Testing CSR 0xf44
	csrr x28, 0xf44	// Read CSR
	li x30, -1
	csrrw x14, 0xf44, x30	// Write all 1s to CSR
	csrrw x14, 0xf44, x0	// Write all 0s to CSR
	csrrs x14, 0xf44, x30	// Set all CSR bits
	csrrc x14, 0xf44, x30	// Clear all CSR bits
	csrrw x14, 0xf44, x28	// Restore CSR

// Testing CSR 0xf45
	csrr x7, 0xf45	// Read CSR
	li x19, -1
	csrrw x14, 0xf45, x19	// Write all 1s to CSR
	csrrw x14, 0xf45, x0	// Write all 0s to CSR
	csrrs x14, 0xf45, x19	// Set all CSR bits
	csrrc x14, 0xf45, x19	// Clear all CSR bits
	csrrw x14, 0xf45, x7	// Restore CSR

// Testing CSR 0xf46
	csrr x8, 0xf46	// Read CSR
	li x30, -1
	csrrw x21, 0xf46, x30	// Write all 1s to CSR
	csrrw x21, 0xf46, x0	// Write all 0s to CSR
	csrrs x21, 0xf46, x30	// Set all CSR bits
	csrrc x21, 0xf46, x30	// Clear all CSR bits
	csrrw x21, 0xf46, x8	// Restore CSR

// Testing CSR 0xf47
	csrr x21, 0xf47	// Read CSR
	li x29, -1
	csrrw x24, 0xf47, x29	// Write all 1s to CSR
	csrrw x24, 0xf47, x0	// Write all 0s to CSR
	csrrs x24, 0xf47, x29	// Set all CSR bits
	csrrc x24, 0xf47, x29	// Clear all CSR bits
	csrrw x24, 0xf47, x21	// Restore CSR

// Testing CSR 0xf48
	csrr x23, 0xf48	// Read CSR
	li x21, -1
	csrrw x22, 0xf48, x21	// Write all 1s to CSR
	csrrw x22, 0xf48, x0	// Write all 0s to CSR
	csrrs x22, 0xf48, x21	// Set all CSR bits
	csrrc x22, 0xf48, x21	// Clear all CSR bits
	csrrw x22, 0xf48, x23	// Restore CSR

// Testing CSR 0xf49
	csrr x14, 0xf49	// Read CSR
	li x11, -1
	csrrw x4, 0xf49, x11	// Write all 1s to CSR
	csrrw x4, 0xf49, x0	// Write all 0s to CSR
	csrrs x4, 0xf49, x11	// Set all CSR bits
	csrrc x4, 0xf49, x11	// Clear all CSR bits
	csrrw x4, 0xf49, x14	// Restore CSR

// Testing CSR 0xf4a
	csrr x1, 0xf4a	// Read CSR
	li x7, -1
	csrrw x21, 0xf4a, x7	// Write all 1s to CSR
	csrrw x21, 0xf4a, x0	// Write all 0s to CSR
	csrrs x21, 0xf4a, x7	// Set all CSR bits
	csrrc x21, 0xf4a, x7	// Clear all CSR bits
	csrrw x21, 0xf4a, x1	// Restore CSR

// Testing CSR 0xf4b
	csrr x10, 0xf4b	// Read CSR
	li x3, -1
	csrrw x7, 0xf4b, x3	// Write all 1s to CSR
	csrrw x7, 0xf4b, x0	// Write all 0s to CSR
	csrrs x7, 0xf4b, x3	// Set all CSR bits
	csrrc x7, 0xf4b, x3	// Clear all CSR bits
	csrrw x7, 0xf4b, x10	// Restore CSR

// Testing CSR 0xf4c
	csrr x10, 0xf4c	// Read CSR
	li x30, -1
	csrrw x3, 0xf4c, x30	// Write all 1s to CSR
	csrrw x3, 0xf4c, x0	// Write all 0s to CSR
	csrrs x3, 0xf4c, x30	// Set all CSR bits
	csrrc x3, 0xf4c, x30	// Clear all CSR bits
	csrrw x3, 0xf4c, x10	// Restore CSR

// Testing CSR 0xf4d
	csrr x7, 0xf4d	// Read CSR
	li x6, -1
	csrrw x8, 0xf4d, x6	// Write all 1s to CSR
	csrrw x8, 0xf4d, x0	// Write all 0s to CSR
	csrrs x8, 0xf4d, x6	// Set all CSR bits
	csrrc x8, 0xf4d, x6	// Clear all CSR bits
	csrrw x8, 0xf4d, x7	// Restore CSR

// Testing CSR 0xf4e
	csrr x19, 0xf4e	// Read CSR
	li x23, -1
	csrrw x25, 0xf4e, x23	// Write all 1s to CSR
	csrrw x25, 0xf4e, x0	// Write all 0s to CSR
	csrrs x25, 0xf4e, x23	// Set all CSR bits
	csrrc x25, 0xf4e, x23	// Clear all CSR bits
	csrrw x25, 0xf4e, x19	// Restore CSR

// Testing CSR 0xf4f
	csrr x14, 0xf4f	// Read CSR
	li x21, -1
	csrrw x11, 0xf4f, x21	// Write all 1s to CSR
	csrrw x11, 0xf4f, x0	// Write all 0s to CSR
	csrrs x11, 0xf4f, x21	// Set all CSR bits
	csrrc x11, 0xf4f, x21	// Clear all CSR bits
	csrrw x11, 0xf4f, x14	// Restore CSR

// Testing CSR 0xf50
	csrr x10, 0xf50	// Read CSR
	li x29, -1
	csrrw x27, 0xf50, x29	// Write all 1s to CSR
	csrrw x27, 0xf50, x0	// Write all 0s to CSR
	csrrs x27, 0xf50, x29	// Set all CSR bits
	csrrc x27, 0xf50, x29	// Clear all CSR bits
	csrrw x27, 0xf50, x10	// Restore CSR

// Testing CSR 0xf51
	csrr x6, 0xf51	// Read CSR
	li x8, -1
	csrrw x21, 0xf51, x8	// Write all 1s to CSR
	csrrw x21, 0xf51, x0	// Write all 0s to CSR
	csrrs x21, 0xf51, x8	// Set all CSR bits
	csrrc x21, 0xf51, x8	// Clear all CSR bits
	csrrw x21, 0xf51, x6	// Restore CSR

// Testing CSR 0xf52
	csrr x17, 0xf52	// Read CSR
	li x16, -1
	csrrw x1, 0xf52, x16	// Write all 1s to CSR
	csrrw x1, 0xf52, x0	// Write all 0s to CSR
	csrrs x1, 0xf52, x16	// Set all CSR bits
	csrrc x1, 0xf52, x16	// Clear all CSR bits
	csrrw x1, 0xf52, x17	// Restore CSR

// Testing CSR 0xf53
	csrr x25, 0xf53	// Read CSR
	li x5, -1
	csrrw x16, 0xf53, x5	// Write all 1s to CSR
	csrrw x16, 0xf53, x0	// Write all 0s to CSR
	csrrs x16, 0xf53, x5	// Set all CSR bits
	csrrc x16, 0xf53, x5	// Clear all CSR bits
	csrrw x16, 0xf53, x25	// Restore CSR

// Testing CSR 0xf54
	csrr x21, 0xf54	// Read CSR
	li x20, -1
	csrrw x3, 0xf54, x20	// Write all 1s to CSR
	csrrw x3, 0xf54, x0	// Write all 0s to CSR
	csrrs x3, 0xf54, x20	// Set all CSR bits
	csrrc x3, 0xf54, x20	// Clear all CSR bits
	csrrw x3, 0xf54, x21	// Restore CSR

// Testing CSR 0xf55
	csrr x1, 0xf55	// Read CSR
	li x10, -1
	csrrw x27, 0xf55, x10	// Write all 1s to CSR
	csrrw x27, 0xf55, x0	// Write all 0s to CSR
	csrrs x27, 0xf55, x10	// Set all CSR bits
	csrrc x27, 0xf55, x10	// Clear all CSR bits
	csrrw x27, 0xf55, x1	// Restore CSR

// Testing CSR 0xf56
	csrr x15, 0xf56	// Read CSR
	li x24, -1
	csrrw x9, 0xf56, x24	// Write all 1s to CSR
	csrrw x9, 0xf56, x0	// Write all 0s to CSR
	csrrs x9, 0xf56, x24	// Set all CSR bits
	csrrc x9, 0xf56, x24	// Clear all CSR bits
	csrrw x9, 0xf56, x15	// Restore CSR

// Testing CSR 0xf57
	csrr x7, 0xf57	// Read CSR
	li x17, -1
	csrrw x31, 0xf57, x17	// Write all 1s to CSR
	csrrw x31, 0xf57, x0	// Write all 0s to CSR
	csrrs x31, 0xf57, x17	// Set all CSR bits
	csrrc x31, 0xf57, x17	// Clear all CSR bits
	csrrw x31, 0xf57, x7	// Restore CSR

// Testing CSR 0xf58
	csrr x18, 0xf58	// Read CSR
	li x5, -1
	csrrw x21, 0xf58, x5	// Write all 1s to CSR
	csrrw x21, 0xf58, x0	// Write all 0s to CSR
	csrrs x21, 0xf58, x5	// Set all CSR bits
	csrrc x21, 0xf58, x5	// Clear all CSR bits
	csrrw x21, 0xf58, x18	// Restore CSR

// Testing CSR 0xf59
	csrr x28, 0xf59	// Read CSR
	li x27, -1
	csrrw x22, 0xf59, x27	// Write all 1s to CSR
	csrrw x22, 0xf59, x0	// Write all 0s to CSR
	csrrs x22, 0xf59, x27	// Set all CSR bits
	csrrc x22, 0xf59, x27	// Clear all CSR bits
	csrrw x22, 0xf59, x28	// Restore CSR

// Testing CSR 0xf5a
	csrr x11, 0xf5a	// Read CSR
	li x10, -1
	csrrw x5, 0xf5a, x10	// Write all 1s to CSR
	csrrw x5, 0xf5a, x0	// Write all 0s to CSR
	csrrs x5, 0xf5a, x10	// Set all CSR bits
	csrrc x5, 0xf5a, x10	// Clear all CSR bits
	csrrw x5, 0xf5a, x11	// Restore CSR

// Testing CSR 0xf5b
	csrr x6, 0xf5b	// Read CSR
	li x25, -1
	csrrw x11, 0xf5b, x25	// Write all 1s to CSR
	csrrw x11, 0xf5b, x0	// Write all 0s to CSR
	csrrs x11, 0xf5b, x25	// Set all CSR bits
	csrrc x11, 0xf5b, x25	// Clear all CSR bits
	csrrw x11, 0xf5b, x6	// Restore CSR

// Testing CSR 0xf5c
	csrr x13, 0xf5c	// Read CSR
	li x31, -1
	csrrw x23, 0xf5c, x31	// Write all 1s to CSR
	csrrw x23, 0xf5c, x0	// Write all 0s to CSR
	csrrs x23, 0xf5c, x31	// Set all CSR bits
	csrrc x23, 0xf5c, x31	// Clear all CSR bits
	csrrw x23, 0xf5c, x13	// Restore CSR

// Testing CSR 0xf5d
	csrr x10, 0xf5d	// Read CSR
	li x12, -1
	csrrw x15, 0xf5d, x12	// Write all 1s to CSR
	csrrw x15, 0xf5d, x0	// Write all 0s to CSR
	csrrs x15, 0xf5d, x12	// Set all CSR bits
	csrrc x15, 0xf5d, x12	// Clear all CSR bits
	csrrw x15, 0xf5d, x10	// Restore CSR

// Testing CSR 0xf5e
	csrr x16, 0xf5e	// Read CSR
	li x28, -1
	csrrw x14, 0xf5e, x28	// Write all 1s to CSR
	csrrw x14, 0xf5e, x0	// Write all 0s to CSR
	csrrs x14, 0xf5e, x28	// Set all CSR bits
	csrrc x14, 0xf5e, x28	// Clear all CSR bits
	csrrw x14, 0xf5e, x16	// Restore CSR

// Testing CSR 0xf5f
	csrr x6, 0xf5f	// Read CSR
	li x20, -1
	csrrw x15, 0xf5f, x20	// Write all 1s to CSR
	csrrw x15, 0xf5f, x0	// Write all 0s to CSR
	csrrs x15, 0xf5f, x20	// Set all CSR bits
	csrrc x15, 0xf5f, x20	// Clear all CSR bits
	csrrw x15, 0xf5f, x6	// Restore CSR

// Testing CSR 0xf60
	csrr x7, 0xf60	// Read CSR
	li x9, -1
	csrrw x25, 0xf60, x9	// Write all 1s to CSR
	csrrw x25, 0xf60, x0	// Write all 0s to CSR
	csrrs x25, 0xf60, x9	// Set all CSR bits
	csrrc x25, 0xf60, x9	// Clear all CSR bits
	csrrw x25, 0xf60, x7	// Restore CSR

// Testing CSR 0xf61
	csrr x14, 0xf61	// Read CSR
	li x21, -1
	csrrw x31, 0xf61, x21	// Write all 1s to CSR
	csrrw x31, 0xf61, x0	// Write all 0s to CSR
	csrrs x31, 0xf61, x21	// Set all CSR bits
	csrrc x31, 0xf61, x21	// Clear all CSR bits
	csrrw x31, 0xf61, x14	// Restore CSR

// Testing CSR 0xf62
	csrr x27, 0xf62	// Read CSR
	li x14, -1
	csrrw x16, 0xf62, x14	// Write all 1s to CSR
	csrrw x16, 0xf62, x0	// Write all 0s to CSR
	csrrs x16, 0xf62, x14	// Set all CSR bits
	csrrc x16, 0xf62, x14	// Clear all CSR bits
	csrrw x16, 0xf62, x27	// Restore CSR

// Testing CSR 0xf63
	csrr x2, 0xf63	// Read CSR
	li x11, -1
	csrrw x29, 0xf63, x11	// Write all 1s to CSR
	csrrw x29, 0xf63, x0	// Write all 0s to CSR
	csrrs x29, 0xf63, x11	// Set all CSR bits
	csrrc x29, 0xf63, x11	// Clear all CSR bits
	csrrw x29, 0xf63, x2	// Restore CSR

// Testing CSR 0xf64
	csrr x26, 0xf64	// Read CSR
	li x28, -1
	csrrw x16, 0xf64, x28	// Write all 1s to CSR
	csrrw x16, 0xf64, x0	// Write all 0s to CSR
	csrrs x16, 0xf64, x28	// Set all CSR bits
	csrrc x16, 0xf64, x28	// Clear all CSR bits
	csrrw x16, 0xf64, x26	// Restore CSR

// Testing CSR 0xf65
	csrr x11, 0xf65	// Read CSR
	li x21, -1
	csrrw x2, 0xf65, x21	// Write all 1s to CSR
	csrrw x2, 0xf65, x0	// Write all 0s to CSR
	csrrs x2, 0xf65, x21	// Set all CSR bits
	csrrc x2, 0xf65, x21	// Clear all CSR bits
	csrrw x2, 0xf65, x11	// Restore CSR

// Testing CSR 0xf66
	csrr x11, 0xf66	// Read CSR
	li x16, -1
	csrrw x12, 0xf66, x16	// Write all 1s to CSR
	csrrw x12, 0xf66, x0	// Write all 0s to CSR
	csrrs x12, 0xf66, x16	// Set all CSR bits
	csrrc x12, 0xf66, x16	// Clear all CSR bits
	csrrw x12, 0xf66, x11	// Restore CSR

// Testing CSR 0xf67
	csrr x21, 0xf67	// Read CSR
	li x29, -1
	csrrw x15, 0xf67, x29	// Write all 1s to CSR
	csrrw x15, 0xf67, x0	// Write all 0s to CSR
	csrrs x15, 0xf67, x29	// Set all CSR bits
	csrrc x15, 0xf67, x29	// Clear all CSR bits
	csrrw x15, 0xf67, x21	// Restore CSR

// Testing CSR 0xf68
	csrr x3, 0xf68	// Read CSR
	li x24, -1
	csrrw x27, 0xf68, x24	// Write all 1s to CSR
	csrrw x27, 0xf68, x0	// Write all 0s to CSR
	csrrs x27, 0xf68, x24	// Set all CSR bits
	csrrc x27, 0xf68, x24	// Clear all CSR bits
	csrrw x27, 0xf68, x3	// Restore CSR

// Testing CSR 0xf69
	csrr x28, 0xf69	// Read CSR
	li x18, -1
	csrrw x10, 0xf69, x18	// Write all 1s to CSR
	csrrw x10, 0xf69, x0	// Write all 0s to CSR
	csrrs x10, 0xf69, x18	// Set all CSR bits
	csrrc x10, 0xf69, x18	// Clear all CSR bits
	csrrw x10, 0xf69, x28	// Restore CSR

// Testing CSR 0xf6a
	csrr x21, 0xf6a	// Read CSR
	li x29, -1
	csrrw x10, 0xf6a, x29	// Write all 1s to CSR
	csrrw x10, 0xf6a, x0	// Write all 0s to CSR
	csrrs x10, 0xf6a, x29	// Set all CSR bits
	csrrc x10, 0xf6a, x29	// Clear all CSR bits
	csrrw x10, 0xf6a, x21	// Restore CSR

// Testing CSR 0xf6b
	csrr x20, 0xf6b	// Read CSR
	li x14, -1
	csrrw x28, 0xf6b, x14	// Write all 1s to CSR
	csrrw x28, 0xf6b, x0	// Write all 0s to CSR
	csrrs x28, 0xf6b, x14	// Set all CSR bits
	csrrc x28, 0xf6b, x14	// Clear all CSR bits
	csrrw x28, 0xf6b, x20	// Restore CSR

// Testing CSR 0xf6c
	csrr x11, 0xf6c	// Read CSR
	li x29, -1
	csrrw x21, 0xf6c, x29	// Write all 1s to CSR
	csrrw x21, 0xf6c, x0	// Write all 0s to CSR
	csrrs x21, 0xf6c, x29	// Set all CSR bits
	csrrc x21, 0xf6c, x29	// Clear all CSR bits
	csrrw x21, 0xf6c, x11	// Restore CSR

// Testing CSR 0xf6d
	csrr x21, 0xf6d	// Read CSR
	li x15, -1
	csrrw x4, 0xf6d, x15	// Write all 1s to CSR
	csrrw x4, 0xf6d, x0	// Write all 0s to CSR
	csrrs x4, 0xf6d, x15	// Set all CSR bits
	csrrc x4, 0xf6d, x15	// Clear all CSR bits
	csrrw x4, 0xf6d, x21	// Restore CSR

// Testing CSR 0xf6e
	csrr x12, 0xf6e	// Read CSR
	li x22, -1
	csrrw x15, 0xf6e, x22	// Write all 1s to CSR
	csrrw x15, 0xf6e, x0	// Write all 0s to CSR
	csrrs x15, 0xf6e, x22	// Set all CSR bits
	csrrc x15, 0xf6e, x22	// Clear all CSR bits
	csrrw x15, 0xf6e, x12	// Restore CSR

// Testing CSR 0xf6f
	csrr x21, 0xf6f	// Read CSR
	li x14, -1
	csrrw x18, 0xf6f, x14	// Write all 1s to CSR
	csrrw x18, 0xf6f, x0	// Write all 0s to CSR
	csrrs x18, 0xf6f, x14	// Set all CSR bits
	csrrc x18, 0xf6f, x14	// Clear all CSR bits
	csrrw x18, 0xf6f, x21	// Restore CSR

// Testing CSR 0xf70
	csrr x2, 0xf70	// Read CSR
	li x13, -1
	csrrw x18, 0xf70, x13	// Write all 1s to CSR
	csrrw x18, 0xf70, x0	// Write all 0s to CSR
	csrrs x18, 0xf70, x13	// Set all CSR bits
	csrrc x18, 0xf70, x13	// Clear all CSR bits
	csrrw x18, 0xf70, x2	// Restore CSR

// Testing CSR 0xf71
	csrr x12, 0xf71	// Read CSR
	li x21, -1
	csrrw x1, 0xf71, x21	// Write all 1s to CSR
	csrrw x1, 0xf71, x0	// Write all 0s to CSR
	csrrs x1, 0xf71, x21	// Set all CSR bits
	csrrc x1, 0xf71, x21	// Clear all CSR bits
	csrrw x1, 0xf71, x12	// Restore CSR

// Testing CSR 0xf72
	csrr x12, 0xf72	// Read CSR
	li x25, -1
	csrrw x29, 0xf72, x25	// Write all 1s to CSR
	csrrw x29, 0xf72, x0	// Write all 0s to CSR
	csrrs x29, 0xf72, x25	// Set all CSR bits
	csrrc x29, 0xf72, x25	// Clear all CSR bits
	csrrw x29, 0xf72, x12	// Restore CSR

// Testing CSR 0xf73
	csrr x1, 0xf73	// Read CSR
	li x31, -1
	csrrw x19, 0xf73, x31	// Write all 1s to CSR
	csrrw x19, 0xf73, x0	// Write all 0s to CSR
	csrrs x19, 0xf73, x31	// Set all CSR bits
	csrrc x19, 0xf73, x31	// Clear all CSR bits
	csrrw x19, 0xf73, x1	// Restore CSR

// Testing CSR 0xf74
	csrr x16, 0xf74	// Read CSR
	li x31, -1
	csrrw x17, 0xf74, x31	// Write all 1s to CSR
	csrrw x17, 0xf74, x0	// Write all 0s to CSR
	csrrs x17, 0xf74, x31	// Set all CSR bits
	csrrc x17, 0xf74, x31	// Clear all CSR bits
	csrrw x17, 0xf74, x16	// Restore CSR

// Testing CSR 0xf75
	csrr x20, 0xf75	// Read CSR
	li x14, -1
	csrrw x8, 0xf75, x14	// Write all 1s to CSR
	csrrw x8, 0xf75, x0	// Write all 0s to CSR
	csrrs x8, 0xf75, x14	// Set all CSR bits
	csrrc x8, 0xf75, x14	// Clear all CSR bits
	csrrw x8, 0xf75, x20	// Restore CSR

// Testing CSR 0xf76
	csrr x22, 0xf76	// Read CSR
	li x23, -1
	csrrw x2, 0xf76, x23	// Write all 1s to CSR
	csrrw x2, 0xf76, x0	// Write all 0s to CSR
	csrrs x2, 0xf76, x23	// Set all CSR bits
	csrrc x2, 0xf76, x23	// Clear all CSR bits
	csrrw x2, 0xf76, x22	// Restore CSR

// Testing CSR 0xf77
	csrr x10, 0xf77	// Read CSR
	li x17, -1
	csrrw x26, 0xf77, x17	// Write all 1s to CSR
	csrrw x26, 0xf77, x0	// Write all 0s to CSR
	csrrs x26, 0xf77, x17	// Set all CSR bits
	csrrc x26, 0xf77, x17	// Clear all CSR bits
	csrrw x26, 0xf77, x10	// Restore CSR

// Testing CSR 0xf78
	csrr x18, 0xf78	// Read CSR
	li x7, -1
	csrrw x20, 0xf78, x7	// Write all 1s to CSR
	csrrw x20, 0xf78, x0	// Write all 0s to CSR
	csrrs x20, 0xf78, x7	// Set all CSR bits
	csrrc x20, 0xf78, x7	// Clear all CSR bits
	csrrw x20, 0xf78, x18	// Restore CSR

// Testing CSR 0xf79
	csrr x18, 0xf79	// Read CSR
	li x29, -1
	csrrw x7, 0xf79, x29	// Write all 1s to CSR
	csrrw x7, 0xf79, x0	// Write all 0s to CSR
	csrrs x7, 0xf79, x29	// Set all CSR bits
	csrrc x7, 0xf79, x29	// Clear all CSR bits
	csrrw x7, 0xf79, x18	// Restore CSR

// Testing CSR 0xf7a
	csrr x22, 0xf7a	// Read CSR
	li x4, -1
	csrrw x17, 0xf7a, x4	// Write all 1s to CSR
	csrrw x17, 0xf7a, x0	// Write all 0s to CSR
	csrrs x17, 0xf7a, x4	// Set all CSR bits
	csrrc x17, 0xf7a, x4	// Clear all CSR bits
	csrrw x17, 0xf7a, x22	// Restore CSR

// Testing CSR 0xf7b
	csrr x13, 0xf7b	// Read CSR
	li x4, -1
	csrrw x18, 0xf7b, x4	// Write all 1s to CSR
	csrrw x18, 0xf7b, x0	// Write all 0s to CSR
	csrrs x18, 0xf7b, x4	// Set all CSR bits
	csrrc x18, 0xf7b, x4	// Clear all CSR bits
	csrrw x18, 0xf7b, x13	// Restore CSR

// Testing CSR 0xf7c
	csrr x2, 0xf7c	// Read CSR
	li x9, -1
	csrrw x11, 0xf7c, x9	// Write all 1s to CSR
	csrrw x11, 0xf7c, x0	// Write all 0s to CSR
	csrrs x11, 0xf7c, x9	// Set all CSR bits
	csrrc x11, 0xf7c, x9	// Clear all CSR bits
	csrrw x11, 0xf7c, x2	// Restore CSR

// Testing CSR 0xf7d
	csrr x11, 0xf7d	// Read CSR
	li x2, -1
	csrrw x15, 0xf7d, x2	// Write all 1s to CSR
	csrrw x15, 0xf7d, x0	// Write all 0s to CSR
	csrrs x15, 0xf7d, x2	// Set all CSR bits
	csrrc x15, 0xf7d, x2	// Clear all CSR bits
	csrrw x15, 0xf7d, x11	// Restore CSR

// Testing CSR 0xf7e
	csrr x22, 0xf7e	// Read CSR
	li x24, -1
	csrrw x25, 0xf7e, x24	// Write all 1s to CSR
	csrrw x25, 0xf7e, x0	// Write all 0s to CSR
	csrrs x25, 0xf7e, x24	// Set all CSR bits
	csrrc x25, 0xf7e, x24	// Clear all CSR bits
	csrrw x25, 0xf7e, x22	// Restore CSR

// Testing CSR 0xf7f
	csrr x5, 0xf7f	// Read CSR
	li x17, -1
	csrrw x19, 0xf7f, x17	// Write all 1s to CSR
	csrrw x19, 0xf7f, x0	// Write all 0s to CSR
	csrrs x19, 0xf7f, x17	// Set all CSR bits
	csrrc x19, 0xf7f, x17	// Clear all CSR bits
	csrrw x19, 0xf7f, x5	// Restore CSR

// Testing CSR 0xf80
	csrr x1, 0xf80	// Read CSR
	li x20, -1
	csrrw x21, 0xf80, x20	// Write all 1s to CSR
	csrrw x21, 0xf80, x0	// Write all 0s to CSR
	csrrs x21, 0xf80, x20	// Set all CSR bits
	csrrc x21, 0xf80, x20	// Clear all CSR bits
	csrrw x21, 0xf80, x1	// Restore CSR

// Testing CSR 0xf81
	csrr x26, 0xf81	// Read CSR
	li x20, -1
	csrrw x14, 0xf81, x20	// Write all 1s to CSR
	csrrw x14, 0xf81, x0	// Write all 0s to CSR
	csrrs x14, 0xf81, x20	// Set all CSR bits
	csrrc x14, 0xf81, x20	// Clear all CSR bits
	csrrw x14, 0xf81, x26	// Restore CSR

// Testing CSR 0xf82
	csrr x9, 0xf82	// Read CSR
	li x16, -1
	csrrw x20, 0xf82, x16	// Write all 1s to CSR
	csrrw x20, 0xf82, x0	// Write all 0s to CSR
	csrrs x20, 0xf82, x16	// Set all CSR bits
	csrrc x20, 0xf82, x16	// Clear all CSR bits
	csrrw x20, 0xf82, x9	// Restore CSR

// Testing CSR 0xf83
	csrr x24, 0xf83	// Read CSR
	li x18, -1
	csrrw x30, 0xf83, x18	// Write all 1s to CSR
	csrrw x30, 0xf83, x0	// Write all 0s to CSR
	csrrs x30, 0xf83, x18	// Set all CSR bits
	csrrc x30, 0xf83, x18	// Clear all CSR bits
	csrrw x30, 0xf83, x24	// Restore CSR

// Testing CSR 0xf84
	csrr x22, 0xf84	// Read CSR
	li x8, -1
	csrrw x10, 0xf84, x8	// Write all 1s to CSR
	csrrw x10, 0xf84, x0	// Write all 0s to CSR
	csrrs x10, 0xf84, x8	// Set all CSR bits
	csrrc x10, 0xf84, x8	// Clear all CSR bits
	csrrw x10, 0xf84, x22	// Restore CSR

// Testing CSR 0xf85
	csrr x6, 0xf85	// Read CSR
	li x8, -1
	csrrw x30, 0xf85, x8	// Write all 1s to CSR
	csrrw x30, 0xf85, x0	// Write all 0s to CSR
	csrrs x30, 0xf85, x8	// Set all CSR bits
	csrrc x30, 0xf85, x8	// Clear all CSR bits
	csrrw x30, 0xf85, x6	// Restore CSR

// Testing CSR 0xf86
	csrr x7, 0xf86	// Read CSR
	li x31, -1
	csrrw x16, 0xf86, x31	// Write all 1s to CSR
	csrrw x16, 0xf86, x0	// Write all 0s to CSR
	csrrs x16, 0xf86, x31	// Set all CSR bits
	csrrc x16, 0xf86, x31	// Clear all CSR bits
	csrrw x16, 0xf86, x7	// Restore CSR

// Testing CSR 0xf87
	csrr x24, 0xf87	// Read CSR
	li x8, -1
	csrrw x25, 0xf87, x8	// Write all 1s to CSR
	csrrw x25, 0xf87, x0	// Write all 0s to CSR
	csrrs x25, 0xf87, x8	// Set all CSR bits
	csrrc x25, 0xf87, x8	// Clear all CSR bits
	csrrw x25, 0xf87, x24	// Restore CSR

// Testing CSR 0xf88
	csrr x9, 0xf88	// Read CSR
	li x27, -1
	csrrw x12, 0xf88, x27	// Write all 1s to CSR
	csrrw x12, 0xf88, x0	// Write all 0s to CSR
	csrrs x12, 0xf88, x27	// Set all CSR bits
	csrrc x12, 0xf88, x27	// Clear all CSR bits
	csrrw x12, 0xf88, x9	// Restore CSR

// Testing CSR 0xf89
	csrr x7, 0xf89	// Read CSR
	li x30, -1
	csrrw x19, 0xf89, x30	// Write all 1s to CSR
	csrrw x19, 0xf89, x0	// Write all 0s to CSR
	csrrs x19, 0xf89, x30	// Set all CSR bits
	csrrc x19, 0xf89, x30	// Clear all CSR bits
	csrrw x19, 0xf89, x7	// Restore CSR

// Testing CSR 0xf8a
	csrr x23, 0xf8a	// Read CSR
	li x11, -1
	csrrw x5, 0xf8a, x11	// Write all 1s to CSR
	csrrw x5, 0xf8a, x0	// Write all 0s to CSR
	csrrs x5, 0xf8a, x11	// Set all CSR bits
	csrrc x5, 0xf8a, x11	// Clear all CSR bits
	csrrw x5, 0xf8a, x23	// Restore CSR

// Testing CSR 0xf8b
	csrr x3, 0xf8b	// Read CSR
	li x26, -1
	csrrw x13, 0xf8b, x26	// Write all 1s to CSR
	csrrw x13, 0xf8b, x0	// Write all 0s to CSR
	csrrs x13, 0xf8b, x26	// Set all CSR bits
	csrrc x13, 0xf8b, x26	// Clear all CSR bits
	csrrw x13, 0xf8b, x3	// Restore CSR

// Testing CSR 0xf8c
	csrr x7, 0xf8c	// Read CSR
	li x25, -1
	csrrw x27, 0xf8c, x25	// Write all 1s to CSR
	csrrw x27, 0xf8c, x0	// Write all 0s to CSR
	csrrs x27, 0xf8c, x25	// Set all CSR bits
	csrrc x27, 0xf8c, x25	// Clear all CSR bits
	csrrw x27, 0xf8c, x7	// Restore CSR

// Testing CSR 0xf8d
	csrr x20, 0xf8d	// Read CSR
	li x27, -1
	csrrw x7, 0xf8d, x27	// Write all 1s to CSR
	csrrw x7, 0xf8d, x0	// Write all 0s to CSR
	csrrs x7, 0xf8d, x27	// Set all CSR bits
	csrrc x7, 0xf8d, x27	// Clear all CSR bits
	csrrw x7, 0xf8d, x20	// Restore CSR

// Testing CSR 0xf8e
	csrr x13, 0xf8e	// Read CSR
	li x28, -1
	csrrw x6, 0xf8e, x28	// Write all 1s to CSR
	csrrw x6, 0xf8e, x0	// Write all 0s to CSR
	csrrs x6, 0xf8e, x28	// Set all CSR bits
	csrrc x6, 0xf8e, x28	// Clear all CSR bits
	csrrw x6, 0xf8e, x13	// Restore CSR

// Testing CSR 0xf8f
	csrr x16, 0xf8f	// Read CSR
	li x23, -1
	csrrw x10, 0xf8f, x23	// Write all 1s to CSR
	csrrw x10, 0xf8f, x0	// Write all 0s to CSR
	csrrs x10, 0xf8f, x23	// Set all CSR bits
	csrrc x10, 0xf8f, x23	// Clear all CSR bits
	csrrw x10, 0xf8f, x16	// Restore CSR

// Testing CSR 0xf90
	csrr x20, 0xf90	// Read CSR
	li x3, -1
	csrrw x30, 0xf90, x3	// Write all 1s to CSR
	csrrw x30, 0xf90, x0	// Write all 0s to CSR
	csrrs x30, 0xf90, x3	// Set all CSR bits
	csrrc x30, 0xf90, x3	// Clear all CSR bits
	csrrw x30, 0xf90, x20	// Restore CSR

// Testing CSR 0xf91
	csrr x24, 0xf91	// Read CSR
	li x4, -1
	csrrw x25, 0xf91, x4	// Write all 1s to CSR
	csrrw x25, 0xf91, x0	// Write all 0s to CSR
	csrrs x25, 0xf91, x4	// Set all CSR bits
	csrrc x25, 0xf91, x4	// Clear all CSR bits
	csrrw x25, 0xf91, x24	// Restore CSR

// Testing CSR 0xf92
	csrr x23, 0xf92	// Read CSR
	li x10, -1
	csrrw x7, 0xf92, x10	// Write all 1s to CSR
	csrrw x7, 0xf92, x0	// Write all 0s to CSR
	csrrs x7, 0xf92, x10	// Set all CSR bits
	csrrc x7, 0xf92, x10	// Clear all CSR bits
	csrrw x7, 0xf92, x23	// Restore CSR

// Testing CSR 0xf93
	csrr x1, 0xf93	// Read CSR
	li x2, -1
	csrrw x12, 0xf93, x2	// Write all 1s to CSR
	csrrw x12, 0xf93, x0	// Write all 0s to CSR
	csrrs x12, 0xf93, x2	// Set all CSR bits
	csrrc x12, 0xf93, x2	// Clear all CSR bits
	csrrw x12, 0xf93, x1	// Restore CSR

// Testing CSR 0xf94
	csrr x3, 0xf94	// Read CSR
	li x31, -1
	csrrw x15, 0xf94, x31	// Write all 1s to CSR
	csrrw x15, 0xf94, x0	// Write all 0s to CSR
	csrrs x15, 0xf94, x31	// Set all CSR bits
	csrrc x15, 0xf94, x31	// Clear all CSR bits
	csrrw x15, 0xf94, x3	// Restore CSR

// Testing CSR 0xf95
	csrr x10, 0xf95	// Read CSR
	li x13, -1
	csrrw x16, 0xf95, x13	// Write all 1s to CSR
	csrrw x16, 0xf95, x0	// Write all 0s to CSR
	csrrs x16, 0xf95, x13	// Set all CSR bits
	csrrc x16, 0xf95, x13	// Clear all CSR bits
	csrrw x16, 0xf95, x10	// Restore CSR

// Testing CSR 0xf96
	csrr x9, 0xf96	// Read CSR
	li x8, -1
	csrrw x22, 0xf96, x8	// Write all 1s to CSR
	csrrw x22, 0xf96, x0	// Write all 0s to CSR
	csrrs x22, 0xf96, x8	// Set all CSR bits
	csrrc x22, 0xf96, x8	// Clear all CSR bits
	csrrw x22, 0xf96, x9	// Restore CSR

// Testing CSR 0xf97
	csrr x18, 0xf97	// Read CSR
	li x12, -1
	csrrw x17, 0xf97, x12	// Write all 1s to CSR
	csrrw x17, 0xf97, x0	// Write all 0s to CSR
	csrrs x17, 0xf97, x12	// Set all CSR bits
	csrrc x17, 0xf97, x12	// Clear all CSR bits
	csrrw x17, 0xf97, x18	// Restore CSR

// Testing CSR 0xf98
	csrr x30, 0xf98	// Read CSR
	li x20, -1
	csrrw x4, 0xf98, x20	// Write all 1s to CSR
	csrrw x4, 0xf98, x0	// Write all 0s to CSR
	csrrs x4, 0xf98, x20	// Set all CSR bits
	csrrc x4, 0xf98, x20	// Clear all CSR bits
	csrrw x4, 0xf98, x30	// Restore CSR

// Testing CSR 0xf99
	csrr x29, 0xf99	// Read CSR
	li x21, -1
	csrrw x11, 0xf99, x21	// Write all 1s to CSR
	csrrw x11, 0xf99, x0	// Write all 0s to CSR
	csrrs x11, 0xf99, x21	// Set all CSR bits
	csrrc x11, 0xf99, x21	// Clear all CSR bits
	csrrw x11, 0xf99, x29	// Restore CSR

// Testing CSR 0xf9a
	csrr x13, 0xf9a	// Read CSR
	li x12, -1
	csrrw x4, 0xf9a, x12	// Write all 1s to CSR
	csrrw x4, 0xf9a, x0	// Write all 0s to CSR
	csrrs x4, 0xf9a, x12	// Set all CSR bits
	csrrc x4, 0xf9a, x12	// Clear all CSR bits
	csrrw x4, 0xf9a, x13	// Restore CSR

// Testing CSR 0xf9b
	csrr x18, 0xf9b	// Read CSR
	li x25, -1
	csrrw x29, 0xf9b, x25	// Write all 1s to CSR
	csrrw x29, 0xf9b, x0	// Write all 0s to CSR
	csrrs x29, 0xf9b, x25	// Set all CSR bits
	csrrc x29, 0xf9b, x25	// Clear all CSR bits
	csrrw x29, 0xf9b, x18	// Restore CSR

// Testing CSR 0xf9c
	csrr x5, 0xf9c	// Read CSR
	li x20, -1
	csrrw x16, 0xf9c, x20	// Write all 1s to CSR
	csrrw x16, 0xf9c, x0	// Write all 0s to CSR
	csrrs x16, 0xf9c, x20	// Set all CSR bits
	csrrc x16, 0xf9c, x20	// Clear all CSR bits
	csrrw x16, 0xf9c, x5	// Restore CSR

// Testing CSR 0xf9d
	csrr x20, 0xf9d	// Read CSR
	li x28, -1
	csrrw x19, 0xf9d, x28	// Write all 1s to CSR
	csrrw x19, 0xf9d, x0	// Write all 0s to CSR
	csrrs x19, 0xf9d, x28	// Set all CSR bits
	csrrc x19, 0xf9d, x28	// Clear all CSR bits
	csrrw x19, 0xf9d, x20	// Restore CSR

// Testing CSR 0xf9e
	csrr x29, 0xf9e	// Read CSR
	li x13, -1
	csrrw x17, 0xf9e, x13	// Write all 1s to CSR
	csrrw x17, 0xf9e, x0	// Write all 0s to CSR
	csrrs x17, 0xf9e, x13	// Set all CSR bits
	csrrc x17, 0xf9e, x13	// Clear all CSR bits
	csrrw x17, 0xf9e, x29	// Restore CSR

// Testing CSR 0xf9f
	csrr x12, 0xf9f	// Read CSR
	li x26, -1
	csrrw x9, 0xf9f, x26	// Write all 1s to CSR
	csrrw x9, 0xf9f, x0	// Write all 0s to CSR
	csrrs x9, 0xf9f, x26	// Set all CSR bits
	csrrc x9, 0xf9f, x26	// Clear all CSR bits
	csrrw x9, 0xf9f, x12	// Restore CSR

// Testing CSR 0xfa0
	csrr x18, 0xfa0	// Read CSR
	li x5, -1
	csrrw x22, 0xfa0, x5	// Write all 1s to CSR
	csrrw x22, 0xfa0, x0	// Write all 0s to CSR
	csrrs x22, 0xfa0, x5	// Set all CSR bits
	csrrc x22, 0xfa0, x5	// Clear all CSR bits
	csrrw x22, 0xfa0, x18	// Restore CSR

// Testing CSR 0xfa1
	csrr x5, 0xfa1	// Read CSR
	li x26, -1
	csrrw x31, 0xfa1, x26	// Write all 1s to CSR
	csrrw x31, 0xfa1, x0	// Write all 0s to CSR
	csrrs x31, 0xfa1, x26	// Set all CSR bits
	csrrc x31, 0xfa1, x26	// Clear all CSR bits
	csrrw x31, 0xfa1, x5	// Restore CSR

// Testing CSR 0xfa2
	csrr x3, 0xfa2	// Read CSR
	li x5, -1
	csrrw x9, 0xfa2, x5	// Write all 1s to CSR
	csrrw x9, 0xfa2, x0	// Write all 0s to CSR
	csrrs x9, 0xfa2, x5	// Set all CSR bits
	csrrc x9, 0xfa2, x5	// Clear all CSR bits
	csrrw x9, 0xfa2, x3	// Restore CSR

// Testing CSR 0xfa3
	csrr x2, 0xfa3	// Read CSR
	li x23, -1
	csrrw x29, 0xfa3, x23	// Write all 1s to CSR
	csrrw x29, 0xfa3, x0	// Write all 0s to CSR
	csrrs x29, 0xfa3, x23	// Set all CSR bits
	csrrc x29, 0xfa3, x23	// Clear all CSR bits
	csrrw x29, 0xfa3, x2	// Restore CSR

// Testing CSR 0xfa4
	csrr x21, 0xfa4	// Read CSR
	li x8, -1
	csrrw x17, 0xfa4, x8	// Write all 1s to CSR
	csrrw x17, 0xfa4, x0	// Write all 0s to CSR
	csrrs x17, 0xfa4, x8	// Set all CSR bits
	csrrc x17, 0xfa4, x8	// Clear all CSR bits
	csrrw x17, 0xfa4, x21	// Restore CSR

// Testing CSR 0xfa5
	csrr x30, 0xfa5	// Read CSR
	li x12, -1
	csrrw x24, 0xfa5, x12	// Write all 1s to CSR
	csrrw x24, 0xfa5, x0	// Write all 0s to CSR
	csrrs x24, 0xfa5, x12	// Set all CSR bits
	csrrc x24, 0xfa5, x12	// Clear all CSR bits
	csrrw x24, 0xfa5, x30	// Restore CSR

// Testing CSR 0xfa6
	csrr x13, 0xfa6	// Read CSR
	li x18, -1
	csrrw x12, 0xfa6, x18	// Write all 1s to CSR
	csrrw x12, 0xfa6, x0	// Write all 0s to CSR
	csrrs x12, 0xfa6, x18	// Set all CSR bits
	csrrc x12, 0xfa6, x18	// Clear all CSR bits
	csrrw x12, 0xfa6, x13	// Restore CSR

// Testing CSR 0xfa7
	csrr x31, 0xfa7	// Read CSR
	li x28, -1
	csrrw x24, 0xfa7, x28	// Write all 1s to CSR
	csrrw x24, 0xfa7, x0	// Write all 0s to CSR
	csrrs x24, 0xfa7, x28	// Set all CSR bits
	csrrc x24, 0xfa7, x28	// Clear all CSR bits
	csrrw x24, 0xfa7, x31	// Restore CSR

// Testing CSR 0xfa8
	csrr x4, 0xfa8	// Read CSR
	li x23, -1
	csrrw x24, 0xfa8, x23	// Write all 1s to CSR
	csrrw x24, 0xfa8, x0	// Write all 0s to CSR
	csrrs x24, 0xfa8, x23	// Set all CSR bits
	csrrc x24, 0xfa8, x23	// Clear all CSR bits
	csrrw x24, 0xfa8, x4	// Restore CSR

// Testing CSR 0xfa9
	csrr x26, 0xfa9	// Read CSR
	li x17, -1
	csrrw x23, 0xfa9, x17	// Write all 1s to CSR
	csrrw x23, 0xfa9, x0	// Write all 0s to CSR
	csrrs x23, 0xfa9, x17	// Set all CSR bits
	csrrc x23, 0xfa9, x17	// Clear all CSR bits
	csrrw x23, 0xfa9, x26	// Restore CSR

// Testing CSR 0xfaa
	csrr x19, 0xfaa	// Read CSR
	li x24, -1
	csrrw x16, 0xfaa, x24	// Write all 1s to CSR
	csrrw x16, 0xfaa, x0	// Write all 0s to CSR
	csrrs x16, 0xfaa, x24	// Set all CSR bits
	csrrc x16, 0xfaa, x24	// Clear all CSR bits
	csrrw x16, 0xfaa, x19	// Restore CSR

// Testing CSR 0xfab
	csrr x1, 0xfab	// Read CSR
	li x25, -1
	csrrw x7, 0xfab, x25	// Write all 1s to CSR
	csrrw x7, 0xfab, x0	// Write all 0s to CSR
	csrrs x7, 0xfab, x25	// Set all CSR bits
	csrrc x7, 0xfab, x25	// Clear all CSR bits
	csrrw x7, 0xfab, x1	// Restore CSR

// Testing CSR 0xfac
	csrr x18, 0xfac	// Read CSR
	li x26, -1
	csrrw x14, 0xfac, x26	// Write all 1s to CSR
	csrrw x14, 0xfac, x0	// Write all 0s to CSR
	csrrs x14, 0xfac, x26	// Set all CSR bits
	csrrc x14, 0xfac, x26	// Clear all CSR bits
	csrrw x14, 0xfac, x18	// Restore CSR

// Testing CSR 0xfad
	csrr x1, 0xfad	// Read CSR
	li x14, -1
	csrrw x22, 0xfad, x14	// Write all 1s to CSR
	csrrw x22, 0xfad, x0	// Write all 0s to CSR
	csrrs x22, 0xfad, x14	// Set all CSR bits
	csrrc x22, 0xfad, x14	// Clear all CSR bits
	csrrw x22, 0xfad, x1	// Restore CSR

// Testing CSR 0xfae
	csrr x14, 0xfae	// Read CSR
	li x19, -1
	csrrw x18, 0xfae, x19	// Write all 1s to CSR
	csrrw x18, 0xfae, x0	// Write all 0s to CSR
	csrrs x18, 0xfae, x19	// Set all CSR bits
	csrrc x18, 0xfae, x19	// Clear all CSR bits
	csrrw x18, 0xfae, x14	// Restore CSR

// Testing CSR 0xfaf
	csrr x18, 0xfaf	// Read CSR
	li x8, -1
	csrrw x4, 0xfaf, x8	// Write all 1s to CSR
	csrrw x4, 0xfaf, x0	// Write all 0s to CSR
	csrrs x4, 0xfaf, x8	// Set all CSR bits
	csrrc x4, 0xfaf, x8	// Clear all CSR bits
	csrrw x4, 0xfaf, x18	// Restore CSR

// Testing CSR 0xfb0
	csrr x3, 0xfb0	// Read CSR
	li x28, -1
	csrrw x11, 0xfb0, x28	// Write all 1s to CSR
	csrrw x11, 0xfb0, x0	// Write all 0s to CSR
	csrrs x11, 0xfb0, x28	// Set all CSR bits
	csrrc x11, 0xfb0, x28	// Clear all CSR bits
	csrrw x11, 0xfb0, x3	// Restore CSR

// Testing CSR 0xfb1
	csrr x14, 0xfb1	// Read CSR
	li x18, -1
	csrrw x10, 0xfb1, x18	// Write all 1s to CSR
	csrrw x10, 0xfb1, x0	// Write all 0s to CSR
	csrrs x10, 0xfb1, x18	// Set all CSR bits
	csrrc x10, 0xfb1, x18	// Clear all CSR bits
	csrrw x10, 0xfb1, x14	// Restore CSR

// Testing CSR 0xfb2
	csrr x21, 0xfb2	// Read CSR
	li x7, -1
	csrrw x16, 0xfb2, x7	// Write all 1s to CSR
	csrrw x16, 0xfb2, x0	// Write all 0s to CSR
	csrrs x16, 0xfb2, x7	// Set all CSR bits
	csrrc x16, 0xfb2, x7	// Clear all CSR bits
	csrrw x16, 0xfb2, x21	// Restore CSR

// Testing CSR 0xfb3
	csrr x15, 0xfb3	// Read CSR
	li x6, -1
	csrrw x21, 0xfb3, x6	// Write all 1s to CSR
	csrrw x21, 0xfb3, x0	// Write all 0s to CSR
	csrrs x21, 0xfb3, x6	// Set all CSR bits
	csrrc x21, 0xfb3, x6	// Clear all CSR bits
	csrrw x21, 0xfb3, x15	// Restore CSR

// Testing CSR 0xfb4
	csrr x21, 0xfb4	// Read CSR
	li x29, -1
	csrrw x22, 0xfb4, x29	// Write all 1s to CSR
	csrrw x22, 0xfb4, x0	// Write all 0s to CSR
	csrrs x22, 0xfb4, x29	// Set all CSR bits
	csrrc x22, 0xfb4, x29	// Clear all CSR bits
	csrrw x22, 0xfb4, x21	// Restore CSR

// Testing CSR 0xfb5
	csrr x19, 0xfb5	// Read CSR
	li x17, -1
	csrrw x10, 0xfb5, x17	// Write all 1s to CSR
	csrrw x10, 0xfb5, x0	// Write all 0s to CSR
	csrrs x10, 0xfb5, x17	// Set all CSR bits
	csrrc x10, 0xfb5, x17	// Clear all CSR bits
	csrrw x10, 0xfb5, x19	// Restore CSR

// Testing CSR 0xfb6
	csrr x18, 0xfb6	// Read CSR
	li x16, -1
	csrrw x26, 0xfb6, x16	// Write all 1s to CSR
	csrrw x26, 0xfb6, x0	// Write all 0s to CSR
	csrrs x26, 0xfb6, x16	// Set all CSR bits
	csrrc x26, 0xfb6, x16	// Clear all CSR bits
	csrrw x26, 0xfb6, x18	// Restore CSR

// Testing CSR 0xfb7
	csrr x12, 0xfb7	// Read CSR
	li x4, -1
	csrrw x27, 0xfb7, x4	// Write all 1s to CSR
	csrrw x27, 0xfb7, x0	// Write all 0s to CSR
	csrrs x27, 0xfb7, x4	// Set all CSR bits
	csrrc x27, 0xfb7, x4	// Clear all CSR bits
	csrrw x27, 0xfb7, x12	// Restore CSR

// Testing CSR 0xfb8
	csrr x29, 0xfb8	// Read CSR
	li x24, -1
	csrrw x1, 0xfb8, x24	// Write all 1s to CSR
	csrrw x1, 0xfb8, x0	// Write all 0s to CSR
	csrrs x1, 0xfb8, x24	// Set all CSR bits
	csrrc x1, 0xfb8, x24	// Clear all CSR bits
	csrrw x1, 0xfb8, x29	// Restore CSR

// Testing CSR 0xfb9
	csrr x11, 0xfb9	// Read CSR
	li x25, -1
	csrrw x12, 0xfb9, x25	// Write all 1s to CSR
	csrrw x12, 0xfb9, x0	// Write all 0s to CSR
	csrrs x12, 0xfb9, x25	// Set all CSR bits
	csrrc x12, 0xfb9, x25	// Clear all CSR bits
	csrrw x12, 0xfb9, x11	// Restore CSR

// Testing CSR 0xfba
	csrr x15, 0xfba	// Read CSR
	li x5, -1
	csrrw x18, 0xfba, x5	// Write all 1s to CSR
	csrrw x18, 0xfba, x0	// Write all 0s to CSR
	csrrs x18, 0xfba, x5	// Set all CSR bits
	csrrc x18, 0xfba, x5	// Clear all CSR bits
	csrrw x18, 0xfba, x15	// Restore CSR

// Testing CSR 0xfbb
	csrr x9, 0xfbb	// Read CSR
	li x2, -1
	csrrw x3, 0xfbb, x2	// Write all 1s to CSR
	csrrw x3, 0xfbb, x0	// Write all 0s to CSR
	csrrs x3, 0xfbb, x2	// Set all CSR bits
	csrrc x3, 0xfbb, x2	// Clear all CSR bits
	csrrw x3, 0xfbb, x9	// Restore CSR

// Testing CSR 0xfbc
	csrr x31, 0xfbc	// Read CSR
	li x15, -1
	csrrw x6, 0xfbc, x15	// Write all 1s to CSR
	csrrw x6, 0xfbc, x0	// Write all 0s to CSR
	csrrs x6, 0xfbc, x15	// Set all CSR bits
	csrrc x6, 0xfbc, x15	// Clear all CSR bits
	csrrw x6, 0xfbc, x31	// Restore CSR

// Testing CSR 0xfbd
	csrr x26, 0xfbd	// Read CSR
	li x27, -1
	csrrw x16, 0xfbd, x27	// Write all 1s to CSR
	csrrw x16, 0xfbd, x0	// Write all 0s to CSR
	csrrs x16, 0xfbd, x27	// Set all CSR bits
	csrrc x16, 0xfbd, x27	// Clear all CSR bits
	csrrw x16, 0xfbd, x26	// Restore CSR

// Testing CSR 0xfbe
	csrr x21, 0xfbe	// Read CSR
	li x29, -1
	csrrw x10, 0xfbe, x29	// Write all 1s to CSR
	csrrw x10, 0xfbe, x0	// Write all 0s to CSR
	csrrs x10, 0xfbe, x29	// Set all CSR bits
	csrrc x10, 0xfbe, x29	// Clear all CSR bits
	csrrw x10, 0xfbe, x21	// Restore CSR

// Testing CSR 0xfbf
	csrr x21, 0xfbf	// Read CSR
	li x17, -1
	csrrw x5, 0xfbf, x17	// Write all 1s to CSR
	csrrw x5, 0xfbf, x0	// Write all 0s to CSR
	csrrs x5, 0xfbf, x17	// Set all CSR bits
	csrrc x5, 0xfbf, x17	// Clear all CSR bits
	csrrw x5, 0xfbf, x21	// Restore CSR
