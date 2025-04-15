
// Testing CSR 0x0
	csrr x6, 0x0	// Read CSR
	li x19, -1
	csrrw x3, 0x0, x19	// Write all 1s to CSR
	csrrw x3, 0x0, x0	// Write all 0s to CSR
	csrrs x3, 0x0, x19	// Set all CSR bits
	csrrc x3, 0x0, x19	// Clear all CSR bits
	csrrw x3, 0x0, x6	// Restore CSR

// Testing CSR 0x1
	csrr x22, 0x1	// Read CSR
	li x8, -1
	csrrw x30, 0x1, x8	// Write all 1s to CSR
	csrrw x30, 0x1, x0	// Write all 0s to CSR
	csrrs x30, 0x1, x8	// Set all CSR bits
	csrrc x30, 0x1, x8	// Clear all CSR bits
	csrrw x30, 0x1, x22	// Restore CSR

// Testing CSR 0x2
	csrr x17, 0x2	// Read CSR
	li x22, -1
	csrrw x23, 0x2, x22	// Write all 1s to CSR
	csrrw x23, 0x2, x0	// Write all 0s to CSR
	csrrs x23, 0x2, x22	// Set all CSR bits
	csrrc x23, 0x2, x22	// Clear all CSR bits
	csrrw x23, 0x2, x17	// Restore CSR

// Testing CSR 0x3
	csrr x6, 0x3	// Read CSR
	li x15, -1
	csrrw x2, 0x3, x15	// Write all 1s to CSR
	csrrw x2, 0x3, x0	// Write all 0s to CSR
	csrrs x2, 0x3, x15	// Set all CSR bits
	csrrc x2, 0x3, x15	// Clear all CSR bits
	csrrw x2, 0x3, x6	// Restore CSR

// Testing CSR 0x4
	csrr x4, 0x4	// Read CSR
	li x26, -1
	csrrw x17, 0x4, x26	// Write all 1s to CSR
	csrrw x17, 0x4, x0	// Write all 0s to CSR
	csrrs x17, 0x4, x26	// Set all CSR bits
	csrrc x17, 0x4, x26	// Clear all CSR bits
	csrrw x17, 0x4, x4	// Restore CSR

// Testing CSR 0x5
	csrr x12, 0x5	// Read CSR
	li x25, -1
	csrrw x11, 0x5, x25	// Write all 1s to CSR
	csrrw x11, 0x5, x0	// Write all 0s to CSR
	csrrs x11, 0x5, x25	// Set all CSR bits
	csrrc x11, 0x5, x25	// Clear all CSR bits
	csrrw x11, 0x5, x12	// Restore CSR

// Testing CSR 0x6
	csrr x14, 0x6	// Read CSR
	li x12, -1
	csrrw x8, 0x6, x12	// Write all 1s to CSR
	csrrw x8, 0x6, x0	// Write all 0s to CSR
	csrrs x8, 0x6, x12	// Set all CSR bits
	csrrc x8, 0x6, x12	// Clear all CSR bits
	csrrw x8, 0x6, x14	// Restore CSR

// Testing CSR 0x7
	csrr x30, 0x7	// Read CSR
	li x4, -1
	csrrw x27, 0x7, x4	// Write all 1s to CSR
	csrrw x27, 0x7, x0	// Write all 0s to CSR
	csrrs x27, 0x7, x4	// Set all CSR bits
	csrrc x27, 0x7, x4	// Clear all CSR bits
	csrrw x27, 0x7, x30	// Restore CSR

// Testing CSR 0x8
	csrr x14, 0x8	// Read CSR
	li x26, -1
	csrrw x24, 0x8, x26	// Write all 1s to CSR
	csrrw x24, 0x8, x0	// Write all 0s to CSR
	csrrs x24, 0x8, x26	// Set all CSR bits
	csrrc x24, 0x8, x26	// Clear all CSR bits
	csrrw x24, 0x8, x14	// Restore CSR

// Testing CSR 0x9
	csrr x16, 0x9	// Read CSR
	li x24, -1
	csrrw x20, 0x9, x24	// Write all 1s to CSR
	csrrw x20, 0x9, x0	// Write all 0s to CSR
	csrrs x20, 0x9, x24	// Set all CSR bits
	csrrc x20, 0x9, x24	// Clear all CSR bits
	csrrw x20, 0x9, x16	// Restore CSR

// Testing CSR 0xa
	csrr x19, 0xa	// Read CSR
	li x17, -1
	csrrw x29, 0xa, x17	// Write all 1s to CSR
	csrrw x29, 0xa, x0	// Write all 0s to CSR
	csrrs x29, 0xa, x17	// Set all CSR bits
	csrrc x29, 0xa, x17	// Clear all CSR bits
	csrrw x29, 0xa, x19	// Restore CSR

// Testing CSR 0xb
	csrr x3, 0xb	// Read CSR
	li x31, -1
	csrrw x19, 0xb, x31	// Write all 1s to CSR
	csrrw x19, 0xb, x0	// Write all 0s to CSR
	csrrs x19, 0xb, x31	// Set all CSR bits
	csrrc x19, 0xb, x31	// Clear all CSR bits
	csrrw x19, 0xb, x3	// Restore CSR

// Testing CSR 0xc
	csrr x20, 0xc	// Read CSR
	li x23, -1
	csrrw x19, 0xc, x23	// Write all 1s to CSR
	csrrw x19, 0xc, x0	// Write all 0s to CSR
	csrrs x19, 0xc, x23	// Set all CSR bits
	csrrc x19, 0xc, x23	// Clear all CSR bits
	csrrw x19, 0xc, x20	// Restore CSR

// Testing CSR 0xd
	csrr x15, 0xd	// Read CSR
	li x31, -1
	csrrw x10, 0xd, x31	// Write all 1s to CSR
	csrrw x10, 0xd, x0	// Write all 0s to CSR
	csrrs x10, 0xd, x31	// Set all CSR bits
	csrrc x10, 0xd, x31	// Clear all CSR bits
	csrrw x10, 0xd, x15	// Restore CSR

// Testing CSR 0xe
	csrr x1, 0xe	// Read CSR
	li x11, -1
	csrrw x18, 0xe, x11	// Write all 1s to CSR
	csrrw x18, 0xe, x0	// Write all 0s to CSR
	csrrs x18, 0xe, x11	// Set all CSR bits
	csrrc x18, 0xe, x11	// Clear all CSR bits
	csrrw x18, 0xe, x1	// Restore CSR

// Testing CSR 0xf
	csrr x16, 0xf	// Read CSR
	li x4, -1
	csrrw x22, 0xf, x4	// Write all 1s to CSR
	csrrw x22, 0xf, x0	// Write all 0s to CSR
	csrrs x22, 0xf, x4	// Set all CSR bits
	csrrc x22, 0xf, x4	// Clear all CSR bits
	csrrw x22, 0xf, x16	// Restore CSR

// Testing CSR 0x10
	csrr x27, 0x10	// Read CSR
	li x22, -1
	csrrw x30, 0x10, x22	// Write all 1s to CSR
	csrrw x30, 0x10, x0	// Write all 0s to CSR
	csrrs x30, 0x10, x22	// Set all CSR bits
	csrrc x30, 0x10, x22	// Clear all CSR bits
	csrrw x30, 0x10, x27	// Restore CSR

// Testing CSR 0x11
	csrr x26, 0x11	// Read CSR
	li x18, -1
	csrrw x24, 0x11, x18	// Write all 1s to CSR
	csrrw x24, 0x11, x0	// Write all 0s to CSR
	csrrs x24, 0x11, x18	// Set all CSR bits
	csrrc x24, 0x11, x18	// Clear all CSR bits
	csrrw x24, 0x11, x26	// Restore CSR

// Testing CSR 0x12
	csrr x10, 0x12	// Read CSR
	li x28, -1
	csrrw x29, 0x12, x28	// Write all 1s to CSR
	csrrw x29, 0x12, x0	// Write all 0s to CSR
	csrrs x29, 0x12, x28	// Set all CSR bits
	csrrc x29, 0x12, x28	// Clear all CSR bits
	csrrw x29, 0x12, x10	// Restore CSR

// Testing CSR 0x13
	csrr x30, 0x13	// Read CSR
	li x4, -1
	csrrw x20, 0x13, x4	// Write all 1s to CSR
	csrrw x20, 0x13, x0	// Write all 0s to CSR
	csrrs x20, 0x13, x4	// Set all CSR bits
	csrrc x20, 0x13, x4	// Clear all CSR bits
	csrrw x20, 0x13, x30	// Restore CSR

// Testing CSR 0x14
	csrr x26, 0x14	// Read CSR
	li x12, -1
	csrrw x2, 0x14, x12	// Write all 1s to CSR
	csrrw x2, 0x14, x0	// Write all 0s to CSR
	csrrs x2, 0x14, x12	// Set all CSR bits
	csrrc x2, 0x14, x12	// Clear all CSR bits
	csrrw x2, 0x14, x26	// Restore CSR

// Testing CSR 0x15
	csrr x30, 0x15	// Read CSR
	li x25, -1
	csrrw x19, 0x15, x25	// Write all 1s to CSR
	csrrw x19, 0x15, x0	// Write all 0s to CSR
	csrrs x19, 0x15, x25	// Set all CSR bits
	csrrc x19, 0x15, x25	// Clear all CSR bits
	csrrw x19, 0x15, x30	// Restore CSR

// Testing CSR 0x16
	csrr x25, 0x16	// Read CSR
	li x6, -1
	csrrw x26, 0x16, x6	// Write all 1s to CSR
	csrrw x26, 0x16, x0	// Write all 0s to CSR
	csrrs x26, 0x16, x6	// Set all CSR bits
	csrrc x26, 0x16, x6	// Clear all CSR bits
	csrrw x26, 0x16, x25	// Restore CSR

// Testing CSR 0x17
	csrr x10, 0x17	// Read CSR
	li x22, -1
	csrrw x28, 0x17, x22	// Write all 1s to CSR
	csrrw x28, 0x17, x0	// Write all 0s to CSR
	csrrs x28, 0x17, x22	// Set all CSR bits
	csrrc x28, 0x17, x22	// Clear all CSR bits
	csrrw x28, 0x17, x10	// Restore CSR

// Testing CSR 0x18
	csrr x6, 0x18	// Read CSR
	li x11, -1
	csrrw x27, 0x18, x11	// Write all 1s to CSR
	csrrw x27, 0x18, x0	// Write all 0s to CSR
	csrrs x27, 0x18, x11	// Set all CSR bits
	csrrc x27, 0x18, x11	// Clear all CSR bits
	csrrw x27, 0x18, x6	// Restore CSR

// Testing CSR 0x19
	csrr x16, 0x19	// Read CSR
	li x8, -1
	csrrw x13, 0x19, x8	// Write all 1s to CSR
	csrrw x13, 0x19, x0	// Write all 0s to CSR
	csrrs x13, 0x19, x8	// Set all CSR bits
	csrrc x13, 0x19, x8	// Clear all CSR bits
	csrrw x13, 0x19, x16	// Restore CSR

// Testing CSR 0x1a
	csrr x27, 0x1a	// Read CSR
	li x11, -1
	csrrw x21, 0x1a, x11	// Write all 1s to CSR
	csrrw x21, 0x1a, x0	// Write all 0s to CSR
	csrrs x21, 0x1a, x11	// Set all CSR bits
	csrrc x21, 0x1a, x11	// Clear all CSR bits
	csrrw x21, 0x1a, x27	// Restore CSR

// Testing CSR 0x1b
	csrr x31, 0x1b	// Read CSR
	li x27, -1
	csrrw x23, 0x1b, x27	// Write all 1s to CSR
	csrrw x23, 0x1b, x0	// Write all 0s to CSR
	csrrs x23, 0x1b, x27	// Set all CSR bits
	csrrc x23, 0x1b, x27	// Clear all CSR bits
	csrrw x23, 0x1b, x31	// Restore CSR

// Testing CSR 0x1c
	csrr x18, 0x1c	// Read CSR
	li x27, -1
	csrrw x1, 0x1c, x27	// Write all 1s to CSR
	csrrw x1, 0x1c, x0	// Write all 0s to CSR
	csrrs x1, 0x1c, x27	// Set all CSR bits
	csrrc x1, 0x1c, x27	// Clear all CSR bits
	csrrw x1, 0x1c, x18	// Restore CSR

// Testing CSR 0x1d
	csrr x12, 0x1d	// Read CSR
	li x30, -1
	csrrw x11, 0x1d, x30	// Write all 1s to CSR
	csrrw x11, 0x1d, x0	// Write all 0s to CSR
	csrrs x11, 0x1d, x30	// Set all CSR bits
	csrrc x11, 0x1d, x30	// Clear all CSR bits
	csrrw x11, 0x1d, x12	// Restore CSR

// Testing CSR 0x1e
	csrr x19, 0x1e	// Read CSR
	li x29, -1
	csrrw x15, 0x1e, x29	// Write all 1s to CSR
	csrrw x15, 0x1e, x0	// Write all 0s to CSR
	csrrs x15, 0x1e, x29	// Set all CSR bits
	csrrc x15, 0x1e, x29	// Clear all CSR bits
	csrrw x15, 0x1e, x19	// Restore CSR

// Testing CSR 0x1f
	csrr x7, 0x1f	// Read CSR
	li x15, -1
	csrrw x14, 0x1f, x15	// Write all 1s to CSR
	csrrw x14, 0x1f, x0	// Write all 0s to CSR
	csrrs x14, 0x1f, x15	// Set all CSR bits
	csrrc x14, 0x1f, x15	// Clear all CSR bits
	csrrw x14, 0x1f, x7	// Restore CSR

// Testing CSR 0x20
	csrr x19, 0x20	// Read CSR
	li x24, -1
	csrrw x26, 0x20, x24	// Write all 1s to CSR
	csrrw x26, 0x20, x0	// Write all 0s to CSR
	csrrs x26, 0x20, x24	// Set all CSR bits
	csrrc x26, 0x20, x24	// Clear all CSR bits
	csrrw x26, 0x20, x19	// Restore CSR

// Testing CSR 0x21
	csrr x19, 0x21	// Read CSR
	li x11, -1
	csrrw x14, 0x21, x11	// Write all 1s to CSR
	csrrw x14, 0x21, x0	// Write all 0s to CSR
	csrrs x14, 0x21, x11	// Set all CSR bits
	csrrc x14, 0x21, x11	// Clear all CSR bits
	csrrw x14, 0x21, x19	// Restore CSR

// Testing CSR 0x22
	csrr x14, 0x22	// Read CSR
	li x16, -1
	csrrw x7, 0x22, x16	// Write all 1s to CSR
	csrrw x7, 0x22, x0	// Write all 0s to CSR
	csrrs x7, 0x22, x16	// Set all CSR bits
	csrrc x7, 0x22, x16	// Clear all CSR bits
	csrrw x7, 0x22, x14	// Restore CSR

// Testing CSR 0x23
	csrr x6, 0x23	// Read CSR
	li x16, -1
	csrrw x2, 0x23, x16	// Write all 1s to CSR
	csrrw x2, 0x23, x0	// Write all 0s to CSR
	csrrs x2, 0x23, x16	// Set all CSR bits
	csrrc x2, 0x23, x16	// Clear all CSR bits
	csrrw x2, 0x23, x6	// Restore CSR

// Testing CSR 0x24
	csrr x25, 0x24	// Read CSR
	li x7, -1
	csrrw x2, 0x24, x7	// Write all 1s to CSR
	csrrw x2, 0x24, x0	// Write all 0s to CSR
	csrrs x2, 0x24, x7	// Set all CSR bits
	csrrc x2, 0x24, x7	// Clear all CSR bits
	csrrw x2, 0x24, x25	// Restore CSR

// Testing CSR 0x25
	csrr x16, 0x25	// Read CSR
	li x28, -1
	csrrw x1, 0x25, x28	// Write all 1s to CSR
	csrrw x1, 0x25, x0	// Write all 0s to CSR
	csrrs x1, 0x25, x28	// Set all CSR bits
	csrrc x1, 0x25, x28	// Clear all CSR bits
	csrrw x1, 0x25, x16	// Restore CSR

// Testing CSR 0x26
	csrr x6, 0x26	// Read CSR
	li x4, -1
	csrrw x17, 0x26, x4	// Write all 1s to CSR
	csrrw x17, 0x26, x0	// Write all 0s to CSR
	csrrs x17, 0x26, x4	// Set all CSR bits
	csrrc x17, 0x26, x4	// Clear all CSR bits
	csrrw x17, 0x26, x6	// Restore CSR

// Testing CSR 0x27
	csrr x7, 0x27	// Read CSR
	li x22, -1
	csrrw x24, 0x27, x22	// Write all 1s to CSR
	csrrw x24, 0x27, x0	// Write all 0s to CSR
	csrrs x24, 0x27, x22	// Set all CSR bits
	csrrc x24, 0x27, x22	// Clear all CSR bits
	csrrw x24, 0x27, x7	// Restore CSR

// Testing CSR 0x28
	csrr x4, 0x28	// Read CSR
	li x22, -1
	csrrw x28, 0x28, x22	// Write all 1s to CSR
	csrrw x28, 0x28, x0	// Write all 0s to CSR
	csrrs x28, 0x28, x22	// Set all CSR bits
	csrrc x28, 0x28, x22	// Clear all CSR bits
	csrrw x28, 0x28, x4	// Restore CSR

// Testing CSR 0x29
	csrr x14, 0x29	// Read CSR
	li x7, -1
	csrrw x17, 0x29, x7	// Write all 1s to CSR
	csrrw x17, 0x29, x0	// Write all 0s to CSR
	csrrs x17, 0x29, x7	// Set all CSR bits
	csrrc x17, 0x29, x7	// Clear all CSR bits
	csrrw x17, 0x29, x14	// Restore CSR

// Testing CSR 0x2a
	csrr x29, 0x2a	// Read CSR
	li x1, -1
	csrrw x6, 0x2a, x1	// Write all 1s to CSR
	csrrw x6, 0x2a, x0	// Write all 0s to CSR
	csrrs x6, 0x2a, x1	// Set all CSR bits
	csrrc x6, 0x2a, x1	// Clear all CSR bits
	csrrw x6, 0x2a, x29	// Restore CSR

// Testing CSR 0x2b
	csrr x13, 0x2b	// Read CSR
	li x6, -1
	csrrw x4, 0x2b, x6	// Write all 1s to CSR
	csrrw x4, 0x2b, x0	// Write all 0s to CSR
	csrrs x4, 0x2b, x6	// Set all CSR bits
	csrrc x4, 0x2b, x6	// Clear all CSR bits
	csrrw x4, 0x2b, x13	// Restore CSR

// Testing CSR 0x2c
	csrr x14, 0x2c	// Read CSR
	li x28, -1
	csrrw x11, 0x2c, x28	// Write all 1s to CSR
	csrrw x11, 0x2c, x0	// Write all 0s to CSR
	csrrs x11, 0x2c, x28	// Set all CSR bits
	csrrc x11, 0x2c, x28	// Clear all CSR bits
	csrrw x11, 0x2c, x14	// Restore CSR

// Testing CSR 0x2d
	csrr x17, 0x2d	// Read CSR
	li x25, -1
	csrrw x8, 0x2d, x25	// Write all 1s to CSR
	csrrw x8, 0x2d, x0	// Write all 0s to CSR
	csrrs x8, 0x2d, x25	// Set all CSR bits
	csrrc x8, 0x2d, x25	// Clear all CSR bits
	csrrw x8, 0x2d, x17	// Restore CSR

// Testing CSR 0x2e
	csrr x22, 0x2e	// Read CSR
	li x15, -1
	csrrw x2, 0x2e, x15	// Write all 1s to CSR
	csrrw x2, 0x2e, x0	// Write all 0s to CSR
	csrrs x2, 0x2e, x15	// Set all CSR bits
	csrrc x2, 0x2e, x15	// Clear all CSR bits
	csrrw x2, 0x2e, x22	// Restore CSR

// Testing CSR 0x2f
	csrr x4, 0x2f	// Read CSR
	li x17, -1
	csrrw x7, 0x2f, x17	// Write all 1s to CSR
	csrrw x7, 0x2f, x0	// Write all 0s to CSR
	csrrs x7, 0x2f, x17	// Set all CSR bits
	csrrc x7, 0x2f, x17	// Clear all CSR bits
	csrrw x7, 0x2f, x4	// Restore CSR

// Testing CSR 0x30
	csrr x4, 0x30	// Read CSR
	li x31, -1
	csrrw x18, 0x30, x31	// Write all 1s to CSR
	csrrw x18, 0x30, x0	// Write all 0s to CSR
	csrrs x18, 0x30, x31	// Set all CSR bits
	csrrc x18, 0x30, x31	// Clear all CSR bits
	csrrw x18, 0x30, x4	// Restore CSR

// Testing CSR 0x31
	csrr x23, 0x31	// Read CSR
	li x3, -1
	csrrw x20, 0x31, x3	// Write all 1s to CSR
	csrrw x20, 0x31, x0	// Write all 0s to CSR
	csrrs x20, 0x31, x3	// Set all CSR bits
	csrrc x20, 0x31, x3	// Clear all CSR bits
	csrrw x20, 0x31, x23	// Restore CSR

// Testing CSR 0x32
	csrr x3, 0x32	// Read CSR
	li x1, -1
	csrrw x31, 0x32, x1	// Write all 1s to CSR
	csrrw x31, 0x32, x0	// Write all 0s to CSR
	csrrs x31, 0x32, x1	// Set all CSR bits
	csrrc x31, 0x32, x1	// Clear all CSR bits
	csrrw x31, 0x32, x3	// Restore CSR

// Testing CSR 0x33
	csrr x30, 0x33	// Read CSR
	li x6, -1
	csrrw x9, 0x33, x6	// Write all 1s to CSR
	csrrw x9, 0x33, x0	// Write all 0s to CSR
	csrrs x9, 0x33, x6	// Set all CSR bits
	csrrc x9, 0x33, x6	// Clear all CSR bits
	csrrw x9, 0x33, x30	// Restore CSR

// Testing CSR 0x34
	csrr x30, 0x34	// Read CSR
	li x15, -1
	csrrw x19, 0x34, x15	// Write all 1s to CSR
	csrrw x19, 0x34, x0	// Write all 0s to CSR
	csrrs x19, 0x34, x15	// Set all CSR bits
	csrrc x19, 0x34, x15	// Clear all CSR bits
	csrrw x19, 0x34, x30	// Restore CSR

// Testing CSR 0x35
	csrr x17, 0x35	// Read CSR
	li x30, -1
	csrrw x5, 0x35, x30	// Write all 1s to CSR
	csrrw x5, 0x35, x0	// Write all 0s to CSR
	csrrs x5, 0x35, x30	// Set all CSR bits
	csrrc x5, 0x35, x30	// Clear all CSR bits
	csrrw x5, 0x35, x17	// Restore CSR

// Testing CSR 0x36
	csrr x10, 0x36	// Read CSR
	li x22, -1
	csrrw x27, 0x36, x22	// Write all 1s to CSR
	csrrw x27, 0x36, x0	// Write all 0s to CSR
	csrrs x27, 0x36, x22	// Set all CSR bits
	csrrc x27, 0x36, x22	// Clear all CSR bits
	csrrw x27, 0x36, x10	// Restore CSR

// Testing CSR 0x37
	csrr x19, 0x37	// Read CSR
	li x8, -1
	csrrw x20, 0x37, x8	// Write all 1s to CSR
	csrrw x20, 0x37, x0	// Write all 0s to CSR
	csrrs x20, 0x37, x8	// Set all CSR bits
	csrrc x20, 0x37, x8	// Clear all CSR bits
	csrrw x20, 0x37, x19	// Restore CSR

// Testing CSR 0x38
	csrr x11, 0x38	// Read CSR
	li x9, -1
	csrrw x25, 0x38, x9	// Write all 1s to CSR
	csrrw x25, 0x38, x0	// Write all 0s to CSR
	csrrs x25, 0x38, x9	// Set all CSR bits
	csrrc x25, 0x38, x9	// Clear all CSR bits
	csrrw x25, 0x38, x11	// Restore CSR

// Testing CSR 0x39
	csrr x5, 0x39	// Read CSR
	li x30, -1
	csrrw x24, 0x39, x30	// Write all 1s to CSR
	csrrw x24, 0x39, x0	// Write all 0s to CSR
	csrrs x24, 0x39, x30	// Set all CSR bits
	csrrc x24, 0x39, x30	// Clear all CSR bits
	csrrw x24, 0x39, x5	// Restore CSR

// Testing CSR 0x3a
	csrr x21, 0x3a	// Read CSR
	li x16, -1
	csrrw x6, 0x3a, x16	// Write all 1s to CSR
	csrrw x6, 0x3a, x0	// Write all 0s to CSR
	csrrs x6, 0x3a, x16	// Set all CSR bits
	csrrc x6, 0x3a, x16	// Clear all CSR bits
	csrrw x6, 0x3a, x21	// Restore CSR

// Testing CSR 0x3b
	csrr x11, 0x3b	// Read CSR
	li x30, -1
	csrrw x22, 0x3b, x30	// Write all 1s to CSR
	csrrw x22, 0x3b, x0	// Write all 0s to CSR
	csrrs x22, 0x3b, x30	// Set all CSR bits
	csrrc x22, 0x3b, x30	// Clear all CSR bits
	csrrw x22, 0x3b, x11	// Restore CSR

// Testing CSR 0x3c
	csrr x7, 0x3c	// Read CSR
	li x8, -1
	csrrw x5, 0x3c, x8	// Write all 1s to CSR
	csrrw x5, 0x3c, x0	// Write all 0s to CSR
	csrrs x5, 0x3c, x8	// Set all CSR bits
	csrrc x5, 0x3c, x8	// Clear all CSR bits
	csrrw x5, 0x3c, x7	// Restore CSR

// Testing CSR 0x3d
	csrr x24, 0x3d	// Read CSR
	li x20, -1
	csrrw x30, 0x3d, x20	// Write all 1s to CSR
	csrrw x30, 0x3d, x0	// Write all 0s to CSR
	csrrs x30, 0x3d, x20	// Set all CSR bits
	csrrc x30, 0x3d, x20	// Clear all CSR bits
	csrrw x30, 0x3d, x24	// Restore CSR

// Testing CSR 0x3e
	csrr x13, 0x3e	// Read CSR
	li x16, -1
	csrrw x2, 0x3e, x16	// Write all 1s to CSR
	csrrw x2, 0x3e, x0	// Write all 0s to CSR
	csrrs x2, 0x3e, x16	// Set all CSR bits
	csrrc x2, 0x3e, x16	// Clear all CSR bits
	csrrw x2, 0x3e, x13	// Restore CSR

// Testing CSR 0x3f
	csrr x19, 0x3f	// Read CSR
	li x6, -1
	csrrw x20, 0x3f, x6	// Write all 1s to CSR
	csrrw x20, 0x3f, x0	// Write all 0s to CSR
	csrrs x20, 0x3f, x6	// Set all CSR bits
	csrrc x20, 0x3f, x6	// Clear all CSR bits
	csrrw x20, 0x3f, x19	// Restore CSR

// Testing CSR 0x40
	csrr x26, 0x40	// Read CSR
	li x1, -1
	csrrw x10, 0x40, x1	// Write all 1s to CSR
	csrrw x10, 0x40, x0	// Write all 0s to CSR
	csrrs x10, 0x40, x1	// Set all CSR bits
	csrrc x10, 0x40, x1	// Clear all CSR bits
	csrrw x10, 0x40, x26	// Restore CSR

// Testing CSR 0x41
	csrr x4, 0x41	// Read CSR
	li x27, -1
	csrrw x2, 0x41, x27	// Write all 1s to CSR
	csrrw x2, 0x41, x0	// Write all 0s to CSR
	csrrs x2, 0x41, x27	// Set all CSR bits
	csrrc x2, 0x41, x27	// Clear all CSR bits
	csrrw x2, 0x41, x4	// Restore CSR

// Testing CSR 0x42
	csrr x14, 0x42	// Read CSR
	li x2, -1
	csrrw x5, 0x42, x2	// Write all 1s to CSR
	csrrw x5, 0x42, x0	// Write all 0s to CSR
	csrrs x5, 0x42, x2	// Set all CSR bits
	csrrc x5, 0x42, x2	// Clear all CSR bits
	csrrw x5, 0x42, x14	// Restore CSR

// Testing CSR 0x43
	csrr x7, 0x43	// Read CSR
	li x30, -1
	csrrw x10, 0x43, x30	// Write all 1s to CSR
	csrrw x10, 0x43, x0	// Write all 0s to CSR
	csrrs x10, 0x43, x30	// Set all CSR bits
	csrrc x10, 0x43, x30	// Clear all CSR bits
	csrrw x10, 0x43, x7	// Restore CSR

// Testing CSR 0x44
	csrr x3, 0x44	// Read CSR
	li x22, -1
	csrrw x7, 0x44, x22	// Write all 1s to CSR
	csrrw x7, 0x44, x0	// Write all 0s to CSR
	csrrs x7, 0x44, x22	// Set all CSR bits
	csrrc x7, 0x44, x22	// Clear all CSR bits
	csrrw x7, 0x44, x3	// Restore CSR

// Testing CSR 0x45
	csrr x1, 0x45	// Read CSR
	li x19, -1
	csrrw x15, 0x45, x19	// Write all 1s to CSR
	csrrw x15, 0x45, x0	// Write all 0s to CSR
	csrrs x15, 0x45, x19	// Set all CSR bits
	csrrc x15, 0x45, x19	// Clear all CSR bits
	csrrw x15, 0x45, x1	// Restore CSR

// Testing CSR 0x46
	csrr x13, 0x46	// Read CSR
	li x14, -1
	csrrw x22, 0x46, x14	// Write all 1s to CSR
	csrrw x22, 0x46, x0	// Write all 0s to CSR
	csrrs x22, 0x46, x14	// Set all CSR bits
	csrrc x22, 0x46, x14	// Clear all CSR bits
	csrrw x22, 0x46, x13	// Restore CSR

// Testing CSR 0x47
	csrr x16, 0x47	// Read CSR
	li x7, -1
	csrrw x9, 0x47, x7	// Write all 1s to CSR
	csrrw x9, 0x47, x0	// Write all 0s to CSR
	csrrs x9, 0x47, x7	// Set all CSR bits
	csrrc x9, 0x47, x7	// Clear all CSR bits
	csrrw x9, 0x47, x16	// Restore CSR

// Testing CSR 0x48
	csrr x23, 0x48	// Read CSR
	li x22, -1
	csrrw x3, 0x48, x22	// Write all 1s to CSR
	csrrw x3, 0x48, x0	// Write all 0s to CSR
	csrrs x3, 0x48, x22	// Set all CSR bits
	csrrc x3, 0x48, x22	// Clear all CSR bits
	csrrw x3, 0x48, x23	// Restore CSR

// Testing CSR 0x49
	csrr x23, 0x49	// Read CSR
	li x12, -1
	csrrw x16, 0x49, x12	// Write all 1s to CSR
	csrrw x16, 0x49, x0	// Write all 0s to CSR
	csrrs x16, 0x49, x12	// Set all CSR bits
	csrrc x16, 0x49, x12	// Clear all CSR bits
	csrrw x16, 0x49, x23	// Restore CSR

// Testing CSR 0x4a
	csrr x14, 0x4a	// Read CSR
	li x11, -1
	csrrw x20, 0x4a, x11	// Write all 1s to CSR
	csrrw x20, 0x4a, x0	// Write all 0s to CSR
	csrrs x20, 0x4a, x11	// Set all CSR bits
	csrrc x20, 0x4a, x11	// Clear all CSR bits
	csrrw x20, 0x4a, x14	// Restore CSR

// Testing CSR 0x4b
	csrr x28, 0x4b	// Read CSR
	li x1, -1
	csrrw x22, 0x4b, x1	// Write all 1s to CSR
	csrrw x22, 0x4b, x0	// Write all 0s to CSR
	csrrs x22, 0x4b, x1	// Set all CSR bits
	csrrc x22, 0x4b, x1	// Clear all CSR bits
	csrrw x22, 0x4b, x28	// Restore CSR

// Testing CSR 0x4c
	csrr x2, 0x4c	// Read CSR
	li x28, -1
	csrrw x4, 0x4c, x28	// Write all 1s to CSR
	csrrw x4, 0x4c, x0	// Write all 0s to CSR
	csrrs x4, 0x4c, x28	// Set all CSR bits
	csrrc x4, 0x4c, x28	// Clear all CSR bits
	csrrw x4, 0x4c, x2	// Restore CSR

// Testing CSR 0x4d
	csrr x19, 0x4d	// Read CSR
	li x20, -1
	csrrw x16, 0x4d, x20	// Write all 1s to CSR
	csrrw x16, 0x4d, x0	// Write all 0s to CSR
	csrrs x16, 0x4d, x20	// Set all CSR bits
	csrrc x16, 0x4d, x20	// Clear all CSR bits
	csrrw x16, 0x4d, x19	// Restore CSR

// Testing CSR 0x4e
	csrr x15, 0x4e	// Read CSR
	li x7, -1
	csrrw x23, 0x4e, x7	// Write all 1s to CSR
	csrrw x23, 0x4e, x0	// Write all 0s to CSR
	csrrs x23, 0x4e, x7	// Set all CSR bits
	csrrc x23, 0x4e, x7	// Clear all CSR bits
	csrrw x23, 0x4e, x15	// Restore CSR

// Testing CSR 0x4f
	csrr x28, 0x4f	// Read CSR
	li x15, -1
	csrrw x17, 0x4f, x15	// Write all 1s to CSR
	csrrw x17, 0x4f, x0	// Write all 0s to CSR
	csrrs x17, 0x4f, x15	// Set all CSR bits
	csrrc x17, 0x4f, x15	// Clear all CSR bits
	csrrw x17, 0x4f, x28	// Restore CSR

// Testing CSR 0x50
	csrr x1, 0x50	// Read CSR
	li x9, -1
	csrrw x8, 0x50, x9	// Write all 1s to CSR
	csrrw x8, 0x50, x0	// Write all 0s to CSR
	csrrs x8, 0x50, x9	// Set all CSR bits
	csrrc x8, 0x50, x9	// Clear all CSR bits
	csrrw x8, 0x50, x1	// Restore CSR

// Testing CSR 0x51
	csrr x2, 0x51	// Read CSR
	li x30, -1
	csrrw x8, 0x51, x30	// Write all 1s to CSR
	csrrw x8, 0x51, x0	// Write all 0s to CSR
	csrrs x8, 0x51, x30	// Set all CSR bits
	csrrc x8, 0x51, x30	// Clear all CSR bits
	csrrw x8, 0x51, x2	// Restore CSR

// Testing CSR 0x52
	csrr x27, 0x52	// Read CSR
	li x25, -1
	csrrw x30, 0x52, x25	// Write all 1s to CSR
	csrrw x30, 0x52, x0	// Write all 0s to CSR
	csrrs x30, 0x52, x25	// Set all CSR bits
	csrrc x30, 0x52, x25	// Clear all CSR bits
	csrrw x30, 0x52, x27	// Restore CSR

// Testing CSR 0x53
	csrr x11, 0x53	// Read CSR
	li x26, -1
	csrrw x24, 0x53, x26	// Write all 1s to CSR
	csrrw x24, 0x53, x0	// Write all 0s to CSR
	csrrs x24, 0x53, x26	// Set all CSR bits
	csrrc x24, 0x53, x26	// Clear all CSR bits
	csrrw x24, 0x53, x11	// Restore CSR

// Testing CSR 0x54
	csrr x17, 0x54	// Read CSR
	li x9, -1
	csrrw x25, 0x54, x9	// Write all 1s to CSR
	csrrw x25, 0x54, x0	// Write all 0s to CSR
	csrrs x25, 0x54, x9	// Set all CSR bits
	csrrc x25, 0x54, x9	// Clear all CSR bits
	csrrw x25, 0x54, x17	// Restore CSR

// Testing CSR 0x55
	csrr x2, 0x55	// Read CSR
	li x31, -1
	csrrw x13, 0x55, x31	// Write all 1s to CSR
	csrrw x13, 0x55, x0	// Write all 0s to CSR
	csrrs x13, 0x55, x31	// Set all CSR bits
	csrrc x13, 0x55, x31	// Clear all CSR bits
	csrrw x13, 0x55, x2	// Restore CSR

// Testing CSR 0x56
	csrr x12, 0x56	// Read CSR
	li x23, -1
	csrrw x7, 0x56, x23	// Write all 1s to CSR
	csrrw x7, 0x56, x0	// Write all 0s to CSR
	csrrs x7, 0x56, x23	// Set all CSR bits
	csrrc x7, 0x56, x23	// Clear all CSR bits
	csrrw x7, 0x56, x12	// Restore CSR

// Testing CSR 0x57
	csrr x8, 0x57	// Read CSR
	li x30, -1
	csrrw x7, 0x57, x30	// Write all 1s to CSR
	csrrw x7, 0x57, x0	// Write all 0s to CSR
	csrrs x7, 0x57, x30	// Set all CSR bits
	csrrc x7, 0x57, x30	// Clear all CSR bits
	csrrw x7, 0x57, x8	// Restore CSR

// Testing CSR 0x58
	csrr x11, 0x58	// Read CSR
	li x1, -1
	csrrw x20, 0x58, x1	// Write all 1s to CSR
	csrrw x20, 0x58, x0	// Write all 0s to CSR
	csrrs x20, 0x58, x1	// Set all CSR bits
	csrrc x20, 0x58, x1	// Clear all CSR bits
	csrrw x20, 0x58, x11	// Restore CSR

// Testing CSR 0x59
	csrr x23, 0x59	// Read CSR
	li x4, -1
	csrrw x2, 0x59, x4	// Write all 1s to CSR
	csrrw x2, 0x59, x0	// Write all 0s to CSR
	csrrs x2, 0x59, x4	// Set all CSR bits
	csrrc x2, 0x59, x4	// Clear all CSR bits
	csrrw x2, 0x59, x23	// Restore CSR

// Testing CSR 0x5a
	csrr x3, 0x5a	// Read CSR
	li x8, -1
	csrrw x26, 0x5a, x8	// Write all 1s to CSR
	csrrw x26, 0x5a, x0	// Write all 0s to CSR
	csrrs x26, 0x5a, x8	// Set all CSR bits
	csrrc x26, 0x5a, x8	// Clear all CSR bits
	csrrw x26, 0x5a, x3	// Restore CSR

// Testing CSR 0x5b
	csrr x12, 0x5b	// Read CSR
	li x20, -1
	csrrw x24, 0x5b, x20	// Write all 1s to CSR
	csrrw x24, 0x5b, x0	// Write all 0s to CSR
	csrrs x24, 0x5b, x20	// Set all CSR bits
	csrrc x24, 0x5b, x20	// Clear all CSR bits
	csrrw x24, 0x5b, x12	// Restore CSR

// Testing CSR 0x5c
	csrr x4, 0x5c	// Read CSR
	li x18, -1
	csrrw x13, 0x5c, x18	// Write all 1s to CSR
	csrrw x13, 0x5c, x0	// Write all 0s to CSR
	csrrs x13, 0x5c, x18	// Set all CSR bits
	csrrc x13, 0x5c, x18	// Clear all CSR bits
	csrrw x13, 0x5c, x4	// Restore CSR

// Testing CSR 0x5d
	csrr x9, 0x5d	// Read CSR
	li x21, -1
	csrrw x7, 0x5d, x21	// Write all 1s to CSR
	csrrw x7, 0x5d, x0	// Write all 0s to CSR
	csrrs x7, 0x5d, x21	// Set all CSR bits
	csrrc x7, 0x5d, x21	// Clear all CSR bits
	csrrw x7, 0x5d, x9	// Restore CSR

// Testing CSR 0x5e
	csrr x26, 0x5e	// Read CSR
	li x6, -1
	csrrw x15, 0x5e, x6	// Write all 1s to CSR
	csrrw x15, 0x5e, x0	// Write all 0s to CSR
	csrrs x15, 0x5e, x6	// Set all CSR bits
	csrrc x15, 0x5e, x6	// Clear all CSR bits
	csrrw x15, 0x5e, x26	// Restore CSR

// Testing CSR 0x5f
	csrr x15, 0x5f	// Read CSR
	li x29, -1
	csrrw x8, 0x5f, x29	// Write all 1s to CSR
	csrrw x8, 0x5f, x0	// Write all 0s to CSR
	csrrs x8, 0x5f, x29	// Set all CSR bits
	csrrc x8, 0x5f, x29	// Clear all CSR bits
	csrrw x8, 0x5f, x15	// Restore CSR

// Testing CSR 0x60
	csrr x30, 0x60	// Read CSR
	li x19, -1
	csrrw x3, 0x60, x19	// Write all 1s to CSR
	csrrw x3, 0x60, x0	// Write all 0s to CSR
	csrrs x3, 0x60, x19	// Set all CSR bits
	csrrc x3, 0x60, x19	// Clear all CSR bits
	csrrw x3, 0x60, x30	// Restore CSR

// Testing CSR 0x61
	csrr x25, 0x61	// Read CSR
	li x17, -1
	csrrw x18, 0x61, x17	// Write all 1s to CSR
	csrrw x18, 0x61, x0	// Write all 0s to CSR
	csrrs x18, 0x61, x17	// Set all CSR bits
	csrrc x18, 0x61, x17	// Clear all CSR bits
	csrrw x18, 0x61, x25	// Restore CSR

// Testing CSR 0x62
	csrr x6, 0x62	// Read CSR
	li x23, -1
	csrrw x4, 0x62, x23	// Write all 1s to CSR
	csrrw x4, 0x62, x0	// Write all 0s to CSR
	csrrs x4, 0x62, x23	// Set all CSR bits
	csrrc x4, 0x62, x23	// Clear all CSR bits
	csrrw x4, 0x62, x6	// Restore CSR

// Testing CSR 0x63
	csrr x26, 0x63	// Read CSR
	li x11, -1
	csrrw x27, 0x63, x11	// Write all 1s to CSR
	csrrw x27, 0x63, x0	// Write all 0s to CSR
	csrrs x27, 0x63, x11	// Set all CSR bits
	csrrc x27, 0x63, x11	// Clear all CSR bits
	csrrw x27, 0x63, x26	// Restore CSR

// Testing CSR 0x64
	csrr x19, 0x64	// Read CSR
	li x6, -1
	csrrw x3, 0x64, x6	// Write all 1s to CSR
	csrrw x3, 0x64, x0	// Write all 0s to CSR
	csrrs x3, 0x64, x6	// Set all CSR bits
	csrrc x3, 0x64, x6	// Clear all CSR bits
	csrrw x3, 0x64, x19	// Restore CSR

// Testing CSR 0x65
	csrr x23, 0x65	// Read CSR
	li x9, -1
	csrrw x25, 0x65, x9	// Write all 1s to CSR
	csrrw x25, 0x65, x0	// Write all 0s to CSR
	csrrs x25, 0x65, x9	// Set all CSR bits
	csrrc x25, 0x65, x9	// Clear all CSR bits
	csrrw x25, 0x65, x23	// Restore CSR

// Testing CSR 0x66
	csrr x14, 0x66	// Read CSR
	li x29, -1
	csrrw x10, 0x66, x29	// Write all 1s to CSR
	csrrw x10, 0x66, x0	// Write all 0s to CSR
	csrrs x10, 0x66, x29	// Set all CSR bits
	csrrc x10, 0x66, x29	// Clear all CSR bits
	csrrw x10, 0x66, x14	// Restore CSR

// Testing CSR 0x67
	csrr x7, 0x67	// Read CSR
	li x5, -1
	csrrw x31, 0x67, x5	// Write all 1s to CSR
	csrrw x31, 0x67, x0	// Write all 0s to CSR
	csrrs x31, 0x67, x5	// Set all CSR bits
	csrrc x31, 0x67, x5	// Clear all CSR bits
	csrrw x31, 0x67, x7	// Restore CSR

// Testing CSR 0x68
	csrr x4, 0x68	// Read CSR
	li x22, -1
	csrrw x8, 0x68, x22	// Write all 1s to CSR
	csrrw x8, 0x68, x0	// Write all 0s to CSR
	csrrs x8, 0x68, x22	// Set all CSR bits
	csrrc x8, 0x68, x22	// Clear all CSR bits
	csrrw x8, 0x68, x4	// Restore CSR

// Testing CSR 0x69
	csrr x30, 0x69	// Read CSR
	li x7, -1
	csrrw x21, 0x69, x7	// Write all 1s to CSR
	csrrw x21, 0x69, x0	// Write all 0s to CSR
	csrrs x21, 0x69, x7	// Set all CSR bits
	csrrc x21, 0x69, x7	// Clear all CSR bits
	csrrw x21, 0x69, x30	// Restore CSR

// Testing CSR 0x6a
	csrr x10, 0x6a	// Read CSR
	li x9, -1
	csrrw x26, 0x6a, x9	// Write all 1s to CSR
	csrrw x26, 0x6a, x0	// Write all 0s to CSR
	csrrs x26, 0x6a, x9	// Set all CSR bits
	csrrc x26, 0x6a, x9	// Clear all CSR bits
	csrrw x26, 0x6a, x10	// Restore CSR

// Testing CSR 0x6b
	csrr x2, 0x6b	// Read CSR
	li x28, -1
	csrrw x4, 0x6b, x28	// Write all 1s to CSR
	csrrw x4, 0x6b, x0	// Write all 0s to CSR
	csrrs x4, 0x6b, x28	// Set all CSR bits
	csrrc x4, 0x6b, x28	// Clear all CSR bits
	csrrw x4, 0x6b, x2	// Restore CSR

// Testing CSR 0x6c
	csrr x27, 0x6c	// Read CSR
	li x5, -1
	csrrw x18, 0x6c, x5	// Write all 1s to CSR
	csrrw x18, 0x6c, x0	// Write all 0s to CSR
	csrrs x18, 0x6c, x5	// Set all CSR bits
	csrrc x18, 0x6c, x5	// Clear all CSR bits
	csrrw x18, 0x6c, x27	// Restore CSR

// Testing CSR 0x6d
	csrr x16, 0x6d	// Read CSR
	li x29, -1
	csrrw x27, 0x6d, x29	// Write all 1s to CSR
	csrrw x27, 0x6d, x0	// Write all 0s to CSR
	csrrs x27, 0x6d, x29	// Set all CSR bits
	csrrc x27, 0x6d, x29	// Clear all CSR bits
	csrrw x27, 0x6d, x16	// Restore CSR

// Testing CSR 0x6e
	csrr x9, 0x6e	// Read CSR
	li x23, -1
	csrrw x5, 0x6e, x23	// Write all 1s to CSR
	csrrw x5, 0x6e, x0	// Write all 0s to CSR
	csrrs x5, 0x6e, x23	// Set all CSR bits
	csrrc x5, 0x6e, x23	// Clear all CSR bits
	csrrw x5, 0x6e, x9	// Restore CSR

// Testing CSR 0x6f
	csrr x3, 0x6f	// Read CSR
	li x4, -1
	csrrw x25, 0x6f, x4	// Write all 1s to CSR
	csrrw x25, 0x6f, x0	// Write all 0s to CSR
	csrrs x25, 0x6f, x4	// Set all CSR bits
	csrrc x25, 0x6f, x4	// Clear all CSR bits
	csrrw x25, 0x6f, x3	// Restore CSR

// Testing CSR 0x70
	csrr x7, 0x70	// Read CSR
	li x27, -1
	csrrw x20, 0x70, x27	// Write all 1s to CSR
	csrrw x20, 0x70, x0	// Write all 0s to CSR
	csrrs x20, 0x70, x27	// Set all CSR bits
	csrrc x20, 0x70, x27	// Clear all CSR bits
	csrrw x20, 0x70, x7	// Restore CSR

// Testing CSR 0x71
	csrr x17, 0x71	// Read CSR
	li x8, -1
	csrrw x5, 0x71, x8	// Write all 1s to CSR
	csrrw x5, 0x71, x0	// Write all 0s to CSR
	csrrs x5, 0x71, x8	// Set all CSR bits
	csrrc x5, 0x71, x8	// Clear all CSR bits
	csrrw x5, 0x71, x17	// Restore CSR

// Testing CSR 0x72
	csrr x15, 0x72	// Read CSR
	li x7, -1
	csrrw x16, 0x72, x7	// Write all 1s to CSR
	csrrw x16, 0x72, x0	// Write all 0s to CSR
	csrrs x16, 0x72, x7	// Set all CSR bits
	csrrc x16, 0x72, x7	// Clear all CSR bits
	csrrw x16, 0x72, x15	// Restore CSR

// Testing CSR 0x73
	csrr x28, 0x73	// Read CSR
	li x27, -1
	csrrw x20, 0x73, x27	// Write all 1s to CSR
	csrrw x20, 0x73, x0	// Write all 0s to CSR
	csrrs x20, 0x73, x27	// Set all CSR bits
	csrrc x20, 0x73, x27	// Clear all CSR bits
	csrrw x20, 0x73, x28	// Restore CSR

// Testing CSR 0x74
	csrr x16, 0x74	// Read CSR
	li x4, -1
	csrrw x28, 0x74, x4	// Write all 1s to CSR
	csrrw x28, 0x74, x0	// Write all 0s to CSR
	csrrs x28, 0x74, x4	// Set all CSR bits
	csrrc x28, 0x74, x4	// Clear all CSR bits
	csrrw x28, 0x74, x16	// Restore CSR

// Testing CSR 0x75
	csrr x12, 0x75	// Read CSR
	li x14, -1
	csrrw x18, 0x75, x14	// Write all 1s to CSR
	csrrw x18, 0x75, x0	// Write all 0s to CSR
	csrrs x18, 0x75, x14	// Set all CSR bits
	csrrc x18, 0x75, x14	// Clear all CSR bits
	csrrw x18, 0x75, x12	// Restore CSR

// Testing CSR 0x76
	csrr x6, 0x76	// Read CSR
	li x1, -1
	csrrw x14, 0x76, x1	// Write all 1s to CSR
	csrrw x14, 0x76, x0	// Write all 0s to CSR
	csrrs x14, 0x76, x1	// Set all CSR bits
	csrrc x14, 0x76, x1	// Clear all CSR bits
	csrrw x14, 0x76, x6	// Restore CSR

// Testing CSR 0x77
	csrr x21, 0x77	// Read CSR
	li x26, -1
	csrrw x19, 0x77, x26	// Write all 1s to CSR
	csrrw x19, 0x77, x0	// Write all 0s to CSR
	csrrs x19, 0x77, x26	// Set all CSR bits
	csrrc x19, 0x77, x26	// Clear all CSR bits
	csrrw x19, 0x77, x21	// Restore CSR

// Testing CSR 0x78
	csrr x20, 0x78	// Read CSR
	li x5, -1
	csrrw x30, 0x78, x5	// Write all 1s to CSR
	csrrw x30, 0x78, x0	// Write all 0s to CSR
	csrrs x30, 0x78, x5	// Set all CSR bits
	csrrc x30, 0x78, x5	// Clear all CSR bits
	csrrw x30, 0x78, x20	// Restore CSR

// Testing CSR 0x79
	csrr x19, 0x79	// Read CSR
	li x23, -1
	csrrw x5, 0x79, x23	// Write all 1s to CSR
	csrrw x5, 0x79, x0	// Write all 0s to CSR
	csrrs x5, 0x79, x23	// Set all CSR bits
	csrrc x5, 0x79, x23	// Clear all CSR bits
	csrrw x5, 0x79, x19	// Restore CSR

// Testing CSR 0x7a
	csrr x23, 0x7a	// Read CSR
	li x13, -1
	csrrw x30, 0x7a, x13	// Write all 1s to CSR
	csrrw x30, 0x7a, x0	// Write all 0s to CSR
	csrrs x30, 0x7a, x13	// Set all CSR bits
	csrrc x30, 0x7a, x13	// Clear all CSR bits
	csrrw x30, 0x7a, x23	// Restore CSR

// Testing CSR 0x7b
	csrr x12, 0x7b	// Read CSR
	li x24, -1
	csrrw x17, 0x7b, x24	// Write all 1s to CSR
	csrrw x17, 0x7b, x0	// Write all 0s to CSR
	csrrs x17, 0x7b, x24	// Set all CSR bits
	csrrc x17, 0x7b, x24	// Clear all CSR bits
	csrrw x17, 0x7b, x12	// Restore CSR

// Testing CSR 0x7c
	csrr x18, 0x7c	// Read CSR
	li x7, -1
	csrrw x28, 0x7c, x7	// Write all 1s to CSR
	csrrw x28, 0x7c, x0	// Write all 0s to CSR
	csrrs x28, 0x7c, x7	// Set all CSR bits
	csrrc x28, 0x7c, x7	// Clear all CSR bits
	csrrw x28, 0x7c, x18	// Restore CSR

// Testing CSR 0x7d
	csrr x23, 0x7d	// Read CSR
	li x30, -1
	csrrw x7, 0x7d, x30	// Write all 1s to CSR
	csrrw x7, 0x7d, x0	// Write all 0s to CSR
	csrrs x7, 0x7d, x30	// Set all CSR bits
	csrrc x7, 0x7d, x30	// Clear all CSR bits
	csrrw x7, 0x7d, x23	// Restore CSR

// Testing CSR 0x7e
	csrr x30, 0x7e	// Read CSR
	li x12, -1
	csrrw x8, 0x7e, x12	// Write all 1s to CSR
	csrrw x8, 0x7e, x0	// Write all 0s to CSR
	csrrs x8, 0x7e, x12	// Set all CSR bits
	csrrc x8, 0x7e, x12	// Clear all CSR bits
	csrrw x8, 0x7e, x30	// Restore CSR

// Testing CSR 0x7f
	csrr x20, 0x7f	// Read CSR
	li x16, -1
	csrrw x27, 0x7f, x16	// Write all 1s to CSR
	csrrw x27, 0x7f, x0	// Write all 0s to CSR
	csrrs x27, 0x7f, x16	// Set all CSR bits
	csrrc x27, 0x7f, x16	// Clear all CSR bits
	csrrw x27, 0x7f, x20	// Restore CSR

// Testing CSR 0x80
	csrr x21, 0x80	// Read CSR
	li x30, -1
	csrrw x2, 0x80, x30	// Write all 1s to CSR
	csrrw x2, 0x80, x0	// Write all 0s to CSR
	csrrs x2, 0x80, x30	// Set all CSR bits
	csrrc x2, 0x80, x30	// Clear all CSR bits
	csrrw x2, 0x80, x21	// Restore CSR

// Testing CSR 0x81
	csrr x25, 0x81	// Read CSR
	li x14, -1
	csrrw x20, 0x81, x14	// Write all 1s to CSR
	csrrw x20, 0x81, x0	// Write all 0s to CSR
	csrrs x20, 0x81, x14	// Set all CSR bits
	csrrc x20, 0x81, x14	// Clear all CSR bits
	csrrw x20, 0x81, x25	// Restore CSR

// Testing CSR 0x82
	csrr x22, 0x82	// Read CSR
	li x27, -1
	csrrw x15, 0x82, x27	// Write all 1s to CSR
	csrrw x15, 0x82, x0	// Write all 0s to CSR
	csrrs x15, 0x82, x27	// Set all CSR bits
	csrrc x15, 0x82, x27	// Clear all CSR bits
	csrrw x15, 0x82, x22	// Restore CSR

// Testing CSR 0x83
	csrr x2, 0x83	// Read CSR
	li x18, -1
	csrrw x11, 0x83, x18	// Write all 1s to CSR
	csrrw x11, 0x83, x0	// Write all 0s to CSR
	csrrs x11, 0x83, x18	// Set all CSR bits
	csrrc x11, 0x83, x18	// Clear all CSR bits
	csrrw x11, 0x83, x2	// Restore CSR

// Testing CSR 0x84
	csrr x7, 0x84	// Read CSR
	li x11, -1
	csrrw x27, 0x84, x11	// Write all 1s to CSR
	csrrw x27, 0x84, x0	// Write all 0s to CSR
	csrrs x27, 0x84, x11	// Set all CSR bits
	csrrc x27, 0x84, x11	// Clear all CSR bits
	csrrw x27, 0x84, x7	// Restore CSR

// Testing CSR 0x85
	csrr x6, 0x85	// Read CSR
	li x1, -1
	csrrw x11, 0x85, x1	// Write all 1s to CSR
	csrrw x11, 0x85, x0	// Write all 0s to CSR
	csrrs x11, 0x85, x1	// Set all CSR bits
	csrrc x11, 0x85, x1	// Clear all CSR bits
	csrrw x11, 0x85, x6	// Restore CSR

// Testing CSR 0x86
	csrr x27, 0x86	// Read CSR
	li x28, -1
	csrrw x16, 0x86, x28	// Write all 1s to CSR
	csrrw x16, 0x86, x0	// Write all 0s to CSR
	csrrs x16, 0x86, x28	// Set all CSR bits
	csrrc x16, 0x86, x28	// Clear all CSR bits
	csrrw x16, 0x86, x27	// Restore CSR

// Testing CSR 0x87
	csrr x25, 0x87	// Read CSR
	li x3, -1
	csrrw x18, 0x87, x3	// Write all 1s to CSR
	csrrw x18, 0x87, x0	// Write all 0s to CSR
	csrrs x18, 0x87, x3	// Set all CSR bits
	csrrc x18, 0x87, x3	// Clear all CSR bits
	csrrw x18, 0x87, x25	// Restore CSR

// Testing CSR 0x88
	csrr x26, 0x88	// Read CSR
	li x29, -1
	csrrw x31, 0x88, x29	// Write all 1s to CSR
	csrrw x31, 0x88, x0	// Write all 0s to CSR
	csrrs x31, 0x88, x29	// Set all CSR bits
	csrrc x31, 0x88, x29	// Clear all CSR bits
	csrrw x31, 0x88, x26	// Restore CSR

// Testing CSR 0x89
	csrr x30, 0x89	// Read CSR
	li x29, -1
	csrrw x20, 0x89, x29	// Write all 1s to CSR
	csrrw x20, 0x89, x0	// Write all 0s to CSR
	csrrs x20, 0x89, x29	// Set all CSR bits
	csrrc x20, 0x89, x29	// Clear all CSR bits
	csrrw x20, 0x89, x30	// Restore CSR

// Testing CSR 0x8a
	csrr x25, 0x8a	// Read CSR
	li x13, -1
	csrrw x31, 0x8a, x13	// Write all 1s to CSR
	csrrw x31, 0x8a, x0	// Write all 0s to CSR
	csrrs x31, 0x8a, x13	// Set all CSR bits
	csrrc x31, 0x8a, x13	// Clear all CSR bits
	csrrw x31, 0x8a, x25	// Restore CSR

// Testing CSR 0x8b
	csrr x27, 0x8b	// Read CSR
	li x10, -1
	csrrw x19, 0x8b, x10	// Write all 1s to CSR
	csrrw x19, 0x8b, x0	// Write all 0s to CSR
	csrrs x19, 0x8b, x10	// Set all CSR bits
	csrrc x19, 0x8b, x10	// Clear all CSR bits
	csrrw x19, 0x8b, x27	// Restore CSR

// Testing CSR 0x8c
	csrr x18, 0x8c	// Read CSR
	li x6, -1
	csrrw x8, 0x8c, x6	// Write all 1s to CSR
	csrrw x8, 0x8c, x0	// Write all 0s to CSR
	csrrs x8, 0x8c, x6	// Set all CSR bits
	csrrc x8, 0x8c, x6	// Clear all CSR bits
	csrrw x8, 0x8c, x18	// Restore CSR

// Testing CSR 0x8d
	csrr x22, 0x8d	// Read CSR
	li x1, -1
	csrrw x16, 0x8d, x1	// Write all 1s to CSR
	csrrw x16, 0x8d, x0	// Write all 0s to CSR
	csrrs x16, 0x8d, x1	// Set all CSR bits
	csrrc x16, 0x8d, x1	// Clear all CSR bits
	csrrw x16, 0x8d, x22	// Restore CSR

// Testing CSR 0x8e
	csrr x4, 0x8e	// Read CSR
	li x23, -1
	csrrw x7, 0x8e, x23	// Write all 1s to CSR
	csrrw x7, 0x8e, x0	// Write all 0s to CSR
	csrrs x7, 0x8e, x23	// Set all CSR bits
	csrrc x7, 0x8e, x23	// Clear all CSR bits
	csrrw x7, 0x8e, x4	// Restore CSR

// Testing CSR 0x8f
	csrr x15, 0x8f	// Read CSR
	li x10, -1
	csrrw x19, 0x8f, x10	// Write all 1s to CSR
	csrrw x19, 0x8f, x0	// Write all 0s to CSR
	csrrs x19, 0x8f, x10	// Set all CSR bits
	csrrc x19, 0x8f, x10	// Clear all CSR bits
	csrrw x19, 0x8f, x15	// Restore CSR

// Testing CSR 0x90
	csrr x10, 0x90	// Read CSR
	li x31, -1
	csrrw x1, 0x90, x31	// Write all 1s to CSR
	csrrw x1, 0x90, x0	// Write all 0s to CSR
	csrrs x1, 0x90, x31	// Set all CSR bits
	csrrc x1, 0x90, x31	// Clear all CSR bits
	csrrw x1, 0x90, x10	// Restore CSR

// Testing CSR 0x91
	csrr x23, 0x91	// Read CSR
	li x20, -1
	csrrw x12, 0x91, x20	// Write all 1s to CSR
	csrrw x12, 0x91, x0	// Write all 0s to CSR
	csrrs x12, 0x91, x20	// Set all CSR bits
	csrrc x12, 0x91, x20	// Clear all CSR bits
	csrrw x12, 0x91, x23	// Restore CSR

// Testing CSR 0x92
	csrr x9, 0x92	// Read CSR
	li x22, -1
	csrrw x3, 0x92, x22	// Write all 1s to CSR
	csrrw x3, 0x92, x0	// Write all 0s to CSR
	csrrs x3, 0x92, x22	// Set all CSR bits
	csrrc x3, 0x92, x22	// Clear all CSR bits
	csrrw x3, 0x92, x9	// Restore CSR

// Testing CSR 0x93
	csrr x1, 0x93	// Read CSR
	li x20, -1
	csrrw x29, 0x93, x20	// Write all 1s to CSR
	csrrw x29, 0x93, x0	// Write all 0s to CSR
	csrrs x29, 0x93, x20	// Set all CSR bits
	csrrc x29, 0x93, x20	// Clear all CSR bits
	csrrw x29, 0x93, x1	// Restore CSR

// Testing CSR 0x94
	csrr x15, 0x94	// Read CSR
	li x29, -1
	csrrw x30, 0x94, x29	// Write all 1s to CSR
	csrrw x30, 0x94, x0	// Write all 0s to CSR
	csrrs x30, 0x94, x29	// Set all CSR bits
	csrrc x30, 0x94, x29	// Clear all CSR bits
	csrrw x30, 0x94, x15	// Restore CSR

// Testing CSR 0x95
	csrr x31, 0x95	// Read CSR
	li x2, -1
	csrrw x5, 0x95, x2	// Write all 1s to CSR
	csrrw x5, 0x95, x0	// Write all 0s to CSR
	csrrs x5, 0x95, x2	// Set all CSR bits
	csrrc x5, 0x95, x2	// Clear all CSR bits
	csrrw x5, 0x95, x31	// Restore CSR

// Testing CSR 0x96
	csrr x3, 0x96	// Read CSR
	li x2, -1
	csrrw x9, 0x96, x2	// Write all 1s to CSR
	csrrw x9, 0x96, x0	// Write all 0s to CSR
	csrrs x9, 0x96, x2	// Set all CSR bits
	csrrc x9, 0x96, x2	// Clear all CSR bits
	csrrw x9, 0x96, x3	// Restore CSR

// Testing CSR 0x97
	csrr x10, 0x97	// Read CSR
	li x24, -1
	csrrw x3, 0x97, x24	// Write all 1s to CSR
	csrrw x3, 0x97, x0	// Write all 0s to CSR
	csrrs x3, 0x97, x24	// Set all CSR bits
	csrrc x3, 0x97, x24	// Clear all CSR bits
	csrrw x3, 0x97, x10	// Restore CSR

// Testing CSR 0x98
	csrr x30, 0x98	// Read CSR
	li x3, -1
	csrrw x27, 0x98, x3	// Write all 1s to CSR
	csrrw x27, 0x98, x0	// Write all 0s to CSR
	csrrs x27, 0x98, x3	// Set all CSR bits
	csrrc x27, 0x98, x3	// Clear all CSR bits
	csrrw x27, 0x98, x30	// Restore CSR

// Testing CSR 0x99
	csrr x3, 0x99	// Read CSR
	li x8, -1
	csrrw x26, 0x99, x8	// Write all 1s to CSR
	csrrw x26, 0x99, x0	// Write all 0s to CSR
	csrrs x26, 0x99, x8	// Set all CSR bits
	csrrc x26, 0x99, x8	// Clear all CSR bits
	csrrw x26, 0x99, x3	// Restore CSR

// Testing CSR 0x9a
	csrr x19, 0x9a	// Read CSR
	li x20, -1
	csrrw x2, 0x9a, x20	// Write all 1s to CSR
	csrrw x2, 0x9a, x0	// Write all 0s to CSR
	csrrs x2, 0x9a, x20	// Set all CSR bits
	csrrc x2, 0x9a, x20	// Clear all CSR bits
	csrrw x2, 0x9a, x19	// Restore CSR

// Testing CSR 0x9b
	csrr x26, 0x9b	// Read CSR
	li x27, -1
	csrrw x21, 0x9b, x27	// Write all 1s to CSR
	csrrw x21, 0x9b, x0	// Write all 0s to CSR
	csrrs x21, 0x9b, x27	// Set all CSR bits
	csrrc x21, 0x9b, x27	// Clear all CSR bits
	csrrw x21, 0x9b, x26	// Restore CSR

// Testing CSR 0x9c
	csrr x31, 0x9c	// Read CSR
	li x11, -1
	csrrw x20, 0x9c, x11	// Write all 1s to CSR
	csrrw x20, 0x9c, x0	// Write all 0s to CSR
	csrrs x20, 0x9c, x11	// Set all CSR bits
	csrrc x20, 0x9c, x11	// Clear all CSR bits
	csrrw x20, 0x9c, x31	// Restore CSR

// Testing CSR 0x9d
	csrr x27, 0x9d	// Read CSR
	li x26, -1
	csrrw x20, 0x9d, x26	// Write all 1s to CSR
	csrrw x20, 0x9d, x0	// Write all 0s to CSR
	csrrs x20, 0x9d, x26	// Set all CSR bits
	csrrc x20, 0x9d, x26	// Clear all CSR bits
	csrrw x20, 0x9d, x27	// Restore CSR

// Testing CSR 0x9e
	csrr x15, 0x9e	// Read CSR
	li x1, -1
	csrrw x18, 0x9e, x1	// Write all 1s to CSR
	csrrw x18, 0x9e, x0	// Write all 0s to CSR
	csrrs x18, 0x9e, x1	// Set all CSR bits
	csrrc x18, 0x9e, x1	// Clear all CSR bits
	csrrw x18, 0x9e, x15	// Restore CSR

// Testing CSR 0x9f
	csrr x27, 0x9f	// Read CSR
	li x22, -1
	csrrw x20, 0x9f, x22	// Write all 1s to CSR
	csrrw x20, 0x9f, x0	// Write all 0s to CSR
	csrrs x20, 0x9f, x22	// Set all CSR bits
	csrrc x20, 0x9f, x22	// Clear all CSR bits
	csrrw x20, 0x9f, x27	// Restore CSR

// Testing CSR 0xa0
	csrr x24, 0xa0	// Read CSR
	li x16, -1
	csrrw x27, 0xa0, x16	// Write all 1s to CSR
	csrrw x27, 0xa0, x0	// Write all 0s to CSR
	csrrs x27, 0xa0, x16	// Set all CSR bits
	csrrc x27, 0xa0, x16	// Clear all CSR bits
	csrrw x27, 0xa0, x24	// Restore CSR

// Testing CSR 0xa1
	csrr x13, 0xa1	// Read CSR
	li x10, -1
	csrrw x28, 0xa1, x10	// Write all 1s to CSR
	csrrw x28, 0xa1, x0	// Write all 0s to CSR
	csrrs x28, 0xa1, x10	// Set all CSR bits
	csrrc x28, 0xa1, x10	// Clear all CSR bits
	csrrw x28, 0xa1, x13	// Restore CSR

// Testing CSR 0xa2
	csrr x20, 0xa2	// Read CSR
	li x1, -1
	csrrw x8, 0xa2, x1	// Write all 1s to CSR
	csrrw x8, 0xa2, x0	// Write all 0s to CSR
	csrrs x8, 0xa2, x1	// Set all CSR bits
	csrrc x8, 0xa2, x1	// Clear all CSR bits
	csrrw x8, 0xa2, x20	// Restore CSR

// Testing CSR 0xa3
	csrr x12, 0xa3	// Read CSR
	li x11, -1
	csrrw x27, 0xa3, x11	// Write all 1s to CSR
	csrrw x27, 0xa3, x0	// Write all 0s to CSR
	csrrs x27, 0xa3, x11	// Set all CSR bits
	csrrc x27, 0xa3, x11	// Clear all CSR bits
	csrrw x27, 0xa3, x12	// Restore CSR

// Testing CSR 0xa4
	csrr x6, 0xa4	// Read CSR
	li x14, -1
	csrrw x7, 0xa4, x14	// Write all 1s to CSR
	csrrw x7, 0xa4, x0	// Write all 0s to CSR
	csrrs x7, 0xa4, x14	// Set all CSR bits
	csrrc x7, 0xa4, x14	// Clear all CSR bits
	csrrw x7, 0xa4, x6	// Restore CSR

// Testing CSR 0xa5
	csrr x13, 0xa5	// Read CSR
	li x2, -1
	csrrw x26, 0xa5, x2	// Write all 1s to CSR
	csrrw x26, 0xa5, x0	// Write all 0s to CSR
	csrrs x26, 0xa5, x2	// Set all CSR bits
	csrrc x26, 0xa5, x2	// Clear all CSR bits
	csrrw x26, 0xa5, x13	// Restore CSR

// Testing CSR 0xa6
	csrr x1, 0xa6	// Read CSR
	li x9, -1
	csrrw x29, 0xa6, x9	// Write all 1s to CSR
	csrrw x29, 0xa6, x0	// Write all 0s to CSR
	csrrs x29, 0xa6, x9	// Set all CSR bits
	csrrc x29, 0xa6, x9	// Clear all CSR bits
	csrrw x29, 0xa6, x1	// Restore CSR

// Testing CSR 0xa7
	csrr x31, 0xa7	// Read CSR
	li x25, -1
	csrrw x20, 0xa7, x25	// Write all 1s to CSR
	csrrw x20, 0xa7, x0	// Write all 0s to CSR
	csrrs x20, 0xa7, x25	// Set all CSR bits
	csrrc x20, 0xa7, x25	// Clear all CSR bits
	csrrw x20, 0xa7, x31	// Restore CSR

// Testing CSR 0xa8
	csrr x18, 0xa8	// Read CSR
	li x7, -1
	csrrw x28, 0xa8, x7	// Write all 1s to CSR
	csrrw x28, 0xa8, x0	// Write all 0s to CSR
	csrrs x28, 0xa8, x7	// Set all CSR bits
	csrrc x28, 0xa8, x7	// Clear all CSR bits
	csrrw x28, 0xa8, x18	// Restore CSR

// Testing CSR 0xa9
	csrr x10, 0xa9	// Read CSR
	li x5, -1
	csrrw x20, 0xa9, x5	// Write all 1s to CSR
	csrrw x20, 0xa9, x0	// Write all 0s to CSR
	csrrs x20, 0xa9, x5	// Set all CSR bits
	csrrc x20, 0xa9, x5	// Clear all CSR bits
	csrrw x20, 0xa9, x10	// Restore CSR

// Testing CSR 0xaa
	csrr x1, 0xaa	// Read CSR
	li x24, -1
	csrrw x13, 0xaa, x24	// Write all 1s to CSR
	csrrw x13, 0xaa, x0	// Write all 0s to CSR
	csrrs x13, 0xaa, x24	// Set all CSR bits
	csrrc x13, 0xaa, x24	// Clear all CSR bits
	csrrw x13, 0xaa, x1	// Restore CSR

// Testing CSR 0xab
	csrr x27, 0xab	// Read CSR
	li x9, -1
	csrrw x8, 0xab, x9	// Write all 1s to CSR
	csrrw x8, 0xab, x0	// Write all 0s to CSR
	csrrs x8, 0xab, x9	// Set all CSR bits
	csrrc x8, 0xab, x9	// Clear all CSR bits
	csrrw x8, 0xab, x27	// Restore CSR

// Testing CSR 0xac
	csrr x1, 0xac	// Read CSR
	li x2, -1
	csrrw x20, 0xac, x2	// Write all 1s to CSR
	csrrw x20, 0xac, x0	// Write all 0s to CSR
	csrrs x20, 0xac, x2	// Set all CSR bits
	csrrc x20, 0xac, x2	// Clear all CSR bits
	csrrw x20, 0xac, x1	// Restore CSR

// Testing CSR 0xad
	csrr x6, 0xad	// Read CSR
	li x24, -1
	csrrw x15, 0xad, x24	// Write all 1s to CSR
	csrrw x15, 0xad, x0	// Write all 0s to CSR
	csrrs x15, 0xad, x24	// Set all CSR bits
	csrrc x15, 0xad, x24	// Clear all CSR bits
	csrrw x15, 0xad, x6	// Restore CSR

// Testing CSR 0xae
	csrr x30, 0xae	// Read CSR
	li x20, -1
	csrrw x5, 0xae, x20	// Write all 1s to CSR
	csrrw x5, 0xae, x0	// Write all 0s to CSR
	csrrs x5, 0xae, x20	// Set all CSR bits
	csrrc x5, 0xae, x20	// Clear all CSR bits
	csrrw x5, 0xae, x30	// Restore CSR

// Testing CSR 0xaf
	csrr x27, 0xaf	// Read CSR
	li x8, -1
	csrrw x20, 0xaf, x8	// Write all 1s to CSR
	csrrw x20, 0xaf, x0	// Write all 0s to CSR
	csrrs x20, 0xaf, x8	// Set all CSR bits
	csrrc x20, 0xaf, x8	// Clear all CSR bits
	csrrw x20, 0xaf, x27	// Restore CSR

// Testing CSR 0xb0
	csrr x24, 0xb0	// Read CSR
	li x27, -1
	csrrw x11, 0xb0, x27	// Write all 1s to CSR
	csrrw x11, 0xb0, x0	// Write all 0s to CSR
	csrrs x11, 0xb0, x27	// Set all CSR bits
	csrrc x11, 0xb0, x27	// Clear all CSR bits
	csrrw x11, 0xb0, x24	// Restore CSR

// Testing CSR 0xb1
	csrr x10, 0xb1	// Read CSR
	li x21, -1
	csrrw x13, 0xb1, x21	// Write all 1s to CSR
	csrrw x13, 0xb1, x0	// Write all 0s to CSR
	csrrs x13, 0xb1, x21	// Set all CSR bits
	csrrc x13, 0xb1, x21	// Clear all CSR bits
	csrrw x13, 0xb1, x10	// Restore CSR

// Testing CSR 0xb2
	csrr x17, 0xb2	// Read CSR
	li x23, -1
	csrrw x25, 0xb2, x23	// Write all 1s to CSR
	csrrw x25, 0xb2, x0	// Write all 0s to CSR
	csrrs x25, 0xb2, x23	// Set all CSR bits
	csrrc x25, 0xb2, x23	// Clear all CSR bits
	csrrw x25, 0xb2, x17	// Restore CSR

// Testing CSR 0xb3
	csrr x3, 0xb3	// Read CSR
	li x17, -1
	csrrw x16, 0xb3, x17	// Write all 1s to CSR
	csrrw x16, 0xb3, x0	// Write all 0s to CSR
	csrrs x16, 0xb3, x17	// Set all CSR bits
	csrrc x16, 0xb3, x17	// Clear all CSR bits
	csrrw x16, 0xb3, x3	// Restore CSR

// Testing CSR 0xb4
	csrr x8, 0xb4	// Read CSR
	li x9, -1
	csrrw x2, 0xb4, x9	// Write all 1s to CSR
	csrrw x2, 0xb4, x0	// Write all 0s to CSR
	csrrs x2, 0xb4, x9	// Set all CSR bits
	csrrc x2, 0xb4, x9	// Clear all CSR bits
	csrrw x2, 0xb4, x8	// Restore CSR

// Testing CSR 0xb5
	csrr x28, 0xb5	// Read CSR
	li x12, -1
	csrrw x19, 0xb5, x12	// Write all 1s to CSR
	csrrw x19, 0xb5, x0	// Write all 0s to CSR
	csrrs x19, 0xb5, x12	// Set all CSR bits
	csrrc x19, 0xb5, x12	// Clear all CSR bits
	csrrw x19, 0xb5, x28	// Restore CSR

// Testing CSR 0xb6
	csrr x10, 0xb6	// Read CSR
	li x29, -1
	csrrw x26, 0xb6, x29	// Write all 1s to CSR
	csrrw x26, 0xb6, x0	// Write all 0s to CSR
	csrrs x26, 0xb6, x29	// Set all CSR bits
	csrrc x26, 0xb6, x29	// Clear all CSR bits
	csrrw x26, 0xb6, x10	// Restore CSR

// Testing CSR 0xb7
	csrr x19, 0xb7	// Read CSR
	li x9, -1
	csrrw x8, 0xb7, x9	// Write all 1s to CSR
	csrrw x8, 0xb7, x0	// Write all 0s to CSR
	csrrs x8, 0xb7, x9	// Set all CSR bits
	csrrc x8, 0xb7, x9	// Clear all CSR bits
	csrrw x8, 0xb7, x19	// Restore CSR

// Testing CSR 0xb8
	csrr x23, 0xb8	// Read CSR
	li x10, -1
	csrrw x11, 0xb8, x10	// Write all 1s to CSR
	csrrw x11, 0xb8, x0	// Write all 0s to CSR
	csrrs x11, 0xb8, x10	// Set all CSR bits
	csrrc x11, 0xb8, x10	// Clear all CSR bits
	csrrw x11, 0xb8, x23	// Restore CSR

// Testing CSR 0xb9
	csrr x17, 0xb9	// Read CSR
	li x27, -1
	csrrw x10, 0xb9, x27	// Write all 1s to CSR
	csrrw x10, 0xb9, x0	// Write all 0s to CSR
	csrrs x10, 0xb9, x27	// Set all CSR bits
	csrrc x10, 0xb9, x27	// Clear all CSR bits
	csrrw x10, 0xb9, x17	// Restore CSR

// Testing CSR 0xba
	csrr x9, 0xba	// Read CSR
	li x29, -1
	csrrw x13, 0xba, x29	// Write all 1s to CSR
	csrrw x13, 0xba, x0	// Write all 0s to CSR
	csrrs x13, 0xba, x29	// Set all CSR bits
	csrrc x13, 0xba, x29	// Clear all CSR bits
	csrrw x13, 0xba, x9	// Restore CSR

// Testing CSR 0xbb
	csrr x16, 0xbb	// Read CSR
	li x4, -1
	csrrw x23, 0xbb, x4	// Write all 1s to CSR
	csrrw x23, 0xbb, x0	// Write all 0s to CSR
	csrrs x23, 0xbb, x4	// Set all CSR bits
	csrrc x23, 0xbb, x4	// Clear all CSR bits
	csrrw x23, 0xbb, x16	// Restore CSR

// Testing CSR 0xbc
	csrr x3, 0xbc	// Read CSR
	li x14, -1
	csrrw x7, 0xbc, x14	// Write all 1s to CSR
	csrrw x7, 0xbc, x0	// Write all 0s to CSR
	csrrs x7, 0xbc, x14	// Set all CSR bits
	csrrc x7, 0xbc, x14	// Clear all CSR bits
	csrrw x7, 0xbc, x3	// Restore CSR

// Testing CSR 0xbd
	csrr x21, 0xbd	// Read CSR
	li x6, -1
	csrrw x22, 0xbd, x6	// Write all 1s to CSR
	csrrw x22, 0xbd, x0	// Write all 0s to CSR
	csrrs x22, 0xbd, x6	// Set all CSR bits
	csrrc x22, 0xbd, x6	// Clear all CSR bits
	csrrw x22, 0xbd, x21	// Restore CSR

// Testing CSR 0xbe
	csrr x27, 0xbe	// Read CSR
	li x22, -1
	csrrw x7, 0xbe, x22	// Write all 1s to CSR
	csrrw x7, 0xbe, x0	// Write all 0s to CSR
	csrrs x7, 0xbe, x22	// Set all CSR bits
	csrrc x7, 0xbe, x22	// Clear all CSR bits
	csrrw x7, 0xbe, x27	// Restore CSR

// Testing CSR 0xbf
	csrr x9, 0xbf	// Read CSR
	li x28, -1
	csrrw x12, 0xbf, x28	// Write all 1s to CSR
	csrrw x12, 0xbf, x0	// Write all 0s to CSR
	csrrs x12, 0xbf, x28	// Set all CSR bits
	csrrc x12, 0xbf, x28	// Clear all CSR bits
	csrrw x12, 0xbf, x9	// Restore CSR

// Testing CSR 0xc0
	csrr x21, 0xc0	// Read CSR
	li x31, -1
	csrrw x17, 0xc0, x31	// Write all 1s to CSR
	csrrw x17, 0xc0, x0	// Write all 0s to CSR
	csrrs x17, 0xc0, x31	// Set all CSR bits
	csrrc x17, 0xc0, x31	// Clear all CSR bits
	csrrw x17, 0xc0, x21	// Restore CSR

// Testing CSR 0xc1
	csrr x15, 0xc1	// Read CSR
	li x21, -1
	csrrw x23, 0xc1, x21	// Write all 1s to CSR
	csrrw x23, 0xc1, x0	// Write all 0s to CSR
	csrrs x23, 0xc1, x21	// Set all CSR bits
	csrrc x23, 0xc1, x21	// Clear all CSR bits
	csrrw x23, 0xc1, x15	// Restore CSR

// Testing CSR 0xc2
	csrr x20, 0xc2	// Read CSR
	li x30, -1
	csrrw x25, 0xc2, x30	// Write all 1s to CSR
	csrrw x25, 0xc2, x0	// Write all 0s to CSR
	csrrs x25, 0xc2, x30	// Set all CSR bits
	csrrc x25, 0xc2, x30	// Clear all CSR bits
	csrrw x25, 0xc2, x20	// Restore CSR

// Testing CSR 0xc3
	csrr x14, 0xc3	// Read CSR
	li x7, -1
	csrrw x25, 0xc3, x7	// Write all 1s to CSR
	csrrw x25, 0xc3, x0	// Write all 0s to CSR
	csrrs x25, 0xc3, x7	// Set all CSR bits
	csrrc x25, 0xc3, x7	// Clear all CSR bits
	csrrw x25, 0xc3, x14	// Restore CSR

// Testing CSR 0xc4
	csrr x18, 0xc4	// Read CSR
	li x15, -1
	csrrw x28, 0xc4, x15	// Write all 1s to CSR
	csrrw x28, 0xc4, x0	// Write all 0s to CSR
	csrrs x28, 0xc4, x15	// Set all CSR bits
	csrrc x28, 0xc4, x15	// Clear all CSR bits
	csrrw x28, 0xc4, x18	// Restore CSR

// Testing CSR 0xc5
	csrr x11, 0xc5	// Read CSR
	li x4, -1
	csrrw x24, 0xc5, x4	// Write all 1s to CSR
	csrrw x24, 0xc5, x0	// Write all 0s to CSR
	csrrs x24, 0xc5, x4	// Set all CSR bits
	csrrc x24, 0xc5, x4	// Clear all CSR bits
	csrrw x24, 0xc5, x11	// Restore CSR

// Testing CSR 0xc6
	csrr x7, 0xc6	// Read CSR
	li x20, -1
	csrrw x16, 0xc6, x20	// Write all 1s to CSR
	csrrw x16, 0xc6, x0	// Write all 0s to CSR
	csrrs x16, 0xc6, x20	// Set all CSR bits
	csrrc x16, 0xc6, x20	// Clear all CSR bits
	csrrw x16, 0xc6, x7	// Restore CSR

// Testing CSR 0xc7
	csrr x10, 0xc7	// Read CSR
	li x30, -1
	csrrw x19, 0xc7, x30	// Write all 1s to CSR
	csrrw x19, 0xc7, x0	// Write all 0s to CSR
	csrrs x19, 0xc7, x30	// Set all CSR bits
	csrrc x19, 0xc7, x30	// Clear all CSR bits
	csrrw x19, 0xc7, x10	// Restore CSR

// Testing CSR 0xc8
	csrr x25, 0xc8	// Read CSR
	li x4, -1
	csrrw x27, 0xc8, x4	// Write all 1s to CSR
	csrrw x27, 0xc8, x0	// Write all 0s to CSR
	csrrs x27, 0xc8, x4	// Set all CSR bits
	csrrc x27, 0xc8, x4	// Clear all CSR bits
	csrrw x27, 0xc8, x25	// Restore CSR

// Testing CSR 0xc9
	csrr x30, 0xc9	// Read CSR
	li x1, -1
	csrrw x2, 0xc9, x1	// Write all 1s to CSR
	csrrw x2, 0xc9, x0	// Write all 0s to CSR
	csrrs x2, 0xc9, x1	// Set all CSR bits
	csrrc x2, 0xc9, x1	// Clear all CSR bits
	csrrw x2, 0xc9, x30	// Restore CSR

// Testing CSR 0xca
	csrr x30, 0xca	// Read CSR
	li x3, -1
	csrrw x22, 0xca, x3	// Write all 1s to CSR
	csrrw x22, 0xca, x0	// Write all 0s to CSR
	csrrs x22, 0xca, x3	// Set all CSR bits
	csrrc x22, 0xca, x3	// Clear all CSR bits
	csrrw x22, 0xca, x30	// Restore CSR

// Testing CSR 0xcb
	csrr x23, 0xcb	// Read CSR
	li x8, -1
	csrrw x26, 0xcb, x8	// Write all 1s to CSR
	csrrw x26, 0xcb, x0	// Write all 0s to CSR
	csrrs x26, 0xcb, x8	// Set all CSR bits
	csrrc x26, 0xcb, x8	// Clear all CSR bits
	csrrw x26, 0xcb, x23	// Restore CSR

// Testing CSR 0xcc
	csrr x30, 0xcc	// Read CSR
	li x18, -1
	csrrw x14, 0xcc, x18	// Write all 1s to CSR
	csrrw x14, 0xcc, x0	// Write all 0s to CSR
	csrrs x14, 0xcc, x18	// Set all CSR bits
	csrrc x14, 0xcc, x18	// Clear all CSR bits
	csrrw x14, 0xcc, x30	// Restore CSR

// Testing CSR 0xcd
	csrr x21, 0xcd	// Read CSR
	li x31, -1
	csrrw x11, 0xcd, x31	// Write all 1s to CSR
	csrrw x11, 0xcd, x0	// Write all 0s to CSR
	csrrs x11, 0xcd, x31	// Set all CSR bits
	csrrc x11, 0xcd, x31	// Clear all CSR bits
	csrrw x11, 0xcd, x21	// Restore CSR

// Testing CSR 0xce
	csrr x17, 0xce	// Read CSR
	li x4, -1
	csrrw x3, 0xce, x4	// Write all 1s to CSR
	csrrw x3, 0xce, x0	// Write all 0s to CSR
	csrrs x3, 0xce, x4	// Set all CSR bits
	csrrc x3, 0xce, x4	// Clear all CSR bits
	csrrw x3, 0xce, x17	// Restore CSR

// Testing CSR 0xcf
	csrr x16, 0xcf	// Read CSR
	li x10, -1
	csrrw x24, 0xcf, x10	// Write all 1s to CSR
	csrrw x24, 0xcf, x0	// Write all 0s to CSR
	csrrs x24, 0xcf, x10	// Set all CSR bits
	csrrc x24, 0xcf, x10	// Clear all CSR bits
	csrrw x24, 0xcf, x16	// Restore CSR

// Testing CSR 0xd0
	csrr x16, 0xd0	// Read CSR
	li x15, -1
	csrrw x29, 0xd0, x15	// Write all 1s to CSR
	csrrw x29, 0xd0, x0	// Write all 0s to CSR
	csrrs x29, 0xd0, x15	// Set all CSR bits
	csrrc x29, 0xd0, x15	// Clear all CSR bits
	csrrw x29, 0xd0, x16	// Restore CSR

// Testing CSR 0xd1
	csrr x2, 0xd1	// Read CSR
	li x10, -1
	csrrw x18, 0xd1, x10	// Write all 1s to CSR
	csrrw x18, 0xd1, x0	// Write all 0s to CSR
	csrrs x18, 0xd1, x10	// Set all CSR bits
	csrrc x18, 0xd1, x10	// Clear all CSR bits
	csrrw x18, 0xd1, x2	// Restore CSR

// Testing CSR 0xd2
	csrr x21, 0xd2	// Read CSR
	li x18, -1
	csrrw x31, 0xd2, x18	// Write all 1s to CSR
	csrrw x31, 0xd2, x0	// Write all 0s to CSR
	csrrs x31, 0xd2, x18	// Set all CSR bits
	csrrc x31, 0xd2, x18	// Clear all CSR bits
	csrrw x31, 0xd2, x21	// Restore CSR

// Testing CSR 0xd3
	csrr x28, 0xd3	// Read CSR
	li x16, -1
	csrrw x12, 0xd3, x16	// Write all 1s to CSR
	csrrw x12, 0xd3, x0	// Write all 0s to CSR
	csrrs x12, 0xd3, x16	// Set all CSR bits
	csrrc x12, 0xd3, x16	// Clear all CSR bits
	csrrw x12, 0xd3, x28	// Restore CSR

// Testing CSR 0xd4
	csrr x20, 0xd4	// Read CSR
	li x16, -1
	csrrw x5, 0xd4, x16	// Write all 1s to CSR
	csrrw x5, 0xd4, x0	// Write all 0s to CSR
	csrrs x5, 0xd4, x16	// Set all CSR bits
	csrrc x5, 0xd4, x16	// Clear all CSR bits
	csrrw x5, 0xd4, x20	// Restore CSR

// Testing CSR 0xd5
	csrr x22, 0xd5	// Read CSR
	li x18, -1
	csrrw x8, 0xd5, x18	// Write all 1s to CSR
	csrrw x8, 0xd5, x0	// Write all 0s to CSR
	csrrs x8, 0xd5, x18	// Set all CSR bits
	csrrc x8, 0xd5, x18	// Clear all CSR bits
	csrrw x8, 0xd5, x22	// Restore CSR

// Testing CSR 0xd6
	csrr x21, 0xd6	// Read CSR
	li x2, -1
	csrrw x15, 0xd6, x2	// Write all 1s to CSR
	csrrw x15, 0xd6, x0	// Write all 0s to CSR
	csrrs x15, 0xd6, x2	// Set all CSR bits
	csrrc x15, 0xd6, x2	// Clear all CSR bits
	csrrw x15, 0xd6, x21	// Restore CSR

// Testing CSR 0xd7
	csrr x19, 0xd7	// Read CSR
	li x8, -1
	csrrw x31, 0xd7, x8	// Write all 1s to CSR
	csrrw x31, 0xd7, x0	// Write all 0s to CSR
	csrrs x31, 0xd7, x8	// Set all CSR bits
	csrrc x31, 0xd7, x8	// Clear all CSR bits
	csrrw x31, 0xd7, x19	// Restore CSR

// Testing CSR 0xd8
	csrr x8, 0xd8	// Read CSR
	li x31, -1
	csrrw x19, 0xd8, x31	// Write all 1s to CSR
	csrrw x19, 0xd8, x0	// Write all 0s to CSR
	csrrs x19, 0xd8, x31	// Set all CSR bits
	csrrc x19, 0xd8, x31	// Clear all CSR bits
	csrrw x19, 0xd8, x8	// Restore CSR

// Testing CSR 0xd9
	csrr x8, 0xd9	// Read CSR
	li x22, -1
	csrrw x2, 0xd9, x22	// Write all 1s to CSR
	csrrw x2, 0xd9, x0	// Write all 0s to CSR
	csrrs x2, 0xd9, x22	// Set all CSR bits
	csrrc x2, 0xd9, x22	// Clear all CSR bits
	csrrw x2, 0xd9, x8	// Restore CSR

// Testing CSR 0xda
	csrr x10, 0xda	// Read CSR
	li x4, -1
	csrrw x13, 0xda, x4	// Write all 1s to CSR
	csrrw x13, 0xda, x0	// Write all 0s to CSR
	csrrs x13, 0xda, x4	// Set all CSR bits
	csrrc x13, 0xda, x4	// Clear all CSR bits
	csrrw x13, 0xda, x10	// Restore CSR

// Testing CSR 0xdb
	csrr x11, 0xdb	// Read CSR
	li x31, -1
	csrrw x14, 0xdb, x31	// Write all 1s to CSR
	csrrw x14, 0xdb, x0	// Write all 0s to CSR
	csrrs x14, 0xdb, x31	// Set all CSR bits
	csrrc x14, 0xdb, x31	// Clear all CSR bits
	csrrw x14, 0xdb, x11	// Restore CSR

// Testing CSR 0xdc
	csrr x12, 0xdc	// Read CSR
	li x5, -1
	csrrw x19, 0xdc, x5	// Write all 1s to CSR
	csrrw x19, 0xdc, x0	// Write all 0s to CSR
	csrrs x19, 0xdc, x5	// Set all CSR bits
	csrrc x19, 0xdc, x5	// Clear all CSR bits
	csrrw x19, 0xdc, x12	// Restore CSR

// Testing CSR 0xdd
	csrr x13, 0xdd	// Read CSR
	li x15, -1
	csrrw x5, 0xdd, x15	// Write all 1s to CSR
	csrrw x5, 0xdd, x0	// Write all 0s to CSR
	csrrs x5, 0xdd, x15	// Set all CSR bits
	csrrc x5, 0xdd, x15	// Clear all CSR bits
	csrrw x5, 0xdd, x13	// Restore CSR

// Testing CSR 0xde
	csrr x14, 0xde	// Read CSR
	li x6, -1
	csrrw x8, 0xde, x6	// Write all 1s to CSR
	csrrw x8, 0xde, x0	// Write all 0s to CSR
	csrrs x8, 0xde, x6	// Set all CSR bits
	csrrc x8, 0xde, x6	// Clear all CSR bits
	csrrw x8, 0xde, x14	// Restore CSR

// Testing CSR 0xdf
	csrr x2, 0xdf	// Read CSR
	li x12, -1
	csrrw x15, 0xdf, x12	// Write all 1s to CSR
	csrrw x15, 0xdf, x0	// Write all 0s to CSR
	csrrs x15, 0xdf, x12	// Set all CSR bits
	csrrc x15, 0xdf, x12	// Clear all CSR bits
	csrrw x15, 0xdf, x2	// Restore CSR

// Testing CSR 0xe0
	csrr x27, 0xe0	// Read CSR
	li x22, -1
	csrrw x15, 0xe0, x22	// Write all 1s to CSR
	csrrw x15, 0xe0, x0	// Write all 0s to CSR
	csrrs x15, 0xe0, x22	// Set all CSR bits
	csrrc x15, 0xe0, x22	// Clear all CSR bits
	csrrw x15, 0xe0, x27	// Restore CSR

// Testing CSR 0xe1
	csrr x4, 0xe1	// Read CSR
	li x22, -1
	csrrw x31, 0xe1, x22	// Write all 1s to CSR
	csrrw x31, 0xe1, x0	// Write all 0s to CSR
	csrrs x31, 0xe1, x22	// Set all CSR bits
	csrrc x31, 0xe1, x22	// Clear all CSR bits
	csrrw x31, 0xe1, x4	// Restore CSR

// Testing CSR 0xe2
	csrr x11, 0xe2	// Read CSR
	li x9, -1
	csrrw x20, 0xe2, x9	// Write all 1s to CSR
	csrrw x20, 0xe2, x0	// Write all 0s to CSR
	csrrs x20, 0xe2, x9	// Set all CSR bits
	csrrc x20, 0xe2, x9	// Clear all CSR bits
	csrrw x20, 0xe2, x11	// Restore CSR

// Testing CSR 0xe3
	csrr x5, 0xe3	// Read CSR
	li x24, -1
	csrrw x23, 0xe3, x24	// Write all 1s to CSR
	csrrw x23, 0xe3, x0	// Write all 0s to CSR
	csrrs x23, 0xe3, x24	// Set all CSR bits
	csrrc x23, 0xe3, x24	// Clear all CSR bits
	csrrw x23, 0xe3, x5	// Restore CSR

// Testing CSR 0xe4
	csrr x10, 0xe4	// Read CSR
	li x2, -1
	csrrw x31, 0xe4, x2	// Write all 1s to CSR
	csrrw x31, 0xe4, x0	// Write all 0s to CSR
	csrrs x31, 0xe4, x2	// Set all CSR bits
	csrrc x31, 0xe4, x2	// Clear all CSR bits
	csrrw x31, 0xe4, x10	// Restore CSR

// Testing CSR 0xe5
	csrr x7, 0xe5	// Read CSR
	li x17, -1
	csrrw x10, 0xe5, x17	// Write all 1s to CSR
	csrrw x10, 0xe5, x0	// Write all 0s to CSR
	csrrs x10, 0xe5, x17	// Set all CSR bits
	csrrc x10, 0xe5, x17	// Clear all CSR bits
	csrrw x10, 0xe5, x7	// Restore CSR

// Testing CSR 0xe6
	csrr x9, 0xe6	// Read CSR
	li x8, -1
	csrrw x3, 0xe6, x8	// Write all 1s to CSR
	csrrw x3, 0xe6, x0	// Write all 0s to CSR
	csrrs x3, 0xe6, x8	// Set all CSR bits
	csrrc x3, 0xe6, x8	// Clear all CSR bits
	csrrw x3, 0xe6, x9	// Restore CSR

// Testing CSR 0xe7
	csrr x15, 0xe7	// Read CSR
	li x4, -1
	csrrw x31, 0xe7, x4	// Write all 1s to CSR
	csrrw x31, 0xe7, x0	// Write all 0s to CSR
	csrrs x31, 0xe7, x4	// Set all CSR bits
	csrrc x31, 0xe7, x4	// Clear all CSR bits
	csrrw x31, 0xe7, x15	// Restore CSR

// Testing CSR 0xe8
	csrr x18, 0xe8	// Read CSR
	li x16, -1
	csrrw x24, 0xe8, x16	// Write all 1s to CSR
	csrrw x24, 0xe8, x0	// Write all 0s to CSR
	csrrs x24, 0xe8, x16	// Set all CSR bits
	csrrc x24, 0xe8, x16	// Clear all CSR bits
	csrrw x24, 0xe8, x18	// Restore CSR

// Testing CSR 0xe9
	csrr x11, 0xe9	// Read CSR
	li x28, -1
	csrrw x6, 0xe9, x28	// Write all 1s to CSR
	csrrw x6, 0xe9, x0	// Write all 0s to CSR
	csrrs x6, 0xe9, x28	// Set all CSR bits
	csrrc x6, 0xe9, x28	// Clear all CSR bits
	csrrw x6, 0xe9, x11	// Restore CSR

// Testing CSR 0xea
	csrr x10, 0xea	// Read CSR
	li x17, -1
	csrrw x4, 0xea, x17	// Write all 1s to CSR
	csrrw x4, 0xea, x0	// Write all 0s to CSR
	csrrs x4, 0xea, x17	// Set all CSR bits
	csrrc x4, 0xea, x17	// Clear all CSR bits
	csrrw x4, 0xea, x10	// Restore CSR

// Testing CSR 0xeb
	csrr x1, 0xeb	// Read CSR
	li x7, -1
	csrrw x8, 0xeb, x7	// Write all 1s to CSR
	csrrw x8, 0xeb, x0	// Write all 0s to CSR
	csrrs x8, 0xeb, x7	// Set all CSR bits
	csrrc x8, 0xeb, x7	// Clear all CSR bits
	csrrw x8, 0xeb, x1	// Restore CSR

// Testing CSR 0xec
	csrr x12, 0xec	// Read CSR
	li x18, -1
	csrrw x29, 0xec, x18	// Write all 1s to CSR
	csrrw x29, 0xec, x0	// Write all 0s to CSR
	csrrs x29, 0xec, x18	// Set all CSR bits
	csrrc x29, 0xec, x18	// Clear all CSR bits
	csrrw x29, 0xec, x12	// Restore CSR

// Testing CSR 0xed
	csrr x28, 0xed	// Read CSR
	li x6, -1
	csrrw x12, 0xed, x6	// Write all 1s to CSR
	csrrw x12, 0xed, x0	// Write all 0s to CSR
	csrrs x12, 0xed, x6	// Set all CSR bits
	csrrc x12, 0xed, x6	// Clear all CSR bits
	csrrw x12, 0xed, x28	// Restore CSR

// Testing CSR 0xee
	csrr x26, 0xee	// Read CSR
	li x11, -1
	csrrw x8, 0xee, x11	// Write all 1s to CSR
	csrrw x8, 0xee, x0	// Write all 0s to CSR
	csrrs x8, 0xee, x11	// Set all CSR bits
	csrrc x8, 0xee, x11	// Clear all CSR bits
	csrrw x8, 0xee, x26	// Restore CSR

// Testing CSR 0xef
	csrr x10, 0xef	// Read CSR
	li x7, -1
	csrrw x28, 0xef, x7	// Write all 1s to CSR
	csrrw x28, 0xef, x0	// Write all 0s to CSR
	csrrs x28, 0xef, x7	// Set all CSR bits
	csrrc x28, 0xef, x7	// Clear all CSR bits
	csrrw x28, 0xef, x10	// Restore CSR

// Testing CSR 0xf0
	csrr x21, 0xf0	// Read CSR
	li x17, -1
	csrrw x25, 0xf0, x17	// Write all 1s to CSR
	csrrw x25, 0xf0, x0	// Write all 0s to CSR
	csrrs x25, 0xf0, x17	// Set all CSR bits
	csrrc x25, 0xf0, x17	// Clear all CSR bits
	csrrw x25, 0xf0, x21	// Restore CSR

// Testing CSR 0xf1
	csrr x29, 0xf1	// Read CSR
	li x2, -1
	csrrw x22, 0xf1, x2	// Write all 1s to CSR
	csrrw x22, 0xf1, x0	// Write all 0s to CSR
	csrrs x22, 0xf1, x2	// Set all CSR bits
	csrrc x22, 0xf1, x2	// Clear all CSR bits
	csrrw x22, 0xf1, x29	// Restore CSR

// Testing CSR 0xf2
	csrr x13, 0xf2	// Read CSR
	li x9, -1
	csrrw x10, 0xf2, x9	// Write all 1s to CSR
	csrrw x10, 0xf2, x0	// Write all 0s to CSR
	csrrs x10, 0xf2, x9	// Set all CSR bits
	csrrc x10, 0xf2, x9	// Clear all CSR bits
	csrrw x10, 0xf2, x13	// Restore CSR

// Testing CSR 0xf3
	csrr x13, 0xf3	// Read CSR
	li x9, -1
	csrrw x3, 0xf3, x9	// Write all 1s to CSR
	csrrw x3, 0xf3, x0	// Write all 0s to CSR
	csrrs x3, 0xf3, x9	// Set all CSR bits
	csrrc x3, 0xf3, x9	// Clear all CSR bits
	csrrw x3, 0xf3, x13	// Restore CSR

// Testing CSR 0xf4
	csrr x21, 0xf4	// Read CSR
	li x2, -1
	csrrw x1, 0xf4, x2	// Write all 1s to CSR
	csrrw x1, 0xf4, x0	// Write all 0s to CSR
	csrrs x1, 0xf4, x2	// Set all CSR bits
	csrrc x1, 0xf4, x2	// Clear all CSR bits
	csrrw x1, 0xf4, x21	// Restore CSR

// Testing CSR 0xf5
	csrr x30, 0xf5	// Read CSR
	li x31, -1
	csrrw x19, 0xf5, x31	// Write all 1s to CSR
	csrrw x19, 0xf5, x0	// Write all 0s to CSR
	csrrs x19, 0xf5, x31	// Set all CSR bits
	csrrc x19, 0xf5, x31	// Clear all CSR bits
	csrrw x19, 0xf5, x30	// Restore CSR

// Testing CSR 0xf6
	csrr x27, 0xf6	// Read CSR
	li x5, -1
	csrrw x8, 0xf6, x5	// Write all 1s to CSR
	csrrw x8, 0xf6, x0	// Write all 0s to CSR
	csrrs x8, 0xf6, x5	// Set all CSR bits
	csrrc x8, 0xf6, x5	// Clear all CSR bits
	csrrw x8, 0xf6, x27	// Restore CSR

// Testing CSR 0xf7
	csrr x29, 0xf7	// Read CSR
	li x18, -1
	csrrw x1, 0xf7, x18	// Write all 1s to CSR
	csrrw x1, 0xf7, x0	// Write all 0s to CSR
	csrrs x1, 0xf7, x18	// Set all CSR bits
	csrrc x1, 0xf7, x18	// Clear all CSR bits
	csrrw x1, 0xf7, x29	// Restore CSR

// Testing CSR 0xf8
	csrr x18, 0xf8	// Read CSR
	li x24, -1
	csrrw x5, 0xf8, x24	// Write all 1s to CSR
	csrrw x5, 0xf8, x0	// Write all 0s to CSR
	csrrs x5, 0xf8, x24	// Set all CSR bits
	csrrc x5, 0xf8, x24	// Clear all CSR bits
	csrrw x5, 0xf8, x18	// Restore CSR

// Testing CSR 0xf9
	csrr x19, 0xf9	// Read CSR
	li x27, -1
	csrrw x20, 0xf9, x27	// Write all 1s to CSR
	csrrw x20, 0xf9, x0	// Write all 0s to CSR
	csrrs x20, 0xf9, x27	// Set all CSR bits
	csrrc x20, 0xf9, x27	// Clear all CSR bits
	csrrw x20, 0xf9, x19	// Restore CSR

// Testing CSR 0xfa
	csrr x31, 0xfa	// Read CSR
	li x10, -1
	csrrw x30, 0xfa, x10	// Write all 1s to CSR
	csrrw x30, 0xfa, x0	// Write all 0s to CSR
	csrrs x30, 0xfa, x10	// Set all CSR bits
	csrrc x30, 0xfa, x10	// Clear all CSR bits
	csrrw x30, 0xfa, x31	// Restore CSR

// Testing CSR 0xfb
	csrr x22, 0xfb	// Read CSR
	li x6, -1
	csrrw x19, 0xfb, x6	// Write all 1s to CSR
	csrrw x19, 0xfb, x0	// Write all 0s to CSR
	csrrs x19, 0xfb, x6	// Set all CSR bits
	csrrc x19, 0xfb, x6	// Clear all CSR bits
	csrrw x19, 0xfb, x22	// Restore CSR

// Testing CSR 0xfc
	csrr x16, 0xfc	// Read CSR
	li x31, -1
	csrrw x2, 0xfc, x31	// Write all 1s to CSR
	csrrw x2, 0xfc, x0	// Write all 0s to CSR
	csrrs x2, 0xfc, x31	// Set all CSR bits
	csrrc x2, 0xfc, x31	// Clear all CSR bits
	csrrw x2, 0xfc, x16	// Restore CSR

// Testing CSR 0xfd
	csrr x21, 0xfd	// Read CSR
	li x16, -1
	csrrw x20, 0xfd, x16	// Write all 1s to CSR
	csrrw x20, 0xfd, x0	// Write all 0s to CSR
	csrrs x20, 0xfd, x16	// Set all CSR bits
	csrrc x20, 0xfd, x16	// Clear all CSR bits
	csrrw x20, 0xfd, x21	// Restore CSR

// Testing CSR 0xfe
	csrr x29, 0xfe	// Read CSR
	li x10, -1
	csrrw x28, 0xfe, x10	// Write all 1s to CSR
	csrrw x28, 0xfe, x0	// Write all 0s to CSR
	csrrs x28, 0xfe, x10	// Set all CSR bits
	csrrc x28, 0xfe, x10	// Clear all CSR bits
	csrrw x28, 0xfe, x29	// Restore CSR

// Testing CSR 0xff
	csrr x18, 0xff	// Read CSR
	li x29, -1
	csrrw x8, 0xff, x29	// Write all 1s to CSR
	csrrw x8, 0xff, x0	// Write all 0s to CSR
	csrrs x8, 0xff, x29	// Set all CSR bits
	csrrc x8, 0xff, x29	// Clear all CSR bits
	csrrw x8, 0xff, x18	// Restore CSR

// Testing CSR 0x100
	csrr x22, 0x100	// Read CSR
	li x23, -1
	csrrw x30, 0x100, x23	// Write all 1s to CSR
	csrrw x30, 0x100, x0	// Write all 0s to CSR
	csrrs x30, 0x100, x23	// Set all CSR bits
	csrrc x30, 0x100, x23	// Clear all CSR bits
	csrrw x30, 0x100, x22	// Restore CSR

// Testing CSR 0x101
	csrr x29, 0x101	// Read CSR
	li x22, -1
	csrrw x12, 0x101, x22	// Write all 1s to CSR
	csrrw x12, 0x101, x0	// Write all 0s to CSR
	csrrs x12, 0x101, x22	// Set all CSR bits
	csrrc x12, 0x101, x22	// Clear all CSR bits
	csrrw x12, 0x101, x29	// Restore CSR

// Testing CSR 0x102
	csrr x4, 0x102	// Read CSR
	li x26, -1
	csrrw x7, 0x102, x26	// Write all 1s to CSR
	csrrw x7, 0x102, x0	// Write all 0s to CSR
	csrrs x7, 0x102, x26	// Set all CSR bits
	csrrc x7, 0x102, x26	// Clear all CSR bits
	csrrw x7, 0x102, x4	// Restore CSR

// Testing CSR 0x103
	csrr x27, 0x103	// Read CSR
	li x8, -1
	csrrw x5, 0x103, x8	// Write all 1s to CSR
	csrrw x5, 0x103, x0	// Write all 0s to CSR
	csrrs x5, 0x103, x8	// Set all CSR bits
	csrrc x5, 0x103, x8	// Clear all CSR bits
	csrrw x5, 0x103, x27	// Restore CSR

// Testing CSR 0x104
	csrr x5, 0x104	// Read CSR
	li x9, -1
	csrrw x17, 0x104, x9	// Write all 1s to CSR
	csrrw x17, 0x104, x0	// Write all 0s to CSR
	csrrs x17, 0x104, x9	// Set all CSR bits
	csrrc x17, 0x104, x9	// Clear all CSR bits
	csrrw x17, 0x104, x5	// Restore CSR

// Testing CSR 0x105
	csrr x16, 0x105	// Read CSR
	li x10, -1
	csrrw x15, 0x105, x10	// Write all 1s to CSR
	csrrw x15, 0x105, x0	// Write all 0s to CSR
	csrrs x15, 0x105, x10	// Set all CSR bits
	csrrc x15, 0x105, x10	// Clear all CSR bits
	csrrw x15, 0x105, x16	// Restore CSR

// Testing CSR 0x106
	csrr x10, 0x106	// Read CSR
	li x7, -1
	csrrw x11, 0x106, x7	// Write all 1s to CSR
	csrrw x11, 0x106, x0	// Write all 0s to CSR
	csrrs x11, 0x106, x7	// Set all CSR bits
	csrrc x11, 0x106, x7	// Clear all CSR bits
	csrrw x11, 0x106, x10	// Restore CSR

// Testing CSR 0x107
	csrr x7, 0x107	// Read CSR
	li x5, -1
	csrrw x15, 0x107, x5	// Write all 1s to CSR
	csrrw x15, 0x107, x0	// Write all 0s to CSR
	csrrs x15, 0x107, x5	// Set all CSR bits
	csrrc x15, 0x107, x5	// Clear all CSR bits
	csrrw x15, 0x107, x7	// Restore CSR

// Testing CSR 0x108
	csrr x16, 0x108	// Read CSR
	li x26, -1
	csrrw x29, 0x108, x26	// Write all 1s to CSR
	csrrw x29, 0x108, x0	// Write all 0s to CSR
	csrrs x29, 0x108, x26	// Set all CSR bits
	csrrc x29, 0x108, x26	// Clear all CSR bits
	csrrw x29, 0x108, x16	// Restore CSR

// Testing CSR 0x109
	csrr x6, 0x109	// Read CSR
	li x17, -1
	csrrw x8, 0x109, x17	// Write all 1s to CSR
	csrrw x8, 0x109, x0	// Write all 0s to CSR
	csrrs x8, 0x109, x17	// Set all CSR bits
	csrrc x8, 0x109, x17	// Clear all CSR bits
	csrrw x8, 0x109, x6	// Restore CSR

// Testing CSR 0x10a
	csrr x25, 0x10a	// Read CSR
	li x14, -1
	csrrw x13, 0x10a, x14	// Write all 1s to CSR
	csrrw x13, 0x10a, x0	// Write all 0s to CSR
	csrrs x13, 0x10a, x14	// Set all CSR bits
	csrrc x13, 0x10a, x14	// Clear all CSR bits
	csrrw x13, 0x10a, x25	// Restore CSR

// Testing CSR 0x10b
	csrr x9, 0x10b	// Read CSR
	li x7, -1
	csrrw x12, 0x10b, x7	// Write all 1s to CSR
	csrrw x12, 0x10b, x0	// Write all 0s to CSR
	csrrs x12, 0x10b, x7	// Set all CSR bits
	csrrc x12, 0x10b, x7	// Clear all CSR bits
	csrrw x12, 0x10b, x9	// Restore CSR

// Testing CSR 0x10c
	csrr x21, 0x10c	// Read CSR
	li x10, -1
	csrrw x15, 0x10c, x10	// Write all 1s to CSR
	csrrw x15, 0x10c, x0	// Write all 0s to CSR
	csrrs x15, 0x10c, x10	// Set all CSR bits
	csrrc x15, 0x10c, x10	// Clear all CSR bits
	csrrw x15, 0x10c, x21	// Restore CSR

// Testing CSR 0x10d
	csrr x22, 0x10d	// Read CSR
	li x5, -1
	csrrw x23, 0x10d, x5	// Write all 1s to CSR
	csrrw x23, 0x10d, x0	// Write all 0s to CSR
	csrrs x23, 0x10d, x5	// Set all CSR bits
	csrrc x23, 0x10d, x5	// Clear all CSR bits
	csrrw x23, 0x10d, x22	// Restore CSR

// Testing CSR 0x10e
	csrr x14, 0x10e	// Read CSR
	li x13, -1
	csrrw x15, 0x10e, x13	// Write all 1s to CSR
	csrrw x15, 0x10e, x0	// Write all 0s to CSR
	csrrs x15, 0x10e, x13	// Set all CSR bits
	csrrc x15, 0x10e, x13	// Clear all CSR bits
	csrrw x15, 0x10e, x14	// Restore CSR

// Testing CSR 0x10f
	csrr x14, 0x10f	// Read CSR
	li x24, -1
	csrrw x7, 0x10f, x24	// Write all 1s to CSR
	csrrw x7, 0x10f, x0	// Write all 0s to CSR
	csrrs x7, 0x10f, x24	// Set all CSR bits
	csrrc x7, 0x10f, x24	// Clear all CSR bits
	csrrw x7, 0x10f, x14	// Restore CSR

// Testing CSR 0x110
	csrr x29, 0x110	// Read CSR
	li x20, -1
	csrrw x2, 0x110, x20	// Write all 1s to CSR
	csrrw x2, 0x110, x0	// Write all 0s to CSR
	csrrs x2, 0x110, x20	// Set all CSR bits
	csrrc x2, 0x110, x20	// Clear all CSR bits
	csrrw x2, 0x110, x29	// Restore CSR

// Testing CSR 0x111
	csrr x9, 0x111	// Read CSR
	li x19, -1
	csrrw x17, 0x111, x19	// Write all 1s to CSR
	csrrw x17, 0x111, x0	// Write all 0s to CSR
	csrrs x17, 0x111, x19	// Set all CSR bits
	csrrc x17, 0x111, x19	// Clear all CSR bits
	csrrw x17, 0x111, x9	// Restore CSR

// Testing CSR 0x112
	csrr x24, 0x112	// Read CSR
	li x2, -1
	csrrw x22, 0x112, x2	// Write all 1s to CSR
	csrrw x22, 0x112, x0	// Write all 0s to CSR
	csrrs x22, 0x112, x2	// Set all CSR bits
	csrrc x22, 0x112, x2	// Clear all CSR bits
	csrrw x22, 0x112, x24	// Restore CSR

// Testing CSR 0x113
	csrr x16, 0x113	// Read CSR
	li x19, -1
	csrrw x28, 0x113, x19	// Write all 1s to CSR
	csrrw x28, 0x113, x0	// Write all 0s to CSR
	csrrs x28, 0x113, x19	// Set all CSR bits
	csrrc x28, 0x113, x19	// Clear all CSR bits
	csrrw x28, 0x113, x16	// Restore CSR

// Testing CSR 0x114
	csrr x2, 0x114	// Read CSR
	li x14, -1
	csrrw x20, 0x114, x14	// Write all 1s to CSR
	csrrw x20, 0x114, x0	// Write all 0s to CSR
	csrrs x20, 0x114, x14	// Set all CSR bits
	csrrc x20, 0x114, x14	// Clear all CSR bits
	csrrw x20, 0x114, x2	// Restore CSR

// Testing CSR 0x115
	csrr x20, 0x115	// Read CSR
	li x30, -1
	csrrw x6, 0x115, x30	// Write all 1s to CSR
	csrrw x6, 0x115, x0	// Write all 0s to CSR
	csrrs x6, 0x115, x30	// Set all CSR bits
	csrrc x6, 0x115, x30	// Clear all CSR bits
	csrrw x6, 0x115, x20	// Restore CSR

// Testing CSR 0x116
	csrr x1, 0x116	// Read CSR
	li x9, -1
	csrrw x20, 0x116, x9	// Write all 1s to CSR
	csrrw x20, 0x116, x0	// Write all 0s to CSR
	csrrs x20, 0x116, x9	// Set all CSR bits
	csrrc x20, 0x116, x9	// Clear all CSR bits
	csrrw x20, 0x116, x1	// Restore CSR

// Testing CSR 0x117
	csrr x29, 0x117	// Read CSR
	li x6, -1
	csrrw x3, 0x117, x6	// Write all 1s to CSR
	csrrw x3, 0x117, x0	// Write all 0s to CSR
	csrrs x3, 0x117, x6	// Set all CSR bits
	csrrc x3, 0x117, x6	// Clear all CSR bits
	csrrw x3, 0x117, x29	// Restore CSR

// Testing CSR 0x118
	csrr x27, 0x118	// Read CSR
	li x2, -1
	csrrw x9, 0x118, x2	// Write all 1s to CSR
	csrrw x9, 0x118, x0	// Write all 0s to CSR
	csrrs x9, 0x118, x2	// Set all CSR bits
	csrrc x9, 0x118, x2	// Clear all CSR bits
	csrrw x9, 0x118, x27	// Restore CSR

// Testing CSR 0x119
	csrr x11, 0x119	// Read CSR
	li x31, -1
	csrrw x1, 0x119, x31	// Write all 1s to CSR
	csrrw x1, 0x119, x0	// Write all 0s to CSR
	csrrs x1, 0x119, x31	// Set all CSR bits
	csrrc x1, 0x119, x31	// Clear all CSR bits
	csrrw x1, 0x119, x11	// Restore CSR

// Testing CSR 0x11a
	csrr x23, 0x11a	// Read CSR
	li x10, -1
	csrrw x28, 0x11a, x10	// Write all 1s to CSR
	csrrw x28, 0x11a, x0	// Write all 0s to CSR
	csrrs x28, 0x11a, x10	// Set all CSR bits
	csrrc x28, 0x11a, x10	// Clear all CSR bits
	csrrw x28, 0x11a, x23	// Restore CSR

// Testing CSR 0x11b
	csrr x13, 0x11b	// Read CSR
	li x4, -1
	csrrw x14, 0x11b, x4	// Write all 1s to CSR
	csrrw x14, 0x11b, x0	// Write all 0s to CSR
	csrrs x14, 0x11b, x4	// Set all CSR bits
	csrrc x14, 0x11b, x4	// Clear all CSR bits
	csrrw x14, 0x11b, x13	// Restore CSR

// Testing CSR 0x11c
	csrr x24, 0x11c	// Read CSR
	li x11, -1
	csrrw x25, 0x11c, x11	// Write all 1s to CSR
	csrrw x25, 0x11c, x0	// Write all 0s to CSR
	csrrs x25, 0x11c, x11	// Set all CSR bits
	csrrc x25, 0x11c, x11	// Clear all CSR bits
	csrrw x25, 0x11c, x24	// Restore CSR

// Testing CSR 0x11d
	csrr x7, 0x11d	// Read CSR
	li x23, -1
	csrrw x30, 0x11d, x23	// Write all 1s to CSR
	csrrw x30, 0x11d, x0	// Write all 0s to CSR
	csrrs x30, 0x11d, x23	// Set all CSR bits
	csrrc x30, 0x11d, x23	// Clear all CSR bits
	csrrw x30, 0x11d, x7	// Restore CSR

// Testing CSR 0x11e
	csrr x27, 0x11e	// Read CSR
	li x26, -1
	csrrw x8, 0x11e, x26	// Write all 1s to CSR
	csrrw x8, 0x11e, x0	// Write all 0s to CSR
	csrrs x8, 0x11e, x26	// Set all CSR bits
	csrrc x8, 0x11e, x26	// Clear all CSR bits
	csrrw x8, 0x11e, x27	// Restore CSR

// Testing CSR 0x11f
	csrr x6, 0x11f	// Read CSR
	li x28, -1
	csrrw x20, 0x11f, x28	// Write all 1s to CSR
	csrrw x20, 0x11f, x0	// Write all 0s to CSR
	csrrs x20, 0x11f, x28	// Set all CSR bits
	csrrc x20, 0x11f, x28	// Clear all CSR bits
	csrrw x20, 0x11f, x6	// Restore CSR

// Testing CSR 0x120
	csrr x15, 0x120	// Read CSR
	li x27, -1
	csrrw x29, 0x120, x27	// Write all 1s to CSR
	csrrw x29, 0x120, x0	// Write all 0s to CSR
	csrrs x29, 0x120, x27	// Set all CSR bits
	csrrc x29, 0x120, x27	// Clear all CSR bits
	csrrw x29, 0x120, x15	// Restore CSR

// Testing CSR 0x121
	csrr x13, 0x121	// Read CSR
	li x11, -1
	csrrw x27, 0x121, x11	// Write all 1s to CSR
	csrrw x27, 0x121, x0	// Write all 0s to CSR
	csrrs x27, 0x121, x11	// Set all CSR bits
	csrrc x27, 0x121, x11	// Clear all CSR bits
	csrrw x27, 0x121, x13	// Restore CSR

// Testing CSR 0x122
	csrr x15, 0x122	// Read CSR
	li x18, -1
	csrrw x24, 0x122, x18	// Write all 1s to CSR
	csrrw x24, 0x122, x0	// Write all 0s to CSR
	csrrs x24, 0x122, x18	// Set all CSR bits
	csrrc x24, 0x122, x18	// Clear all CSR bits
	csrrw x24, 0x122, x15	// Restore CSR

// Testing CSR 0x123
	csrr x5, 0x123	// Read CSR
	li x27, -1
	csrrw x19, 0x123, x27	// Write all 1s to CSR
	csrrw x19, 0x123, x0	// Write all 0s to CSR
	csrrs x19, 0x123, x27	// Set all CSR bits
	csrrc x19, 0x123, x27	// Clear all CSR bits
	csrrw x19, 0x123, x5	// Restore CSR

// Testing CSR 0x124
	csrr x4, 0x124	// Read CSR
	li x24, -1
	csrrw x25, 0x124, x24	// Write all 1s to CSR
	csrrw x25, 0x124, x0	// Write all 0s to CSR
	csrrs x25, 0x124, x24	// Set all CSR bits
	csrrc x25, 0x124, x24	// Clear all CSR bits
	csrrw x25, 0x124, x4	// Restore CSR

// Testing CSR 0x125
	csrr x10, 0x125	// Read CSR
	li x15, -1
	csrrw x20, 0x125, x15	// Write all 1s to CSR
	csrrw x20, 0x125, x0	// Write all 0s to CSR
	csrrs x20, 0x125, x15	// Set all CSR bits
	csrrc x20, 0x125, x15	// Clear all CSR bits
	csrrw x20, 0x125, x10	// Restore CSR

// Testing CSR 0x126
	csrr x28, 0x126	// Read CSR
	li x4, -1
	csrrw x5, 0x126, x4	// Write all 1s to CSR
	csrrw x5, 0x126, x0	// Write all 0s to CSR
	csrrs x5, 0x126, x4	// Set all CSR bits
	csrrc x5, 0x126, x4	// Clear all CSR bits
	csrrw x5, 0x126, x28	// Restore CSR

// Testing CSR 0x127
	csrr x26, 0x127	// Read CSR
	li x10, -1
	csrrw x18, 0x127, x10	// Write all 1s to CSR
	csrrw x18, 0x127, x0	// Write all 0s to CSR
	csrrs x18, 0x127, x10	// Set all CSR bits
	csrrc x18, 0x127, x10	// Clear all CSR bits
	csrrw x18, 0x127, x26	// Restore CSR

// Testing CSR 0x128
	csrr x8, 0x128	// Read CSR
	li x21, -1
	csrrw x17, 0x128, x21	// Write all 1s to CSR
	csrrw x17, 0x128, x0	// Write all 0s to CSR
	csrrs x17, 0x128, x21	// Set all CSR bits
	csrrc x17, 0x128, x21	// Clear all CSR bits
	csrrw x17, 0x128, x8	// Restore CSR

// Testing CSR 0x129
	csrr x11, 0x129	// Read CSR
	li x25, -1
	csrrw x22, 0x129, x25	// Write all 1s to CSR
	csrrw x22, 0x129, x0	// Write all 0s to CSR
	csrrs x22, 0x129, x25	// Set all CSR bits
	csrrc x22, 0x129, x25	// Clear all CSR bits
	csrrw x22, 0x129, x11	// Restore CSR

// Testing CSR 0x12a
	csrr x14, 0x12a	// Read CSR
	li x30, -1
	csrrw x19, 0x12a, x30	// Write all 1s to CSR
	csrrw x19, 0x12a, x0	// Write all 0s to CSR
	csrrs x19, 0x12a, x30	// Set all CSR bits
	csrrc x19, 0x12a, x30	// Clear all CSR bits
	csrrw x19, 0x12a, x14	// Restore CSR

// Testing CSR 0x12b
	csrr x11, 0x12b	// Read CSR
	li x25, -1
	csrrw x3, 0x12b, x25	// Write all 1s to CSR
	csrrw x3, 0x12b, x0	// Write all 0s to CSR
	csrrs x3, 0x12b, x25	// Set all CSR bits
	csrrc x3, 0x12b, x25	// Clear all CSR bits
	csrrw x3, 0x12b, x11	// Restore CSR

// Testing CSR 0x12c
	csrr x29, 0x12c	// Read CSR
	li x12, -1
	csrrw x16, 0x12c, x12	// Write all 1s to CSR
	csrrw x16, 0x12c, x0	// Write all 0s to CSR
	csrrs x16, 0x12c, x12	// Set all CSR bits
	csrrc x16, 0x12c, x12	// Clear all CSR bits
	csrrw x16, 0x12c, x29	// Restore CSR

// Testing CSR 0x12d
	csrr x1, 0x12d	// Read CSR
	li x4, -1
	csrrw x5, 0x12d, x4	// Write all 1s to CSR
	csrrw x5, 0x12d, x0	// Write all 0s to CSR
	csrrs x5, 0x12d, x4	// Set all CSR bits
	csrrc x5, 0x12d, x4	// Clear all CSR bits
	csrrw x5, 0x12d, x1	// Restore CSR

// Testing CSR 0x12e
	csrr x5, 0x12e	// Read CSR
	li x22, -1
	csrrw x9, 0x12e, x22	// Write all 1s to CSR
	csrrw x9, 0x12e, x0	// Write all 0s to CSR
	csrrs x9, 0x12e, x22	// Set all CSR bits
	csrrc x9, 0x12e, x22	// Clear all CSR bits
	csrrw x9, 0x12e, x5	// Restore CSR

// Testing CSR 0x12f
	csrr x9, 0x12f	// Read CSR
	li x29, -1
	csrrw x5, 0x12f, x29	// Write all 1s to CSR
	csrrw x5, 0x12f, x0	// Write all 0s to CSR
	csrrs x5, 0x12f, x29	// Set all CSR bits
	csrrc x5, 0x12f, x29	// Clear all CSR bits
	csrrw x5, 0x12f, x9	// Restore CSR

// Testing CSR 0x130
	csrr x26, 0x130	// Read CSR
	li x30, -1
	csrrw x8, 0x130, x30	// Write all 1s to CSR
	csrrw x8, 0x130, x0	// Write all 0s to CSR
	csrrs x8, 0x130, x30	// Set all CSR bits
	csrrc x8, 0x130, x30	// Clear all CSR bits
	csrrw x8, 0x130, x26	// Restore CSR

// Testing CSR 0x131
	csrr x6, 0x131	// Read CSR
	li x12, -1
	csrrw x11, 0x131, x12	// Write all 1s to CSR
	csrrw x11, 0x131, x0	// Write all 0s to CSR
	csrrs x11, 0x131, x12	// Set all CSR bits
	csrrc x11, 0x131, x12	// Clear all CSR bits
	csrrw x11, 0x131, x6	// Restore CSR

// Testing CSR 0x132
	csrr x22, 0x132	// Read CSR
	li x17, -1
	csrrw x8, 0x132, x17	// Write all 1s to CSR
	csrrw x8, 0x132, x0	// Write all 0s to CSR
	csrrs x8, 0x132, x17	// Set all CSR bits
	csrrc x8, 0x132, x17	// Clear all CSR bits
	csrrw x8, 0x132, x22	// Restore CSR

// Testing CSR 0x133
	csrr x28, 0x133	// Read CSR
	li x31, -1
	csrrw x25, 0x133, x31	// Write all 1s to CSR
	csrrw x25, 0x133, x0	// Write all 0s to CSR
	csrrs x25, 0x133, x31	// Set all CSR bits
	csrrc x25, 0x133, x31	// Clear all CSR bits
	csrrw x25, 0x133, x28	// Restore CSR

// Testing CSR 0x134
	csrr x8, 0x134	// Read CSR
	li x19, -1
	csrrw x2, 0x134, x19	// Write all 1s to CSR
	csrrw x2, 0x134, x0	// Write all 0s to CSR
	csrrs x2, 0x134, x19	// Set all CSR bits
	csrrc x2, 0x134, x19	// Clear all CSR bits
	csrrw x2, 0x134, x8	// Restore CSR

// Testing CSR 0x135
	csrr x28, 0x135	// Read CSR
	li x17, -1
	csrrw x22, 0x135, x17	// Write all 1s to CSR
	csrrw x22, 0x135, x0	// Write all 0s to CSR
	csrrs x22, 0x135, x17	// Set all CSR bits
	csrrc x22, 0x135, x17	// Clear all CSR bits
	csrrw x22, 0x135, x28	// Restore CSR

// Testing CSR 0x136
	csrr x7, 0x136	// Read CSR
	li x18, -1
	csrrw x16, 0x136, x18	// Write all 1s to CSR
	csrrw x16, 0x136, x0	// Write all 0s to CSR
	csrrs x16, 0x136, x18	// Set all CSR bits
	csrrc x16, 0x136, x18	// Clear all CSR bits
	csrrw x16, 0x136, x7	// Restore CSR

// Testing CSR 0x137
	csrr x27, 0x137	// Read CSR
	li x12, -1
	csrrw x6, 0x137, x12	// Write all 1s to CSR
	csrrw x6, 0x137, x0	// Write all 0s to CSR
	csrrs x6, 0x137, x12	// Set all CSR bits
	csrrc x6, 0x137, x12	// Clear all CSR bits
	csrrw x6, 0x137, x27	// Restore CSR

// Testing CSR 0x138
	csrr x13, 0x138	// Read CSR
	li x16, -1
	csrrw x7, 0x138, x16	// Write all 1s to CSR
	csrrw x7, 0x138, x0	// Write all 0s to CSR
	csrrs x7, 0x138, x16	// Set all CSR bits
	csrrc x7, 0x138, x16	// Clear all CSR bits
	csrrw x7, 0x138, x13	// Restore CSR

// Testing CSR 0x139
	csrr x27, 0x139	// Read CSR
	li x15, -1
	csrrw x18, 0x139, x15	// Write all 1s to CSR
	csrrw x18, 0x139, x0	// Write all 0s to CSR
	csrrs x18, 0x139, x15	// Set all CSR bits
	csrrc x18, 0x139, x15	// Clear all CSR bits
	csrrw x18, 0x139, x27	// Restore CSR

// Testing CSR 0x13a
	csrr x13, 0x13a	// Read CSR
	li x23, -1
	csrrw x10, 0x13a, x23	// Write all 1s to CSR
	csrrw x10, 0x13a, x0	// Write all 0s to CSR
	csrrs x10, 0x13a, x23	// Set all CSR bits
	csrrc x10, 0x13a, x23	// Clear all CSR bits
	csrrw x10, 0x13a, x13	// Restore CSR

// Testing CSR 0x13b
	csrr x31, 0x13b	// Read CSR
	li x8, -1
	csrrw x4, 0x13b, x8	// Write all 1s to CSR
	csrrw x4, 0x13b, x0	// Write all 0s to CSR
	csrrs x4, 0x13b, x8	// Set all CSR bits
	csrrc x4, 0x13b, x8	// Clear all CSR bits
	csrrw x4, 0x13b, x31	// Restore CSR

// Testing CSR 0x13c
	csrr x17, 0x13c	// Read CSR
	li x24, -1
	csrrw x15, 0x13c, x24	// Write all 1s to CSR
	csrrw x15, 0x13c, x0	// Write all 0s to CSR
	csrrs x15, 0x13c, x24	// Set all CSR bits
	csrrc x15, 0x13c, x24	// Clear all CSR bits
	csrrw x15, 0x13c, x17	// Restore CSR

// Testing CSR 0x13d
	csrr x26, 0x13d	// Read CSR
	li x14, -1
	csrrw x20, 0x13d, x14	// Write all 1s to CSR
	csrrw x20, 0x13d, x0	// Write all 0s to CSR
	csrrs x20, 0x13d, x14	// Set all CSR bits
	csrrc x20, 0x13d, x14	// Clear all CSR bits
	csrrw x20, 0x13d, x26	// Restore CSR

// Testing CSR 0x13e
	csrr x28, 0x13e	// Read CSR
	li x24, -1
	csrrw x9, 0x13e, x24	// Write all 1s to CSR
	csrrw x9, 0x13e, x0	// Write all 0s to CSR
	csrrs x9, 0x13e, x24	// Set all CSR bits
	csrrc x9, 0x13e, x24	// Clear all CSR bits
	csrrw x9, 0x13e, x28	// Restore CSR

// Testing CSR 0x13f
	csrr x11, 0x13f	// Read CSR
	li x3, -1
	csrrw x4, 0x13f, x3	// Write all 1s to CSR
	csrrw x4, 0x13f, x0	// Write all 0s to CSR
	csrrs x4, 0x13f, x3	// Set all CSR bits
	csrrc x4, 0x13f, x3	// Clear all CSR bits
	csrrw x4, 0x13f, x11	// Restore CSR

// Testing CSR 0x140
	csrr x25, 0x140	// Read CSR
	li x5, -1
	csrrw x21, 0x140, x5	// Write all 1s to CSR
	csrrw x21, 0x140, x0	// Write all 0s to CSR
	csrrs x21, 0x140, x5	// Set all CSR bits
	csrrc x21, 0x140, x5	// Clear all CSR bits
	csrrw x21, 0x140, x25	// Restore CSR

// Testing CSR 0x141
	csrr x27, 0x141	// Read CSR
	li x8, -1
	csrrw x16, 0x141, x8	// Write all 1s to CSR
	csrrw x16, 0x141, x0	// Write all 0s to CSR
	csrrs x16, 0x141, x8	// Set all CSR bits
	csrrc x16, 0x141, x8	// Clear all CSR bits
	csrrw x16, 0x141, x27	// Restore CSR

// Testing CSR 0x142
	csrr x18, 0x142	// Read CSR
	li x6, -1
	csrrw x2, 0x142, x6	// Write all 1s to CSR
	csrrw x2, 0x142, x0	// Write all 0s to CSR
	csrrs x2, 0x142, x6	// Set all CSR bits
	csrrc x2, 0x142, x6	// Clear all CSR bits
	csrrw x2, 0x142, x18	// Restore CSR

// Testing CSR 0x143
	csrr x15, 0x143	// Read CSR
	li x6, -1
	csrrw x17, 0x143, x6	// Write all 1s to CSR
	csrrw x17, 0x143, x0	// Write all 0s to CSR
	csrrs x17, 0x143, x6	// Set all CSR bits
	csrrc x17, 0x143, x6	// Clear all CSR bits
	csrrw x17, 0x143, x15	// Restore CSR

// Testing CSR 0x144
	csrr x24, 0x144	// Read CSR
	li x16, -1
	csrrw x5, 0x144, x16	// Write all 1s to CSR
	csrrw x5, 0x144, x0	// Write all 0s to CSR
	csrrs x5, 0x144, x16	// Set all CSR bits
	csrrc x5, 0x144, x16	// Clear all CSR bits
	csrrw x5, 0x144, x24	// Restore CSR

// Testing CSR 0x145
	csrr x1, 0x145	// Read CSR
	li x8, -1
	csrrw x6, 0x145, x8	// Write all 1s to CSR
	csrrw x6, 0x145, x0	// Write all 0s to CSR
	csrrs x6, 0x145, x8	// Set all CSR bits
	csrrc x6, 0x145, x8	// Clear all CSR bits
	csrrw x6, 0x145, x1	// Restore CSR

// Testing CSR 0x146
	csrr x7, 0x146	// Read CSR
	li x20, -1
	csrrw x2, 0x146, x20	// Write all 1s to CSR
	csrrw x2, 0x146, x0	// Write all 0s to CSR
	csrrs x2, 0x146, x20	// Set all CSR bits
	csrrc x2, 0x146, x20	// Clear all CSR bits
	csrrw x2, 0x146, x7	// Restore CSR

// Testing CSR 0x147
	csrr x11, 0x147	// Read CSR
	li x12, -1
	csrrw x25, 0x147, x12	// Write all 1s to CSR
	csrrw x25, 0x147, x0	// Write all 0s to CSR
	csrrs x25, 0x147, x12	// Set all CSR bits
	csrrc x25, 0x147, x12	// Clear all CSR bits
	csrrw x25, 0x147, x11	// Restore CSR

// Testing CSR 0x148
	csrr x16, 0x148	// Read CSR
	li x10, -1
	csrrw x31, 0x148, x10	// Write all 1s to CSR
	csrrw x31, 0x148, x0	// Write all 0s to CSR
	csrrs x31, 0x148, x10	// Set all CSR bits
	csrrc x31, 0x148, x10	// Clear all CSR bits
	csrrw x31, 0x148, x16	// Restore CSR

// Testing CSR 0x149
	csrr x26, 0x149	// Read CSR
	li x11, -1
	csrrw x19, 0x149, x11	// Write all 1s to CSR
	csrrw x19, 0x149, x0	// Write all 0s to CSR
	csrrs x19, 0x149, x11	// Set all CSR bits
	csrrc x19, 0x149, x11	// Clear all CSR bits
	csrrw x19, 0x149, x26	// Restore CSR

// Testing CSR 0x14a
	csrr x11, 0x14a	// Read CSR
	li x10, -1
	csrrw x3, 0x14a, x10	// Write all 1s to CSR
	csrrw x3, 0x14a, x0	// Write all 0s to CSR
	csrrs x3, 0x14a, x10	// Set all CSR bits
	csrrc x3, 0x14a, x10	// Clear all CSR bits
	csrrw x3, 0x14a, x11	// Restore CSR

// Testing CSR 0x14b
	csrr x21, 0x14b	// Read CSR
	li x13, -1
	csrrw x29, 0x14b, x13	// Write all 1s to CSR
	csrrw x29, 0x14b, x0	// Write all 0s to CSR
	csrrs x29, 0x14b, x13	// Set all CSR bits
	csrrc x29, 0x14b, x13	// Clear all CSR bits
	csrrw x29, 0x14b, x21	// Restore CSR

// Testing CSR 0x14c
	csrr x3, 0x14c	// Read CSR
	li x23, -1
	csrrw x25, 0x14c, x23	// Write all 1s to CSR
	csrrw x25, 0x14c, x0	// Write all 0s to CSR
	csrrs x25, 0x14c, x23	// Set all CSR bits
	csrrc x25, 0x14c, x23	// Clear all CSR bits
	csrrw x25, 0x14c, x3	// Restore CSR

// Testing CSR 0x14d
	csrr x16, 0x14d	// Read CSR
	li x30, -1
	csrrw x20, 0x14d, x30	// Write all 1s to CSR
	csrrw x20, 0x14d, x0	// Write all 0s to CSR
	csrrs x20, 0x14d, x30	// Set all CSR bits
	csrrc x20, 0x14d, x30	// Clear all CSR bits
	csrrw x20, 0x14d, x16	// Restore CSR

// Testing CSR 0x14e
	csrr x21, 0x14e	// Read CSR
	li x11, -1
	csrrw x19, 0x14e, x11	// Write all 1s to CSR
	csrrw x19, 0x14e, x0	// Write all 0s to CSR
	csrrs x19, 0x14e, x11	// Set all CSR bits
	csrrc x19, 0x14e, x11	// Clear all CSR bits
	csrrw x19, 0x14e, x21	// Restore CSR

// Testing CSR 0x14f
	csrr x12, 0x14f	// Read CSR
	li x26, -1
	csrrw x14, 0x14f, x26	// Write all 1s to CSR
	csrrw x14, 0x14f, x0	// Write all 0s to CSR
	csrrs x14, 0x14f, x26	// Set all CSR bits
	csrrc x14, 0x14f, x26	// Clear all CSR bits
	csrrw x14, 0x14f, x12	// Restore CSR

// Testing CSR 0x150
	csrr x4, 0x150	// Read CSR
	li x24, -1
	csrrw x22, 0x150, x24	// Write all 1s to CSR
	csrrw x22, 0x150, x0	// Write all 0s to CSR
	csrrs x22, 0x150, x24	// Set all CSR bits
	csrrc x22, 0x150, x24	// Clear all CSR bits
	csrrw x22, 0x150, x4	// Restore CSR

// Testing CSR 0x151
	csrr x1, 0x151	// Read CSR
	li x5, -1
	csrrw x18, 0x151, x5	// Write all 1s to CSR
	csrrw x18, 0x151, x0	// Write all 0s to CSR
	csrrs x18, 0x151, x5	// Set all CSR bits
	csrrc x18, 0x151, x5	// Clear all CSR bits
	csrrw x18, 0x151, x1	// Restore CSR

// Testing CSR 0x152
	csrr x19, 0x152	// Read CSR
	li x12, -1
	csrrw x26, 0x152, x12	// Write all 1s to CSR
	csrrw x26, 0x152, x0	// Write all 0s to CSR
	csrrs x26, 0x152, x12	// Set all CSR bits
	csrrc x26, 0x152, x12	// Clear all CSR bits
	csrrw x26, 0x152, x19	// Restore CSR

// Testing CSR 0x153
	csrr x29, 0x153	// Read CSR
	li x8, -1
	csrrw x1, 0x153, x8	// Write all 1s to CSR
	csrrw x1, 0x153, x0	// Write all 0s to CSR
	csrrs x1, 0x153, x8	// Set all CSR bits
	csrrc x1, 0x153, x8	// Clear all CSR bits
	csrrw x1, 0x153, x29	// Restore CSR

// Testing CSR 0x154
	csrr x3, 0x154	// Read CSR
	li x18, -1
	csrrw x4, 0x154, x18	// Write all 1s to CSR
	csrrw x4, 0x154, x0	// Write all 0s to CSR
	csrrs x4, 0x154, x18	// Set all CSR bits
	csrrc x4, 0x154, x18	// Clear all CSR bits
	csrrw x4, 0x154, x3	// Restore CSR

// Testing CSR 0x155
	csrr x22, 0x155	// Read CSR
	li x10, -1
	csrrw x14, 0x155, x10	// Write all 1s to CSR
	csrrw x14, 0x155, x0	// Write all 0s to CSR
	csrrs x14, 0x155, x10	// Set all CSR bits
	csrrc x14, 0x155, x10	// Clear all CSR bits
	csrrw x14, 0x155, x22	// Restore CSR

// Testing CSR 0x156
	csrr x13, 0x156	// Read CSR
	li x10, -1
	csrrw x27, 0x156, x10	// Write all 1s to CSR
	csrrw x27, 0x156, x0	// Write all 0s to CSR
	csrrs x27, 0x156, x10	// Set all CSR bits
	csrrc x27, 0x156, x10	// Clear all CSR bits
	csrrw x27, 0x156, x13	// Restore CSR

// Testing CSR 0x157
	csrr x11, 0x157	// Read CSR
	li x16, -1
	csrrw x2, 0x157, x16	// Write all 1s to CSR
	csrrw x2, 0x157, x0	// Write all 0s to CSR
	csrrs x2, 0x157, x16	// Set all CSR bits
	csrrc x2, 0x157, x16	// Clear all CSR bits
	csrrw x2, 0x157, x11	// Restore CSR

// Testing CSR 0x158
	csrr x25, 0x158	// Read CSR
	li x8, -1
	csrrw x9, 0x158, x8	// Write all 1s to CSR
	csrrw x9, 0x158, x0	// Write all 0s to CSR
	csrrs x9, 0x158, x8	// Set all CSR bits
	csrrc x9, 0x158, x8	// Clear all CSR bits
	csrrw x9, 0x158, x25	// Restore CSR

// Testing CSR 0x159
	csrr x23, 0x159	// Read CSR
	li x11, -1
	csrrw x14, 0x159, x11	// Write all 1s to CSR
	csrrw x14, 0x159, x0	// Write all 0s to CSR
	csrrs x14, 0x159, x11	// Set all CSR bits
	csrrc x14, 0x159, x11	// Clear all CSR bits
	csrrw x14, 0x159, x23	// Restore CSR

// Testing CSR 0x15a
	csrr x26, 0x15a	// Read CSR
	li x28, -1
	csrrw x11, 0x15a, x28	// Write all 1s to CSR
	csrrw x11, 0x15a, x0	// Write all 0s to CSR
	csrrs x11, 0x15a, x28	// Set all CSR bits
	csrrc x11, 0x15a, x28	// Clear all CSR bits
	csrrw x11, 0x15a, x26	// Restore CSR

// Testing CSR 0x15b
	csrr x2, 0x15b	// Read CSR
	li x3, -1
	csrrw x11, 0x15b, x3	// Write all 1s to CSR
	csrrw x11, 0x15b, x0	// Write all 0s to CSR
	csrrs x11, 0x15b, x3	// Set all CSR bits
	csrrc x11, 0x15b, x3	// Clear all CSR bits
	csrrw x11, 0x15b, x2	// Restore CSR

// Testing CSR 0x15c
	csrr x28, 0x15c	// Read CSR
	li x19, -1
	csrrw x27, 0x15c, x19	// Write all 1s to CSR
	csrrw x27, 0x15c, x0	// Write all 0s to CSR
	csrrs x27, 0x15c, x19	// Set all CSR bits
	csrrc x27, 0x15c, x19	// Clear all CSR bits
	csrrw x27, 0x15c, x28	// Restore CSR

// Testing CSR 0x15d
	csrr x5, 0x15d	// Read CSR
	li x24, -1
	csrrw x2, 0x15d, x24	// Write all 1s to CSR
	csrrw x2, 0x15d, x0	// Write all 0s to CSR
	csrrs x2, 0x15d, x24	// Set all CSR bits
	csrrc x2, 0x15d, x24	// Clear all CSR bits
	csrrw x2, 0x15d, x5	// Restore CSR

// Testing CSR 0x15e
	csrr x29, 0x15e	// Read CSR
	li x30, -1
	csrrw x10, 0x15e, x30	// Write all 1s to CSR
	csrrw x10, 0x15e, x0	// Write all 0s to CSR
	csrrs x10, 0x15e, x30	// Set all CSR bits
	csrrc x10, 0x15e, x30	// Clear all CSR bits
	csrrw x10, 0x15e, x29	// Restore CSR

// Testing CSR 0x15f
	csrr x19, 0x15f	// Read CSR
	li x25, -1
	csrrw x9, 0x15f, x25	// Write all 1s to CSR
	csrrw x9, 0x15f, x0	// Write all 0s to CSR
	csrrs x9, 0x15f, x25	// Set all CSR bits
	csrrc x9, 0x15f, x25	// Clear all CSR bits
	csrrw x9, 0x15f, x19	// Restore CSR

// Testing CSR 0x160
	csrr x29, 0x160	// Read CSR
	li x26, -1
	csrrw x20, 0x160, x26	// Write all 1s to CSR
	csrrw x20, 0x160, x0	// Write all 0s to CSR
	csrrs x20, 0x160, x26	// Set all CSR bits
	csrrc x20, 0x160, x26	// Clear all CSR bits
	csrrw x20, 0x160, x29	// Restore CSR

// Testing CSR 0x161
	csrr x28, 0x161	// Read CSR
	li x26, -1
	csrrw x24, 0x161, x26	// Write all 1s to CSR
	csrrw x24, 0x161, x0	// Write all 0s to CSR
	csrrs x24, 0x161, x26	// Set all CSR bits
	csrrc x24, 0x161, x26	// Clear all CSR bits
	csrrw x24, 0x161, x28	// Restore CSR

// Testing CSR 0x162
	csrr x27, 0x162	// Read CSR
	li x8, -1
	csrrw x21, 0x162, x8	// Write all 1s to CSR
	csrrw x21, 0x162, x0	// Write all 0s to CSR
	csrrs x21, 0x162, x8	// Set all CSR bits
	csrrc x21, 0x162, x8	// Clear all CSR bits
	csrrw x21, 0x162, x27	// Restore CSR

// Testing CSR 0x163
	csrr x17, 0x163	// Read CSR
	li x26, -1
	csrrw x11, 0x163, x26	// Write all 1s to CSR
	csrrw x11, 0x163, x0	// Write all 0s to CSR
	csrrs x11, 0x163, x26	// Set all CSR bits
	csrrc x11, 0x163, x26	// Clear all CSR bits
	csrrw x11, 0x163, x17	// Restore CSR

// Testing CSR 0x164
	csrr x29, 0x164	// Read CSR
	li x18, -1
	csrrw x7, 0x164, x18	// Write all 1s to CSR
	csrrw x7, 0x164, x0	// Write all 0s to CSR
	csrrs x7, 0x164, x18	// Set all CSR bits
	csrrc x7, 0x164, x18	// Clear all CSR bits
	csrrw x7, 0x164, x29	// Restore CSR

// Testing CSR 0x165
	csrr x27, 0x165	// Read CSR
	li x7, -1
	csrrw x5, 0x165, x7	// Write all 1s to CSR
	csrrw x5, 0x165, x0	// Write all 0s to CSR
	csrrs x5, 0x165, x7	// Set all CSR bits
	csrrc x5, 0x165, x7	// Clear all CSR bits
	csrrw x5, 0x165, x27	// Restore CSR

// Testing CSR 0x166
	csrr x20, 0x166	// Read CSR
	li x15, -1
	csrrw x29, 0x166, x15	// Write all 1s to CSR
	csrrw x29, 0x166, x0	// Write all 0s to CSR
	csrrs x29, 0x166, x15	// Set all CSR bits
	csrrc x29, 0x166, x15	// Clear all CSR bits
	csrrw x29, 0x166, x20	// Restore CSR

// Testing CSR 0x167
	csrr x13, 0x167	// Read CSR
	li x27, -1
	csrrw x23, 0x167, x27	// Write all 1s to CSR
	csrrw x23, 0x167, x0	// Write all 0s to CSR
	csrrs x23, 0x167, x27	// Set all CSR bits
	csrrc x23, 0x167, x27	// Clear all CSR bits
	csrrw x23, 0x167, x13	// Restore CSR

// Testing CSR 0x168
	csrr x5, 0x168	// Read CSR
	li x3, -1
	csrrw x9, 0x168, x3	// Write all 1s to CSR
	csrrw x9, 0x168, x0	// Write all 0s to CSR
	csrrs x9, 0x168, x3	// Set all CSR bits
	csrrc x9, 0x168, x3	// Clear all CSR bits
	csrrw x9, 0x168, x5	// Restore CSR

// Testing CSR 0x169
	csrr x24, 0x169	// Read CSR
	li x30, -1
	csrrw x31, 0x169, x30	// Write all 1s to CSR
	csrrw x31, 0x169, x0	// Write all 0s to CSR
	csrrs x31, 0x169, x30	// Set all CSR bits
	csrrc x31, 0x169, x30	// Clear all CSR bits
	csrrw x31, 0x169, x24	// Restore CSR

// Testing CSR 0x16a
	csrr x24, 0x16a	// Read CSR
	li x28, -1
	csrrw x13, 0x16a, x28	// Write all 1s to CSR
	csrrw x13, 0x16a, x0	// Write all 0s to CSR
	csrrs x13, 0x16a, x28	// Set all CSR bits
	csrrc x13, 0x16a, x28	// Clear all CSR bits
	csrrw x13, 0x16a, x24	// Restore CSR

// Testing CSR 0x16b
	csrr x11, 0x16b	// Read CSR
	li x22, -1
	csrrw x10, 0x16b, x22	// Write all 1s to CSR
	csrrw x10, 0x16b, x0	// Write all 0s to CSR
	csrrs x10, 0x16b, x22	// Set all CSR bits
	csrrc x10, 0x16b, x22	// Clear all CSR bits
	csrrw x10, 0x16b, x11	// Restore CSR

// Testing CSR 0x16c
	csrr x21, 0x16c	// Read CSR
	li x29, -1
	csrrw x14, 0x16c, x29	// Write all 1s to CSR
	csrrw x14, 0x16c, x0	// Write all 0s to CSR
	csrrs x14, 0x16c, x29	// Set all CSR bits
	csrrc x14, 0x16c, x29	// Clear all CSR bits
	csrrw x14, 0x16c, x21	// Restore CSR

// Testing CSR 0x16d
	csrr x11, 0x16d	// Read CSR
	li x29, -1
	csrrw x31, 0x16d, x29	// Write all 1s to CSR
	csrrw x31, 0x16d, x0	// Write all 0s to CSR
	csrrs x31, 0x16d, x29	// Set all CSR bits
	csrrc x31, 0x16d, x29	// Clear all CSR bits
	csrrw x31, 0x16d, x11	// Restore CSR

// Testing CSR 0x16e
	csrr x26, 0x16e	// Read CSR
	li x21, -1
	csrrw x31, 0x16e, x21	// Write all 1s to CSR
	csrrw x31, 0x16e, x0	// Write all 0s to CSR
	csrrs x31, 0x16e, x21	// Set all CSR bits
	csrrc x31, 0x16e, x21	// Clear all CSR bits
	csrrw x31, 0x16e, x26	// Restore CSR

// Testing CSR 0x16f
	csrr x7, 0x16f	// Read CSR
	li x21, -1
	csrrw x28, 0x16f, x21	// Write all 1s to CSR
	csrrw x28, 0x16f, x0	// Write all 0s to CSR
	csrrs x28, 0x16f, x21	// Set all CSR bits
	csrrc x28, 0x16f, x21	// Clear all CSR bits
	csrrw x28, 0x16f, x7	// Restore CSR

// Testing CSR 0x170
	csrr x1, 0x170	// Read CSR
	li x26, -1
	csrrw x25, 0x170, x26	// Write all 1s to CSR
	csrrw x25, 0x170, x0	// Write all 0s to CSR
	csrrs x25, 0x170, x26	// Set all CSR bits
	csrrc x25, 0x170, x26	// Clear all CSR bits
	csrrw x25, 0x170, x1	// Restore CSR

// Testing CSR 0x171
	csrr x29, 0x171	// Read CSR
	li x26, -1
	csrrw x21, 0x171, x26	// Write all 1s to CSR
	csrrw x21, 0x171, x0	// Write all 0s to CSR
	csrrs x21, 0x171, x26	// Set all CSR bits
	csrrc x21, 0x171, x26	// Clear all CSR bits
	csrrw x21, 0x171, x29	// Restore CSR

// Testing CSR 0x172
	csrr x14, 0x172	// Read CSR
	li x5, -1
	csrrw x11, 0x172, x5	// Write all 1s to CSR
	csrrw x11, 0x172, x0	// Write all 0s to CSR
	csrrs x11, 0x172, x5	// Set all CSR bits
	csrrc x11, 0x172, x5	// Clear all CSR bits
	csrrw x11, 0x172, x14	// Restore CSR

// Testing CSR 0x173
	csrr x3, 0x173	// Read CSR
	li x31, -1
	csrrw x5, 0x173, x31	// Write all 1s to CSR
	csrrw x5, 0x173, x0	// Write all 0s to CSR
	csrrs x5, 0x173, x31	// Set all CSR bits
	csrrc x5, 0x173, x31	// Clear all CSR bits
	csrrw x5, 0x173, x3	// Restore CSR

// Testing CSR 0x174
	csrr x8, 0x174	// Read CSR
	li x17, -1
	csrrw x5, 0x174, x17	// Write all 1s to CSR
	csrrw x5, 0x174, x0	// Write all 0s to CSR
	csrrs x5, 0x174, x17	// Set all CSR bits
	csrrc x5, 0x174, x17	// Clear all CSR bits
	csrrw x5, 0x174, x8	// Restore CSR

// Testing CSR 0x175
	csrr x16, 0x175	// Read CSR
	li x10, -1
	csrrw x19, 0x175, x10	// Write all 1s to CSR
	csrrw x19, 0x175, x0	// Write all 0s to CSR
	csrrs x19, 0x175, x10	// Set all CSR bits
	csrrc x19, 0x175, x10	// Clear all CSR bits
	csrrw x19, 0x175, x16	// Restore CSR

// Testing CSR 0x176
	csrr x2, 0x176	// Read CSR
	li x15, -1
	csrrw x31, 0x176, x15	// Write all 1s to CSR
	csrrw x31, 0x176, x0	// Write all 0s to CSR
	csrrs x31, 0x176, x15	// Set all CSR bits
	csrrc x31, 0x176, x15	// Clear all CSR bits
	csrrw x31, 0x176, x2	// Restore CSR

// Testing CSR 0x177
	csrr x23, 0x177	// Read CSR
	li x15, -1
	csrrw x18, 0x177, x15	// Write all 1s to CSR
	csrrw x18, 0x177, x0	// Write all 0s to CSR
	csrrs x18, 0x177, x15	// Set all CSR bits
	csrrc x18, 0x177, x15	// Clear all CSR bits
	csrrw x18, 0x177, x23	// Restore CSR

// Testing CSR 0x178
	csrr x5, 0x178	// Read CSR
	li x21, -1
	csrrw x17, 0x178, x21	// Write all 1s to CSR
	csrrw x17, 0x178, x0	// Write all 0s to CSR
	csrrs x17, 0x178, x21	// Set all CSR bits
	csrrc x17, 0x178, x21	// Clear all CSR bits
	csrrw x17, 0x178, x5	// Restore CSR

// Testing CSR 0x179
	csrr x28, 0x179	// Read CSR
	li x13, -1
	csrrw x3, 0x179, x13	// Write all 1s to CSR
	csrrw x3, 0x179, x0	// Write all 0s to CSR
	csrrs x3, 0x179, x13	// Set all CSR bits
	csrrc x3, 0x179, x13	// Clear all CSR bits
	csrrw x3, 0x179, x28	// Restore CSR

// Testing CSR 0x17a
	csrr x20, 0x17a	// Read CSR
	li x28, -1
	csrrw x8, 0x17a, x28	// Write all 1s to CSR
	csrrw x8, 0x17a, x0	// Write all 0s to CSR
	csrrs x8, 0x17a, x28	// Set all CSR bits
	csrrc x8, 0x17a, x28	// Clear all CSR bits
	csrrw x8, 0x17a, x20	// Restore CSR

// Testing CSR 0x17b
	csrr x27, 0x17b	// Read CSR
	li x29, -1
	csrrw x15, 0x17b, x29	// Write all 1s to CSR
	csrrw x15, 0x17b, x0	// Write all 0s to CSR
	csrrs x15, 0x17b, x29	// Set all CSR bits
	csrrc x15, 0x17b, x29	// Clear all CSR bits
	csrrw x15, 0x17b, x27	// Restore CSR

// Testing CSR 0x17c
	csrr x21, 0x17c	// Read CSR
	li x14, -1
	csrrw x18, 0x17c, x14	// Write all 1s to CSR
	csrrw x18, 0x17c, x0	// Write all 0s to CSR
	csrrs x18, 0x17c, x14	// Set all CSR bits
	csrrc x18, 0x17c, x14	// Clear all CSR bits
	csrrw x18, 0x17c, x21	// Restore CSR

// Testing CSR 0x17d
	csrr x11, 0x17d	// Read CSR
	li x18, -1
	csrrw x8, 0x17d, x18	// Write all 1s to CSR
	csrrw x8, 0x17d, x0	// Write all 0s to CSR
	csrrs x8, 0x17d, x18	// Set all CSR bits
	csrrc x8, 0x17d, x18	// Clear all CSR bits
	csrrw x8, 0x17d, x11	// Restore CSR

// Testing CSR 0x17e
	csrr x2, 0x17e	// Read CSR
	li x27, -1
	csrrw x29, 0x17e, x27	// Write all 1s to CSR
	csrrw x29, 0x17e, x0	// Write all 0s to CSR
	csrrs x29, 0x17e, x27	// Set all CSR bits
	csrrc x29, 0x17e, x27	// Clear all CSR bits
	csrrw x29, 0x17e, x2	// Restore CSR

// Testing CSR 0x17f
	csrr x1, 0x17f	// Read CSR
	li x9, -1
	csrrw x20, 0x17f, x9	// Write all 1s to CSR
	csrrw x20, 0x17f, x0	// Write all 0s to CSR
	csrrs x20, 0x17f, x9	// Set all CSR bits
	csrrc x20, 0x17f, x9	// Clear all CSR bits
	csrrw x20, 0x17f, x1	// Restore CSR

// Testing CSR 0x181
	csrr x13, 0x181	// Read CSR
	li x23, -1
	csrrw x5, 0x181, x23	// Write all 1s to CSR
	csrrw x5, 0x181, x0	// Write all 0s to CSR
	csrrs x5, 0x181, x23	// Set all CSR bits
	csrrc x5, 0x181, x23	// Clear all CSR bits
	csrrw x5, 0x181, x13	// Restore CSR

// Testing CSR 0x182
	csrr x8, 0x182	// Read CSR
	li x26, -1
	csrrw x21, 0x182, x26	// Write all 1s to CSR
	csrrw x21, 0x182, x0	// Write all 0s to CSR
	csrrs x21, 0x182, x26	// Set all CSR bits
	csrrc x21, 0x182, x26	// Clear all CSR bits
	csrrw x21, 0x182, x8	// Restore CSR

// Testing CSR 0x183
	csrr x29, 0x183	// Read CSR
	li x28, -1
	csrrw x20, 0x183, x28	// Write all 1s to CSR
	csrrw x20, 0x183, x0	// Write all 0s to CSR
	csrrs x20, 0x183, x28	// Set all CSR bits
	csrrc x20, 0x183, x28	// Clear all CSR bits
	csrrw x20, 0x183, x29	// Restore CSR

// Testing CSR 0x184
	csrr x14, 0x184	// Read CSR
	li x28, -1
	csrrw x20, 0x184, x28	// Write all 1s to CSR
	csrrw x20, 0x184, x0	// Write all 0s to CSR
	csrrs x20, 0x184, x28	// Set all CSR bits
	csrrc x20, 0x184, x28	// Clear all CSR bits
	csrrw x20, 0x184, x14	// Restore CSR

// Testing CSR 0x185
	csrr x28, 0x185	// Read CSR
	li x17, -1
	csrrw x31, 0x185, x17	// Write all 1s to CSR
	csrrw x31, 0x185, x0	// Write all 0s to CSR
	csrrs x31, 0x185, x17	// Set all CSR bits
	csrrc x31, 0x185, x17	// Clear all CSR bits
	csrrw x31, 0x185, x28	// Restore CSR

// Testing CSR 0x186
	csrr x28, 0x186	// Read CSR
	li x25, -1
	csrrw x6, 0x186, x25	// Write all 1s to CSR
	csrrw x6, 0x186, x0	// Write all 0s to CSR
	csrrs x6, 0x186, x25	// Set all CSR bits
	csrrc x6, 0x186, x25	// Clear all CSR bits
	csrrw x6, 0x186, x28	// Restore CSR

// Testing CSR 0x187
	csrr x31, 0x187	// Read CSR
	li x5, -1
	csrrw x22, 0x187, x5	// Write all 1s to CSR
	csrrw x22, 0x187, x0	// Write all 0s to CSR
	csrrs x22, 0x187, x5	// Set all CSR bits
	csrrc x22, 0x187, x5	// Clear all CSR bits
	csrrw x22, 0x187, x31	// Restore CSR

// Testing CSR 0x188
	csrr x2, 0x188	// Read CSR
	li x24, -1
	csrrw x8, 0x188, x24	// Write all 1s to CSR
	csrrw x8, 0x188, x0	// Write all 0s to CSR
	csrrs x8, 0x188, x24	// Set all CSR bits
	csrrc x8, 0x188, x24	// Clear all CSR bits
	csrrw x8, 0x188, x2	// Restore CSR

// Testing CSR 0x189
	csrr x30, 0x189	// Read CSR
	li x31, -1
	csrrw x4, 0x189, x31	// Write all 1s to CSR
	csrrw x4, 0x189, x0	// Write all 0s to CSR
	csrrs x4, 0x189, x31	// Set all CSR bits
	csrrc x4, 0x189, x31	// Clear all CSR bits
	csrrw x4, 0x189, x30	// Restore CSR

// Testing CSR 0x18a
	csrr x19, 0x18a	// Read CSR
	li x1, -1
	csrrw x8, 0x18a, x1	// Write all 1s to CSR
	csrrw x8, 0x18a, x0	// Write all 0s to CSR
	csrrs x8, 0x18a, x1	// Set all CSR bits
	csrrc x8, 0x18a, x1	// Clear all CSR bits
	csrrw x8, 0x18a, x19	// Restore CSR

// Testing CSR 0x18b
	csrr x19, 0x18b	// Read CSR
	li x4, -1
	csrrw x31, 0x18b, x4	// Write all 1s to CSR
	csrrw x31, 0x18b, x0	// Write all 0s to CSR
	csrrs x31, 0x18b, x4	// Set all CSR bits
	csrrc x31, 0x18b, x4	// Clear all CSR bits
	csrrw x31, 0x18b, x19	// Restore CSR

// Testing CSR 0x18c
	csrr x3, 0x18c	// Read CSR
	li x21, -1
	csrrw x2, 0x18c, x21	// Write all 1s to CSR
	csrrw x2, 0x18c, x0	// Write all 0s to CSR
	csrrs x2, 0x18c, x21	// Set all CSR bits
	csrrc x2, 0x18c, x21	// Clear all CSR bits
	csrrw x2, 0x18c, x3	// Restore CSR

// Testing CSR 0x18d
	csrr x7, 0x18d	// Read CSR
	li x8, -1
	csrrw x5, 0x18d, x8	// Write all 1s to CSR
	csrrw x5, 0x18d, x0	// Write all 0s to CSR
	csrrs x5, 0x18d, x8	// Set all CSR bits
	csrrc x5, 0x18d, x8	// Clear all CSR bits
	csrrw x5, 0x18d, x7	// Restore CSR

// Testing CSR 0x18e
	csrr x7, 0x18e	// Read CSR
	li x11, -1
	csrrw x14, 0x18e, x11	// Write all 1s to CSR
	csrrw x14, 0x18e, x0	// Write all 0s to CSR
	csrrs x14, 0x18e, x11	// Set all CSR bits
	csrrc x14, 0x18e, x11	// Clear all CSR bits
	csrrw x14, 0x18e, x7	// Restore CSR

// Testing CSR 0x18f
	csrr x17, 0x18f	// Read CSR
	li x30, -1
	csrrw x14, 0x18f, x30	// Write all 1s to CSR
	csrrw x14, 0x18f, x0	// Write all 0s to CSR
	csrrs x14, 0x18f, x30	// Set all CSR bits
	csrrc x14, 0x18f, x30	// Clear all CSR bits
	csrrw x14, 0x18f, x17	// Restore CSR

// Testing CSR 0x190
	csrr x3, 0x190	// Read CSR
	li x12, -1
	csrrw x19, 0x190, x12	// Write all 1s to CSR
	csrrw x19, 0x190, x0	// Write all 0s to CSR
	csrrs x19, 0x190, x12	// Set all CSR bits
	csrrc x19, 0x190, x12	// Clear all CSR bits
	csrrw x19, 0x190, x3	// Restore CSR

// Testing CSR 0x191
	csrr x3, 0x191	// Read CSR
	li x11, -1
	csrrw x21, 0x191, x11	// Write all 1s to CSR
	csrrw x21, 0x191, x0	// Write all 0s to CSR
	csrrs x21, 0x191, x11	// Set all CSR bits
	csrrc x21, 0x191, x11	// Clear all CSR bits
	csrrw x21, 0x191, x3	// Restore CSR

// Testing CSR 0x192
	csrr x26, 0x192	// Read CSR
	li x13, -1
	csrrw x4, 0x192, x13	// Write all 1s to CSR
	csrrw x4, 0x192, x0	// Write all 0s to CSR
	csrrs x4, 0x192, x13	// Set all CSR bits
	csrrc x4, 0x192, x13	// Clear all CSR bits
	csrrw x4, 0x192, x26	// Restore CSR

// Testing CSR 0x193
	csrr x17, 0x193	// Read CSR
	li x11, -1
	csrrw x2, 0x193, x11	// Write all 1s to CSR
	csrrw x2, 0x193, x0	// Write all 0s to CSR
	csrrs x2, 0x193, x11	// Set all CSR bits
	csrrc x2, 0x193, x11	// Clear all CSR bits
	csrrw x2, 0x193, x17	// Restore CSR

// Testing CSR 0x194
	csrr x3, 0x194	// Read CSR
	li x2, -1
	csrrw x10, 0x194, x2	// Write all 1s to CSR
	csrrw x10, 0x194, x0	// Write all 0s to CSR
	csrrs x10, 0x194, x2	// Set all CSR bits
	csrrc x10, 0x194, x2	// Clear all CSR bits
	csrrw x10, 0x194, x3	// Restore CSR

// Testing CSR 0x195
	csrr x10, 0x195	// Read CSR
	li x23, -1
	csrrw x2, 0x195, x23	// Write all 1s to CSR
	csrrw x2, 0x195, x0	// Write all 0s to CSR
	csrrs x2, 0x195, x23	// Set all CSR bits
	csrrc x2, 0x195, x23	// Clear all CSR bits
	csrrw x2, 0x195, x10	// Restore CSR

// Testing CSR 0x196
	csrr x26, 0x196	// Read CSR
	li x29, -1
	csrrw x6, 0x196, x29	// Write all 1s to CSR
	csrrw x6, 0x196, x0	// Write all 0s to CSR
	csrrs x6, 0x196, x29	// Set all CSR bits
	csrrc x6, 0x196, x29	// Clear all CSR bits
	csrrw x6, 0x196, x26	// Restore CSR

// Testing CSR 0x197
	csrr x4, 0x197	// Read CSR
	li x12, -1
	csrrw x31, 0x197, x12	// Write all 1s to CSR
	csrrw x31, 0x197, x0	// Write all 0s to CSR
	csrrs x31, 0x197, x12	// Set all CSR bits
	csrrc x31, 0x197, x12	// Clear all CSR bits
	csrrw x31, 0x197, x4	// Restore CSR

// Testing CSR 0x198
	csrr x12, 0x198	// Read CSR
	li x10, -1
	csrrw x6, 0x198, x10	// Write all 1s to CSR
	csrrw x6, 0x198, x0	// Write all 0s to CSR
	csrrs x6, 0x198, x10	// Set all CSR bits
	csrrc x6, 0x198, x10	// Clear all CSR bits
	csrrw x6, 0x198, x12	// Restore CSR

// Testing CSR 0x199
	csrr x15, 0x199	// Read CSR
	li x22, -1
	csrrw x14, 0x199, x22	// Write all 1s to CSR
	csrrw x14, 0x199, x0	// Write all 0s to CSR
	csrrs x14, 0x199, x22	// Set all CSR bits
	csrrc x14, 0x199, x22	// Clear all CSR bits
	csrrw x14, 0x199, x15	// Restore CSR

// Testing CSR 0x19a
	csrr x25, 0x19a	// Read CSR
	li x7, -1
	csrrw x21, 0x19a, x7	// Write all 1s to CSR
	csrrw x21, 0x19a, x0	// Write all 0s to CSR
	csrrs x21, 0x19a, x7	// Set all CSR bits
	csrrc x21, 0x19a, x7	// Clear all CSR bits
	csrrw x21, 0x19a, x25	// Restore CSR

// Testing CSR 0x19b
	csrr x24, 0x19b	// Read CSR
	li x8, -1
	csrrw x3, 0x19b, x8	// Write all 1s to CSR
	csrrw x3, 0x19b, x0	// Write all 0s to CSR
	csrrs x3, 0x19b, x8	// Set all CSR bits
	csrrc x3, 0x19b, x8	// Clear all CSR bits
	csrrw x3, 0x19b, x24	// Restore CSR

// Testing CSR 0x19c
	csrr x4, 0x19c	// Read CSR
	li x14, -1
	csrrw x6, 0x19c, x14	// Write all 1s to CSR
	csrrw x6, 0x19c, x0	// Write all 0s to CSR
	csrrs x6, 0x19c, x14	// Set all CSR bits
	csrrc x6, 0x19c, x14	// Clear all CSR bits
	csrrw x6, 0x19c, x4	// Restore CSR

// Testing CSR 0x19d
	csrr x16, 0x19d	// Read CSR
	li x19, -1
	csrrw x31, 0x19d, x19	// Write all 1s to CSR
	csrrw x31, 0x19d, x0	// Write all 0s to CSR
	csrrs x31, 0x19d, x19	// Set all CSR bits
	csrrc x31, 0x19d, x19	// Clear all CSR bits
	csrrw x31, 0x19d, x16	// Restore CSR

// Testing CSR 0x19e
	csrr x17, 0x19e	// Read CSR
	li x15, -1
	csrrw x29, 0x19e, x15	// Write all 1s to CSR
	csrrw x29, 0x19e, x0	// Write all 0s to CSR
	csrrs x29, 0x19e, x15	// Set all CSR bits
	csrrc x29, 0x19e, x15	// Clear all CSR bits
	csrrw x29, 0x19e, x17	// Restore CSR

// Testing CSR 0x19f
	csrr x18, 0x19f	// Read CSR
	li x23, -1
	csrrw x17, 0x19f, x23	// Write all 1s to CSR
	csrrw x17, 0x19f, x0	// Write all 0s to CSR
	csrrs x17, 0x19f, x23	// Set all CSR bits
	csrrc x17, 0x19f, x23	// Clear all CSR bits
	csrrw x17, 0x19f, x18	// Restore CSR

// Testing CSR 0x1a0
	csrr x30, 0x1a0	// Read CSR
	li x6, -1
	csrrw x25, 0x1a0, x6	// Write all 1s to CSR
	csrrw x25, 0x1a0, x0	// Write all 0s to CSR
	csrrs x25, 0x1a0, x6	// Set all CSR bits
	csrrc x25, 0x1a0, x6	// Clear all CSR bits
	csrrw x25, 0x1a0, x30	// Restore CSR

// Testing CSR 0x1a1
	csrr x1, 0x1a1	// Read CSR
	li x23, -1
	csrrw x29, 0x1a1, x23	// Write all 1s to CSR
	csrrw x29, 0x1a1, x0	// Write all 0s to CSR
	csrrs x29, 0x1a1, x23	// Set all CSR bits
	csrrc x29, 0x1a1, x23	// Clear all CSR bits
	csrrw x29, 0x1a1, x1	// Restore CSR

// Testing CSR 0x1a2
	csrr x31, 0x1a2	// Read CSR
	li x30, -1
	csrrw x4, 0x1a2, x30	// Write all 1s to CSR
	csrrw x4, 0x1a2, x0	// Write all 0s to CSR
	csrrs x4, 0x1a2, x30	// Set all CSR bits
	csrrc x4, 0x1a2, x30	// Clear all CSR bits
	csrrw x4, 0x1a2, x31	// Restore CSR

// Testing CSR 0x1a3
	csrr x1, 0x1a3	// Read CSR
	li x16, -1
	csrrw x5, 0x1a3, x16	// Write all 1s to CSR
	csrrw x5, 0x1a3, x0	// Write all 0s to CSR
	csrrs x5, 0x1a3, x16	// Set all CSR bits
	csrrc x5, 0x1a3, x16	// Clear all CSR bits
	csrrw x5, 0x1a3, x1	// Restore CSR

// Testing CSR 0x1a4
	csrr x7, 0x1a4	// Read CSR
	li x29, -1
	csrrw x11, 0x1a4, x29	// Write all 1s to CSR
	csrrw x11, 0x1a4, x0	// Write all 0s to CSR
	csrrs x11, 0x1a4, x29	// Set all CSR bits
	csrrc x11, 0x1a4, x29	// Clear all CSR bits
	csrrw x11, 0x1a4, x7	// Restore CSR

// Testing CSR 0x1a5
	csrr x19, 0x1a5	// Read CSR
	li x2, -1
	csrrw x3, 0x1a5, x2	// Write all 1s to CSR
	csrrw x3, 0x1a5, x0	// Write all 0s to CSR
	csrrs x3, 0x1a5, x2	// Set all CSR bits
	csrrc x3, 0x1a5, x2	// Clear all CSR bits
	csrrw x3, 0x1a5, x19	// Restore CSR

// Testing CSR 0x1a6
	csrr x17, 0x1a6	// Read CSR
	li x26, -1
	csrrw x9, 0x1a6, x26	// Write all 1s to CSR
	csrrw x9, 0x1a6, x0	// Write all 0s to CSR
	csrrs x9, 0x1a6, x26	// Set all CSR bits
	csrrc x9, 0x1a6, x26	// Clear all CSR bits
	csrrw x9, 0x1a6, x17	// Restore CSR

// Testing CSR 0x1a7
	csrr x5, 0x1a7	// Read CSR
	li x9, -1
	csrrw x11, 0x1a7, x9	// Write all 1s to CSR
	csrrw x11, 0x1a7, x0	// Write all 0s to CSR
	csrrs x11, 0x1a7, x9	// Set all CSR bits
	csrrc x11, 0x1a7, x9	// Clear all CSR bits
	csrrw x11, 0x1a7, x5	// Restore CSR

// Testing CSR 0x1a8
	csrr x14, 0x1a8	// Read CSR
	li x4, -1
	csrrw x24, 0x1a8, x4	// Write all 1s to CSR
	csrrw x24, 0x1a8, x0	// Write all 0s to CSR
	csrrs x24, 0x1a8, x4	// Set all CSR bits
	csrrc x24, 0x1a8, x4	// Clear all CSR bits
	csrrw x24, 0x1a8, x14	// Restore CSR

// Testing CSR 0x1a9
	csrr x28, 0x1a9	// Read CSR
	li x13, -1
	csrrw x23, 0x1a9, x13	// Write all 1s to CSR
	csrrw x23, 0x1a9, x0	// Write all 0s to CSR
	csrrs x23, 0x1a9, x13	// Set all CSR bits
	csrrc x23, 0x1a9, x13	// Clear all CSR bits
	csrrw x23, 0x1a9, x28	// Restore CSR

// Testing CSR 0x1aa
	csrr x1, 0x1aa	// Read CSR
	li x24, -1
	csrrw x10, 0x1aa, x24	// Write all 1s to CSR
	csrrw x10, 0x1aa, x0	// Write all 0s to CSR
	csrrs x10, 0x1aa, x24	// Set all CSR bits
	csrrc x10, 0x1aa, x24	// Clear all CSR bits
	csrrw x10, 0x1aa, x1	// Restore CSR

// Testing CSR 0x1ab
	csrr x18, 0x1ab	// Read CSR
	li x30, -1
	csrrw x23, 0x1ab, x30	// Write all 1s to CSR
	csrrw x23, 0x1ab, x0	// Write all 0s to CSR
	csrrs x23, 0x1ab, x30	// Set all CSR bits
	csrrc x23, 0x1ab, x30	// Clear all CSR bits
	csrrw x23, 0x1ab, x18	// Restore CSR

// Testing CSR 0x1ac
	csrr x10, 0x1ac	// Read CSR
	li x14, -1
	csrrw x20, 0x1ac, x14	// Write all 1s to CSR
	csrrw x20, 0x1ac, x0	// Write all 0s to CSR
	csrrs x20, 0x1ac, x14	// Set all CSR bits
	csrrc x20, 0x1ac, x14	// Clear all CSR bits
	csrrw x20, 0x1ac, x10	// Restore CSR

// Testing CSR 0x1ad
	csrr x11, 0x1ad	// Read CSR
	li x16, -1
	csrrw x23, 0x1ad, x16	// Write all 1s to CSR
	csrrw x23, 0x1ad, x0	// Write all 0s to CSR
	csrrs x23, 0x1ad, x16	// Set all CSR bits
	csrrc x23, 0x1ad, x16	// Clear all CSR bits
	csrrw x23, 0x1ad, x11	// Restore CSR

// Testing CSR 0x1ae
	csrr x10, 0x1ae	// Read CSR
	li x2, -1
	csrrw x28, 0x1ae, x2	// Write all 1s to CSR
	csrrw x28, 0x1ae, x0	// Write all 0s to CSR
	csrrs x28, 0x1ae, x2	// Set all CSR bits
	csrrc x28, 0x1ae, x2	// Clear all CSR bits
	csrrw x28, 0x1ae, x10	// Restore CSR

// Testing CSR 0x1af
	csrr x1, 0x1af	// Read CSR
	li x16, -1
	csrrw x24, 0x1af, x16	// Write all 1s to CSR
	csrrw x24, 0x1af, x0	// Write all 0s to CSR
	csrrs x24, 0x1af, x16	// Set all CSR bits
	csrrc x24, 0x1af, x16	// Clear all CSR bits
	csrrw x24, 0x1af, x1	// Restore CSR

// Testing CSR 0x1b0
	csrr x5, 0x1b0	// Read CSR
	li x4, -1
	csrrw x22, 0x1b0, x4	// Write all 1s to CSR
	csrrw x22, 0x1b0, x0	// Write all 0s to CSR
	csrrs x22, 0x1b0, x4	// Set all CSR bits
	csrrc x22, 0x1b0, x4	// Clear all CSR bits
	csrrw x22, 0x1b0, x5	// Restore CSR

// Testing CSR 0x1b1
	csrr x2, 0x1b1	// Read CSR
	li x7, -1
	csrrw x9, 0x1b1, x7	// Write all 1s to CSR
	csrrw x9, 0x1b1, x0	// Write all 0s to CSR
	csrrs x9, 0x1b1, x7	// Set all CSR bits
	csrrc x9, 0x1b1, x7	// Clear all CSR bits
	csrrw x9, 0x1b1, x2	// Restore CSR

// Testing CSR 0x1b2
	csrr x8, 0x1b2	// Read CSR
	li x4, -1
	csrrw x21, 0x1b2, x4	// Write all 1s to CSR
	csrrw x21, 0x1b2, x0	// Write all 0s to CSR
	csrrs x21, 0x1b2, x4	// Set all CSR bits
	csrrc x21, 0x1b2, x4	// Clear all CSR bits
	csrrw x21, 0x1b2, x8	// Restore CSR

// Testing CSR 0x1b3
	csrr x17, 0x1b3	// Read CSR
	li x8, -1
	csrrw x30, 0x1b3, x8	// Write all 1s to CSR
	csrrw x30, 0x1b3, x0	// Write all 0s to CSR
	csrrs x30, 0x1b3, x8	// Set all CSR bits
	csrrc x30, 0x1b3, x8	// Clear all CSR bits
	csrrw x30, 0x1b3, x17	// Restore CSR

// Testing CSR 0x1b4
	csrr x23, 0x1b4	// Read CSR
	li x7, -1
	csrrw x17, 0x1b4, x7	// Write all 1s to CSR
	csrrw x17, 0x1b4, x0	// Write all 0s to CSR
	csrrs x17, 0x1b4, x7	// Set all CSR bits
	csrrc x17, 0x1b4, x7	// Clear all CSR bits
	csrrw x17, 0x1b4, x23	// Restore CSR

// Testing CSR 0x1b5
	csrr x10, 0x1b5	// Read CSR
	li x14, -1
	csrrw x26, 0x1b5, x14	// Write all 1s to CSR
	csrrw x26, 0x1b5, x0	// Write all 0s to CSR
	csrrs x26, 0x1b5, x14	// Set all CSR bits
	csrrc x26, 0x1b5, x14	// Clear all CSR bits
	csrrw x26, 0x1b5, x10	// Restore CSR

// Testing CSR 0x1b6
	csrr x27, 0x1b6	// Read CSR
	li x15, -1
	csrrw x29, 0x1b6, x15	// Write all 1s to CSR
	csrrw x29, 0x1b6, x0	// Write all 0s to CSR
	csrrs x29, 0x1b6, x15	// Set all CSR bits
	csrrc x29, 0x1b6, x15	// Clear all CSR bits
	csrrw x29, 0x1b6, x27	// Restore CSR

// Testing CSR 0x1b7
	csrr x24, 0x1b7	// Read CSR
	li x16, -1
	csrrw x20, 0x1b7, x16	// Write all 1s to CSR
	csrrw x20, 0x1b7, x0	// Write all 0s to CSR
	csrrs x20, 0x1b7, x16	// Set all CSR bits
	csrrc x20, 0x1b7, x16	// Clear all CSR bits
	csrrw x20, 0x1b7, x24	// Restore CSR

// Testing CSR 0x1b8
	csrr x31, 0x1b8	// Read CSR
	li x24, -1
	csrrw x19, 0x1b8, x24	// Write all 1s to CSR
	csrrw x19, 0x1b8, x0	// Write all 0s to CSR
	csrrs x19, 0x1b8, x24	// Set all CSR bits
	csrrc x19, 0x1b8, x24	// Clear all CSR bits
	csrrw x19, 0x1b8, x31	// Restore CSR

// Testing CSR 0x1b9
	csrr x29, 0x1b9	// Read CSR
	li x14, -1
	csrrw x7, 0x1b9, x14	// Write all 1s to CSR
	csrrw x7, 0x1b9, x0	// Write all 0s to CSR
	csrrs x7, 0x1b9, x14	// Set all CSR bits
	csrrc x7, 0x1b9, x14	// Clear all CSR bits
	csrrw x7, 0x1b9, x29	// Restore CSR

// Testing CSR 0x1ba
	csrr x7, 0x1ba	// Read CSR
	li x22, -1
	csrrw x27, 0x1ba, x22	// Write all 1s to CSR
	csrrw x27, 0x1ba, x0	// Write all 0s to CSR
	csrrs x27, 0x1ba, x22	// Set all CSR bits
	csrrc x27, 0x1ba, x22	// Clear all CSR bits
	csrrw x27, 0x1ba, x7	// Restore CSR

// Testing CSR 0x1bb
	csrr x1, 0x1bb	// Read CSR
	li x23, -1
	csrrw x7, 0x1bb, x23	// Write all 1s to CSR
	csrrw x7, 0x1bb, x0	// Write all 0s to CSR
	csrrs x7, 0x1bb, x23	// Set all CSR bits
	csrrc x7, 0x1bb, x23	// Clear all CSR bits
	csrrw x7, 0x1bb, x1	// Restore CSR

// Testing CSR 0x1bc
	csrr x12, 0x1bc	// Read CSR
	li x24, -1
	csrrw x6, 0x1bc, x24	// Write all 1s to CSR
	csrrw x6, 0x1bc, x0	// Write all 0s to CSR
	csrrs x6, 0x1bc, x24	// Set all CSR bits
	csrrc x6, 0x1bc, x24	// Clear all CSR bits
	csrrw x6, 0x1bc, x12	// Restore CSR

// Testing CSR 0x1bd
	csrr x10, 0x1bd	// Read CSR
	li x26, -1
	csrrw x7, 0x1bd, x26	// Write all 1s to CSR
	csrrw x7, 0x1bd, x0	// Write all 0s to CSR
	csrrs x7, 0x1bd, x26	// Set all CSR bits
	csrrc x7, 0x1bd, x26	// Clear all CSR bits
	csrrw x7, 0x1bd, x10	// Restore CSR

// Testing CSR 0x1be
	csrr x2, 0x1be	// Read CSR
	li x18, -1
	csrrw x14, 0x1be, x18	// Write all 1s to CSR
	csrrw x14, 0x1be, x0	// Write all 0s to CSR
	csrrs x14, 0x1be, x18	// Set all CSR bits
	csrrc x14, 0x1be, x18	// Clear all CSR bits
	csrrw x14, 0x1be, x2	// Restore CSR

// Testing CSR 0x1bf
	csrr x29, 0x1bf	// Read CSR
	li x14, -1
	csrrw x18, 0x1bf, x14	// Write all 1s to CSR
	csrrw x18, 0x1bf, x0	// Write all 0s to CSR
	csrrs x18, 0x1bf, x14	// Set all CSR bits
	csrrc x18, 0x1bf, x14	// Clear all CSR bits
	csrrw x18, 0x1bf, x29	// Restore CSR

// Testing CSR 0x1c0
	csrr x11, 0x1c0	// Read CSR
	li x7, -1
	csrrw x5, 0x1c0, x7	// Write all 1s to CSR
	csrrw x5, 0x1c0, x0	// Write all 0s to CSR
	csrrs x5, 0x1c0, x7	// Set all CSR bits
	csrrc x5, 0x1c0, x7	// Clear all CSR bits
	csrrw x5, 0x1c0, x11	// Restore CSR

// Testing CSR 0x1c1
	csrr x10, 0x1c1	// Read CSR
	li x3, -1
	csrrw x5, 0x1c1, x3	// Write all 1s to CSR
	csrrw x5, 0x1c1, x0	// Write all 0s to CSR
	csrrs x5, 0x1c1, x3	// Set all CSR bits
	csrrc x5, 0x1c1, x3	// Clear all CSR bits
	csrrw x5, 0x1c1, x10	// Restore CSR

// Testing CSR 0x1c2
	csrr x2, 0x1c2	// Read CSR
	li x11, -1
	csrrw x30, 0x1c2, x11	// Write all 1s to CSR
	csrrw x30, 0x1c2, x0	// Write all 0s to CSR
	csrrs x30, 0x1c2, x11	// Set all CSR bits
	csrrc x30, 0x1c2, x11	// Clear all CSR bits
	csrrw x30, 0x1c2, x2	// Restore CSR

// Testing CSR 0x1c3
	csrr x2, 0x1c3	// Read CSR
	li x5, -1
	csrrw x21, 0x1c3, x5	// Write all 1s to CSR
	csrrw x21, 0x1c3, x0	// Write all 0s to CSR
	csrrs x21, 0x1c3, x5	// Set all CSR bits
	csrrc x21, 0x1c3, x5	// Clear all CSR bits
	csrrw x21, 0x1c3, x2	// Restore CSR

// Testing CSR 0x1c4
	csrr x3, 0x1c4	// Read CSR
	li x17, -1
	csrrw x4, 0x1c4, x17	// Write all 1s to CSR
	csrrw x4, 0x1c4, x0	// Write all 0s to CSR
	csrrs x4, 0x1c4, x17	// Set all CSR bits
	csrrc x4, 0x1c4, x17	// Clear all CSR bits
	csrrw x4, 0x1c4, x3	// Restore CSR

// Testing CSR 0x1c5
	csrr x4, 0x1c5	// Read CSR
	li x24, -1
	csrrw x2, 0x1c5, x24	// Write all 1s to CSR
	csrrw x2, 0x1c5, x0	// Write all 0s to CSR
	csrrs x2, 0x1c5, x24	// Set all CSR bits
	csrrc x2, 0x1c5, x24	// Clear all CSR bits
	csrrw x2, 0x1c5, x4	// Restore CSR

// Testing CSR 0x1c6
	csrr x4, 0x1c6	// Read CSR
	li x5, -1
	csrrw x13, 0x1c6, x5	// Write all 1s to CSR
	csrrw x13, 0x1c6, x0	// Write all 0s to CSR
	csrrs x13, 0x1c6, x5	// Set all CSR bits
	csrrc x13, 0x1c6, x5	// Clear all CSR bits
	csrrw x13, 0x1c6, x4	// Restore CSR

// Testing CSR 0x1c7
	csrr x28, 0x1c7	// Read CSR
	li x31, -1
	csrrw x20, 0x1c7, x31	// Write all 1s to CSR
	csrrw x20, 0x1c7, x0	// Write all 0s to CSR
	csrrs x20, 0x1c7, x31	// Set all CSR bits
	csrrc x20, 0x1c7, x31	// Clear all CSR bits
	csrrw x20, 0x1c7, x28	// Restore CSR

// Testing CSR 0x1c8
	csrr x10, 0x1c8	// Read CSR
	li x1, -1
	csrrw x15, 0x1c8, x1	// Write all 1s to CSR
	csrrw x15, 0x1c8, x0	// Write all 0s to CSR
	csrrs x15, 0x1c8, x1	// Set all CSR bits
	csrrc x15, 0x1c8, x1	// Clear all CSR bits
	csrrw x15, 0x1c8, x10	// Restore CSR

// Testing CSR 0x1c9
	csrr x4, 0x1c9	// Read CSR
	li x7, -1
	csrrw x20, 0x1c9, x7	// Write all 1s to CSR
	csrrw x20, 0x1c9, x0	// Write all 0s to CSR
	csrrs x20, 0x1c9, x7	// Set all CSR bits
	csrrc x20, 0x1c9, x7	// Clear all CSR bits
	csrrw x20, 0x1c9, x4	// Restore CSR

// Testing CSR 0x1ca
	csrr x24, 0x1ca	// Read CSR
	li x20, -1
	csrrw x17, 0x1ca, x20	// Write all 1s to CSR
	csrrw x17, 0x1ca, x0	// Write all 0s to CSR
	csrrs x17, 0x1ca, x20	// Set all CSR bits
	csrrc x17, 0x1ca, x20	// Clear all CSR bits
	csrrw x17, 0x1ca, x24	// Restore CSR

// Testing CSR 0x1cb
	csrr x18, 0x1cb	// Read CSR
	li x1, -1
	csrrw x26, 0x1cb, x1	// Write all 1s to CSR
	csrrw x26, 0x1cb, x0	// Write all 0s to CSR
	csrrs x26, 0x1cb, x1	// Set all CSR bits
	csrrc x26, 0x1cb, x1	// Clear all CSR bits
	csrrw x26, 0x1cb, x18	// Restore CSR

// Testing CSR 0x1cc
	csrr x8, 0x1cc	// Read CSR
	li x6, -1
	csrrw x1, 0x1cc, x6	// Write all 1s to CSR
	csrrw x1, 0x1cc, x0	// Write all 0s to CSR
	csrrs x1, 0x1cc, x6	// Set all CSR bits
	csrrc x1, 0x1cc, x6	// Clear all CSR bits
	csrrw x1, 0x1cc, x8	// Restore CSR

// Testing CSR 0x1cd
	csrr x19, 0x1cd	// Read CSR
	li x15, -1
	csrrw x9, 0x1cd, x15	// Write all 1s to CSR
	csrrw x9, 0x1cd, x0	// Write all 0s to CSR
	csrrs x9, 0x1cd, x15	// Set all CSR bits
	csrrc x9, 0x1cd, x15	// Clear all CSR bits
	csrrw x9, 0x1cd, x19	// Restore CSR

// Testing CSR 0x1ce
	csrr x28, 0x1ce	// Read CSR
	li x10, -1
	csrrw x29, 0x1ce, x10	// Write all 1s to CSR
	csrrw x29, 0x1ce, x0	// Write all 0s to CSR
	csrrs x29, 0x1ce, x10	// Set all CSR bits
	csrrc x29, 0x1ce, x10	// Clear all CSR bits
	csrrw x29, 0x1ce, x28	// Restore CSR

// Testing CSR 0x1cf
	csrr x20, 0x1cf	// Read CSR
	li x31, -1
	csrrw x27, 0x1cf, x31	// Write all 1s to CSR
	csrrw x27, 0x1cf, x0	// Write all 0s to CSR
	csrrs x27, 0x1cf, x31	// Set all CSR bits
	csrrc x27, 0x1cf, x31	// Clear all CSR bits
	csrrw x27, 0x1cf, x20	// Restore CSR

// Testing CSR 0x1d0
	csrr x6, 0x1d0	// Read CSR
	li x30, -1
	csrrw x28, 0x1d0, x30	// Write all 1s to CSR
	csrrw x28, 0x1d0, x0	// Write all 0s to CSR
	csrrs x28, 0x1d0, x30	// Set all CSR bits
	csrrc x28, 0x1d0, x30	// Clear all CSR bits
	csrrw x28, 0x1d0, x6	// Restore CSR

// Testing CSR 0x1d1
	csrr x17, 0x1d1	// Read CSR
	li x20, -1
	csrrw x13, 0x1d1, x20	// Write all 1s to CSR
	csrrw x13, 0x1d1, x0	// Write all 0s to CSR
	csrrs x13, 0x1d1, x20	// Set all CSR bits
	csrrc x13, 0x1d1, x20	// Clear all CSR bits
	csrrw x13, 0x1d1, x17	// Restore CSR

// Testing CSR 0x1d2
	csrr x29, 0x1d2	// Read CSR
	li x11, -1
	csrrw x4, 0x1d2, x11	// Write all 1s to CSR
	csrrw x4, 0x1d2, x0	// Write all 0s to CSR
	csrrs x4, 0x1d2, x11	// Set all CSR bits
	csrrc x4, 0x1d2, x11	// Clear all CSR bits
	csrrw x4, 0x1d2, x29	// Restore CSR

// Testing CSR 0x1d3
	csrr x6, 0x1d3	// Read CSR
	li x4, -1
	csrrw x18, 0x1d3, x4	// Write all 1s to CSR
	csrrw x18, 0x1d3, x0	// Write all 0s to CSR
	csrrs x18, 0x1d3, x4	// Set all CSR bits
	csrrc x18, 0x1d3, x4	// Clear all CSR bits
	csrrw x18, 0x1d3, x6	// Restore CSR

// Testing CSR 0x1d4
	csrr x5, 0x1d4	// Read CSR
	li x16, -1
	csrrw x1, 0x1d4, x16	// Write all 1s to CSR
	csrrw x1, 0x1d4, x0	// Write all 0s to CSR
	csrrs x1, 0x1d4, x16	// Set all CSR bits
	csrrc x1, 0x1d4, x16	// Clear all CSR bits
	csrrw x1, 0x1d4, x5	// Restore CSR

// Testing CSR 0x1d5
	csrr x20, 0x1d5	// Read CSR
	li x2, -1
	csrrw x10, 0x1d5, x2	// Write all 1s to CSR
	csrrw x10, 0x1d5, x0	// Write all 0s to CSR
	csrrs x10, 0x1d5, x2	// Set all CSR bits
	csrrc x10, 0x1d5, x2	// Clear all CSR bits
	csrrw x10, 0x1d5, x20	// Restore CSR

// Testing CSR 0x1d6
	csrr x7, 0x1d6	// Read CSR
	li x4, -1
	csrrw x9, 0x1d6, x4	// Write all 1s to CSR
	csrrw x9, 0x1d6, x0	// Write all 0s to CSR
	csrrs x9, 0x1d6, x4	// Set all CSR bits
	csrrc x9, 0x1d6, x4	// Clear all CSR bits
	csrrw x9, 0x1d6, x7	// Restore CSR

// Testing CSR 0x1d7
	csrr x9, 0x1d7	// Read CSR
	li x15, -1
	csrrw x16, 0x1d7, x15	// Write all 1s to CSR
	csrrw x16, 0x1d7, x0	// Write all 0s to CSR
	csrrs x16, 0x1d7, x15	// Set all CSR bits
	csrrc x16, 0x1d7, x15	// Clear all CSR bits
	csrrw x16, 0x1d7, x9	// Restore CSR

// Testing CSR 0x1d8
	csrr x29, 0x1d8	// Read CSR
	li x26, -1
	csrrw x30, 0x1d8, x26	// Write all 1s to CSR
	csrrw x30, 0x1d8, x0	// Write all 0s to CSR
	csrrs x30, 0x1d8, x26	// Set all CSR bits
	csrrc x30, 0x1d8, x26	// Clear all CSR bits
	csrrw x30, 0x1d8, x29	// Restore CSR

// Testing CSR 0x1d9
	csrr x8, 0x1d9	// Read CSR
	li x9, -1
	csrrw x29, 0x1d9, x9	// Write all 1s to CSR
	csrrw x29, 0x1d9, x0	// Write all 0s to CSR
	csrrs x29, 0x1d9, x9	// Set all CSR bits
	csrrc x29, 0x1d9, x9	// Clear all CSR bits
	csrrw x29, 0x1d9, x8	// Restore CSR

// Testing CSR 0x1da
	csrr x22, 0x1da	// Read CSR
	li x20, -1
	csrrw x18, 0x1da, x20	// Write all 1s to CSR
	csrrw x18, 0x1da, x0	// Write all 0s to CSR
	csrrs x18, 0x1da, x20	// Set all CSR bits
	csrrc x18, 0x1da, x20	// Clear all CSR bits
	csrrw x18, 0x1da, x22	// Restore CSR

// Testing CSR 0x1db
	csrr x14, 0x1db	// Read CSR
	li x29, -1
	csrrw x15, 0x1db, x29	// Write all 1s to CSR
	csrrw x15, 0x1db, x0	// Write all 0s to CSR
	csrrs x15, 0x1db, x29	// Set all CSR bits
	csrrc x15, 0x1db, x29	// Clear all CSR bits
	csrrw x15, 0x1db, x14	// Restore CSR

// Testing CSR 0x1dc
	csrr x10, 0x1dc	// Read CSR
	li x31, -1
	csrrw x15, 0x1dc, x31	// Write all 1s to CSR
	csrrw x15, 0x1dc, x0	// Write all 0s to CSR
	csrrs x15, 0x1dc, x31	// Set all CSR bits
	csrrc x15, 0x1dc, x31	// Clear all CSR bits
	csrrw x15, 0x1dc, x10	// Restore CSR

// Testing CSR 0x1dd
	csrr x8, 0x1dd	// Read CSR
	li x20, -1
	csrrw x18, 0x1dd, x20	// Write all 1s to CSR
	csrrw x18, 0x1dd, x0	// Write all 0s to CSR
	csrrs x18, 0x1dd, x20	// Set all CSR bits
	csrrc x18, 0x1dd, x20	// Clear all CSR bits
	csrrw x18, 0x1dd, x8	// Restore CSR

// Testing CSR 0x1de
	csrr x14, 0x1de	// Read CSR
	li x4, -1
	csrrw x13, 0x1de, x4	// Write all 1s to CSR
	csrrw x13, 0x1de, x0	// Write all 0s to CSR
	csrrs x13, 0x1de, x4	// Set all CSR bits
	csrrc x13, 0x1de, x4	// Clear all CSR bits
	csrrw x13, 0x1de, x14	// Restore CSR

// Testing CSR 0x1df
	csrr x7, 0x1df	// Read CSR
	li x4, -1
	csrrw x24, 0x1df, x4	// Write all 1s to CSR
	csrrw x24, 0x1df, x0	// Write all 0s to CSR
	csrrs x24, 0x1df, x4	// Set all CSR bits
	csrrc x24, 0x1df, x4	// Clear all CSR bits
	csrrw x24, 0x1df, x7	// Restore CSR

// Testing CSR 0x1e0
	csrr x12, 0x1e0	// Read CSR
	li x27, -1
	csrrw x21, 0x1e0, x27	// Write all 1s to CSR
	csrrw x21, 0x1e0, x0	// Write all 0s to CSR
	csrrs x21, 0x1e0, x27	// Set all CSR bits
	csrrc x21, 0x1e0, x27	// Clear all CSR bits
	csrrw x21, 0x1e0, x12	// Restore CSR

// Testing CSR 0x1e1
	csrr x21, 0x1e1	// Read CSR
	li x8, -1
	csrrw x19, 0x1e1, x8	// Write all 1s to CSR
	csrrw x19, 0x1e1, x0	// Write all 0s to CSR
	csrrs x19, 0x1e1, x8	// Set all CSR bits
	csrrc x19, 0x1e1, x8	// Clear all CSR bits
	csrrw x19, 0x1e1, x21	// Restore CSR

// Testing CSR 0x1e2
	csrr x29, 0x1e2	// Read CSR
	li x22, -1
	csrrw x28, 0x1e2, x22	// Write all 1s to CSR
	csrrw x28, 0x1e2, x0	// Write all 0s to CSR
	csrrs x28, 0x1e2, x22	// Set all CSR bits
	csrrc x28, 0x1e2, x22	// Clear all CSR bits
	csrrw x28, 0x1e2, x29	// Restore CSR

// Testing CSR 0x1e3
	csrr x24, 0x1e3	// Read CSR
	li x1, -1
	csrrw x17, 0x1e3, x1	// Write all 1s to CSR
	csrrw x17, 0x1e3, x0	// Write all 0s to CSR
	csrrs x17, 0x1e3, x1	// Set all CSR bits
	csrrc x17, 0x1e3, x1	// Clear all CSR bits
	csrrw x17, 0x1e3, x24	// Restore CSR

// Testing CSR 0x1e4
	csrr x22, 0x1e4	// Read CSR
	li x3, -1
	csrrw x1, 0x1e4, x3	// Write all 1s to CSR
	csrrw x1, 0x1e4, x0	// Write all 0s to CSR
	csrrs x1, 0x1e4, x3	// Set all CSR bits
	csrrc x1, 0x1e4, x3	// Clear all CSR bits
	csrrw x1, 0x1e4, x22	// Restore CSR

// Testing CSR 0x1e5
	csrr x23, 0x1e5	// Read CSR
	li x14, -1
	csrrw x12, 0x1e5, x14	// Write all 1s to CSR
	csrrw x12, 0x1e5, x0	// Write all 0s to CSR
	csrrs x12, 0x1e5, x14	// Set all CSR bits
	csrrc x12, 0x1e5, x14	// Clear all CSR bits
	csrrw x12, 0x1e5, x23	// Restore CSR

// Testing CSR 0x1e6
	csrr x7, 0x1e6	// Read CSR
	li x23, -1
	csrrw x11, 0x1e6, x23	// Write all 1s to CSR
	csrrw x11, 0x1e6, x0	// Write all 0s to CSR
	csrrs x11, 0x1e6, x23	// Set all CSR bits
	csrrc x11, 0x1e6, x23	// Clear all CSR bits
	csrrw x11, 0x1e6, x7	// Restore CSR

// Testing CSR 0x1e7
	csrr x14, 0x1e7	// Read CSR
	li x4, -1
	csrrw x2, 0x1e7, x4	// Write all 1s to CSR
	csrrw x2, 0x1e7, x0	// Write all 0s to CSR
	csrrs x2, 0x1e7, x4	// Set all CSR bits
	csrrc x2, 0x1e7, x4	// Clear all CSR bits
	csrrw x2, 0x1e7, x14	// Restore CSR

// Testing CSR 0x1e8
	csrr x28, 0x1e8	// Read CSR
	li x24, -1
	csrrw x29, 0x1e8, x24	// Write all 1s to CSR
	csrrw x29, 0x1e8, x0	// Write all 0s to CSR
	csrrs x29, 0x1e8, x24	// Set all CSR bits
	csrrc x29, 0x1e8, x24	// Clear all CSR bits
	csrrw x29, 0x1e8, x28	// Restore CSR

// Testing CSR 0x1e9
	csrr x16, 0x1e9	// Read CSR
	li x14, -1
	csrrw x28, 0x1e9, x14	// Write all 1s to CSR
	csrrw x28, 0x1e9, x0	// Write all 0s to CSR
	csrrs x28, 0x1e9, x14	// Set all CSR bits
	csrrc x28, 0x1e9, x14	// Clear all CSR bits
	csrrw x28, 0x1e9, x16	// Restore CSR

// Testing CSR 0x1ea
	csrr x10, 0x1ea	// Read CSR
	li x9, -1
	csrrw x13, 0x1ea, x9	// Write all 1s to CSR
	csrrw x13, 0x1ea, x0	// Write all 0s to CSR
	csrrs x13, 0x1ea, x9	// Set all CSR bits
	csrrc x13, 0x1ea, x9	// Clear all CSR bits
	csrrw x13, 0x1ea, x10	// Restore CSR

// Testing CSR 0x1eb
	csrr x31, 0x1eb	// Read CSR
	li x20, -1
	csrrw x9, 0x1eb, x20	// Write all 1s to CSR
	csrrw x9, 0x1eb, x0	// Write all 0s to CSR
	csrrs x9, 0x1eb, x20	// Set all CSR bits
	csrrc x9, 0x1eb, x20	// Clear all CSR bits
	csrrw x9, 0x1eb, x31	// Restore CSR

// Testing CSR 0x1ec
	csrr x13, 0x1ec	// Read CSR
	li x19, -1
	csrrw x5, 0x1ec, x19	// Write all 1s to CSR
	csrrw x5, 0x1ec, x0	// Write all 0s to CSR
	csrrs x5, 0x1ec, x19	// Set all CSR bits
	csrrc x5, 0x1ec, x19	// Clear all CSR bits
	csrrw x5, 0x1ec, x13	// Restore CSR

// Testing CSR 0x1ed
	csrr x21, 0x1ed	// Read CSR
	li x5, -1
	csrrw x1, 0x1ed, x5	// Write all 1s to CSR
	csrrw x1, 0x1ed, x0	// Write all 0s to CSR
	csrrs x1, 0x1ed, x5	// Set all CSR bits
	csrrc x1, 0x1ed, x5	// Clear all CSR bits
	csrrw x1, 0x1ed, x21	// Restore CSR

// Testing CSR 0x1ee
	csrr x3, 0x1ee	// Read CSR
	li x6, -1
	csrrw x2, 0x1ee, x6	// Write all 1s to CSR
	csrrw x2, 0x1ee, x0	// Write all 0s to CSR
	csrrs x2, 0x1ee, x6	// Set all CSR bits
	csrrc x2, 0x1ee, x6	// Clear all CSR bits
	csrrw x2, 0x1ee, x3	// Restore CSR

// Testing CSR 0x1ef
	csrr x11, 0x1ef	// Read CSR
	li x28, -1
	csrrw x20, 0x1ef, x28	// Write all 1s to CSR
	csrrw x20, 0x1ef, x0	// Write all 0s to CSR
	csrrs x20, 0x1ef, x28	// Set all CSR bits
	csrrc x20, 0x1ef, x28	// Clear all CSR bits
	csrrw x20, 0x1ef, x11	// Restore CSR

// Testing CSR 0x1f0
	csrr x12, 0x1f0	// Read CSR
	li x17, -1
	csrrw x15, 0x1f0, x17	// Write all 1s to CSR
	csrrw x15, 0x1f0, x0	// Write all 0s to CSR
	csrrs x15, 0x1f0, x17	// Set all CSR bits
	csrrc x15, 0x1f0, x17	// Clear all CSR bits
	csrrw x15, 0x1f0, x12	// Restore CSR

// Testing CSR 0x1f1
	csrr x27, 0x1f1	// Read CSR
	li x14, -1
	csrrw x26, 0x1f1, x14	// Write all 1s to CSR
	csrrw x26, 0x1f1, x0	// Write all 0s to CSR
	csrrs x26, 0x1f1, x14	// Set all CSR bits
	csrrc x26, 0x1f1, x14	// Clear all CSR bits
	csrrw x26, 0x1f1, x27	// Restore CSR

// Testing CSR 0x1f2
	csrr x7, 0x1f2	// Read CSR
	li x13, -1
	csrrw x2, 0x1f2, x13	// Write all 1s to CSR
	csrrw x2, 0x1f2, x0	// Write all 0s to CSR
	csrrs x2, 0x1f2, x13	// Set all CSR bits
	csrrc x2, 0x1f2, x13	// Clear all CSR bits
	csrrw x2, 0x1f2, x7	// Restore CSR

// Testing CSR 0x1f3
	csrr x12, 0x1f3	// Read CSR
	li x25, -1
	csrrw x22, 0x1f3, x25	// Write all 1s to CSR
	csrrw x22, 0x1f3, x0	// Write all 0s to CSR
	csrrs x22, 0x1f3, x25	// Set all CSR bits
	csrrc x22, 0x1f3, x25	// Clear all CSR bits
	csrrw x22, 0x1f3, x12	// Restore CSR

// Testing CSR 0x1f4
	csrr x17, 0x1f4	// Read CSR
	li x13, -1
	csrrw x22, 0x1f4, x13	// Write all 1s to CSR
	csrrw x22, 0x1f4, x0	// Write all 0s to CSR
	csrrs x22, 0x1f4, x13	// Set all CSR bits
	csrrc x22, 0x1f4, x13	// Clear all CSR bits
	csrrw x22, 0x1f4, x17	// Restore CSR

// Testing CSR 0x1f5
	csrr x22, 0x1f5	// Read CSR
	li x15, -1
	csrrw x19, 0x1f5, x15	// Write all 1s to CSR
	csrrw x19, 0x1f5, x0	// Write all 0s to CSR
	csrrs x19, 0x1f5, x15	// Set all CSR bits
	csrrc x19, 0x1f5, x15	// Clear all CSR bits
	csrrw x19, 0x1f5, x22	// Restore CSR

// Testing CSR 0x1f6
	csrr x20, 0x1f6	// Read CSR
	li x13, -1
	csrrw x19, 0x1f6, x13	// Write all 1s to CSR
	csrrw x19, 0x1f6, x0	// Write all 0s to CSR
	csrrs x19, 0x1f6, x13	// Set all CSR bits
	csrrc x19, 0x1f6, x13	// Clear all CSR bits
	csrrw x19, 0x1f6, x20	// Restore CSR

// Testing CSR 0x1f7
	csrr x9, 0x1f7	// Read CSR
	li x27, -1
	csrrw x31, 0x1f7, x27	// Write all 1s to CSR
	csrrw x31, 0x1f7, x0	// Write all 0s to CSR
	csrrs x31, 0x1f7, x27	// Set all CSR bits
	csrrc x31, 0x1f7, x27	// Clear all CSR bits
	csrrw x31, 0x1f7, x9	// Restore CSR

// Testing CSR 0x1f8
	csrr x20, 0x1f8	// Read CSR
	li x19, -1
	csrrw x4, 0x1f8, x19	// Write all 1s to CSR
	csrrw x4, 0x1f8, x0	// Write all 0s to CSR
	csrrs x4, 0x1f8, x19	// Set all CSR bits
	csrrc x4, 0x1f8, x19	// Clear all CSR bits
	csrrw x4, 0x1f8, x20	// Restore CSR

// Testing CSR 0x1f9
	csrr x21, 0x1f9	// Read CSR
	li x6, -1
	csrrw x10, 0x1f9, x6	// Write all 1s to CSR
	csrrw x10, 0x1f9, x0	// Write all 0s to CSR
	csrrs x10, 0x1f9, x6	// Set all CSR bits
	csrrc x10, 0x1f9, x6	// Clear all CSR bits
	csrrw x10, 0x1f9, x21	// Restore CSR

// Testing CSR 0x1fa
	csrr x6, 0x1fa	// Read CSR
	li x21, -1
	csrrw x22, 0x1fa, x21	// Write all 1s to CSR
	csrrw x22, 0x1fa, x0	// Write all 0s to CSR
	csrrs x22, 0x1fa, x21	// Set all CSR bits
	csrrc x22, 0x1fa, x21	// Clear all CSR bits
	csrrw x22, 0x1fa, x6	// Restore CSR

// Testing CSR 0x1fb
	csrr x18, 0x1fb	// Read CSR
	li x25, -1
	csrrw x19, 0x1fb, x25	// Write all 1s to CSR
	csrrw x19, 0x1fb, x0	// Write all 0s to CSR
	csrrs x19, 0x1fb, x25	// Set all CSR bits
	csrrc x19, 0x1fb, x25	// Clear all CSR bits
	csrrw x19, 0x1fb, x18	// Restore CSR

// Testing CSR 0x1fc
	csrr x24, 0x1fc	// Read CSR
	li x18, -1
	csrrw x13, 0x1fc, x18	// Write all 1s to CSR
	csrrw x13, 0x1fc, x0	// Write all 0s to CSR
	csrrs x13, 0x1fc, x18	// Set all CSR bits
	csrrc x13, 0x1fc, x18	// Clear all CSR bits
	csrrw x13, 0x1fc, x24	// Restore CSR

// Testing CSR 0x1fd
	csrr x9, 0x1fd	// Read CSR
	li x5, -1
	csrrw x21, 0x1fd, x5	// Write all 1s to CSR
	csrrw x21, 0x1fd, x0	// Write all 0s to CSR
	csrrs x21, 0x1fd, x5	// Set all CSR bits
	csrrc x21, 0x1fd, x5	// Clear all CSR bits
	csrrw x21, 0x1fd, x9	// Restore CSR

// Testing CSR 0x1fe
	csrr x19, 0x1fe	// Read CSR
	li x3, -1
	csrrw x29, 0x1fe, x3	// Write all 1s to CSR
	csrrw x29, 0x1fe, x0	// Write all 0s to CSR
	csrrs x29, 0x1fe, x3	// Set all CSR bits
	csrrc x29, 0x1fe, x3	// Clear all CSR bits
	csrrw x29, 0x1fe, x19	// Restore CSR

// Testing CSR 0x1ff
	csrr x10, 0x1ff	// Read CSR
	li x14, -1
	csrrw x25, 0x1ff, x14	// Write all 1s to CSR
	csrrw x25, 0x1ff, x0	// Write all 0s to CSR
	csrrs x25, 0x1ff, x14	// Set all CSR bits
	csrrc x25, 0x1ff, x14	// Clear all CSR bits
	csrrw x25, 0x1ff, x10	// Restore CSR

// Testing CSR 0x200
	csrr x14, 0x200	// Read CSR
	li x20, -1
	csrrw x1, 0x200, x20	// Write all 1s to CSR
	csrrw x1, 0x200, x0	// Write all 0s to CSR
	csrrs x1, 0x200, x20	// Set all CSR bits
	csrrc x1, 0x200, x20	// Clear all CSR bits
	csrrw x1, 0x200, x14	// Restore CSR

// Testing CSR 0x201
	csrr x16, 0x201	// Read CSR
	li x7, -1
	csrrw x17, 0x201, x7	// Write all 1s to CSR
	csrrw x17, 0x201, x0	// Write all 0s to CSR
	csrrs x17, 0x201, x7	// Set all CSR bits
	csrrc x17, 0x201, x7	// Clear all CSR bits
	csrrw x17, 0x201, x16	// Restore CSR

// Testing CSR 0x202
	csrr x28, 0x202	// Read CSR
	li x10, -1
	csrrw x26, 0x202, x10	// Write all 1s to CSR
	csrrw x26, 0x202, x0	// Write all 0s to CSR
	csrrs x26, 0x202, x10	// Set all CSR bits
	csrrc x26, 0x202, x10	// Clear all CSR bits
	csrrw x26, 0x202, x28	// Restore CSR

// Testing CSR 0x203
	csrr x7, 0x203	// Read CSR
	li x1, -1
	csrrw x25, 0x203, x1	// Write all 1s to CSR
	csrrw x25, 0x203, x0	// Write all 0s to CSR
	csrrs x25, 0x203, x1	// Set all CSR bits
	csrrc x25, 0x203, x1	// Clear all CSR bits
	csrrw x25, 0x203, x7	// Restore CSR

// Testing CSR 0x204
	csrr x20, 0x204	// Read CSR
	li x22, -1
	csrrw x17, 0x204, x22	// Write all 1s to CSR
	csrrw x17, 0x204, x0	// Write all 0s to CSR
	csrrs x17, 0x204, x22	// Set all CSR bits
	csrrc x17, 0x204, x22	// Clear all CSR bits
	csrrw x17, 0x204, x20	// Restore CSR

// Testing CSR 0x205
	csrr x10, 0x205	// Read CSR
	li x4, -1
	csrrw x14, 0x205, x4	// Write all 1s to CSR
	csrrw x14, 0x205, x0	// Write all 0s to CSR
	csrrs x14, 0x205, x4	// Set all CSR bits
	csrrc x14, 0x205, x4	// Clear all CSR bits
	csrrw x14, 0x205, x10	// Restore CSR

// Testing CSR 0x206
	csrr x24, 0x206	// Read CSR
	li x25, -1
	csrrw x12, 0x206, x25	// Write all 1s to CSR
	csrrw x12, 0x206, x0	// Write all 0s to CSR
	csrrs x12, 0x206, x25	// Set all CSR bits
	csrrc x12, 0x206, x25	// Clear all CSR bits
	csrrw x12, 0x206, x24	// Restore CSR

// Testing CSR 0x207
	csrr x24, 0x207	// Read CSR
	li x13, -1
	csrrw x30, 0x207, x13	// Write all 1s to CSR
	csrrw x30, 0x207, x0	// Write all 0s to CSR
	csrrs x30, 0x207, x13	// Set all CSR bits
	csrrc x30, 0x207, x13	// Clear all CSR bits
	csrrw x30, 0x207, x24	// Restore CSR

// Testing CSR 0x208
	csrr x12, 0x208	// Read CSR
	li x24, -1
	csrrw x20, 0x208, x24	// Write all 1s to CSR
	csrrw x20, 0x208, x0	// Write all 0s to CSR
	csrrs x20, 0x208, x24	// Set all CSR bits
	csrrc x20, 0x208, x24	// Clear all CSR bits
	csrrw x20, 0x208, x12	// Restore CSR

// Testing CSR 0x209
	csrr x24, 0x209	// Read CSR
	li x27, -1
	csrrw x13, 0x209, x27	// Write all 1s to CSR
	csrrw x13, 0x209, x0	// Write all 0s to CSR
	csrrs x13, 0x209, x27	// Set all CSR bits
	csrrc x13, 0x209, x27	// Clear all CSR bits
	csrrw x13, 0x209, x24	// Restore CSR

// Testing CSR 0x20a
	csrr x27, 0x20a	// Read CSR
	li x7, -1
	csrrw x11, 0x20a, x7	// Write all 1s to CSR
	csrrw x11, 0x20a, x0	// Write all 0s to CSR
	csrrs x11, 0x20a, x7	// Set all CSR bits
	csrrc x11, 0x20a, x7	// Clear all CSR bits
	csrrw x11, 0x20a, x27	// Restore CSR

// Testing CSR 0x20b
	csrr x31, 0x20b	// Read CSR
	li x29, -1
	csrrw x1, 0x20b, x29	// Write all 1s to CSR
	csrrw x1, 0x20b, x0	// Write all 0s to CSR
	csrrs x1, 0x20b, x29	// Set all CSR bits
	csrrc x1, 0x20b, x29	// Clear all CSR bits
	csrrw x1, 0x20b, x31	// Restore CSR

// Testing CSR 0x20c
	csrr x2, 0x20c	// Read CSR
	li x4, -1
	csrrw x20, 0x20c, x4	// Write all 1s to CSR
	csrrw x20, 0x20c, x0	// Write all 0s to CSR
	csrrs x20, 0x20c, x4	// Set all CSR bits
	csrrc x20, 0x20c, x4	// Clear all CSR bits
	csrrw x20, 0x20c, x2	// Restore CSR

// Testing CSR 0x20d
	csrr x17, 0x20d	// Read CSR
	li x23, -1
	csrrw x21, 0x20d, x23	// Write all 1s to CSR
	csrrw x21, 0x20d, x0	// Write all 0s to CSR
	csrrs x21, 0x20d, x23	// Set all CSR bits
	csrrc x21, 0x20d, x23	// Clear all CSR bits
	csrrw x21, 0x20d, x17	// Restore CSR

// Testing CSR 0x20e
	csrr x31, 0x20e	// Read CSR
	li x21, -1
	csrrw x14, 0x20e, x21	// Write all 1s to CSR
	csrrw x14, 0x20e, x0	// Write all 0s to CSR
	csrrs x14, 0x20e, x21	// Set all CSR bits
	csrrc x14, 0x20e, x21	// Clear all CSR bits
	csrrw x14, 0x20e, x31	// Restore CSR

// Testing CSR 0x20f
	csrr x4, 0x20f	// Read CSR
	li x14, -1
	csrrw x11, 0x20f, x14	// Write all 1s to CSR
	csrrw x11, 0x20f, x0	// Write all 0s to CSR
	csrrs x11, 0x20f, x14	// Set all CSR bits
	csrrc x11, 0x20f, x14	// Clear all CSR bits
	csrrw x11, 0x20f, x4	// Restore CSR

// Testing CSR 0x210
	csrr x21, 0x210	// Read CSR
	li x8, -1
	csrrw x11, 0x210, x8	// Write all 1s to CSR
	csrrw x11, 0x210, x0	// Write all 0s to CSR
	csrrs x11, 0x210, x8	// Set all CSR bits
	csrrc x11, 0x210, x8	// Clear all CSR bits
	csrrw x11, 0x210, x21	// Restore CSR

// Testing CSR 0x211
	csrr x11, 0x211	// Read CSR
	li x31, -1
	csrrw x23, 0x211, x31	// Write all 1s to CSR
	csrrw x23, 0x211, x0	// Write all 0s to CSR
	csrrs x23, 0x211, x31	// Set all CSR bits
	csrrc x23, 0x211, x31	// Clear all CSR bits
	csrrw x23, 0x211, x11	// Restore CSR

// Testing CSR 0x212
	csrr x12, 0x212	// Read CSR
	li x11, -1
	csrrw x5, 0x212, x11	// Write all 1s to CSR
	csrrw x5, 0x212, x0	// Write all 0s to CSR
	csrrs x5, 0x212, x11	// Set all CSR bits
	csrrc x5, 0x212, x11	// Clear all CSR bits
	csrrw x5, 0x212, x12	// Restore CSR

// Testing CSR 0x213
	csrr x11, 0x213	// Read CSR
	li x3, -1
	csrrw x9, 0x213, x3	// Write all 1s to CSR
	csrrw x9, 0x213, x0	// Write all 0s to CSR
	csrrs x9, 0x213, x3	// Set all CSR bits
	csrrc x9, 0x213, x3	// Clear all CSR bits
	csrrw x9, 0x213, x11	// Restore CSR

// Testing CSR 0x214
	csrr x11, 0x214	// Read CSR
	li x26, -1
	csrrw x29, 0x214, x26	// Write all 1s to CSR
	csrrw x29, 0x214, x0	// Write all 0s to CSR
	csrrs x29, 0x214, x26	// Set all CSR bits
	csrrc x29, 0x214, x26	// Clear all CSR bits
	csrrw x29, 0x214, x11	// Restore CSR

// Testing CSR 0x215
	csrr x27, 0x215	// Read CSR
	li x24, -1
	csrrw x21, 0x215, x24	// Write all 1s to CSR
	csrrw x21, 0x215, x0	// Write all 0s to CSR
	csrrs x21, 0x215, x24	// Set all CSR bits
	csrrc x21, 0x215, x24	// Clear all CSR bits
	csrrw x21, 0x215, x27	// Restore CSR

// Testing CSR 0x216
	csrr x9, 0x216	// Read CSR
	li x21, -1
	csrrw x10, 0x216, x21	// Write all 1s to CSR
	csrrw x10, 0x216, x0	// Write all 0s to CSR
	csrrs x10, 0x216, x21	// Set all CSR bits
	csrrc x10, 0x216, x21	// Clear all CSR bits
	csrrw x10, 0x216, x9	// Restore CSR

// Testing CSR 0x217
	csrr x29, 0x217	// Read CSR
	li x5, -1
	csrrw x14, 0x217, x5	// Write all 1s to CSR
	csrrw x14, 0x217, x0	// Write all 0s to CSR
	csrrs x14, 0x217, x5	// Set all CSR bits
	csrrc x14, 0x217, x5	// Clear all CSR bits
	csrrw x14, 0x217, x29	// Restore CSR

// Testing CSR 0x218
	csrr x19, 0x218	// Read CSR
	li x13, -1
	csrrw x8, 0x218, x13	// Write all 1s to CSR
	csrrw x8, 0x218, x0	// Write all 0s to CSR
	csrrs x8, 0x218, x13	// Set all CSR bits
	csrrc x8, 0x218, x13	// Clear all CSR bits
	csrrw x8, 0x218, x19	// Restore CSR

// Testing CSR 0x219
	csrr x20, 0x219	// Read CSR
	li x4, -1
	csrrw x8, 0x219, x4	// Write all 1s to CSR
	csrrw x8, 0x219, x0	// Write all 0s to CSR
	csrrs x8, 0x219, x4	// Set all CSR bits
	csrrc x8, 0x219, x4	// Clear all CSR bits
	csrrw x8, 0x219, x20	// Restore CSR

// Testing CSR 0x21a
	csrr x29, 0x21a	// Read CSR
	li x31, -1
	csrrw x9, 0x21a, x31	// Write all 1s to CSR
	csrrw x9, 0x21a, x0	// Write all 0s to CSR
	csrrs x9, 0x21a, x31	// Set all CSR bits
	csrrc x9, 0x21a, x31	// Clear all CSR bits
	csrrw x9, 0x21a, x29	// Restore CSR

// Testing CSR 0x21b
	csrr x15, 0x21b	// Read CSR
	li x21, -1
	csrrw x29, 0x21b, x21	// Write all 1s to CSR
	csrrw x29, 0x21b, x0	// Write all 0s to CSR
	csrrs x29, 0x21b, x21	// Set all CSR bits
	csrrc x29, 0x21b, x21	// Clear all CSR bits
	csrrw x29, 0x21b, x15	// Restore CSR

// Testing CSR 0x21c
	csrr x5, 0x21c	// Read CSR
	li x26, -1
	csrrw x10, 0x21c, x26	// Write all 1s to CSR
	csrrw x10, 0x21c, x0	// Write all 0s to CSR
	csrrs x10, 0x21c, x26	// Set all CSR bits
	csrrc x10, 0x21c, x26	// Clear all CSR bits
	csrrw x10, 0x21c, x5	// Restore CSR

// Testing CSR 0x21d
	csrr x30, 0x21d	// Read CSR
	li x5, -1
	csrrw x31, 0x21d, x5	// Write all 1s to CSR
	csrrw x31, 0x21d, x0	// Write all 0s to CSR
	csrrs x31, 0x21d, x5	// Set all CSR bits
	csrrc x31, 0x21d, x5	// Clear all CSR bits
	csrrw x31, 0x21d, x30	// Restore CSR

// Testing CSR 0x21e
	csrr x9, 0x21e	// Read CSR
	li x2, -1
	csrrw x1, 0x21e, x2	// Write all 1s to CSR
	csrrw x1, 0x21e, x0	// Write all 0s to CSR
	csrrs x1, 0x21e, x2	// Set all CSR bits
	csrrc x1, 0x21e, x2	// Clear all CSR bits
	csrrw x1, 0x21e, x9	// Restore CSR

// Testing CSR 0x21f
	csrr x8, 0x21f	// Read CSR
	li x12, -1
	csrrw x11, 0x21f, x12	// Write all 1s to CSR
	csrrw x11, 0x21f, x0	// Write all 0s to CSR
	csrrs x11, 0x21f, x12	// Set all CSR bits
	csrrc x11, 0x21f, x12	// Clear all CSR bits
	csrrw x11, 0x21f, x8	// Restore CSR

// Testing CSR 0x220
	csrr x31, 0x220	// Read CSR
	li x22, -1
	csrrw x21, 0x220, x22	// Write all 1s to CSR
	csrrw x21, 0x220, x0	// Write all 0s to CSR
	csrrs x21, 0x220, x22	// Set all CSR bits
	csrrc x21, 0x220, x22	// Clear all CSR bits
	csrrw x21, 0x220, x31	// Restore CSR

// Testing CSR 0x221
	csrr x4, 0x221	// Read CSR
	li x31, -1
	csrrw x23, 0x221, x31	// Write all 1s to CSR
	csrrw x23, 0x221, x0	// Write all 0s to CSR
	csrrs x23, 0x221, x31	// Set all CSR bits
	csrrc x23, 0x221, x31	// Clear all CSR bits
	csrrw x23, 0x221, x4	// Restore CSR

// Testing CSR 0x222
	csrr x15, 0x222	// Read CSR
	li x21, -1
	csrrw x2, 0x222, x21	// Write all 1s to CSR
	csrrw x2, 0x222, x0	// Write all 0s to CSR
	csrrs x2, 0x222, x21	// Set all CSR bits
	csrrc x2, 0x222, x21	// Clear all CSR bits
	csrrw x2, 0x222, x15	// Restore CSR

// Testing CSR 0x223
	csrr x9, 0x223	// Read CSR
	li x5, -1
	csrrw x31, 0x223, x5	// Write all 1s to CSR
	csrrw x31, 0x223, x0	// Write all 0s to CSR
	csrrs x31, 0x223, x5	// Set all CSR bits
	csrrc x31, 0x223, x5	// Clear all CSR bits
	csrrw x31, 0x223, x9	// Restore CSR

// Testing CSR 0x224
	csrr x16, 0x224	// Read CSR
	li x7, -1
	csrrw x8, 0x224, x7	// Write all 1s to CSR
	csrrw x8, 0x224, x0	// Write all 0s to CSR
	csrrs x8, 0x224, x7	// Set all CSR bits
	csrrc x8, 0x224, x7	// Clear all CSR bits
	csrrw x8, 0x224, x16	// Restore CSR

// Testing CSR 0x225
	csrr x11, 0x225	// Read CSR
	li x3, -1
	csrrw x4, 0x225, x3	// Write all 1s to CSR
	csrrw x4, 0x225, x0	// Write all 0s to CSR
	csrrs x4, 0x225, x3	// Set all CSR bits
	csrrc x4, 0x225, x3	// Clear all CSR bits
	csrrw x4, 0x225, x11	// Restore CSR

// Testing CSR 0x226
	csrr x9, 0x226	// Read CSR
	li x16, -1
	csrrw x15, 0x226, x16	// Write all 1s to CSR
	csrrw x15, 0x226, x0	// Write all 0s to CSR
	csrrs x15, 0x226, x16	// Set all CSR bits
	csrrc x15, 0x226, x16	// Clear all CSR bits
	csrrw x15, 0x226, x9	// Restore CSR

// Testing CSR 0x227
	csrr x10, 0x227	// Read CSR
	li x14, -1
	csrrw x26, 0x227, x14	// Write all 1s to CSR
	csrrw x26, 0x227, x0	// Write all 0s to CSR
	csrrs x26, 0x227, x14	// Set all CSR bits
	csrrc x26, 0x227, x14	// Clear all CSR bits
	csrrw x26, 0x227, x10	// Restore CSR

// Testing CSR 0x228
	csrr x24, 0x228	// Read CSR
	li x12, -1
	csrrw x31, 0x228, x12	// Write all 1s to CSR
	csrrw x31, 0x228, x0	// Write all 0s to CSR
	csrrs x31, 0x228, x12	// Set all CSR bits
	csrrc x31, 0x228, x12	// Clear all CSR bits
	csrrw x31, 0x228, x24	// Restore CSR

// Testing CSR 0x229
	csrr x19, 0x229	// Read CSR
	li x18, -1
	csrrw x6, 0x229, x18	// Write all 1s to CSR
	csrrw x6, 0x229, x0	// Write all 0s to CSR
	csrrs x6, 0x229, x18	// Set all CSR bits
	csrrc x6, 0x229, x18	// Clear all CSR bits
	csrrw x6, 0x229, x19	// Restore CSR

// Testing CSR 0x22a
	csrr x3, 0x22a	// Read CSR
	li x25, -1
	csrrw x4, 0x22a, x25	// Write all 1s to CSR
	csrrw x4, 0x22a, x0	// Write all 0s to CSR
	csrrs x4, 0x22a, x25	// Set all CSR bits
	csrrc x4, 0x22a, x25	// Clear all CSR bits
	csrrw x4, 0x22a, x3	// Restore CSR

// Testing CSR 0x22b
	csrr x5, 0x22b	// Read CSR
	li x13, -1
	csrrw x9, 0x22b, x13	// Write all 1s to CSR
	csrrw x9, 0x22b, x0	// Write all 0s to CSR
	csrrs x9, 0x22b, x13	// Set all CSR bits
	csrrc x9, 0x22b, x13	// Clear all CSR bits
	csrrw x9, 0x22b, x5	// Restore CSR

// Testing CSR 0x22c
	csrr x3, 0x22c	// Read CSR
	li x28, -1
	csrrw x18, 0x22c, x28	// Write all 1s to CSR
	csrrw x18, 0x22c, x0	// Write all 0s to CSR
	csrrs x18, 0x22c, x28	// Set all CSR bits
	csrrc x18, 0x22c, x28	// Clear all CSR bits
	csrrw x18, 0x22c, x3	// Restore CSR

// Testing CSR 0x22d
	csrr x19, 0x22d	// Read CSR
	li x23, -1
	csrrw x28, 0x22d, x23	// Write all 1s to CSR
	csrrw x28, 0x22d, x0	// Write all 0s to CSR
	csrrs x28, 0x22d, x23	// Set all CSR bits
	csrrc x28, 0x22d, x23	// Clear all CSR bits
	csrrw x28, 0x22d, x19	// Restore CSR

// Testing CSR 0x22e
	csrr x10, 0x22e	// Read CSR
	li x28, -1
	csrrw x17, 0x22e, x28	// Write all 1s to CSR
	csrrw x17, 0x22e, x0	// Write all 0s to CSR
	csrrs x17, 0x22e, x28	// Set all CSR bits
	csrrc x17, 0x22e, x28	// Clear all CSR bits
	csrrw x17, 0x22e, x10	// Restore CSR

// Testing CSR 0x22f
	csrr x6, 0x22f	// Read CSR
	li x23, -1
	csrrw x30, 0x22f, x23	// Write all 1s to CSR
	csrrw x30, 0x22f, x0	// Write all 0s to CSR
	csrrs x30, 0x22f, x23	// Set all CSR bits
	csrrc x30, 0x22f, x23	// Clear all CSR bits
	csrrw x30, 0x22f, x6	// Restore CSR

// Testing CSR 0x230
	csrr x16, 0x230	// Read CSR
	li x14, -1
	csrrw x29, 0x230, x14	// Write all 1s to CSR
	csrrw x29, 0x230, x0	// Write all 0s to CSR
	csrrs x29, 0x230, x14	// Set all CSR bits
	csrrc x29, 0x230, x14	// Clear all CSR bits
	csrrw x29, 0x230, x16	// Restore CSR

// Testing CSR 0x231
	csrr x8, 0x231	// Read CSR
	li x12, -1
	csrrw x9, 0x231, x12	// Write all 1s to CSR
	csrrw x9, 0x231, x0	// Write all 0s to CSR
	csrrs x9, 0x231, x12	// Set all CSR bits
	csrrc x9, 0x231, x12	// Clear all CSR bits
	csrrw x9, 0x231, x8	// Restore CSR

// Testing CSR 0x232
	csrr x30, 0x232	// Read CSR
	li x9, -1
	csrrw x29, 0x232, x9	// Write all 1s to CSR
	csrrw x29, 0x232, x0	// Write all 0s to CSR
	csrrs x29, 0x232, x9	// Set all CSR bits
	csrrc x29, 0x232, x9	// Clear all CSR bits
	csrrw x29, 0x232, x30	// Restore CSR

// Testing CSR 0x233
	csrr x27, 0x233	// Read CSR
	li x11, -1
	csrrw x25, 0x233, x11	// Write all 1s to CSR
	csrrw x25, 0x233, x0	// Write all 0s to CSR
	csrrs x25, 0x233, x11	// Set all CSR bits
	csrrc x25, 0x233, x11	// Clear all CSR bits
	csrrw x25, 0x233, x27	// Restore CSR

// Testing CSR 0x234
	csrr x6, 0x234	// Read CSR
	li x9, -1
	csrrw x7, 0x234, x9	// Write all 1s to CSR
	csrrw x7, 0x234, x0	// Write all 0s to CSR
	csrrs x7, 0x234, x9	// Set all CSR bits
	csrrc x7, 0x234, x9	// Clear all CSR bits
	csrrw x7, 0x234, x6	// Restore CSR

// Testing CSR 0x235
	csrr x4, 0x235	// Read CSR
	li x10, -1
	csrrw x25, 0x235, x10	// Write all 1s to CSR
	csrrw x25, 0x235, x0	// Write all 0s to CSR
	csrrs x25, 0x235, x10	// Set all CSR bits
	csrrc x25, 0x235, x10	// Clear all CSR bits
	csrrw x25, 0x235, x4	// Restore CSR

// Testing CSR 0x236
	csrr x13, 0x236	// Read CSR
	li x15, -1
	csrrw x11, 0x236, x15	// Write all 1s to CSR
	csrrw x11, 0x236, x0	// Write all 0s to CSR
	csrrs x11, 0x236, x15	// Set all CSR bits
	csrrc x11, 0x236, x15	// Clear all CSR bits
	csrrw x11, 0x236, x13	// Restore CSR

// Testing CSR 0x237
	csrr x24, 0x237	// Read CSR
	li x4, -1
	csrrw x22, 0x237, x4	// Write all 1s to CSR
	csrrw x22, 0x237, x0	// Write all 0s to CSR
	csrrs x22, 0x237, x4	// Set all CSR bits
	csrrc x22, 0x237, x4	// Clear all CSR bits
	csrrw x22, 0x237, x24	// Restore CSR

// Testing CSR 0x238
	csrr x3, 0x238	// Read CSR
	li x30, -1
	csrrw x27, 0x238, x30	// Write all 1s to CSR
	csrrw x27, 0x238, x0	// Write all 0s to CSR
	csrrs x27, 0x238, x30	// Set all CSR bits
	csrrc x27, 0x238, x30	// Clear all CSR bits
	csrrw x27, 0x238, x3	// Restore CSR

// Testing CSR 0x239
	csrr x28, 0x239	// Read CSR
	li x18, -1
	csrrw x8, 0x239, x18	// Write all 1s to CSR
	csrrw x8, 0x239, x0	// Write all 0s to CSR
	csrrs x8, 0x239, x18	// Set all CSR bits
	csrrc x8, 0x239, x18	// Clear all CSR bits
	csrrw x8, 0x239, x28	// Restore CSR

// Testing CSR 0x23a
	csrr x6, 0x23a	// Read CSR
	li x15, -1
	csrrw x7, 0x23a, x15	// Write all 1s to CSR
	csrrw x7, 0x23a, x0	// Write all 0s to CSR
	csrrs x7, 0x23a, x15	// Set all CSR bits
	csrrc x7, 0x23a, x15	// Clear all CSR bits
	csrrw x7, 0x23a, x6	// Restore CSR

// Testing CSR 0x23b
	csrr x19, 0x23b	// Read CSR
	li x12, -1
	csrrw x25, 0x23b, x12	// Write all 1s to CSR
	csrrw x25, 0x23b, x0	// Write all 0s to CSR
	csrrs x25, 0x23b, x12	// Set all CSR bits
	csrrc x25, 0x23b, x12	// Clear all CSR bits
	csrrw x25, 0x23b, x19	// Restore CSR

// Testing CSR 0x23c
	csrr x9, 0x23c	// Read CSR
	li x2, -1
	csrrw x5, 0x23c, x2	// Write all 1s to CSR
	csrrw x5, 0x23c, x0	// Write all 0s to CSR
	csrrs x5, 0x23c, x2	// Set all CSR bits
	csrrc x5, 0x23c, x2	// Clear all CSR bits
	csrrw x5, 0x23c, x9	// Restore CSR

// Testing CSR 0x23d
	csrr x26, 0x23d	// Read CSR
	li x1, -1
	csrrw x23, 0x23d, x1	// Write all 1s to CSR
	csrrw x23, 0x23d, x0	// Write all 0s to CSR
	csrrs x23, 0x23d, x1	// Set all CSR bits
	csrrc x23, 0x23d, x1	// Clear all CSR bits
	csrrw x23, 0x23d, x26	// Restore CSR

// Testing CSR 0x23e
	csrr x31, 0x23e	// Read CSR
	li x12, -1
	csrrw x15, 0x23e, x12	// Write all 1s to CSR
	csrrw x15, 0x23e, x0	// Write all 0s to CSR
	csrrs x15, 0x23e, x12	// Set all CSR bits
	csrrc x15, 0x23e, x12	// Clear all CSR bits
	csrrw x15, 0x23e, x31	// Restore CSR

// Testing CSR 0x23f
	csrr x10, 0x23f	// Read CSR
	li x22, -1
	csrrw x25, 0x23f, x22	// Write all 1s to CSR
	csrrw x25, 0x23f, x0	// Write all 0s to CSR
	csrrs x25, 0x23f, x22	// Set all CSR bits
	csrrc x25, 0x23f, x22	// Clear all CSR bits
	csrrw x25, 0x23f, x10	// Restore CSR

// Testing CSR 0x240
	csrr x19, 0x240	// Read CSR
	li x10, -1
	csrrw x23, 0x240, x10	// Write all 1s to CSR
	csrrw x23, 0x240, x0	// Write all 0s to CSR
	csrrs x23, 0x240, x10	// Set all CSR bits
	csrrc x23, 0x240, x10	// Clear all CSR bits
	csrrw x23, 0x240, x19	// Restore CSR

// Testing CSR 0x241
	csrr x21, 0x241	// Read CSR
	li x29, -1
	csrrw x27, 0x241, x29	// Write all 1s to CSR
	csrrw x27, 0x241, x0	// Write all 0s to CSR
	csrrs x27, 0x241, x29	// Set all CSR bits
	csrrc x27, 0x241, x29	// Clear all CSR bits
	csrrw x27, 0x241, x21	// Restore CSR

// Testing CSR 0x242
	csrr x11, 0x242	// Read CSR
	li x6, -1
	csrrw x22, 0x242, x6	// Write all 1s to CSR
	csrrw x22, 0x242, x0	// Write all 0s to CSR
	csrrs x22, 0x242, x6	// Set all CSR bits
	csrrc x22, 0x242, x6	// Clear all CSR bits
	csrrw x22, 0x242, x11	// Restore CSR

// Testing CSR 0x243
	csrr x31, 0x243	// Read CSR
	li x1, -1
	csrrw x19, 0x243, x1	// Write all 1s to CSR
	csrrw x19, 0x243, x0	// Write all 0s to CSR
	csrrs x19, 0x243, x1	// Set all CSR bits
	csrrc x19, 0x243, x1	// Clear all CSR bits
	csrrw x19, 0x243, x31	// Restore CSR

// Testing CSR 0x244
	csrr x10, 0x244	// Read CSR
	li x6, -1
	csrrw x1, 0x244, x6	// Write all 1s to CSR
	csrrw x1, 0x244, x0	// Write all 0s to CSR
	csrrs x1, 0x244, x6	// Set all CSR bits
	csrrc x1, 0x244, x6	// Clear all CSR bits
	csrrw x1, 0x244, x10	// Restore CSR

// Testing CSR 0x245
	csrr x15, 0x245	// Read CSR
	li x28, -1
	csrrw x29, 0x245, x28	// Write all 1s to CSR
	csrrw x29, 0x245, x0	// Write all 0s to CSR
	csrrs x29, 0x245, x28	// Set all CSR bits
	csrrc x29, 0x245, x28	// Clear all CSR bits
	csrrw x29, 0x245, x15	// Restore CSR

// Testing CSR 0x246
	csrr x4, 0x246	// Read CSR
	li x29, -1
	csrrw x14, 0x246, x29	// Write all 1s to CSR
	csrrw x14, 0x246, x0	// Write all 0s to CSR
	csrrs x14, 0x246, x29	// Set all CSR bits
	csrrc x14, 0x246, x29	// Clear all CSR bits
	csrrw x14, 0x246, x4	// Restore CSR

// Testing CSR 0x247
	csrr x22, 0x247	// Read CSR
	li x23, -1
	csrrw x28, 0x247, x23	// Write all 1s to CSR
	csrrw x28, 0x247, x0	// Write all 0s to CSR
	csrrs x28, 0x247, x23	// Set all CSR bits
	csrrc x28, 0x247, x23	// Clear all CSR bits
	csrrw x28, 0x247, x22	// Restore CSR

// Testing CSR 0x248
	csrr x21, 0x248	// Read CSR
	li x16, -1
	csrrw x25, 0x248, x16	// Write all 1s to CSR
	csrrw x25, 0x248, x0	// Write all 0s to CSR
	csrrs x25, 0x248, x16	// Set all CSR bits
	csrrc x25, 0x248, x16	// Clear all CSR bits
	csrrw x25, 0x248, x21	// Restore CSR

// Testing CSR 0x249
	csrr x3, 0x249	// Read CSR
	li x2, -1
	csrrw x15, 0x249, x2	// Write all 1s to CSR
	csrrw x15, 0x249, x0	// Write all 0s to CSR
	csrrs x15, 0x249, x2	// Set all CSR bits
	csrrc x15, 0x249, x2	// Clear all CSR bits
	csrrw x15, 0x249, x3	// Restore CSR

// Testing CSR 0x24a
	csrr x22, 0x24a	// Read CSR
	li x23, -1
	csrrw x14, 0x24a, x23	// Write all 1s to CSR
	csrrw x14, 0x24a, x0	// Write all 0s to CSR
	csrrs x14, 0x24a, x23	// Set all CSR bits
	csrrc x14, 0x24a, x23	// Clear all CSR bits
	csrrw x14, 0x24a, x22	// Restore CSR

// Testing CSR 0x24b
	csrr x8, 0x24b	// Read CSR
	li x9, -1
	csrrw x5, 0x24b, x9	// Write all 1s to CSR
	csrrw x5, 0x24b, x0	// Write all 0s to CSR
	csrrs x5, 0x24b, x9	// Set all CSR bits
	csrrc x5, 0x24b, x9	// Clear all CSR bits
	csrrw x5, 0x24b, x8	// Restore CSR

// Testing CSR 0x24c
	csrr x19, 0x24c	// Read CSR
	li x16, -1
	csrrw x15, 0x24c, x16	// Write all 1s to CSR
	csrrw x15, 0x24c, x0	// Write all 0s to CSR
	csrrs x15, 0x24c, x16	// Set all CSR bits
	csrrc x15, 0x24c, x16	// Clear all CSR bits
	csrrw x15, 0x24c, x19	// Restore CSR

// Testing CSR 0x24d
	csrr x3, 0x24d	// Read CSR
	li x21, -1
	csrrw x28, 0x24d, x21	// Write all 1s to CSR
	csrrw x28, 0x24d, x0	// Write all 0s to CSR
	csrrs x28, 0x24d, x21	// Set all CSR bits
	csrrc x28, 0x24d, x21	// Clear all CSR bits
	csrrw x28, 0x24d, x3	// Restore CSR

// Testing CSR 0x24e
	csrr x12, 0x24e	// Read CSR
	li x23, -1
	csrrw x31, 0x24e, x23	// Write all 1s to CSR
	csrrw x31, 0x24e, x0	// Write all 0s to CSR
	csrrs x31, 0x24e, x23	// Set all CSR bits
	csrrc x31, 0x24e, x23	// Clear all CSR bits
	csrrw x31, 0x24e, x12	// Restore CSR

// Testing CSR 0x24f
	csrr x14, 0x24f	// Read CSR
	li x27, -1
	csrrw x18, 0x24f, x27	// Write all 1s to CSR
	csrrw x18, 0x24f, x0	// Write all 0s to CSR
	csrrs x18, 0x24f, x27	// Set all CSR bits
	csrrc x18, 0x24f, x27	// Clear all CSR bits
	csrrw x18, 0x24f, x14	// Restore CSR

// Testing CSR 0x250
	csrr x10, 0x250	// Read CSR
	li x16, -1
	csrrw x15, 0x250, x16	// Write all 1s to CSR
	csrrw x15, 0x250, x0	// Write all 0s to CSR
	csrrs x15, 0x250, x16	// Set all CSR bits
	csrrc x15, 0x250, x16	// Clear all CSR bits
	csrrw x15, 0x250, x10	// Restore CSR

// Testing CSR 0x251
	csrr x11, 0x251	// Read CSR
	li x19, -1
	csrrw x30, 0x251, x19	// Write all 1s to CSR
	csrrw x30, 0x251, x0	// Write all 0s to CSR
	csrrs x30, 0x251, x19	// Set all CSR bits
	csrrc x30, 0x251, x19	// Clear all CSR bits
	csrrw x30, 0x251, x11	// Restore CSR

// Testing CSR 0x252
	csrr x10, 0x252	// Read CSR
	li x3, -1
	csrrw x4, 0x252, x3	// Write all 1s to CSR
	csrrw x4, 0x252, x0	// Write all 0s to CSR
	csrrs x4, 0x252, x3	// Set all CSR bits
	csrrc x4, 0x252, x3	// Clear all CSR bits
	csrrw x4, 0x252, x10	// Restore CSR

// Testing CSR 0x253
	csrr x4, 0x253	// Read CSR
	li x31, -1
	csrrw x3, 0x253, x31	// Write all 1s to CSR
	csrrw x3, 0x253, x0	// Write all 0s to CSR
	csrrs x3, 0x253, x31	// Set all CSR bits
	csrrc x3, 0x253, x31	// Clear all CSR bits
	csrrw x3, 0x253, x4	// Restore CSR

// Testing CSR 0x254
	csrr x29, 0x254	// Read CSR
	li x8, -1
	csrrw x23, 0x254, x8	// Write all 1s to CSR
	csrrw x23, 0x254, x0	// Write all 0s to CSR
	csrrs x23, 0x254, x8	// Set all CSR bits
	csrrc x23, 0x254, x8	// Clear all CSR bits
	csrrw x23, 0x254, x29	// Restore CSR

// Testing CSR 0x255
	csrr x14, 0x255	// Read CSR
	li x15, -1
	csrrw x3, 0x255, x15	// Write all 1s to CSR
	csrrw x3, 0x255, x0	// Write all 0s to CSR
	csrrs x3, 0x255, x15	// Set all CSR bits
	csrrc x3, 0x255, x15	// Clear all CSR bits
	csrrw x3, 0x255, x14	// Restore CSR

// Testing CSR 0x256
	csrr x29, 0x256	// Read CSR
	li x19, -1
	csrrw x15, 0x256, x19	// Write all 1s to CSR
	csrrw x15, 0x256, x0	// Write all 0s to CSR
	csrrs x15, 0x256, x19	// Set all CSR bits
	csrrc x15, 0x256, x19	// Clear all CSR bits
	csrrw x15, 0x256, x29	// Restore CSR

// Testing CSR 0x257
	csrr x27, 0x257	// Read CSR
	li x21, -1
	csrrw x1, 0x257, x21	// Write all 1s to CSR
	csrrw x1, 0x257, x0	// Write all 0s to CSR
	csrrs x1, 0x257, x21	// Set all CSR bits
	csrrc x1, 0x257, x21	// Clear all CSR bits
	csrrw x1, 0x257, x27	// Restore CSR

// Testing CSR 0x258
	csrr x30, 0x258	// Read CSR
	li x18, -1
	csrrw x6, 0x258, x18	// Write all 1s to CSR
	csrrw x6, 0x258, x0	// Write all 0s to CSR
	csrrs x6, 0x258, x18	// Set all CSR bits
	csrrc x6, 0x258, x18	// Clear all CSR bits
	csrrw x6, 0x258, x30	// Restore CSR

// Testing CSR 0x259
	csrr x5, 0x259	// Read CSR
	li x25, -1
	csrrw x26, 0x259, x25	// Write all 1s to CSR
	csrrw x26, 0x259, x0	// Write all 0s to CSR
	csrrs x26, 0x259, x25	// Set all CSR bits
	csrrc x26, 0x259, x25	// Clear all CSR bits
	csrrw x26, 0x259, x5	// Restore CSR

// Testing CSR 0x25a
	csrr x30, 0x25a	// Read CSR
	li x22, -1
	csrrw x14, 0x25a, x22	// Write all 1s to CSR
	csrrw x14, 0x25a, x0	// Write all 0s to CSR
	csrrs x14, 0x25a, x22	// Set all CSR bits
	csrrc x14, 0x25a, x22	// Clear all CSR bits
	csrrw x14, 0x25a, x30	// Restore CSR

// Testing CSR 0x25b
	csrr x27, 0x25b	// Read CSR
	li x18, -1
	csrrw x22, 0x25b, x18	// Write all 1s to CSR
	csrrw x22, 0x25b, x0	// Write all 0s to CSR
	csrrs x22, 0x25b, x18	// Set all CSR bits
	csrrc x22, 0x25b, x18	// Clear all CSR bits
	csrrw x22, 0x25b, x27	// Restore CSR

// Testing CSR 0x25c
	csrr x11, 0x25c	// Read CSR
	li x6, -1
	csrrw x30, 0x25c, x6	// Write all 1s to CSR
	csrrw x30, 0x25c, x0	// Write all 0s to CSR
	csrrs x30, 0x25c, x6	// Set all CSR bits
	csrrc x30, 0x25c, x6	// Clear all CSR bits
	csrrw x30, 0x25c, x11	// Restore CSR

// Testing CSR 0x25d
	csrr x23, 0x25d	// Read CSR
	li x11, -1
	csrrw x6, 0x25d, x11	// Write all 1s to CSR
	csrrw x6, 0x25d, x0	// Write all 0s to CSR
	csrrs x6, 0x25d, x11	// Set all CSR bits
	csrrc x6, 0x25d, x11	// Clear all CSR bits
	csrrw x6, 0x25d, x23	// Restore CSR

// Testing CSR 0x25e
	csrr x8, 0x25e	// Read CSR
	li x16, -1
	csrrw x13, 0x25e, x16	// Write all 1s to CSR
	csrrw x13, 0x25e, x0	// Write all 0s to CSR
	csrrs x13, 0x25e, x16	// Set all CSR bits
	csrrc x13, 0x25e, x16	// Clear all CSR bits
	csrrw x13, 0x25e, x8	// Restore CSR

// Testing CSR 0x25f
	csrr x6, 0x25f	// Read CSR
	li x4, -1
	csrrw x12, 0x25f, x4	// Write all 1s to CSR
	csrrw x12, 0x25f, x0	// Write all 0s to CSR
	csrrs x12, 0x25f, x4	// Set all CSR bits
	csrrc x12, 0x25f, x4	// Clear all CSR bits
	csrrw x12, 0x25f, x6	// Restore CSR

// Testing CSR 0x260
	csrr x6, 0x260	// Read CSR
	li x15, -1
	csrrw x4, 0x260, x15	// Write all 1s to CSR
	csrrw x4, 0x260, x0	// Write all 0s to CSR
	csrrs x4, 0x260, x15	// Set all CSR bits
	csrrc x4, 0x260, x15	// Clear all CSR bits
	csrrw x4, 0x260, x6	// Restore CSR

// Testing CSR 0x261
	csrr x31, 0x261	// Read CSR
	li x23, -1
	csrrw x5, 0x261, x23	// Write all 1s to CSR
	csrrw x5, 0x261, x0	// Write all 0s to CSR
	csrrs x5, 0x261, x23	// Set all CSR bits
	csrrc x5, 0x261, x23	// Clear all CSR bits
	csrrw x5, 0x261, x31	// Restore CSR

// Testing CSR 0x262
	csrr x11, 0x262	// Read CSR
	li x25, -1
	csrrw x2, 0x262, x25	// Write all 1s to CSR
	csrrw x2, 0x262, x0	// Write all 0s to CSR
	csrrs x2, 0x262, x25	// Set all CSR bits
	csrrc x2, 0x262, x25	// Clear all CSR bits
	csrrw x2, 0x262, x11	// Restore CSR

// Testing CSR 0x263
	csrr x28, 0x263	// Read CSR
	li x23, -1
	csrrw x4, 0x263, x23	// Write all 1s to CSR
	csrrw x4, 0x263, x0	// Write all 0s to CSR
	csrrs x4, 0x263, x23	// Set all CSR bits
	csrrc x4, 0x263, x23	// Clear all CSR bits
	csrrw x4, 0x263, x28	// Restore CSR

// Testing CSR 0x264
	csrr x10, 0x264	// Read CSR
	li x9, -1
	csrrw x26, 0x264, x9	// Write all 1s to CSR
	csrrw x26, 0x264, x0	// Write all 0s to CSR
	csrrs x26, 0x264, x9	// Set all CSR bits
	csrrc x26, 0x264, x9	// Clear all CSR bits
	csrrw x26, 0x264, x10	// Restore CSR

// Testing CSR 0x265
	csrr x30, 0x265	// Read CSR
	li x6, -1
	csrrw x19, 0x265, x6	// Write all 1s to CSR
	csrrw x19, 0x265, x0	// Write all 0s to CSR
	csrrs x19, 0x265, x6	// Set all CSR bits
	csrrc x19, 0x265, x6	// Clear all CSR bits
	csrrw x19, 0x265, x30	// Restore CSR

// Testing CSR 0x266
	csrr x22, 0x266	// Read CSR
	li x30, -1
	csrrw x7, 0x266, x30	// Write all 1s to CSR
	csrrw x7, 0x266, x0	// Write all 0s to CSR
	csrrs x7, 0x266, x30	// Set all CSR bits
	csrrc x7, 0x266, x30	// Clear all CSR bits
	csrrw x7, 0x266, x22	// Restore CSR

// Testing CSR 0x267
	csrr x13, 0x267	// Read CSR
	li x16, -1
	csrrw x23, 0x267, x16	// Write all 1s to CSR
	csrrw x23, 0x267, x0	// Write all 0s to CSR
	csrrs x23, 0x267, x16	// Set all CSR bits
	csrrc x23, 0x267, x16	// Clear all CSR bits
	csrrw x23, 0x267, x13	// Restore CSR

// Testing CSR 0x268
	csrr x18, 0x268	// Read CSR
	li x1, -1
	csrrw x9, 0x268, x1	// Write all 1s to CSR
	csrrw x9, 0x268, x0	// Write all 0s to CSR
	csrrs x9, 0x268, x1	// Set all CSR bits
	csrrc x9, 0x268, x1	// Clear all CSR bits
	csrrw x9, 0x268, x18	// Restore CSR

// Testing CSR 0x269
	csrr x21, 0x269	// Read CSR
	li x25, -1
	csrrw x31, 0x269, x25	// Write all 1s to CSR
	csrrw x31, 0x269, x0	// Write all 0s to CSR
	csrrs x31, 0x269, x25	// Set all CSR bits
	csrrc x31, 0x269, x25	// Clear all CSR bits
	csrrw x31, 0x269, x21	// Restore CSR

// Testing CSR 0x26a
	csrr x13, 0x26a	// Read CSR
	li x19, -1
	csrrw x4, 0x26a, x19	// Write all 1s to CSR
	csrrw x4, 0x26a, x0	// Write all 0s to CSR
	csrrs x4, 0x26a, x19	// Set all CSR bits
	csrrc x4, 0x26a, x19	// Clear all CSR bits
	csrrw x4, 0x26a, x13	// Restore CSR

// Testing CSR 0x26b
	csrr x10, 0x26b	// Read CSR
	li x12, -1
	csrrw x18, 0x26b, x12	// Write all 1s to CSR
	csrrw x18, 0x26b, x0	// Write all 0s to CSR
	csrrs x18, 0x26b, x12	// Set all CSR bits
	csrrc x18, 0x26b, x12	// Clear all CSR bits
	csrrw x18, 0x26b, x10	// Restore CSR

// Testing CSR 0x26c
	csrr x18, 0x26c	// Read CSR
	li x13, -1
	csrrw x10, 0x26c, x13	// Write all 1s to CSR
	csrrw x10, 0x26c, x0	// Write all 0s to CSR
	csrrs x10, 0x26c, x13	// Set all CSR bits
	csrrc x10, 0x26c, x13	// Clear all CSR bits
	csrrw x10, 0x26c, x18	// Restore CSR

// Testing CSR 0x26d
	csrr x10, 0x26d	// Read CSR
	li x3, -1
	csrrw x15, 0x26d, x3	// Write all 1s to CSR
	csrrw x15, 0x26d, x0	// Write all 0s to CSR
	csrrs x15, 0x26d, x3	// Set all CSR bits
	csrrc x15, 0x26d, x3	// Clear all CSR bits
	csrrw x15, 0x26d, x10	// Restore CSR

// Testing CSR 0x26e
	csrr x23, 0x26e	// Read CSR
	li x8, -1
	csrrw x10, 0x26e, x8	// Write all 1s to CSR
	csrrw x10, 0x26e, x0	// Write all 0s to CSR
	csrrs x10, 0x26e, x8	// Set all CSR bits
	csrrc x10, 0x26e, x8	// Clear all CSR bits
	csrrw x10, 0x26e, x23	// Restore CSR

// Testing CSR 0x26f
	csrr x16, 0x26f	// Read CSR
	li x1, -1
	csrrw x8, 0x26f, x1	// Write all 1s to CSR
	csrrw x8, 0x26f, x0	// Write all 0s to CSR
	csrrs x8, 0x26f, x1	// Set all CSR bits
	csrrc x8, 0x26f, x1	// Clear all CSR bits
	csrrw x8, 0x26f, x16	// Restore CSR

// Testing CSR 0x270
	csrr x26, 0x270	// Read CSR
	li x1, -1
	csrrw x4, 0x270, x1	// Write all 1s to CSR
	csrrw x4, 0x270, x0	// Write all 0s to CSR
	csrrs x4, 0x270, x1	// Set all CSR bits
	csrrc x4, 0x270, x1	// Clear all CSR bits
	csrrw x4, 0x270, x26	// Restore CSR

// Testing CSR 0x271
	csrr x1, 0x271	// Read CSR
	li x11, -1
	csrrw x14, 0x271, x11	// Write all 1s to CSR
	csrrw x14, 0x271, x0	// Write all 0s to CSR
	csrrs x14, 0x271, x11	// Set all CSR bits
	csrrc x14, 0x271, x11	// Clear all CSR bits
	csrrw x14, 0x271, x1	// Restore CSR

// Testing CSR 0x272
	csrr x5, 0x272	// Read CSR
	li x10, -1
	csrrw x2, 0x272, x10	// Write all 1s to CSR
	csrrw x2, 0x272, x0	// Write all 0s to CSR
	csrrs x2, 0x272, x10	// Set all CSR bits
	csrrc x2, 0x272, x10	// Clear all CSR bits
	csrrw x2, 0x272, x5	// Restore CSR

// Testing CSR 0x273
	csrr x4, 0x273	// Read CSR
	li x27, -1
	csrrw x26, 0x273, x27	// Write all 1s to CSR
	csrrw x26, 0x273, x0	// Write all 0s to CSR
	csrrs x26, 0x273, x27	// Set all CSR bits
	csrrc x26, 0x273, x27	// Clear all CSR bits
	csrrw x26, 0x273, x4	// Restore CSR

// Testing CSR 0x274
	csrr x4, 0x274	// Read CSR
	li x28, -1
	csrrw x10, 0x274, x28	// Write all 1s to CSR
	csrrw x10, 0x274, x0	// Write all 0s to CSR
	csrrs x10, 0x274, x28	// Set all CSR bits
	csrrc x10, 0x274, x28	// Clear all CSR bits
	csrrw x10, 0x274, x4	// Restore CSR

// Testing CSR 0x275
	csrr x15, 0x275	// Read CSR
	li x27, -1
	csrrw x10, 0x275, x27	// Write all 1s to CSR
	csrrw x10, 0x275, x0	// Write all 0s to CSR
	csrrs x10, 0x275, x27	// Set all CSR bits
	csrrc x10, 0x275, x27	// Clear all CSR bits
	csrrw x10, 0x275, x15	// Restore CSR

// Testing CSR 0x276
	csrr x24, 0x276	// Read CSR
	li x5, -1
	csrrw x14, 0x276, x5	// Write all 1s to CSR
	csrrw x14, 0x276, x0	// Write all 0s to CSR
	csrrs x14, 0x276, x5	// Set all CSR bits
	csrrc x14, 0x276, x5	// Clear all CSR bits
	csrrw x14, 0x276, x24	// Restore CSR

// Testing CSR 0x277
	csrr x9, 0x277	// Read CSR
	li x25, -1
	csrrw x12, 0x277, x25	// Write all 1s to CSR
	csrrw x12, 0x277, x0	// Write all 0s to CSR
	csrrs x12, 0x277, x25	// Set all CSR bits
	csrrc x12, 0x277, x25	// Clear all CSR bits
	csrrw x12, 0x277, x9	// Restore CSR

// Testing CSR 0x278
	csrr x9, 0x278	// Read CSR
	li x14, -1
	csrrw x19, 0x278, x14	// Write all 1s to CSR
	csrrw x19, 0x278, x0	// Write all 0s to CSR
	csrrs x19, 0x278, x14	// Set all CSR bits
	csrrc x19, 0x278, x14	// Clear all CSR bits
	csrrw x19, 0x278, x9	// Restore CSR

// Testing CSR 0x279
	csrr x26, 0x279	// Read CSR
	li x17, -1
	csrrw x10, 0x279, x17	// Write all 1s to CSR
	csrrw x10, 0x279, x0	// Write all 0s to CSR
	csrrs x10, 0x279, x17	// Set all CSR bits
	csrrc x10, 0x279, x17	// Clear all CSR bits
	csrrw x10, 0x279, x26	// Restore CSR

// Testing CSR 0x27a
	csrr x19, 0x27a	// Read CSR
	li x26, -1
	csrrw x16, 0x27a, x26	// Write all 1s to CSR
	csrrw x16, 0x27a, x0	// Write all 0s to CSR
	csrrs x16, 0x27a, x26	// Set all CSR bits
	csrrc x16, 0x27a, x26	// Clear all CSR bits
	csrrw x16, 0x27a, x19	// Restore CSR

// Testing CSR 0x27b
	csrr x14, 0x27b	// Read CSR
	li x8, -1
	csrrw x23, 0x27b, x8	// Write all 1s to CSR
	csrrw x23, 0x27b, x0	// Write all 0s to CSR
	csrrs x23, 0x27b, x8	// Set all CSR bits
	csrrc x23, 0x27b, x8	// Clear all CSR bits
	csrrw x23, 0x27b, x14	// Restore CSR

// Testing CSR 0x27c
	csrr x21, 0x27c	// Read CSR
	li x6, -1
	csrrw x22, 0x27c, x6	// Write all 1s to CSR
	csrrw x22, 0x27c, x0	// Write all 0s to CSR
	csrrs x22, 0x27c, x6	// Set all CSR bits
	csrrc x22, 0x27c, x6	// Clear all CSR bits
	csrrw x22, 0x27c, x21	// Restore CSR

// Testing CSR 0x27d
	csrr x15, 0x27d	// Read CSR
	li x10, -1
	csrrw x5, 0x27d, x10	// Write all 1s to CSR
	csrrw x5, 0x27d, x0	// Write all 0s to CSR
	csrrs x5, 0x27d, x10	// Set all CSR bits
	csrrc x5, 0x27d, x10	// Clear all CSR bits
	csrrw x5, 0x27d, x15	// Restore CSR

// Testing CSR 0x27e
	csrr x4, 0x27e	// Read CSR
	li x19, -1
	csrrw x6, 0x27e, x19	// Write all 1s to CSR
	csrrw x6, 0x27e, x0	// Write all 0s to CSR
	csrrs x6, 0x27e, x19	// Set all CSR bits
	csrrc x6, 0x27e, x19	// Clear all CSR bits
	csrrw x6, 0x27e, x4	// Restore CSR

// Testing CSR 0x27f
	csrr x5, 0x27f	// Read CSR
	li x9, -1
	csrrw x31, 0x27f, x9	// Write all 1s to CSR
	csrrw x31, 0x27f, x0	// Write all 0s to CSR
	csrrs x31, 0x27f, x9	// Set all CSR bits
	csrrc x31, 0x27f, x9	// Clear all CSR bits
	csrrw x31, 0x27f, x5	// Restore CSR

// Testing CSR 0x280
	csrr x25, 0x280	// Read CSR
	li x30, -1
	csrrw x10, 0x280, x30	// Write all 1s to CSR
	csrrw x10, 0x280, x0	// Write all 0s to CSR
	csrrs x10, 0x280, x30	// Set all CSR bits
	csrrc x10, 0x280, x30	// Clear all CSR bits
	csrrw x10, 0x280, x25	// Restore CSR

// Testing CSR 0x281
	csrr x9, 0x281	// Read CSR
	li x4, -1
	csrrw x11, 0x281, x4	// Write all 1s to CSR
	csrrw x11, 0x281, x0	// Write all 0s to CSR
	csrrs x11, 0x281, x4	// Set all CSR bits
	csrrc x11, 0x281, x4	// Clear all CSR bits
	csrrw x11, 0x281, x9	// Restore CSR

// Testing CSR 0x282
	csrr x4, 0x282	// Read CSR
	li x1, -1
	csrrw x7, 0x282, x1	// Write all 1s to CSR
	csrrw x7, 0x282, x0	// Write all 0s to CSR
	csrrs x7, 0x282, x1	// Set all CSR bits
	csrrc x7, 0x282, x1	// Clear all CSR bits
	csrrw x7, 0x282, x4	// Restore CSR

// Testing CSR 0x283
	csrr x3, 0x283	// Read CSR
	li x19, -1
	csrrw x23, 0x283, x19	// Write all 1s to CSR
	csrrw x23, 0x283, x0	// Write all 0s to CSR
	csrrs x23, 0x283, x19	// Set all CSR bits
	csrrc x23, 0x283, x19	// Clear all CSR bits
	csrrw x23, 0x283, x3	// Restore CSR

// Testing CSR 0x284
	csrr x11, 0x284	// Read CSR
	li x17, -1
	csrrw x2, 0x284, x17	// Write all 1s to CSR
	csrrw x2, 0x284, x0	// Write all 0s to CSR
	csrrs x2, 0x284, x17	// Set all CSR bits
	csrrc x2, 0x284, x17	// Clear all CSR bits
	csrrw x2, 0x284, x11	// Restore CSR

// Testing CSR 0x285
	csrr x9, 0x285	// Read CSR
	li x20, -1
	csrrw x21, 0x285, x20	// Write all 1s to CSR
	csrrw x21, 0x285, x0	// Write all 0s to CSR
	csrrs x21, 0x285, x20	// Set all CSR bits
	csrrc x21, 0x285, x20	// Clear all CSR bits
	csrrw x21, 0x285, x9	// Restore CSR

// Testing CSR 0x286
	csrr x16, 0x286	// Read CSR
	li x14, -1
	csrrw x29, 0x286, x14	// Write all 1s to CSR
	csrrw x29, 0x286, x0	// Write all 0s to CSR
	csrrs x29, 0x286, x14	// Set all CSR bits
	csrrc x29, 0x286, x14	// Clear all CSR bits
	csrrw x29, 0x286, x16	// Restore CSR

// Testing CSR 0x287
	csrr x4, 0x287	// Read CSR
	li x6, -1
	csrrw x9, 0x287, x6	// Write all 1s to CSR
	csrrw x9, 0x287, x0	// Write all 0s to CSR
	csrrs x9, 0x287, x6	// Set all CSR bits
	csrrc x9, 0x287, x6	// Clear all CSR bits
	csrrw x9, 0x287, x4	// Restore CSR

// Testing CSR 0x288
	csrr x22, 0x288	// Read CSR
	li x23, -1
	csrrw x7, 0x288, x23	// Write all 1s to CSR
	csrrw x7, 0x288, x0	// Write all 0s to CSR
	csrrs x7, 0x288, x23	// Set all CSR bits
	csrrc x7, 0x288, x23	// Clear all CSR bits
	csrrw x7, 0x288, x22	// Restore CSR

// Testing CSR 0x289
	csrr x8, 0x289	// Read CSR
	li x20, -1
	csrrw x11, 0x289, x20	// Write all 1s to CSR
	csrrw x11, 0x289, x0	// Write all 0s to CSR
	csrrs x11, 0x289, x20	// Set all CSR bits
	csrrc x11, 0x289, x20	// Clear all CSR bits
	csrrw x11, 0x289, x8	// Restore CSR

// Testing CSR 0x28a
	csrr x31, 0x28a	// Read CSR
	li x6, -1
	csrrw x27, 0x28a, x6	// Write all 1s to CSR
	csrrw x27, 0x28a, x0	// Write all 0s to CSR
	csrrs x27, 0x28a, x6	// Set all CSR bits
	csrrc x27, 0x28a, x6	// Clear all CSR bits
	csrrw x27, 0x28a, x31	// Restore CSR

// Testing CSR 0x28b
	csrr x2, 0x28b	// Read CSR
	li x30, -1
	csrrw x1, 0x28b, x30	// Write all 1s to CSR
	csrrw x1, 0x28b, x0	// Write all 0s to CSR
	csrrs x1, 0x28b, x30	// Set all CSR bits
	csrrc x1, 0x28b, x30	// Clear all CSR bits
	csrrw x1, 0x28b, x2	// Restore CSR

// Testing CSR 0x28c
	csrr x7, 0x28c	// Read CSR
	li x29, -1
	csrrw x4, 0x28c, x29	// Write all 1s to CSR
	csrrw x4, 0x28c, x0	// Write all 0s to CSR
	csrrs x4, 0x28c, x29	// Set all CSR bits
	csrrc x4, 0x28c, x29	// Clear all CSR bits
	csrrw x4, 0x28c, x7	// Restore CSR

// Testing CSR 0x28d
	csrr x24, 0x28d	// Read CSR
	li x22, -1
	csrrw x2, 0x28d, x22	// Write all 1s to CSR
	csrrw x2, 0x28d, x0	// Write all 0s to CSR
	csrrs x2, 0x28d, x22	// Set all CSR bits
	csrrc x2, 0x28d, x22	// Clear all CSR bits
	csrrw x2, 0x28d, x24	// Restore CSR

// Testing CSR 0x28e
	csrr x29, 0x28e	// Read CSR
	li x30, -1
	csrrw x16, 0x28e, x30	// Write all 1s to CSR
	csrrw x16, 0x28e, x0	// Write all 0s to CSR
	csrrs x16, 0x28e, x30	// Set all CSR bits
	csrrc x16, 0x28e, x30	// Clear all CSR bits
	csrrw x16, 0x28e, x29	// Restore CSR

// Testing CSR 0x28f
	csrr x3, 0x28f	// Read CSR
	li x10, -1
	csrrw x7, 0x28f, x10	// Write all 1s to CSR
	csrrw x7, 0x28f, x0	// Write all 0s to CSR
	csrrs x7, 0x28f, x10	// Set all CSR bits
	csrrc x7, 0x28f, x10	// Clear all CSR bits
	csrrw x7, 0x28f, x3	// Restore CSR

// Testing CSR 0x290
	csrr x17, 0x290	// Read CSR
	li x12, -1
	csrrw x23, 0x290, x12	// Write all 1s to CSR
	csrrw x23, 0x290, x0	// Write all 0s to CSR
	csrrs x23, 0x290, x12	// Set all CSR bits
	csrrc x23, 0x290, x12	// Clear all CSR bits
	csrrw x23, 0x290, x17	// Restore CSR

// Testing CSR 0x291
	csrr x29, 0x291	// Read CSR
	li x21, -1
	csrrw x14, 0x291, x21	// Write all 1s to CSR
	csrrw x14, 0x291, x0	// Write all 0s to CSR
	csrrs x14, 0x291, x21	// Set all CSR bits
	csrrc x14, 0x291, x21	// Clear all CSR bits
	csrrw x14, 0x291, x29	// Restore CSR

// Testing CSR 0x292
	csrr x6, 0x292	// Read CSR
	li x28, -1
	csrrw x25, 0x292, x28	// Write all 1s to CSR
	csrrw x25, 0x292, x0	// Write all 0s to CSR
	csrrs x25, 0x292, x28	// Set all CSR bits
	csrrc x25, 0x292, x28	// Clear all CSR bits
	csrrw x25, 0x292, x6	// Restore CSR

// Testing CSR 0x293
	csrr x8, 0x293	// Read CSR
	li x29, -1
	csrrw x23, 0x293, x29	// Write all 1s to CSR
	csrrw x23, 0x293, x0	// Write all 0s to CSR
	csrrs x23, 0x293, x29	// Set all CSR bits
	csrrc x23, 0x293, x29	// Clear all CSR bits
	csrrw x23, 0x293, x8	// Restore CSR

// Testing CSR 0x294
	csrr x17, 0x294	// Read CSR
	li x30, -1
	csrrw x23, 0x294, x30	// Write all 1s to CSR
	csrrw x23, 0x294, x0	// Write all 0s to CSR
	csrrs x23, 0x294, x30	// Set all CSR bits
	csrrc x23, 0x294, x30	// Clear all CSR bits
	csrrw x23, 0x294, x17	// Restore CSR

// Testing CSR 0x295
	csrr x18, 0x295	// Read CSR
	li x19, -1
	csrrw x30, 0x295, x19	// Write all 1s to CSR
	csrrw x30, 0x295, x0	// Write all 0s to CSR
	csrrs x30, 0x295, x19	// Set all CSR bits
	csrrc x30, 0x295, x19	// Clear all CSR bits
	csrrw x30, 0x295, x18	// Restore CSR

// Testing CSR 0x296
	csrr x6, 0x296	// Read CSR
	li x15, -1
	csrrw x13, 0x296, x15	// Write all 1s to CSR
	csrrw x13, 0x296, x0	// Write all 0s to CSR
	csrrs x13, 0x296, x15	// Set all CSR bits
	csrrc x13, 0x296, x15	// Clear all CSR bits
	csrrw x13, 0x296, x6	// Restore CSR

// Testing CSR 0x297
	csrr x7, 0x297	// Read CSR
	li x31, -1
	csrrw x27, 0x297, x31	// Write all 1s to CSR
	csrrw x27, 0x297, x0	// Write all 0s to CSR
	csrrs x27, 0x297, x31	// Set all CSR bits
	csrrc x27, 0x297, x31	// Clear all CSR bits
	csrrw x27, 0x297, x7	// Restore CSR

// Testing CSR 0x298
	csrr x2, 0x298	// Read CSR
	li x17, -1
	csrrw x25, 0x298, x17	// Write all 1s to CSR
	csrrw x25, 0x298, x0	// Write all 0s to CSR
	csrrs x25, 0x298, x17	// Set all CSR bits
	csrrc x25, 0x298, x17	// Clear all CSR bits
	csrrw x25, 0x298, x2	// Restore CSR

// Testing CSR 0x299
	csrr x20, 0x299	// Read CSR
	li x19, -1
	csrrw x14, 0x299, x19	// Write all 1s to CSR
	csrrw x14, 0x299, x0	// Write all 0s to CSR
	csrrs x14, 0x299, x19	// Set all CSR bits
	csrrc x14, 0x299, x19	// Clear all CSR bits
	csrrw x14, 0x299, x20	// Restore CSR

// Testing CSR 0x29a
	csrr x23, 0x29a	// Read CSR
	li x16, -1
	csrrw x31, 0x29a, x16	// Write all 1s to CSR
	csrrw x31, 0x29a, x0	// Write all 0s to CSR
	csrrs x31, 0x29a, x16	// Set all CSR bits
	csrrc x31, 0x29a, x16	// Clear all CSR bits
	csrrw x31, 0x29a, x23	// Restore CSR

// Testing CSR 0x29b
	csrr x5, 0x29b	// Read CSR
	li x14, -1
	csrrw x20, 0x29b, x14	// Write all 1s to CSR
	csrrw x20, 0x29b, x0	// Write all 0s to CSR
	csrrs x20, 0x29b, x14	// Set all CSR bits
	csrrc x20, 0x29b, x14	// Clear all CSR bits
	csrrw x20, 0x29b, x5	// Restore CSR

// Testing CSR 0x29c
	csrr x27, 0x29c	// Read CSR
	li x31, -1
	csrrw x17, 0x29c, x31	// Write all 1s to CSR
	csrrw x17, 0x29c, x0	// Write all 0s to CSR
	csrrs x17, 0x29c, x31	// Set all CSR bits
	csrrc x17, 0x29c, x31	// Clear all CSR bits
	csrrw x17, 0x29c, x27	// Restore CSR

// Testing CSR 0x29d
	csrr x17, 0x29d	// Read CSR
	li x31, -1
	csrrw x28, 0x29d, x31	// Write all 1s to CSR
	csrrw x28, 0x29d, x0	// Write all 0s to CSR
	csrrs x28, 0x29d, x31	// Set all CSR bits
	csrrc x28, 0x29d, x31	// Clear all CSR bits
	csrrw x28, 0x29d, x17	// Restore CSR

// Testing CSR 0x29e
	csrr x29, 0x29e	// Read CSR
	li x22, -1
	csrrw x3, 0x29e, x22	// Write all 1s to CSR
	csrrw x3, 0x29e, x0	// Write all 0s to CSR
	csrrs x3, 0x29e, x22	// Set all CSR bits
	csrrc x3, 0x29e, x22	// Clear all CSR bits
	csrrw x3, 0x29e, x29	// Restore CSR

// Testing CSR 0x29f
	csrr x6, 0x29f	// Read CSR
	li x19, -1
	csrrw x27, 0x29f, x19	// Write all 1s to CSR
	csrrw x27, 0x29f, x0	// Write all 0s to CSR
	csrrs x27, 0x29f, x19	// Set all CSR bits
	csrrc x27, 0x29f, x19	// Clear all CSR bits
	csrrw x27, 0x29f, x6	// Restore CSR

// Testing CSR 0x2a0
	csrr x27, 0x2a0	// Read CSR
	li x6, -1
	csrrw x11, 0x2a0, x6	// Write all 1s to CSR
	csrrw x11, 0x2a0, x0	// Write all 0s to CSR
	csrrs x11, 0x2a0, x6	// Set all CSR bits
	csrrc x11, 0x2a0, x6	// Clear all CSR bits
	csrrw x11, 0x2a0, x27	// Restore CSR

// Testing CSR 0x2a1
	csrr x31, 0x2a1	// Read CSR
	li x20, -1
	csrrw x6, 0x2a1, x20	// Write all 1s to CSR
	csrrw x6, 0x2a1, x0	// Write all 0s to CSR
	csrrs x6, 0x2a1, x20	// Set all CSR bits
	csrrc x6, 0x2a1, x20	// Clear all CSR bits
	csrrw x6, 0x2a1, x31	// Restore CSR

// Testing CSR 0x2a2
	csrr x20, 0x2a2	// Read CSR
	li x14, -1
	csrrw x29, 0x2a2, x14	// Write all 1s to CSR
	csrrw x29, 0x2a2, x0	// Write all 0s to CSR
	csrrs x29, 0x2a2, x14	// Set all CSR bits
	csrrc x29, 0x2a2, x14	// Clear all CSR bits
	csrrw x29, 0x2a2, x20	// Restore CSR

// Testing CSR 0x2a3
	csrr x27, 0x2a3	// Read CSR
	li x21, -1
	csrrw x12, 0x2a3, x21	// Write all 1s to CSR
	csrrw x12, 0x2a3, x0	// Write all 0s to CSR
	csrrs x12, 0x2a3, x21	// Set all CSR bits
	csrrc x12, 0x2a3, x21	// Clear all CSR bits
	csrrw x12, 0x2a3, x27	// Restore CSR

// Testing CSR 0x2a4
	csrr x20, 0x2a4	// Read CSR
	li x14, -1
	csrrw x22, 0x2a4, x14	// Write all 1s to CSR
	csrrw x22, 0x2a4, x0	// Write all 0s to CSR
	csrrs x22, 0x2a4, x14	// Set all CSR bits
	csrrc x22, 0x2a4, x14	// Clear all CSR bits
	csrrw x22, 0x2a4, x20	// Restore CSR

// Testing CSR 0x2a5
	csrr x14, 0x2a5	// Read CSR
	li x10, -1
	csrrw x7, 0x2a5, x10	// Write all 1s to CSR
	csrrw x7, 0x2a5, x0	// Write all 0s to CSR
	csrrs x7, 0x2a5, x10	// Set all CSR bits
	csrrc x7, 0x2a5, x10	// Clear all CSR bits
	csrrw x7, 0x2a5, x14	// Restore CSR

// Testing CSR 0x2a6
	csrr x13, 0x2a6	// Read CSR
	li x14, -1
	csrrw x19, 0x2a6, x14	// Write all 1s to CSR
	csrrw x19, 0x2a6, x0	// Write all 0s to CSR
	csrrs x19, 0x2a6, x14	// Set all CSR bits
	csrrc x19, 0x2a6, x14	// Clear all CSR bits
	csrrw x19, 0x2a6, x13	// Restore CSR

// Testing CSR 0x2a7
	csrr x14, 0x2a7	// Read CSR
	li x17, -1
	csrrw x23, 0x2a7, x17	// Write all 1s to CSR
	csrrw x23, 0x2a7, x0	// Write all 0s to CSR
	csrrs x23, 0x2a7, x17	// Set all CSR bits
	csrrc x23, 0x2a7, x17	// Clear all CSR bits
	csrrw x23, 0x2a7, x14	// Restore CSR

// Testing CSR 0x2a8
	csrr x31, 0x2a8	// Read CSR
	li x8, -1
	csrrw x24, 0x2a8, x8	// Write all 1s to CSR
	csrrw x24, 0x2a8, x0	// Write all 0s to CSR
	csrrs x24, 0x2a8, x8	// Set all CSR bits
	csrrc x24, 0x2a8, x8	// Clear all CSR bits
	csrrw x24, 0x2a8, x31	// Restore CSR

// Testing CSR 0x2a9
	csrr x15, 0x2a9	// Read CSR
	li x3, -1
	csrrw x1, 0x2a9, x3	// Write all 1s to CSR
	csrrw x1, 0x2a9, x0	// Write all 0s to CSR
	csrrs x1, 0x2a9, x3	// Set all CSR bits
	csrrc x1, 0x2a9, x3	// Clear all CSR bits
	csrrw x1, 0x2a9, x15	// Restore CSR

// Testing CSR 0x2aa
	csrr x22, 0x2aa	// Read CSR
	li x16, -1
	csrrw x19, 0x2aa, x16	// Write all 1s to CSR
	csrrw x19, 0x2aa, x0	// Write all 0s to CSR
	csrrs x19, 0x2aa, x16	// Set all CSR bits
	csrrc x19, 0x2aa, x16	// Clear all CSR bits
	csrrw x19, 0x2aa, x22	// Restore CSR

// Testing CSR 0x2ab
	csrr x17, 0x2ab	// Read CSR
	li x2, -1
	csrrw x11, 0x2ab, x2	// Write all 1s to CSR
	csrrw x11, 0x2ab, x0	// Write all 0s to CSR
	csrrs x11, 0x2ab, x2	// Set all CSR bits
	csrrc x11, 0x2ab, x2	// Clear all CSR bits
	csrrw x11, 0x2ab, x17	// Restore CSR

// Testing CSR 0x2ac
	csrr x11, 0x2ac	// Read CSR
	li x25, -1
	csrrw x30, 0x2ac, x25	// Write all 1s to CSR
	csrrw x30, 0x2ac, x0	// Write all 0s to CSR
	csrrs x30, 0x2ac, x25	// Set all CSR bits
	csrrc x30, 0x2ac, x25	// Clear all CSR bits
	csrrw x30, 0x2ac, x11	// Restore CSR

// Testing CSR 0x2ad
	csrr x11, 0x2ad	// Read CSR
	li x16, -1
	csrrw x21, 0x2ad, x16	// Write all 1s to CSR
	csrrw x21, 0x2ad, x0	// Write all 0s to CSR
	csrrs x21, 0x2ad, x16	// Set all CSR bits
	csrrc x21, 0x2ad, x16	// Clear all CSR bits
	csrrw x21, 0x2ad, x11	// Restore CSR

// Testing CSR 0x2ae
	csrr x23, 0x2ae	// Read CSR
	li x19, -1
	csrrw x25, 0x2ae, x19	// Write all 1s to CSR
	csrrw x25, 0x2ae, x0	// Write all 0s to CSR
	csrrs x25, 0x2ae, x19	// Set all CSR bits
	csrrc x25, 0x2ae, x19	// Clear all CSR bits
	csrrw x25, 0x2ae, x23	// Restore CSR

// Testing CSR 0x2af
	csrr x29, 0x2af	// Read CSR
	li x10, -1
	csrrw x25, 0x2af, x10	// Write all 1s to CSR
	csrrw x25, 0x2af, x0	// Write all 0s to CSR
	csrrs x25, 0x2af, x10	// Set all CSR bits
	csrrc x25, 0x2af, x10	// Clear all CSR bits
	csrrw x25, 0x2af, x29	// Restore CSR

// Testing CSR 0x2b0
	csrr x19, 0x2b0	// Read CSR
	li x28, -1
	csrrw x29, 0x2b0, x28	// Write all 1s to CSR
	csrrw x29, 0x2b0, x0	// Write all 0s to CSR
	csrrs x29, 0x2b0, x28	// Set all CSR bits
	csrrc x29, 0x2b0, x28	// Clear all CSR bits
	csrrw x29, 0x2b0, x19	// Restore CSR

// Testing CSR 0x2b1
	csrr x17, 0x2b1	// Read CSR
	li x3, -1
	csrrw x2, 0x2b1, x3	// Write all 1s to CSR
	csrrw x2, 0x2b1, x0	// Write all 0s to CSR
	csrrs x2, 0x2b1, x3	// Set all CSR bits
	csrrc x2, 0x2b1, x3	// Clear all CSR bits
	csrrw x2, 0x2b1, x17	// Restore CSR

// Testing CSR 0x2b2
	csrr x27, 0x2b2	// Read CSR
	li x3, -1
	csrrw x23, 0x2b2, x3	// Write all 1s to CSR
	csrrw x23, 0x2b2, x0	// Write all 0s to CSR
	csrrs x23, 0x2b2, x3	// Set all CSR bits
	csrrc x23, 0x2b2, x3	// Clear all CSR bits
	csrrw x23, 0x2b2, x27	// Restore CSR

// Testing CSR 0x2b3
	csrr x10, 0x2b3	// Read CSR
	li x27, -1
	csrrw x6, 0x2b3, x27	// Write all 1s to CSR
	csrrw x6, 0x2b3, x0	// Write all 0s to CSR
	csrrs x6, 0x2b3, x27	// Set all CSR bits
	csrrc x6, 0x2b3, x27	// Clear all CSR bits
	csrrw x6, 0x2b3, x10	// Restore CSR

// Testing CSR 0x2b4
	csrr x29, 0x2b4	// Read CSR
	li x9, -1
	csrrw x24, 0x2b4, x9	// Write all 1s to CSR
	csrrw x24, 0x2b4, x0	// Write all 0s to CSR
	csrrs x24, 0x2b4, x9	// Set all CSR bits
	csrrc x24, 0x2b4, x9	// Clear all CSR bits
	csrrw x24, 0x2b4, x29	// Restore CSR

// Testing CSR 0x2b5
	csrr x8, 0x2b5	// Read CSR
	li x22, -1
	csrrw x3, 0x2b5, x22	// Write all 1s to CSR
	csrrw x3, 0x2b5, x0	// Write all 0s to CSR
	csrrs x3, 0x2b5, x22	// Set all CSR bits
	csrrc x3, 0x2b5, x22	// Clear all CSR bits
	csrrw x3, 0x2b5, x8	// Restore CSR

// Testing CSR 0x2b6
	csrr x4, 0x2b6	// Read CSR
	li x31, -1
	csrrw x19, 0x2b6, x31	// Write all 1s to CSR
	csrrw x19, 0x2b6, x0	// Write all 0s to CSR
	csrrs x19, 0x2b6, x31	// Set all CSR bits
	csrrc x19, 0x2b6, x31	// Clear all CSR bits
	csrrw x19, 0x2b6, x4	// Restore CSR

// Testing CSR 0x2b7
	csrr x7, 0x2b7	// Read CSR
	li x2, -1
	csrrw x10, 0x2b7, x2	// Write all 1s to CSR
	csrrw x10, 0x2b7, x0	// Write all 0s to CSR
	csrrs x10, 0x2b7, x2	// Set all CSR bits
	csrrc x10, 0x2b7, x2	// Clear all CSR bits
	csrrw x10, 0x2b7, x7	// Restore CSR

// Testing CSR 0x2b8
	csrr x14, 0x2b8	// Read CSR
	li x9, -1
	csrrw x3, 0x2b8, x9	// Write all 1s to CSR
	csrrw x3, 0x2b8, x0	// Write all 0s to CSR
	csrrs x3, 0x2b8, x9	// Set all CSR bits
	csrrc x3, 0x2b8, x9	// Clear all CSR bits
	csrrw x3, 0x2b8, x14	// Restore CSR

// Testing CSR 0x2b9
	csrr x17, 0x2b9	// Read CSR
	li x20, -1
	csrrw x31, 0x2b9, x20	// Write all 1s to CSR
	csrrw x31, 0x2b9, x0	// Write all 0s to CSR
	csrrs x31, 0x2b9, x20	// Set all CSR bits
	csrrc x31, 0x2b9, x20	// Clear all CSR bits
	csrrw x31, 0x2b9, x17	// Restore CSR

// Testing CSR 0x2ba
	csrr x2, 0x2ba	// Read CSR
	li x1, -1
	csrrw x24, 0x2ba, x1	// Write all 1s to CSR
	csrrw x24, 0x2ba, x0	// Write all 0s to CSR
	csrrs x24, 0x2ba, x1	// Set all CSR bits
	csrrc x24, 0x2ba, x1	// Clear all CSR bits
	csrrw x24, 0x2ba, x2	// Restore CSR

// Testing CSR 0x2bb
	csrr x5, 0x2bb	// Read CSR
	li x22, -1
	csrrw x8, 0x2bb, x22	// Write all 1s to CSR
	csrrw x8, 0x2bb, x0	// Write all 0s to CSR
	csrrs x8, 0x2bb, x22	// Set all CSR bits
	csrrc x8, 0x2bb, x22	// Clear all CSR bits
	csrrw x8, 0x2bb, x5	// Restore CSR

// Testing CSR 0x2bc
	csrr x3, 0x2bc	// Read CSR
	li x14, -1
	csrrw x5, 0x2bc, x14	// Write all 1s to CSR
	csrrw x5, 0x2bc, x0	// Write all 0s to CSR
	csrrs x5, 0x2bc, x14	// Set all CSR bits
	csrrc x5, 0x2bc, x14	// Clear all CSR bits
	csrrw x5, 0x2bc, x3	// Restore CSR

// Testing CSR 0x2bd
	csrr x23, 0x2bd	// Read CSR
	li x25, -1
	csrrw x19, 0x2bd, x25	// Write all 1s to CSR
	csrrw x19, 0x2bd, x0	// Write all 0s to CSR
	csrrs x19, 0x2bd, x25	// Set all CSR bits
	csrrc x19, 0x2bd, x25	// Clear all CSR bits
	csrrw x19, 0x2bd, x23	// Restore CSR

// Testing CSR 0x2be
	csrr x24, 0x2be	// Read CSR
	li x20, -1
	csrrw x30, 0x2be, x20	// Write all 1s to CSR
	csrrw x30, 0x2be, x0	// Write all 0s to CSR
	csrrs x30, 0x2be, x20	// Set all CSR bits
	csrrc x30, 0x2be, x20	// Clear all CSR bits
	csrrw x30, 0x2be, x24	// Restore CSR

// Testing CSR 0x2bf
	csrr x28, 0x2bf	// Read CSR
	li x12, -1
	csrrw x3, 0x2bf, x12	// Write all 1s to CSR
	csrrw x3, 0x2bf, x0	// Write all 0s to CSR
	csrrs x3, 0x2bf, x12	// Set all CSR bits
	csrrc x3, 0x2bf, x12	// Clear all CSR bits
	csrrw x3, 0x2bf, x28	// Restore CSR

// Testing CSR 0x2c0
	csrr x7, 0x2c0	// Read CSR
	li x26, -1
	csrrw x31, 0x2c0, x26	// Write all 1s to CSR
	csrrw x31, 0x2c0, x0	// Write all 0s to CSR
	csrrs x31, 0x2c0, x26	// Set all CSR bits
	csrrc x31, 0x2c0, x26	// Clear all CSR bits
	csrrw x31, 0x2c0, x7	// Restore CSR

// Testing CSR 0x2c1
	csrr x8, 0x2c1	// Read CSR
	li x16, -1
	csrrw x25, 0x2c1, x16	// Write all 1s to CSR
	csrrw x25, 0x2c1, x0	// Write all 0s to CSR
	csrrs x25, 0x2c1, x16	// Set all CSR bits
	csrrc x25, 0x2c1, x16	// Clear all CSR bits
	csrrw x25, 0x2c1, x8	// Restore CSR

// Testing CSR 0x2c2
	csrr x19, 0x2c2	// Read CSR
	li x30, -1
	csrrw x3, 0x2c2, x30	// Write all 1s to CSR
	csrrw x3, 0x2c2, x0	// Write all 0s to CSR
	csrrs x3, 0x2c2, x30	// Set all CSR bits
	csrrc x3, 0x2c2, x30	// Clear all CSR bits
	csrrw x3, 0x2c2, x19	// Restore CSR

// Testing CSR 0x2c3
	csrr x28, 0x2c3	// Read CSR
	li x26, -1
	csrrw x17, 0x2c3, x26	// Write all 1s to CSR
	csrrw x17, 0x2c3, x0	// Write all 0s to CSR
	csrrs x17, 0x2c3, x26	// Set all CSR bits
	csrrc x17, 0x2c3, x26	// Clear all CSR bits
	csrrw x17, 0x2c3, x28	// Restore CSR

// Testing CSR 0x2c4
	csrr x8, 0x2c4	// Read CSR
	li x28, -1
	csrrw x31, 0x2c4, x28	// Write all 1s to CSR
	csrrw x31, 0x2c4, x0	// Write all 0s to CSR
	csrrs x31, 0x2c4, x28	// Set all CSR bits
	csrrc x31, 0x2c4, x28	// Clear all CSR bits
	csrrw x31, 0x2c4, x8	// Restore CSR

// Testing CSR 0x2c5
	csrr x17, 0x2c5	// Read CSR
	li x15, -1
	csrrw x29, 0x2c5, x15	// Write all 1s to CSR
	csrrw x29, 0x2c5, x0	// Write all 0s to CSR
	csrrs x29, 0x2c5, x15	// Set all CSR bits
	csrrc x29, 0x2c5, x15	// Clear all CSR bits
	csrrw x29, 0x2c5, x17	// Restore CSR

// Testing CSR 0x2c6
	csrr x6, 0x2c6	// Read CSR
	li x15, -1
	csrrw x20, 0x2c6, x15	// Write all 1s to CSR
	csrrw x20, 0x2c6, x0	// Write all 0s to CSR
	csrrs x20, 0x2c6, x15	// Set all CSR bits
	csrrc x20, 0x2c6, x15	// Clear all CSR bits
	csrrw x20, 0x2c6, x6	// Restore CSR

// Testing CSR 0x2c7
	csrr x12, 0x2c7	// Read CSR
	li x8, -1
	csrrw x5, 0x2c7, x8	// Write all 1s to CSR
	csrrw x5, 0x2c7, x0	// Write all 0s to CSR
	csrrs x5, 0x2c7, x8	// Set all CSR bits
	csrrc x5, 0x2c7, x8	// Clear all CSR bits
	csrrw x5, 0x2c7, x12	// Restore CSR

// Testing CSR 0x2c8
	csrr x4, 0x2c8	// Read CSR
	li x10, -1
	csrrw x16, 0x2c8, x10	// Write all 1s to CSR
	csrrw x16, 0x2c8, x0	// Write all 0s to CSR
	csrrs x16, 0x2c8, x10	// Set all CSR bits
	csrrc x16, 0x2c8, x10	// Clear all CSR bits
	csrrw x16, 0x2c8, x4	// Restore CSR

// Testing CSR 0x2c9
	csrr x29, 0x2c9	// Read CSR
	li x17, -1
	csrrw x22, 0x2c9, x17	// Write all 1s to CSR
	csrrw x22, 0x2c9, x0	// Write all 0s to CSR
	csrrs x22, 0x2c9, x17	// Set all CSR bits
	csrrc x22, 0x2c9, x17	// Clear all CSR bits
	csrrw x22, 0x2c9, x29	// Restore CSR

// Testing CSR 0x2ca
	csrr x23, 0x2ca	// Read CSR
	li x2, -1
	csrrw x29, 0x2ca, x2	// Write all 1s to CSR
	csrrw x29, 0x2ca, x0	// Write all 0s to CSR
	csrrs x29, 0x2ca, x2	// Set all CSR bits
	csrrc x29, 0x2ca, x2	// Clear all CSR bits
	csrrw x29, 0x2ca, x23	// Restore CSR

// Testing CSR 0x2cb
	csrr x13, 0x2cb	// Read CSR
	li x7, -1
	csrrw x14, 0x2cb, x7	// Write all 1s to CSR
	csrrw x14, 0x2cb, x0	// Write all 0s to CSR
	csrrs x14, 0x2cb, x7	// Set all CSR bits
	csrrc x14, 0x2cb, x7	// Clear all CSR bits
	csrrw x14, 0x2cb, x13	// Restore CSR

// Testing CSR 0x2cc
	csrr x27, 0x2cc	// Read CSR
	li x30, -1
	csrrw x15, 0x2cc, x30	// Write all 1s to CSR
	csrrw x15, 0x2cc, x0	// Write all 0s to CSR
	csrrs x15, 0x2cc, x30	// Set all CSR bits
	csrrc x15, 0x2cc, x30	// Clear all CSR bits
	csrrw x15, 0x2cc, x27	// Restore CSR

// Testing CSR 0x2cd
	csrr x19, 0x2cd	// Read CSR
	li x5, -1
	csrrw x26, 0x2cd, x5	// Write all 1s to CSR
	csrrw x26, 0x2cd, x0	// Write all 0s to CSR
	csrrs x26, 0x2cd, x5	// Set all CSR bits
	csrrc x26, 0x2cd, x5	// Clear all CSR bits
	csrrw x26, 0x2cd, x19	// Restore CSR

// Testing CSR 0x2ce
	csrr x25, 0x2ce	// Read CSR
	li x27, -1
	csrrw x13, 0x2ce, x27	// Write all 1s to CSR
	csrrw x13, 0x2ce, x0	// Write all 0s to CSR
	csrrs x13, 0x2ce, x27	// Set all CSR bits
	csrrc x13, 0x2ce, x27	// Clear all CSR bits
	csrrw x13, 0x2ce, x25	// Restore CSR

// Testing CSR 0x2cf
	csrr x2, 0x2cf	// Read CSR
	li x18, -1
	csrrw x26, 0x2cf, x18	// Write all 1s to CSR
	csrrw x26, 0x2cf, x0	// Write all 0s to CSR
	csrrs x26, 0x2cf, x18	// Set all CSR bits
	csrrc x26, 0x2cf, x18	// Clear all CSR bits
	csrrw x26, 0x2cf, x2	// Restore CSR

// Testing CSR 0x2d0
	csrr x1, 0x2d0	// Read CSR
	li x17, -1
	csrrw x8, 0x2d0, x17	// Write all 1s to CSR
	csrrw x8, 0x2d0, x0	// Write all 0s to CSR
	csrrs x8, 0x2d0, x17	// Set all CSR bits
	csrrc x8, 0x2d0, x17	// Clear all CSR bits
	csrrw x8, 0x2d0, x1	// Restore CSR

// Testing CSR 0x2d1
	csrr x18, 0x2d1	// Read CSR
	li x19, -1
	csrrw x12, 0x2d1, x19	// Write all 1s to CSR
	csrrw x12, 0x2d1, x0	// Write all 0s to CSR
	csrrs x12, 0x2d1, x19	// Set all CSR bits
	csrrc x12, 0x2d1, x19	// Clear all CSR bits
	csrrw x12, 0x2d1, x18	// Restore CSR

// Testing CSR 0x2d2
	csrr x1, 0x2d2	// Read CSR
	li x25, -1
	csrrw x5, 0x2d2, x25	// Write all 1s to CSR
	csrrw x5, 0x2d2, x0	// Write all 0s to CSR
	csrrs x5, 0x2d2, x25	// Set all CSR bits
	csrrc x5, 0x2d2, x25	// Clear all CSR bits
	csrrw x5, 0x2d2, x1	// Restore CSR

// Testing CSR 0x2d3
	csrr x3, 0x2d3	// Read CSR
	li x17, -1
	csrrw x4, 0x2d3, x17	// Write all 1s to CSR
	csrrw x4, 0x2d3, x0	// Write all 0s to CSR
	csrrs x4, 0x2d3, x17	// Set all CSR bits
	csrrc x4, 0x2d3, x17	// Clear all CSR bits
	csrrw x4, 0x2d3, x3	// Restore CSR

// Testing CSR 0x2d4
	csrr x8, 0x2d4	// Read CSR
	li x23, -1
	csrrw x29, 0x2d4, x23	// Write all 1s to CSR
	csrrw x29, 0x2d4, x0	// Write all 0s to CSR
	csrrs x29, 0x2d4, x23	// Set all CSR bits
	csrrc x29, 0x2d4, x23	// Clear all CSR bits
	csrrw x29, 0x2d4, x8	// Restore CSR

// Testing CSR 0x2d5
	csrr x31, 0x2d5	// Read CSR
	li x6, -1
	csrrw x13, 0x2d5, x6	// Write all 1s to CSR
	csrrw x13, 0x2d5, x0	// Write all 0s to CSR
	csrrs x13, 0x2d5, x6	// Set all CSR bits
	csrrc x13, 0x2d5, x6	// Clear all CSR bits
	csrrw x13, 0x2d5, x31	// Restore CSR

// Testing CSR 0x2d6
	csrr x12, 0x2d6	// Read CSR
	li x7, -1
	csrrw x3, 0x2d6, x7	// Write all 1s to CSR
	csrrw x3, 0x2d6, x0	// Write all 0s to CSR
	csrrs x3, 0x2d6, x7	// Set all CSR bits
	csrrc x3, 0x2d6, x7	// Clear all CSR bits
	csrrw x3, 0x2d6, x12	// Restore CSR

// Testing CSR 0x2d7
	csrr x14, 0x2d7	// Read CSR
	li x31, -1
	csrrw x7, 0x2d7, x31	// Write all 1s to CSR
	csrrw x7, 0x2d7, x0	// Write all 0s to CSR
	csrrs x7, 0x2d7, x31	// Set all CSR bits
	csrrc x7, 0x2d7, x31	// Clear all CSR bits
	csrrw x7, 0x2d7, x14	// Restore CSR

// Testing CSR 0x2d8
	csrr x23, 0x2d8	// Read CSR
	li x25, -1
	csrrw x5, 0x2d8, x25	// Write all 1s to CSR
	csrrw x5, 0x2d8, x0	// Write all 0s to CSR
	csrrs x5, 0x2d8, x25	// Set all CSR bits
	csrrc x5, 0x2d8, x25	// Clear all CSR bits
	csrrw x5, 0x2d8, x23	// Restore CSR

// Testing CSR 0x2d9
	csrr x23, 0x2d9	// Read CSR
	li x8, -1
	csrrw x16, 0x2d9, x8	// Write all 1s to CSR
	csrrw x16, 0x2d9, x0	// Write all 0s to CSR
	csrrs x16, 0x2d9, x8	// Set all CSR bits
	csrrc x16, 0x2d9, x8	// Clear all CSR bits
	csrrw x16, 0x2d9, x23	// Restore CSR

// Testing CSR 0x2da
	csrr x20, 0x2da	// Read CSR
	li x14, -1
	csrrw x10, 0x2da, x14	// Write all 1s to CSR
	csrrw x10, 0x2da, x0	// Write all 0s to CSR
	csrrs x10, 0x2da, x14	// Set all CSR bits
	csrrc x10, 0x2da, x14	// Clear all CSR bits
	csrrw x10, 0x2da, x20	// Restore CSR

// Testing CSR 0x2db
	csrr x12, 0x2db	// Read CSR
	li x6, -1
	csrrw x24, 0x2db, x6	// Write all 1s to CSR
	csrrw x24, 0x2db, x0	// Write all 0s to CSR
	csrrs x24, 0x2db, x6	// Set all CSR bits
	csrrc x24, 0x2db, x6	// Clear all CSR bits
	csrrw x24, 0x2db, x12	// Restore CSR

// Testing CSR 0x2dc
	csrr x27, 0x2dc	// Read CSR
	li x24, -1
	csrrw x9, 0x2dc, x24	// Write all 1s to CSR
	csrrw x9, 0x2dc, x0	// Write all 0s to CSR
	csrrs x9, 0x2dc, x24	// Set all CSR bits
	csrrc x9, 0x2dc, x24	// Clear all CSR bits
	csrrw x9, 0x2dc, x27	// Restore CSR

// Testing CSR 0x2dd
	csrr x10, 0x2dd	// Read CSR
	li x23, -1
	csrrw x29, 0x2dd, x23	// Write all 1s to CSR
	csrrw x29, 0x2dd, x0	// Write all 0s to CSR
	csrrs x29, 0x2dd, x23	// Set all CSR bits
	csrrc x29, 0x2dd, x23	// Clear all CSR bits
	csrrw x29, 0x2dd, x10	// Restore CSR

// Testing CSR 0x2de
	csrr x13, 0x2de	// Read CSR
	li x12, -1
	csrrw x8, 0x2de, x12	// Write all 1s to CSR
	csrrw x8, 0x2de, x0	// Write all 0s to CSR
	csrrs x8, 0x2de, x12	// Set all CSR bits
	csrrc x8, 0x2de, x12	// Clear all CSR bits
	csrrw x8, 0x2de, x13	// Restore CSR

// Testing CSR 0x2df
	csrr x30, 0x2df	// Read CSR
	li x28, -1
	csrrw x8, 0x2df, x28	// Write all 1s to CSR
	csrrw x8, 0x2df, x0	// Write all 0s to CSR
	csrrs x8, 0x2df, x28	// Set all CSR bits
	csrrc x8, 0x2df, x28	// Clear all CSR bits
	csrrw x8, 0x2df, x30	// Restore CSR

// Testing CSR 0x2e0
	csrr x23, 0x2e0	// Read CSR
	li x7, -1
	csrrw x14, 0x2e0, x7	// Write all 1s to CSR
	csrrw x14, 0x2e0, x0	// Write all 0s to CSR
	csrrs x14, 0x2e0, x7	// Set all CSR bits
	csrrc x14, 0x2e0, x7	// Clear all CSR bits
	csrrw x14, 0x2e0, x23	// Restore CSR

// Testing CSR 0x2e1
	csrr x22, 0x2e1	// Read CSR
	li x21, -1
	csrrw x30, 0x2e1, x21	// Write all 1s to CSR
	csrrw x30, 0x2e1, x0	// Write all 0s to CSR
	csrrs x30, 0x2e1, x21	// Set all CSR bits
	csrrc x30, 0x2e1, x21	// Clear all CSR bits
	csrrw x30, 0x2e1, x22	// Restore CSR

// Testing CSR 0x2e2
	csrr x5, 0x2e2	// Read CSR
	li x13, -1
	csrrw x10, 0x2e2, x13	// Write all 1s to CSR
	csrrw x10, 0x2e2, x0	// Write all 0s to CSR
	csrrs x10, 0x2e2, x13	// Set all CSR bits
	csrrc x10, 0x2e2, x13	// Clear all CSR bits
	csrrw x10, 0x2e2, x5	// Restore CSR

// Testing CSR 0x2e3
	csrr x25, 0x2e3	// Read CSR
	li x30, -1
	csrrw x27, 0x2e3, x30	// Write all 1s to CSR
	csrrw x27, 0x2e3, x0	// Write all 0s to CSR
	csrrs x27, 0x2e3, x30	// Set all CSR bits
	csrrc x27, 0x2e3, x30	// Clear all CSR bits
	csrrw x27, 0x2e3, x25	// Restore CSR

// Testing CSR 0x2e4
	csrr x29, 0x2e4	// Read CSR
	li x7, -1
	csrrw x6, 0x2e4, x7	// Write all 1s to CSR
	csrrw x6, 0x2e4, x0	// Write all 0s to CSR
	csrrs x6, 0x2e4, x7	// Set all CSR bits
	csrrc x6, 0x2e4, x7	// Clear all CSR bits
	csrrw x6, 0x2e4, x29	// Restore CSR

// Testing CSR 0x2e5
	csrr x27, 0x2e5	// Read CSR
	li x2, -1
	csrrw x11, 0x2e5, x2	// Write all 1s to CSR
	csrrw x11, 0x2e5, x0	// Write all 0s to CSR
	csrrs x11, 0x2e5, x2	// Set all CSR bits
	csrrc x11, 0x2e5, x2	// Clear all CSR bits
	csrrw x11, 0x2e5, x27	// Restore CSR

// Testing CSR 0x2e6
	csrr x22, 0x2e6	// Read CSR
	li x11, -1
	csrrw x29, 0x2e6, x11	// Write all 1s to CSR
	csrrw x29, 0x2e6, x0	// Write all 0s to CSR
	csrrs x29, 0x2e6, x11	// Set all CSR bits
	csrrc x29, 0x2e6, x11	// Clear all CSR bits
	csrrw x29, 0x2e6, x22	// Restore CSR

// Testing CSR 0x2e7
	csrr x22, 0x2e7	// Read CSR
	li x20, -1
	csrrw x28, 0x2e7, x20	// Write all 1s to CSR
	csrrw x28, 0x2e7, x0	// Write all 0s to CSR
	csrrs x28, 0x2e7, x20	// Set all CSR bits
	csrrc x28, 0x2e7, x20	// Clear all CSR bits
	csrrw x28, 0x2e7, x22	// Restore CSR

// Testing CSR 0x2e8
	csrr x30, 0x2e8	// Read CSR
	li x22, -1
	csrrw x2, 0x2e8, x22	// Write all 1s to CSR
	csrrw x2, 0x2e8, x0	// Write all 0s to CSR
	csrrs x2, 0x2e8, x22	// Set all CSR bits
	csrrc x2, 0x2e8, x22	// Clear all CSR bits
	csrrw x2, 0x2e8, x30	// Restore CSR

// Testing CSR 0x2e9
	csrr x10, 0x2e9	// Read CSR
	li x7, -1
	csrrw x27, 0x2e9, x7	// Write all 1s to CSR
	csrrw x27, 0x2e9, x0	// Write all 0s to CSR
	csrrs x27, 0x2e9, x7	// Set all CSR bits
	csrrc x27, 0x2e9, x7	// Clear all CSR bits
	csrrw x27, 0x2e9, x10	// Restore CSR

// Testing CSR 0x2ea
	csrr x16, 0x2ea	// Read CSR
	li x5, -1
	csrrw x21, 0x2ea, x5	// Write all 1s to CSR
	csrrw x21, 0x2ea, x0	// Write all 0s to CSR
	csrrs x21, 0x2ea, x5	// Set all CSR bits
	csrrc x21, 0x2ea, x5	// Clear all CSR bits
	csrrw x21, 0x2ea, x16	// Restore CSR

// Testing CSR 0x2eb
	csrr x31, 0x2eb	// Read CSR
	li x2, -1
	csrrw x23, 0x2eb, x2	// Write all 1s to CSR
	csrrw x23, 0x2eb, x0	// Write all 0s to CSR
	csrrs x23, 0x2eb, x2	// Set all CSR bits
	csrrc x23, 0x2eb, x2	// Clear all CSR bits
	csrrw x23, 0x2eb, x31	// Restore CSR

// Testing CSR 0x2ec
	csrr x6, 0x2ec	// Read CSR
	li x18, -1
	csrrw x27, 0x2ec, x18	// Write all 1s to CSR
	csrrw x27, 0x2ec, x0	// Write all 0s to CSR
	csrrs x27, 0x2ec, x18	// Set all CSR bits
	csrrc x27, 0x2ec, x18	// Clear all CSR bits
	csrrw x27, 0x2ec, x6	// Restore CSR

// Testing CSR 0x2ed
	csrr x7, 0x2ed	// Read CSR
	li x12, -1
	csrrw x15, 0x2ed, x12	// Write all 1s to CSR
	csrrw x15, 0x2ed, x0	// Write all 0s to CSR
	csrrs x15, 0x2ed, x12	// Set all CSR bits
	csrrc x15, 0x2ed, x12	// Clear all CSR bits
	csrrw x15, 0x2ed, x7	// Restore CSR

// Testing CSR 0x2ee
	csrr x30, 0x2ee	// Read CSR
	li x14, -1
	csrrw x8, 0x2ee, x14	// Write all 1s to CSR
	csrrw x8, 0x2ee, x0	// Write all 0s to CSR
	csrrs x8, 0x2ee, x14	// Set all CSR bits
	csrrc x8, 0x2ee, x14	// Clear all CSR bits
	csrrw x8, 0x2ee, x30	// Restore CSR

// Testing CSR 0x2ef
	csrr x17, 0x2ef	// Read CSR
	li x5, -1
	csrrw x25, 0x2ef, x5	// Write all 1s to CSR
	csrrw x25, 0x2ef, x0	// Write all 0s to CSR
	csrrs x25, 0x2ef, x5	// Set all CSR bits
	csrrc x25, 0x2ef, x5	// Clear all CSR bits
	csrrw x25, 0x2ef, x17	// Restore CSR

// Testing CSR 0x2f0
	csrr x6, 0x2f0	// Read CSR
	li x27, -1
	csrrw x22, 0x2f0, x27	// Write all 1s to CSR
	csrrw x22, 0x2f0, x0	// Write all 0s to CSR
	csrrs x22, 0x2f0, x27	// Set all CSR bits
	csrrc x22, 0x2f0, x27	// Clear all CSR bits
	csrrw x22, 0x2f0, x6	// Restore CSR

// Testing CSR 0x2f1
	csrr x16, 0x2f1	// Read CSR
	li x17, -1
	csrrw x20, 0x2f1, x17	// Write all 1s to CSR
	csrrw x20, 0x2f1, x0	// Write all 0s to CSR
	csrrs x20, 0x2f1, x17	// Set all CSR bits
	csrrc x20, 0x2f1, x17	// Clear all CSR bits
	csrrw x20, 0x2f1, x16	// Restore CSR

// Testing CSR 0x2f2
	csrr x27, 0x2f2	// Read CSR
	li x5, -1
	csrrw x23, 0x2f2, x5	// Write all 1s to CSR
	csrrw x23, 0x2f2, x0	// Write all 0s to CSR
	csrrs x23, 0x2f2, x5	// Set all CSR bits
	csrrc x23, 0x2f2, x5	// Clear all CSR bits
	csrrw x23, 0x2f2, x27	// Restore CSR

// Testing CSR 0x2f3
	csrr x1, 0x2f3	// Read CSR
	li x20, -1
	csrrw x2, 0x2f3, x20	// Write all 1s to CSR
	csrrw x2, 0x2f3, x0	// Write all 0s to CSR
	csrrs x2, 0x2f3, x20	// Set all CSR bits
	csrrc x2, 0x2f3, x20	// Clear all CSR bits
	csrrw x2, 0x2f3, x1	// Restore CSR

// Testing CSR 0x2f4
	csrr x13, 0x2f4	// Read CSR
	li x5, -1
	csrrw x2, 0x2f4, x5	// Write all 1s to CSR
	csrrw x2, 0x2f4, x0	// Write all 0s to CSR
	csrrs x2, 0x2f4, x5	// Set all CSR bits
	csrrc x2, 0x2f4, x5	// Clear all CSR bits
	csrrw x2, 0x2f4, x13	// Restore CSR

// Testing CSR 0x2f5
	csrr x27, 0x2f5	// Read CSR
	li x7, -1
	csrrw x28, 0x2f5, x7	// Write all 1s to CSR
	csrrw x28, 0x2f5, x0	// Write all 0s to CSR
	csrrs x28, 0x2f5, x7	// Set all CSR bits
	csrrc x28, 0x2f5, x7	// Clear all CSR bits
	csrrw x28, 0x2f5, x27	// Restore CSR

// Testing CSR 0x2f6
	csrr x22, 0x2f6	// Read CSR
	li x19, -1
	csrrw x13, 0x2f6, x19	// Write all 1s to CSR
	csrrw x13, 0x2f6, x0	// Write all 0s to CSR
	csrrs x13, 0x2f6, x19	// Set all CSR bits
	csrrc x13, 0x2f6, x19	// Clear all CSR bits
	csrrw x13, 0x2f6, x22	// Restore CSR

// Testing CSR 0x2f7
	csrr x7, 0x2f7	// Read CSR
	li x16, -1
	csrrw x1, 0x2f7, x16	// Write all 1s to CSR
	csrrw x1, 0x2f7, x0	// Write all 0s to CSR
	csrrs x1, 0x2f7, x16	// Set all CSR bits
	csrrc x1, 0x2f7, x16	// Clear all CSR bits
	csrrw x1, 0x2f7, x7	// Restore CSR

// Testing CSR 0x2f8
	csrr x25, 0x2f8	// Read CSR
	li x13, -1
	csrrw x17, 0x2f8, x13	// Write all 1s to CSR
	csrrw x17, 0x2f8, x0	// Write all 0s to CSR
	csrrs x17, 0x2f8, x13	// Set all CSR bits
	csrrc x17, 0x2f8, x13	// Clear all CSR bits
	csrrw x17, 0x2f8, x25	// Restore CSR

// Testing CSR 0x2f9
	csrr x18, 0x2f9	// Read CSR
	li x4, -1
	csrrw x9, 0x2f9, x4	// Write all 1s to CSR
	csrrw x9, 0x2f9, x0	// Write all 0s to CSR
	csrrs x9, 0x2f9, x4	// Set all CSR bits
	csrrc x9, 0x2f9, x4	// Clear all CSR bits
	csrrw x9, 0x2f9, x18	// Restore CSR

// Testing CSR 0x2fa
	csrr x15, 0x2fa	// Read CSR
	li x2, -1
	csrrw x27, 0x2fa, x2	// Write all 1s to CSR
	csrrw x27, 0x2fa, x0	// Write all 0s to CSR
	csrrs x27, 0x2fa, x2	// Set all CSR bits
	csrrc x27, 0x2fa, x2	// Clear all CSR bits
	csrrw x27, 0x2fa, x15	// Restore CSR

// Testing CSR 0x2fb
	csrr x25, 0x2fb	// Read CSR
	li x11, -1
	csrrw x16, 0x2fb, x11	// Write all 1s to CSR
	csrrw x16, 0x2fb, x0	// Write all 0s to CSR
	csrrs x16, 0x2fb, x11	// Set all CSR bits
	csrrc x16, 0x2fb, x11	// Clear all CSR bits
	csrrw x16, 0x2fb, x25	// Restore CSR

// Testing CSR 0x2fc
	csrr x28, 0x2fc	// Read CSR
	li x2, -1
	csrrw x16, 0x2fc, x2	// Write all 1s to CSR
	csrrw x16, 0x2fc, x0	// Write all 0s to CSR
	csrrs x16, 0x2fc, x2	// Set all CSR bits
	csrrc x16, 0x2fc, x2	// Clear all CSR bits
	csrrw x16, 0x2fc, x28	// Restore CSR

// Testing CSR 0x2fd
	csrr x5, 0x2fd	// Read CSR
	li x28, -1
	csrrw x23, 0x2fd, x28	// Write all 1s to CSR
	csrrw x23, 0x2fd, x0	// Write all 0s to CSR
	csrrs x23, 0x2fd, x28	// Set all CSR bits
	csrrc x23, 0x2fd, x28	// Clear all CSR bits
	csrrw x23, 0x2fd, x5	// Restore CSR

// Testing CSR 0x2fe
	csrr x5, 0x2fe	// Read CSR
	li x23, -1
	csrrw x31, 0x2fe, x23	// Write all 1s to CSR
	csrrw x31, 0x2fe, x0	// Write all 0s to CSR
	csrrs x31, 0x2fe, x23	// Set all CSR bits
	csrrc x31, 0x2fe, x23	// Clear all CSR bits
	csrrw x31, 0x2fe, x5	// Restore CSR

// Testing CSR 0x2ff
	csrr x20, 0x2ff	// Read CSR
	li x31, -1
	csrrw x12, 0x2ff, x31	// Write all 1s to CSR
	csrrw x12, 0x2ff, x0	// Write all 0s to CSR
	csrrs x12, 0x2ff, x31	// Set all CSR bits
	csrrc x12, 0x2ff, x31	// Clear all CSR bits
	csrrw x12, 0x2ff, x20	// Restore CSR

// Testing CSR 0x300
	csrr x15, 0x300	// Read CSR
	li x11, -1
	csrrw x22, 0x300, x11	// Write all 1s to CSR
	csrrw x22, 0x300, x0	// Write all 0s to CSR
	csrrs x22, 0x300, x11	// Set all CSR bits
	csrrc x22, 0x300, x11	// Clear all CSR bits
	csrrw x22, 0x300, x15	// Restore CSR

// Testing CSR 0x301
	csrr x2, 0x301	// Read CSR
	li x3, -1
	csrrw x7, 0x301, x3	// Write all 1s to CSR
	csrrw x7, 0x301, x0	// Write all 0s to CSR
	csrrs x7, 0x301, x3	// Set all CSR bits
	csrrc x7, 0x301, x3	// Clear all CSR bits
	csrrw x7, 0x301, x2	// Restore CSR

// Testing CSR 0x302
	csrr x19, 0x302	// Read CSR
	li x22, -1
	csrrw x24, 0x302, x22	// Write all 1s to CSR
	csrrw x24, 0x302, x0	// Write all 0s to CSR
	csrrs x24, 0x302, x22	// Set all CSR bits
	csrrc x24, 0x302, x22	// Clear all CSR bits
	csrrw x24, 0x302, x19	// Restore CSR

// Testing CSR 0x303
	csrr x24, 0x303	// Read CSR
	li x29, -1
	csrrw x1, 0x303, x29	// Write all 1s to CSR
	csrrw x1, 0x303, x0	// Write all 0s to CSR
	csrrs x1, 0x303, x29	// Set all CSR bits
	csrrc x1, 0x303, x29	// Clear all CSR bits
	csrrw x1, 0x303, x24	// Restore CSR

// Testing CSR 0x304
	csrr x3, 0x304	// Read CSR
	li x31, -1
	csrrw x14, 0x304, x31	// Write all 1s to CSR
	csrrw x14, 0x304, x0	// Write all 0s to CSR
	csrrs x14, 0x304, x31	// Set all CSR bits
	csrrc x14, 0x304, x31	// Clear all CSR bits
	csrrw x14, 0x304, x3	// Restore CSR

// Testing CSR 0x305
	csrr x25, 0x305	// Read CSR
	li x9, -1
	csrrw x7, 0x305, x9	// Write all 1s to CSR
	csrrw x7, 0x305, x0	// Write all 0s to CSR
	csrrs x7, 0x305, x9	// Set all CSR bits
	csrrc x7, 0x305, x9	// Clear all CSR bits
	csrrw x7, 0x305, x25	// Restore CSR

// Testing CSR 0x306
	csrr x4, 0x306	// Read CSR
	li x11, -1
	csrrw x8, 0x306, x11	// Write all 1s to CSR
	csrrw x8, 0x306, x0	// Write all 0s to CSR
	csrrs x8, 0x306, x11	// Set all CSR bits
	csrrc x8, 0x306, x11	// Clear all CSR bits
	csrrw x8, 0x306, x4	// Restore CSR

// Testing CSR 0x307
	csrr x11, 0x307	// Read CSR
	li x26, -1
	csrrw x16, 0x307, x26	// Write all 1s to CSR
	csrrw x16, 0x307, x0	// Write all 0s to CSR
	csrrs x16, 0x307, x26	// Set all CSR bits
	csrrc x16, 0x307, x26	// Clear all CSR bits
	csrrw x16, 0x307, x11	// Restore CSR

// Testing CSR 0x308
	csrr x18, 0x308	// Read CSR
	li x13, -1
	csrrw x7, 0x308, x13	// Write all 1s to CSR
	csrrw x7, 0x308, x0	// Write all 0s to CSR
	csrrs x7, 0x308, x13	// Set all CSR bits
	csrrc x7, 0x308, x13	// Clear all CSR bits
	csrrw x7, 0x308, x18	// Restore CSR

// Testing CSR 0x309
	csrr x8, 0x309	// Read CSR
	li x13, -1
	csrrw x27, 0x309, x13	// Write all 1s to CSR
	csrrw x27, 0x309, x0	// Write all 0s to CSR
	csrrs x27, 0x309, x13	// Set all CSR bits
	csrrc x27, 0x309, x13	// Clear all CSR bits
	csrrw x27, 0x309, x8	// Restore CSR

// Testing CSR 0x30a
	csrr x3, 0x30a	// Read CSR
	li x16, -1
	csrrw x27, 0x30a, x16	// Write all 1s to CSR
	csrrw x27, 0x30a, x0	// Write all 0s to CSR
	csrrs x27, 0x30a, x16	// Set all CSR bits
	csrrc x27, 0x30a, x16	// Clear all CSR bits
	csrrw x27, 0x30a, x3	// Restore CSR

// Testing CSR 0x30b
	csrr x1, 0x30b	// Read CSR
	li x15, -1
	csrrw x7, 0x30b, x15	// Write all 1s to CSR
	csrrw x7, 0x30b, x0	// Write all 0s to CSR
	csrrs x7, 0x30b, x15	// Set all CSR bits
	csrrc x7, 0x30b, x15	// Clear all CSR bits
	csrrw x7, 0x30b, x1	// Restore CSR

// Testing CSR 0x30c
	csrr x1, 0x30c	// Read CSR
	li x7, -1
	csrrw x8, 0x30c, x7	// Write all 1s to CSR
	csrrw x8, 0x30c, x0	// Write all 0s to CSR
	csrrs x8, 0x30c, x7	// Set all CSR bits
	csrrc x8, 0x30c, x7	// Clear all CSR bits
	csrrw x8, 0x30c, x1	// Restore CSR

// Testing CSR 0x30d
	csrr x10, 0x30d	// Read CSR
	li x20, -1
	csrrw x17, 0x30d, x20	// Write all 1s to CSR
	csrrw x17, 0x30d, x0	// Write all 0s to CSR
	csrrs x17, 0x30d, x20	// Set all CSR bits
	csrrc x17, 0x30d, x20	// Clear all CSR bits
	csrrw x17, 0x30d, x10	// Restore CSR

// Testing CSR 0x30e
	csrr x6, 0x30e	// Read CSR
	li x3, -1
	csrrw x16, 0x30e, x3	// Write all 1s to CSR
	csrrw x16, 0x30e, x0	// Write all 0s to CSR
	csrrs x16, 0x30e, x3	// Set all CSR bits
	csrrc x16, 0x30e, x3	// Clear all CSR bits
	csrrw x16, 0x30e, x6	// Restore CSR

// Testing CSR 0x30f
	csrr x25, 0x30f	// Read CSR
	li x20, -1
	csrrw x13, 0x30f, x20	// Write all 1s to CSR
	csrrw x13, 0x30f, x0	// Write all 0s to CSR
	csrrs x13, 0x30f, x20	// Set all CSR bits
	csrrc x13, 0x30f, x20	// Clear all CSR bits
	csrrw x13, 0x30f, x25	// Restore CSR

// Testing CSR 0x310
	csrr x13, 0x310	// Read CSR
	li x6, -1
	csrrw x1, 0x310, x6	// Write all 1s to CSR
	csrrw x1, 0x310, x0	// Write all 0s to CSR
	csrrs x1, 0x310, x6	// Set all CSR bits
	csrrc x1, 0x310, x6	// Clear all CSR bits
	csrrw x1, 0x310, x13	// Restore CSR

// Testing CSR 0x311
	csrr x30, 0x311	// Read CSR
	li x2, -1
	csrrw x3, 0x311, x2	// Write all 1s to CSR
	csrrw x3, 0x311, x0	// Write all 0s to CSR
	csrrs x3, 0x311, x2	// Set all CSR bits
	csrrc x3, 0x311, x2	// Clear all CSR bits
	csrrw x3, 0x311, x30	// Restore CSR

// Testing CSR 0x312
	csrr x26, 0x312	// Read CSR
	li x4, -1
	csrrw x16, 0x312, x4	// Write all 1s to CSR
	csrrw x16, 0x312, x0	// Write all 0s to CSR
	csrrs x16, 0x312, x4	// Set all CSR bits
	csrrc x16, 0x312, x4	// Clear all CSR bits
	csrrw x16, 0x312, x26	// Restore CSR

// Testing CSR 0x313
	csrr x20, 0x313	// Read CSR
	li x4, -1
	csrrw x3, 0x313, x4	// Write all 1s to CSR
	csrrw x3, 0x313, x0	// Write all 0s to CSR
	csrrs x3, 0x313, x4	// Set all CSR bits
	csrrc x3, 0x313, x4	// Clear all CSR bits
	csrrw x3, 0x313, x20	// Restore CSR

// Testing CSR 0x314
	csrr x7, 0x314	// Read CSR
	li x13, -1
	csrrw x11, 0x314, x13	// Write all 1s to CSR
	csrrw x11, 0x314, x0	// Write all 0s to CSR
	csrrs x11, 0x314, x13	// Set all CSR bits
	csrrc x11, 0x314, x13	// Clear all CSR bits
	csrrw x11, 0x314, x7	// Restore CSR

// Testing CSR 0x315
	csrr x9, 0x315	// Read CSR
	li x2, -1
	csrrw x25, 0x315, x2	// Write all 1s to CSR
	csrrw x25, 0x315, x0	// Write all 0s to CSR
	csrrs x25, 0x315, x2	// Set all CSR bits
	csrrc x25, 0x315, x2	// Clear all CSR bits
	csrrw x25, 0x315, x9	// Restore CSR

// Testing CSR 0x316
	csrr x20, 0x316	// Read CSR
	li x21, -1
	csrrw x17, 0x316, x21	// Write all 1s to CSR
	csrrw x17, 0x316, x0	// Write all 0s to CSR
	csrrs x17, 0x316, x21	// Set all CSR bits
	csrrc x17, 0x316, x21	// Clear all CSR bits
	csrrw x17, 0x316, x20	// Restore CSR

// Testing CSR 0x317
	csrr x19, 0x317	// Read CSR
	li x25, -1
	csrrw x22, 0x317, x25	// Write all 1s to CSR
	csrrw x22, 0x317, x0	// Write all 0s to CSR
	csrrs x22, 0x317, x25	// Set all CSR bits
	csrrc x22, 0x317, x25	// Clear all CSR bits
	csrrw x22, 0x317, x19	// Restore CSR

// Testing CSR 0x318
	csrr x16, 0x318	// Read CSR
	li x17, -1
	csrrw x18, 0x318, x17	// Write all 1s to CSR
	csrrw x18, 0x318, x0	// Write all 0s to CSR
	csrrs x18, 0x318, x17	// Set all CSR bits
	csrrc x18, 0x318, x17	// Clear all CSR bits
	csrrw x18, 0x318, x16	// Restore CSR

// Testing CSR 0x319
	csrr x24, 0x319	// Read CSR
	li x26, -1
	csrrw x27, 0x319, x26	// Write all 1s to CSR
	csrrw x27, 0x319, x0	// Write all 0s to CSR
	csrrs x27, 0x319, x26	// Set all CSR bits
	csrrc x27, 0x319, x26	// Clear all CSR bits
	csrrw x27, 0x319, x24	// Restore CSR

// Testing CSR 0x31a
	csrr x27, 0x31a	// Read CSR
	li x22, -1
	csrrw x11, 0x31a, x22	// Write all 1s to CSR
	csrrw x11, 0x31a, x0	// Write all 0s to CSR
	csrrs x11, 0x31a, x22	// Set all CSR bits
	csrrc x11, 0x31a, x22	// Clear all CSR bits
	csrrw x11, 0x31a, x27	// Restore CSR

// Testing CSR 0x31b
	csrr x21, 0x31b	// Read CSR
	li x4, -1
	csrrw x22, 0x31b, x4	// Write all 1s to CSR
	csrrw x22, 0x31b, x0	// Write all 0s to CSR
	csrrs x22, 0x31b, x4	// Set all CSR bits
	csrrc x22, 0x31b, x4	// Clear all CSR bits
	csrrw x22, 0x31b, x21	// Restore CSR

// Testing CSR 0x31c
	csrr x29, 0x31c	// Read CSR
	li x11, -1
	csrrw x25, 0x31c, x11	// Write all 1s to CSR
	csrrw x25, 0x31c, x0	// Write all 0s to CSR
	csrrs x25, 0x31c, x11	// Set all CSR bits
	csrrc x25, 0x31c, x11	// Clear all CSR bits
	csrrw x25, 0x31c, x29	// Restore CSR

// Testing CSR 0x31d
	csrr x9, 0x31d	// Read CSR
	li x1, -1
	csrrw x2, 0x31d, x1	// Write all 1s to CSR
	csrrw x2, 0x31d, x0	// Write all 0s to CSR
	csrrs x2, 0x31d, x1	// Set all CSR bits
	csrrc x2, 0x31d, x1	// Clear all CSR bits
	csrrw x2, 0x31d, x9	// Restore CSR

// Testing CSR 0x31e
	csrr x22, 0x31e	// Read CSR
	li x28, -1
	csrrw x2, 0x31e, x28	// Write all 1s to CSR
	csrrw x2, 0x31e, x0	// Write all 0s to CSR
	csrrs x2, 0x31e, x28	// Set all CSR bits
	csrrc x2, 0x31e, x28	// Clear all CSR bits
	csrrw x2, 0x31e, x22	// Restore CSR

// Testing CSR 0x31f
	csrr x13, 0x31f	// Read CSR
	li x12, -1
	csrrw x1, 0x31f, x12	// Write all 1s to CSR
	csrrw x1, 0x31f, x0	// Write all 0s to CSR
	csrrs x1, 0x31f, x12	// Set all CSR bits
	csrrc x1, 0x31f, x12	// Clear all CSR bits
	csrrw x1, 0x31f, x13	// Restore CSR

// Testing CSR 0x320
	csrr x16, 0x320	// Read CSR
	li x19, -1
	csrrw x12, 0x320, x19	// Write all 1s to CSR
	csrrw x12, 0x320, x0	// Write all 0s to CSR
	csrrs x12, 0x320, x19	// Set all CSR bits
	csrrc x12, 0x320, x19	// Clear all CSR bits
	csrrw x12, 0x320, x16	// Restore CSR

// Testing CSR 0x321
	csrr x30, 0x321	// Read CSR
	li x6, -1
	csrrw x8, 0x321, x6	// Write all 1s to CSR
	csrrw x8, 0x321, x0	// Write all 0s to CSR
	csrrs x8, 0x321, x6	// Set all CSR bits
	csrrc x8, 0x321, x6	// Clear all CSR bits
	csrrw x8, 0x321, x30	// Restore CSR

// Testing CSR 0x322
	csrr x25, 0x322	// Read CSR
	li x24, -1
	csrrw x30, 0x322, x24	// Write all 1s to CSR
	csrrw x30, 0x322, x0	// Write all 0s to CSR
	csrrs x30, 0x322, x24	// Set all CSR bits
	csrrc x30, 0x322, x24	// Clear all CSR bits
	csrrw x30, 0x322, x25	// Restore CSR

// Testing CSR 0x323
	csrr x6, 0x323	// Read CSR
	li x17, -1
	csrrw x27, 0x323, x17	// Write all 1s to CSR
	csrrw x27, 0x323, x0	// Write all 0s to CSR
	csrrs x27, 0x323, x17	// Set all CSR bits
	csrrc x27, 0x323, x17	// Clear all CSR bits
	csrrw x27, 0x323, x6	// Restore CSR

// Testing CSR 0x324
	csrr x20, 0x324	// Read CSR
	li x27, -1
	csrrw x6, 0x324, x27	// Write all 1s to CSR
	csrrw x6, 0x324, x0	// Write all 0s to CSR
	csrrs x6, 0x324, x27	// Set all CSR bits
	csrrc x6, 0x324, x27	// Clear all CSR bits
	csrrw x6, 0x324, x20	// Restore CSR

// Testing CSR 0x325
	csrr x9, 0x325	// Read CSR
	li x22, -1
	csrrw x15, 0x325, x22	// Write all 1s to CSR
	csrrw x15, 0x325, x0	// Write all 0s to CSR
	csrrs x15, 0x325, x22	// Set all CSR bits
	csrrc x15, 0x325, x22	// Clear all CSR bits
	csrrw x15, 0x325, x9	// Restore CSR

// Testing CSR 0x326
	csrr x27, 0x326	// Read CSR
	li x15, -1
	csrrw x5, 0x326, x15	// Write all 1s to CSR
	csrrw x5, 0x326, x0	// Write all 0s to CSR
	csrrs x5, 0x326, x15	// Set all CSR bits
	csrrc x5, 0x326, x15	// Clear all CSR bits
	csrrw x5, 0x326, x27	// Restore CSR

// Testing CSR 0x327
	csrr x7, 0x327	// Read CSR
	li x9, -1
	csrrw x27, 0x327, x9	// Write all 1s to CSR
	csrrw x27, 0x327, x0	// Write all 0s to CSR
	csrrs x27, 0x327, x9	// Set all CSR bits
	csrrc x27, 0x327, x9	// Clear all CSR bits
	csrrw x27, 0x327, x7	// Restore CSR

// Testing CSR 0x328
	csrr x6, 0x328	// Read CSR
	li x23, -1
	csrrw x4, 0x328, x23	// Write all 1s to CSR
	csrrw x4, 0x328, x0	// Write all 0s to CSR
	csrrs x4, 0x328, x23	// Set all CSR bits
	csrrc x4, 0x328, x23	// Clear all CSR bits
	csrrw x4, 0x328, x6	// Restore CSR

// Testing CSR 0x329
	csrr x22, 0x329	// Read CSR
	li x8, -1
	csrrw x5, 0x329, x8	// Write all 1s to CSR
	csrrw x5, 0x329, x0	// Write all 0s to CSR
	csrrs x5, 0x329, x8	// Set all CSR bits
	csrrc x5, 0x329, x8	// Clear all CSR bits
	csrrw x5, 0x329, x22	// Restore CSR

// Testing CSR 0x32a
	csrr x3, 0x32a	// Read CSR
	li x9, -1
	csrrw x15, 0x32a, x9	// Write all 1s to CSR
	csrrw x15, 0x32a, x0	// Write all 0s to CSR
	csrrs x15, 0x32a, x9	// Set all CSR bits
	csrrc x15, 0x32a, x9	// Clear all CSR bits
	csrrw x15, 0x32a, x3	// Restore CSR

// Testing CSR 0x32b
	csrr x16, 0x32b	// Read CSR
	li x12, -1
	csrrw x21, 0x32b, x12	// Write all 1s to CSR
	csrrw x21, 0x32b, x0	// Write all 0s to CSR
	csrrs x21, 0x32b, x12	// Set all CSR bits
	csrrc x21, 0x32b, x12	// Clear all CSR bits
	csrrw x21, 0x32b, x16	// Restore CSR

// Testing CSR 0x32c
	csrr x1, 0x32c	// Read CSR
	li x5, -1
	csrrw x7, 0x32c, x5	// Write all 1s to CSR
	csrrw x7, 0x32c, x0	// Write all 0s to CSR
	csrrs x7, 0x32c, x5	// Set all CSR bits
	csrrc x7, 0x32c, x5	// Clear all CSR bits
	csrrw x7, 0x32c, x1	// Restore CSR

// Testing CSR 0x32d
	csrr x12, 0x32d	// Read CSR
	li x23, -1
	csrrw x8, 0x32d, x23	// Write all 1s to CSR
	csrrw x8, 0x32d, x0	// Write all 0s to CSR
	csrrs x8, 0x32d, x23	// Set all CSR bits
	csrrc x8, 0x32d, x23	// Clear all CSR bits
	csrrw x8, 0x32d, x12	// Restore CSR

// Testing CSR 0x32e
	csrr x2, 0x32e	// Read CSR
	li x30, -1
	csrrw x1, 0x32e, x30	// Write all 1s to CSR
	csrrw x1, 0x32e, x0	// Write all 0s to CSR
	csrrs x1, 0x32e, x30	// Set all CSR bits
	csrrc x1, 0x32e, x30	// Clear all CSR bits
	csrrw x1, 0x32e, x2	// Restore CSR

// Testing CSR 0x32f
	csrr x9, 0x32f	// Read CSR
	li x28, -1
	csrrw x6, 0x32f, x28	// Write all 1s to CSR
	csrrw x6, 0x32f, x0	// Write all 0s to CSR
	csrrs x6, 0x32f, x28	// Set all CSR bits
	csrrc x6, 0x32f, x28	// Clear all CSR bits
	csrrw x6, 0x32f, x9	// Restore CSR

// Testing CSR 0x330
	csrr x30, 0x330	// Read CSR
	li x19, -1
	csrrw x2, 0x330, x19	// Write all 1s to CSR
	csrrw x2, 0x330, x0	// Write all 0s to CSR
	csrrs x2, 0x330, x19	// Set all CSR bits
	csrrc x2, 0x330, x19	// Clear all CSR bits
	csrrw x2, 0x330, x30	// Restore CSR

// Testing CSR 0x331
	csrr x15, 0x331	// Read CSR
	li x9, -1
	csrrw x12, 0x331, x9	// Write all 1s to CSR
	csrrw x12, 0x331, x0	// Write all 0s to CSR
	csrrs x12, 0x331, x9	// Set all CSR bits
	csrrc x12, 0x331, x9	// Clear all CSR bits
	csrrw x12, 0x331, x15	// Restore CSR

// Testing CSR 0x332
	csrr x29, 0x332	// Read CSR
	li x19, -1
	csrrw x4, 0x332, x19	// Write all 1s to CSR
	csrrw x4, 0x332, x0	// Write all 0s to CSR
	csrrs x4, 0x332, x19	// Set all CSR bits
	csrrc x4, 0x332, x19	// Clear all CSR bits
	csrrw x4, 0x332, x29	// Restore CSR

// Testing CSR 0x333
	csrr x21, 0x333	// Read CSR
	li x13, -1
	csrrw x31, 0x333, x13	// Write all 1s to CSR
	csrrw x31, 0x333, x0	// Write all 0s to CSR
	csrrs x31, 0x333, x13	// Set all CSR bits
	csrrc x31, 0x333, x13	// Clear all CSR bits
	csrrw x31, 0x333, x21	// Restore CSR

// Testing CSR 0x334
	csrr x9, 0x334	// Read CSR
	li x11, -1
	csrrw x13, 0x334, x11	// Write all 1s to CSR
	csrrw x13, 0x334, x0	// Write all 0s to CSR
	csrrs x13, 0x334, x11	// Set all CSR bits
	csrrc x13, 0x334, x11	// Clear all CSR bits
	csrrw x13, 0x334, x9	// Restore CSR

// Testing CSR 0x335
	csrr x11, 0x335	// Read CSR
	li x13, -1
	csrrw x12, 0x335, x13	// Write all 1s to CSR
	csrrw x12, 0x335, x0	// Write all 0s to CSR
	csrrs x12, 0x335, x13	// Set all CSR bits
	csrrc x12, 0x335, x13	// Clear all CSR bits
	csrrw x12, 0x335, x11	// Restore CSR

// Testing CSR 0x336
	csrr x27, 0x336	// Read CSR
	li x11, -1
	csrrw x7, 0x336, x11	// Write all 1s to CSR
	csrrw x7, 0x336, x0	// Write all 0s to CSR
	csrrs x7, 0x336, x11	// Set all CSR bits
	csrrc x7, 0x336, x11	// Clear all CSR bits
	csrrw x7, 0x336, x27	// Restore CSR

// Testing CSR 0x337
	csrr x17, 0x337	// Read CSR
	li x30, -1
	csrrw x10, 0x337, x30	// Write all 1s to CSR
	csrrw x10, 0x337, x0	// Write all 0s to CSR
	csrrs x10, 0x337, x30	// Set all CSR bits
	csrrc x10, 0x337, x30	// Clear all CSR bits
	csrrw x10, 0x337, x17	// Restore CSR

// Testing CSR 0x338
	csrr x22, 0x338	// Read CSR
	li x23, -1
	csrrw x16, 0x338, x23	// Write all 1s to CSR
	csrrw x16, 0x338, x0	// Write all 0s to CSR
	csrrs x16, 0x338, x23	// Set all CSR bits
	csrrc x16, 0x338, x23	// Clear all CSR bits
	csrrw x16, 0x338, x22	// Restore CSR

// Testing CSR 0x339
	csrr x28, 0x339	// Read CSR
	li x24, -1
	csrrw x7, 0x339, x24	// Write all 1s to CSR
	csrrw x7, 0x339, x0	// Write all 0s to CSR
	csrrs x7, 0x339, x24	// Set all CSR bits
	csrrc x7, 0x339, x24	// Clear all CSR bits
	csrrw x7, 0x339, x28	// Restore CSR

// Testing CSR 0x33a
	csrr x2, 0x33a	// Read CSR
	li x28, -1
	csrrw x9, 0x33a, x28	// Write all 1s to CSR
	csrrw x9, 0x33a, x0	// Write all 0s to CSR
	csrrs x9, 0x33a, x28	// Set all CSR bits
	csrrc x9, 0x33a, x28	// Clear all CSR bits
	csrrw x9, 0x33a, x2	// Restore CSR

// Testing CSR 0x33b
	csrr x29, 0x33b	// Read CSR
	li x12, -1
	csrrw x31, 0x33b, x12	// Write all 1s to CSR
	csrrw x31, 0x33b, x0	// Write all 0s to CSR
	csrrs x31, 0x33b, x12	// Set all CSR bits
	csrrc x31, 0x33b, x12	// Clear all CSR bits
	csrrw x31, 0x33b, x29	// Restore CSR

// Testing CSR 0x33c
	csrr x28, 0x33c	// Read CSR
	li x6, -1
	csrrw x20, 0x33c, x6	// Write all 1s to CSR
	csrrw x20, 0x33c, x0	// Write all 0s to CSR
	csrrs x20, 0x33c, x6	// Set all CSR bits
	csrrc x20, 0x33c, x6	// Clear all CSR bits
	csrrw x20, 0x33c, x28	// Restore CSR

// Testing CSR 0x33d
	csrr x24, 0x33d	// Read CSR
	li x19, -1
	csrrw x16, 0x33d, x19	// Write all 1s to CSR
	csrrw x16, 0x33d, x0	// Write all 0s to CSR
	csrrs x16, 0x33d, x19	// Set all CSR bits
	csrrc x16, 0x33d, x19	// Clear all CSR bits
	csrrw x16, 0x33d, x24	// Restore CSR

// Testing CSR 0x33e
	csrr x29, 0x33e	// Read CSR
	li x31, -1
	csrrw x10, 0x33e, x31	// Write all 1s to CSR
	csrrw x10, 0x33e, x0	// Write all 0s to CSR
	csrrs x10, 0x33e, x31	// Set all CSR bits
	csrrc x10, 0x33e, x31	// Clear all CSR bits
	csrrw x10, 0x33e, x29	// Restore CSR

// Testing CSR 0x33f
	csrr x30, 0x33f	// Read CSR
	li x13, -1
	csrrw x8, 0x33f, x13	// Write all 1s to CSR
	csrrw x8, 0x33f, x0	// Write all 0s to CSR
	csrrs x8, 0x33f, x13	// Set all CSR bits
	csrrc x8, 0x33f, x13	// Clear all CSR bits
	csrrw x8, 0x33f, x30	// Restore CSR

// Testing CSR 0x340
	csrr x28, 0x340	// Read CSR
	li x31, -1
	csrrw x30, 0x340, x31	// Write all 1s to CSR
	csrrw x30, 0x340, x0	// Write all 0s to CSR
	csrrs x30, 0x340, x31	// Set all CSR bits
	csrrc x30, 0x340, x31	// Clear all CSR bits
	csrrw x30, 0x340, x28	// Restore CSR

// Testing CSR 0x341
	csrr x1, 0x341	// Read CSR
	li x26, -1
	csrrw x5, 0x341, x26	// Write all 1s to CSR
	csrrw x5, 0x341, x0	// Write all 0s to CSR
	csrrs x5, 0x341, x26	// Set all CSR bits
	csrrc x5, 0x341, x26	// Clear all CSR bits
	csrrw x5, 0x341, x1	// Restore CSR

// Testing CSR 0x342
	csrr x30, 0x342	// Read CSR
	li x25, -1
	csrrw x18, 0x342, x25	// Write all 1s to CSR
	csrrw x18, 0x342, x0	// Write all 0s to CSR
	csrrs x18, 0x342, x25	// Set all CSR bits
	csrrc x18, 0x342, x25	// Clear all CSR bits
	csrrw x18, 0x342, x30	// Restore CSR

// Testing CSR 0x343
	csrr x9, 0x343	// Read CSR
	li x6, -1
	csrrw x30, 0x343, x6	// Write all 1s to CSR
	csrrw x30, 0x343, x0	// Write all 0s to CSR
	csrrs x30, 0x343, x6	// Set all CSR bits
	csrrc x30, 0x343, x6	// Clear all CSR bits
	csrrw x30, 0x343, x9	// Restore CSR

// Testing CSR 0x344
	csrr x28, 0x344	// Read CSR
	li x13, -1
	csrrw x29, 0x344, x13	// Write all 1s to CSR
	csrrw x29, 0x344, x0	// Write all 0s to CSR
	csrrs x29, 0x344, x13	// Set all CSR bits
	csrrc x29, 0x344, x13	// Clear all CSR bits
	csrrw x29, 0x344, x28	// Restore CSR

// Testing CSR 0x345
	csrr x10, 0x345	// Read CSR
	li x20, -1
	csrrw x22, 0x345, x20	// Write all 1s to CSR
	csrrw x22, 0x345, x0	// Write all 0s to CSR
	csrrs x22, 0x345, x20	// Set all CSR bits
	csrrc x22, 0x345, x20	// Clear all CSR bits
	csrrw x22, 0x345, x10	// Restore CSR

// Testing CSR 0x346
	csrr x9, 0x346	// Read CSR
	li x1, -1
	csrrw x24, 0x346, x1	// Write all 1s to CSR
	csrrw x24, 0x346, x0	// Write all 0s to CSR
	csrrs x24, 0x346, x1	// Set all CSR bits
	csrrc x24, 0x346, x1	// Clear all CSR bits
	csrrw x24, 0x346, x9	// Restore CSR

// Testing CSR 0x347
	csrr x30, 0x347	// Read CSR
	li x31, -1
	csrrw x12, 0x347, x31	// Write all 1s to CSR
	csrrw x12, 0x347, x0	// Write all 0s to CSR
	csrrs x12, 0x347, x31	// Set all CSR bits
	csrrc x12, 0x347, x31	// Clear all CSR bits
	csrrw x12, 0x347, x30	// Restore CSR

// Testing CSR 0x348
	csrr x4, 0x348	// Read CSR
	li x19, -1
	csrrw x12, 0x348, x19	// Write all 1s to CSR
	csrrw x12, 0x348, x0	// Write all 0s to CSR
	csrrs x12, 0x348, x19	// Set all CSR bits
	csrrc x12, 0x348, x19	// Clear all CSR bits
	csrrw x12, 0x348, x4	// Restore CSR

// Testing CSR 0x349
	csrr x22, 0x349	// Read CSR
	li x11, -1
	csrrw x27, 0x349, x11	// Write all 1s to CSR
	csrrw x27, 0x349, x0	// Write all 0s to CSR
	csrrs x27, 0x349, x11	// Set all CSR bits
	csrrc x27, 0x349, x11	// Clear all CSR bits
	csrrw x27, 0x349, x22	// Restore CSR

// Testing CSR 0x34a
	csrr x17, 0x34a	// Read CSR
	li x23, -1
	csrrw x28, 0x34a, x23	// Write all 1s to CSR
	csrrw x28, 0x34a, x0	// Write all 0s to CSR
	csrrs x28, 0x34a, x23	// Set all CSR bits
	csrrc x28, 0x34a, x23	// Clear all CSR bits
	csrrw x28, 0x34a, x17	// Restore CSR

// Testing CSR 0x34b
	csrr x11, 0x34b	// Read CSR
	li x23, -1
	csrrw x30, 0x34b, x23	// Write all 1s to CSR
	csrrw x30, 0x34b, x0	// Write all 0s to CSR
	csrrs x30, 0x34b, x23	// Set all CSR bits
	csrrc x30, 0x34b, x23	// Clear all CSR bits
	csrrw x30, 0x34b, x11	// Restore CSR

// Testing CSR 0x34c
	csrr x20, 0x34c	// Read CSR
	li x8, -1
	csrrw x24, 0x34c, x8	// Write all 1s to CSR
	csrrw x24, 0x34c, x0	// Write all 0s to CSR
	csrrs x24, 0x34c, x8	// Set all CSR bits
	csrrc x24, 0x34c, x8	// Clear all CSR bits
	csrrw x24, 0x34c, x20	// Restore CSR

// Testing CSR 0x34d
	csrr x24, 0x34d	// Read CSR
	li x28, -1
	csrrw x17, 0x34d, x28	// Write all 1s to CSR
	csrrw x17, 0x34d, x0	// Write all 0s to CSR
	csrrs x17, 0x34d, x28	// Set all CSR bits
	csrrc x17, 0x34d, x28	// Clear all CSR bits
	csrrw x17, 0x34d, x24	// Restore CSR

// Testing CSR 0x34e
	csrr x8, 0x34e	// Read CSR
	li x9, -1
	csrrw x1, 0x34e, x9	// Write all 1s to CSR
	csrrw x1, 0x34e, x0	// Write all 0s to CSR
	csrrs x1, 0x34e, x9	// Set all CSR bits
	csrrc x1, 0x34e, x9	// Clear all CSR bits
	csrrw x1, 0x34e, x8	// Restore CSR

// Testing CSR 0x34f
	csrr x17, 0x34f	// Read CSR
	li x6, -1
	csrrw x11, 0x34f, x6	// Write all 1s to CSR
	csrrw x11, 0x34f, x0	// Write all 0s to CSR
	csrrs x11, 0x34f, x6	// Set all CSR bits
	csrrc x11, 0x34f, x6	// Clear all CSR bits
	csrrw x11, 0x34f, x17	// Restore CSR

// Testing CSR 0x350
	csrr x23, 0x350	// Read CSR
	li x17, -1
	csrrw x24, 0x350, x17	// Write all 1s to CSR
	csrrw x24, 0x350, x0	// Write all 0s to CSR
	csrrs x24, 0x350, x17	// Set all CSR bits
	csrrc x24, 0x350, x17	// Clear all CSR bits
	csrrw x24, 0x350, x23	// Restore CSR

// Testing CSR 0x351
	csrr x7, 0x351	// Read CSR
	li x20, -1
	csrrw x9, 0x351, x20	// Write all 1s to CSR
	csrrw x9, 0x351, x0	// Write all 0s to CSR
	csrrs x9, 0x351, x20	// Set all CSR bits
	csrrc x9, 0x351, x20	// Clear all CSR bits
	csrrw x9, 0x351, x7	// Restore CSR

// Testing CSR 0x352
	csrr x12, 0x352	// Read CSR
	li x8, -1
	csrrw x28, 0x352, x8	// Write all 1s to CSR
	csrrw x28, 0x352, x0	// Write all 0s to CSR
	csrrs x28, 0x352, x8	// Set all CSR bits
	csrrc x28, 0x352, x8	// Clear all CSR bits
	csrrw x28, 0x352, x12	// Restore CSR

// Testing CSR 0x353
	csrr x26, 0x353	// Read CSR
	li x13, -1
	csrrw x12, 0x353, x13	// Write all 1s to CSR
	csrrw x12, 0x353, x0	// Write all 0s to CSR
	csrrs x12, 0x353, x13	// Set all CSR bits
	csrrc x12, 0x353, x13	// Clear all CSR bits
	csrrw x12, 0x353, x26	// Restore CSR

// Testing CSR 0x354
	csrr x28, 0x354	// Read CSR
	li x18, -1
	csrrw x13, 0x354, x18	// Write all 1s to CSR
	csrrw x13, 0x354, x0	// Write all 0s to CSR
	csrrs x13, 0x354, x18	// Set all CSR bits
	csrrc x13, 0x354, x18	// Clear all CSR bits
	csrrw x13, 0x354, x28	// Restore CSR

// Testing CSR 0x355
	csrr x28, 0x355	// Read CSR
	li x11, -1
	csrrw x22, 0x355, x11	// Write all 1s to CSR
	csrrw x22, 0x355, x0	// Write all 0s to CSR
	csrrs x22, 0x355, x11	// Set all CSR bits
	csrrc x22, 0x355, x11	// Clear all CSR bits
	csrrw x22, 0x355, x28	// Restore CSR

// Testing CSR 0x356
	csrr x14, 0x356	// Read CSR
	li x13, -1
	csrrw x10, 0x356, x13	// Write all 1s to CSR
	csrrw x10, 0x356, x0	// Write all 0s to CSR
	csrrs x10, 0x356, x13	// Set all CSR bits
	csrrc x10, 0x356, x13	// Clear all CSR bits
	csrrw x10, 0x356, x14	// Restore CSR

// Testing CSR 0x357
	csrr x27, 0x357	// Read CSR
	li x8, -1
	csrrw x21, 0x357, x8	// Write all 1s to CSR
	csrrw x21, 0x357, x0	// Write all 0s to CSR
	csrrs x21, 0x357, x8	// Set all CSR bits
	csrrc x21, 0x357, x8	// Clear all CSR bits
	csrrw x21, 0x357, x27	// Restore CSR

// Testing CSR 0x358
	csrr x18, 0x358	// Read CSR
	li x23, -1
	csrrw x4, 0x358, x23	// Write all 1s to CSR
	csrrw x4, 0x358, x0	// Write all 0s to CSR
	csrrs x4, 0x358, x23	// Set all CSR bits
	csrrc x4, 0x358, x23	// Clear all CSR bits
	csrrw x4, 0x358, x18	// Restore CSR

// Testing CSR 0x359
	csrr x9, 0x359	// Read CSR
	li x28, -1
	csrrw x3, 0x359, x28	// Write all 1s to CSR
	csrrw x3, 0x359, x0	// Write all 0s to CSR
	csrrs x3, 0x359, x28	// Set all CSR bits
	csrrc x3, 0x359, x28	// Clear all CSR bits
	csrrw x3, 0x359, x9	// Restore CSR

// Testing CSR 0x35a
	csrr x11, 0x35a	// Read CSR
	li x27, -1
	csrrw x15, 0x35a, x27	// Write all 1s to CSR
	csrrw x15, 0x35a, x0	// Write all 0s to CSR
	csrrs x15, 0x35a, x27	// Set all CSR bits
	csrrc x15, 0x35a, x27	// Clear all CSR bits
	csrrw x15, 0x35a, x11	// Restore CSR

// Testing CSR 0x35b
	csrr x30, 0x35b	// Read CSR
	li x28, -1
	csrrw x5, 0x35b, x28	// Write all 1s to CSR
	csrrw x5, 0x35b, x0	// Write all 0s to CSR
	csrrs x5, 0x35b, x28	// Set all CSR bits
	csrrc x5, 0x35b, x28	// Clear all CSR bits
	csrrw x5, 0x35b, x30	// Restore CSR

// Testing CSR 0x35c
	csrr x29, 0x35c	// Read CSR
	li x31, -1
	csrrw x18, 0x35c, x31	// Write all 1s to CSR
	csrrw x18, 0x35c, x0	// Write all 0s to CSR
	csrrs x18, 0x35c, x31	// Set all CSR bits
	csrrc x18, 0x35c, x31	// Clear all CSR bits
	csrrw x18, 0x35c, x29	// Restore CSR

// Testing CSR 0x35d
	csrr x16, 0x35d	// Read CSR
	li x18, -1
	csrrw x28, 0x35d, x18	// Write all 1s to CSR
	csrrw x28, 0x35d, x0	// Write all 0s to CSR
	csrrs x28, 0x35d, x18	// Set all CSR bits
	csrrc x28, 0x35d, x18	// Clear all CSR bits
	csrrw x28, 0x35d, x16	// Restore CSR

// Testing CSR 0x35e
	csrr x3, 0x35e	// Read CSR
	li x9, -1
	csrrw x7, 0x35e, x9	// Write all 1s to CSR
	csrrw x7, 0x35e, x0	// Write all 0s to CSR
	csrrs x7, 0x35e, x9	// Set all CSR bits
	csrrc x7, 0x35e, x9	// Clear all CSR bits
	csrrw x7, 0x35e, x3	// Restore CSR

// Testing CSR 0x35f
	csrr x6, 0x35f	// Read CSR
	li x4, -1
	csrrw x9, 0x35f, x4	// Write all 1s to CSR
	csrrw x9, 0x35f, x0	// Write all 0s to CSR
	csrrs x9, 0x35f, x4	// Set all CSR bits
	csrrc x9, 0x35f, x4	// Clear all CSR bits
	csrrw x9, 0x35f, x6	// Restore CSR

// Testing CSR 0x360
	csrr x11, 0x360	// Read CSR
	li x18, -1
	csrrw x1, 0x360, x18	// Write all 1s to CSR
	csrrw x1, 0x360, x0	// Write all 0s to CSR
	csrrs x1, 0x360, x18	// Set all CSR bits
	csrrc x1, 0x360, x18	// Clear all CSR bits
	csrrw x1, 0x360, x11	// Restore CSR

// Testing CSR 0x361
	csrr x11, 0x361	// Read CSR
	li x17, -1
	csrrw x31, 0x361, x17	// Write all 1s to CSR
	csrrw x31, 0x361, x0	// Write all 0s to CSR
	csrrs x31, 0x361, x17	// Set all CSR bits
	csrrc x31, 0x361, x17	// Clear all CSR bits
	csrrw x31, 0x361, x11	// Restore CSR

// Testing CSR 0x362
	csrr x1, 0x362	// Read CSR
	li x5, -1
	csrrw x12, 0x362, x5	// Write all 1s to CSR
	csrrw x12, 0x362, x0	// Write all 0s to CSR
	csrrs x12, 0x362, x5	// Set all CSR bits
	csrrc x12, 0x362, x5	// Clear all CSR bits
	csrrw x12, 0x362, x1	// Restore CSR

// Testing CSR 0x363
	csrr x16, 0x363	// Read CSR
	li x4, -1
	csrrw x20, 0x363, x4	// Write all 1s to CSR
	csrrw x20, 0x363, x0	// Write all 0s to CSR
	csrrs x20, 0x363, x4	// Set all CSR bits
	csrrc x20, 0x363, x4	// Clear all CSR bits
	csrrw x20, 0x363, x16	// Restore CSR

// Testing CSR 0x364
	csrr x8, 0x364	// Read CSR
	li x13, -1
	csrrw x22, 0x364, x13	// Write all 1s to CSR
	csrrw x22, 0x364, x0	// Write all 0s to CSR
	csrrs x22, 0x364, x13	// Set all CSR bits
	csrrc x22, 0x364, x13	// Clear all CSR bits
	csrrw x22, 0x364, x8	// Restore CSR

// Testing CSR 0x365
	csrr x8, 0x365	// Read CSR
	li x9, -1
	csrrw x2, 0x365, x9	// Write all 1s to CSR
	csrrw x2, 0x365, x0	// Write all 0s to CSR
	csrrs x2, 0x365, x9	// Set all CSR bits
	csrrc x2, 0x365, x9	// Clear all CSR bits
	csrrw x2, 0x365, x8	// Restore CSR

// Testing CSR 0x366
	csrr x1, 0x366	// Read CSR
	li x20, -1
	csrrw x27, 0x366, x20	// Write all 1s to CSR
	csrrw x27, 0x366, x0	// Write all 0s to CSR
	csrrs x27, 0x366, x20	// Set all CSR bits
	csrrc x27, 0x366, x20	// Clear all CSR bits
	csrrw x27, 0x366, x1	// Restore CSR

// Testing CSR 0x367
	csrr x12, 0x367	// Read CSR
	li x18, -1
	csrrw x19, 0x367, x18	// Write all 1s to CSR
	csrrw x19, 0x367, x0	// Write all 0s to CSR
	csrrs x19, 0x367, x18	// Set all CSR bits
	csrrc x19, 0x367, x18	// Clear all CSR bits
	csrrw x19, 0x367, x12	// Restore CSR

// Testing CSR 0x368
	csrr x29, 0x368	// Read CSR
	li x22, -1
	csrrw x9, 0x368, x22	// Write all 1s to CSR
	csrrw x9, 0x368, x0	// Write all 0s to CSR
	csrrs x9, 0x368, x22	// Set all CSR bits
	csrrc x9, 0x368, x22	// Clear all CSR bits
	csrrw x9, 0x368, x29	// Restore CSR

// Testing CSR 0x369
	csrr x28, 0x369	// Read CSR
	li x11, -1
	csrrw x30, 0x369, x11	// Write all 1s to CSR
	csrrw x30, 0x369, x0	// Write all 0s to CSR
	csrrs x30, 0x369, x11	// Set all CSR bits
	csrrc x30, 0x369, x11	// Clear all CSR bits
	csrrw x30, 0x369, x28	// Restore CSR

// Testing CSR 0x36a
	csrr x1, 0x36a	// Read CSR
	li x31, -1
	csrrw x17, 0x36a, x31	// Write all 1s to CSR
	csrrw x17, 0x36a, x0	// Write all 0s to CSR
	csrrs x17, 0x36a, x31	// Set all CSR bits
	csrrc x17, 0x36a, x31	// Clear all CSR bits
	csrrw x17, 0x36a, x1	// Restore CSR

// Testing CSR 0x36b
	csrr x25, 0x36b	// Read CSR
	li x29, -1
	csrrw x20, 0x36b, x29	// Write all 1s to CSR
	csrrw x20, 0x36b, x0	// Write all 0s to CSR
	csrrs x20, 0x36b, x29	// Set all CSR bits
	csrrc x20, 0x36b, x29	// Clear all CSR bits
	csrrw x20, 0x36b, x25	// Restore CSR

// Testing CSR 0x36c
	csrr x1, 0x36c	// Read CSR
	li x31, -1
	csrrw x19, 0x36c, x31	// Write all 1s to CSR
	csrrw x19, 0x36c, x0	// Write all 0s to CSR
	csrrs x19, 0x36c, x31	// Set all CSR bits
	csrrc x19, 0x36c, x31	// Clear all CSR bits
	csrrw x19, 0x36c, x1	// Restore CSR

// Testing CSR 0x36d
	csrr x13, 0x36d	// Read CSR
	li x8, -1
	csrrw x15, 0x36d, x8	// Write all 1s to CSR
	csrrw x15, 0x36d, x0	// Write all 0s to CSR
	csrrs x15, 0x36d, x8	// Set all CSR bits
	csrrc x15, 0x36d, x8	// Clear all CSR bits
	csrrw x15, 0x36d, x13	// Restore CSR

// Testing CSR 0x36e
	csrr x22, 0x36e	// Read CSR
	li x27, -1
	csrrw x30, 0x36e, x27	// Write all 1s to CSR
	csrrw x30, 0x36e, x0	// Write all 0s to CSR
	csrrs x30, 0x36e, x27	// Set all CSR bits
	csrrc x30, 0x36e, x27	// Clear all CSR bits
	csrrw x30, 0x36e, x22	// Restore CSR

// Testing CSR 0x36f
	csrr x16, 0x36f	// Read CSR
	li x10, -1
	csrrw x29, 0x36f, x10	// Write all 1s to CSR
	csrrw x29, 0x36f, x0	// Write all 0s to CSR
	csrrs x29, 0x36f, x10	// Set all CSR bits
	csrrc x29, 0x36f, x10	// Clear all CSR bits
	csrrw x29, 0x36f, x16	// Restore CSR

// Testing CSR 0x370
	csrr x5, 0x370	// Read CSR
	li x13, -1
	csrrw x1, 0x370, x13	// Write all 1s to CSR
	csrrw x1, 0x370, x0	// Write all 0s to CSR
	csrrs x1, 0x370, x13	// Set all CSR bits
	csrrc x1, 0x370, x13	// Clear all CSR bits
	csrrw x1, 0x370, x5	// Restore CSR

// Testing CSR 0x371
	csrr x7, 0x371	// Read CSR
	li x8, -1
	csrrw x14, 0x371, x8	// Write all 1s to CSR
	csrrw x14, 0x371, x0	// Write all 0s to CSR
	csrrs x14, 0x371, x8	// Set all CSR bits
	csrrc x14, 0x371, x8	// Clear all CSR bits
	csrrw x14, 0x371, x7	// Restore CSR

// Testing CSR 0x372
	csrr x25, 0x372	// Read CSR
	li x22, -1
	csrrw x3, 0x372, x22	// Write all 1s to CSR
	csrrw x3, 0x372, x0	// Write all 0s to CSR
	csrrs x3, 0x372, x22	// Set all CSR bits
	csrrc x3, 0x372, x22	// Clear all CSR bits
	csrrw x3, 0x372, x25	// Restore CSR

// Testing CSR 0x373
	csrr x26, 0x373	// Read CSR
	li x3, -1
	csrrw x22, 0x373, x3	// Write all 1s to CSR
	csrrw x22, 0x373, x0	// Write all 0s to CSR
	csrrs x22, 0x373, x3	// Set all CSR bits
	csrrc x22, 0x373, x3	// Clear all CSR bits
	csrrw x22, 0x373, x26	// Restore CSR

// Testing CSR 0x374
	csrr x10, 0x374	// Read CSR
	li x3, -1
	csrrw x11, 0x374, x3	// Write all 1s to CSR
	csrrw x11, 0x374, x0	// Write all 0s to CSR
	csrrs x11, 0x374, x3	// Set all CSR bits
	csrrc x11, 0x374, x3	// Clear all CSR bits
	csrrw x11, 0x374, x10	// Restore CSR

// Testing CSR 0x375
	csrr x26, 0x375	// Read CSR
	li x23, -1
	csrrw x5, 0x375, x23	// Write all 1s to CSR
	csrrw x5, 0x375, x0	// Write all 0s to CSR
	csrrs x5, 0x375, x23	// Set all CSR bits
	csrrc x5, 0x375, x23	// Clear all CSR bits
	csrrw x5, 0x375, x26	// Restore CSR

// Testing CSR 0x376
	csrr x14, 0x376	// Read CSR
	li x4, -1
	csrrw x7, 0x376, x4	// Write all 1s to CSR
	csrrw x7, 0x376, x0	// Write all 0s to CSR
	csrrs x7, 0x376, x4	// Set all CSR bits
	csrrc x7, 0x376, x4	// Clear all CSR bits
	csrrw x7, 0x376, x14	// Restore CSR

// Testing CSR 0x377
	csrr x4, 0x377	// Read CSR
	li x6, -1
	csrrw x26, 0x377, x6	// Write all 1s to CSR
	csrrw x26, 0x377, x0	// Write all 0s to CSR
	csrrs x26, 0x377, x6	// Set all CSR bits
	csrrc x26, 0x377, x6	// Clear all CSR bits
	csrrw x26, 0x377, x4	// Restore CSR

// Testing CSR 0x378
	csrr x7, 0x378	// Read CSR
	li x31, -1
	csrrw x18, 0x378, x31	// Write all 1s to CSR
	csrrw x18, 0x378, x0	// Write all 0s to CSR
	csrrs x18, 0x378, x31	// Set all CSR bits
	csrrc x18, 0x378, x31	// Clear all CSR bits
	csrrw x18, 0x378, x7	// Restore CSR

// Testing CSR 0x379
	csrr x12, 0x379	// Read CSR
	li x28, -1
	csrrw x3, 0x379, x28	// Write all 1s to CSR
	csrrw x3, 0x379, x0	// Write all 0s to CSR
	csrrs x3, 0x379, x28	// Set all CSR bits
	csrrc x3, 0x379, x28	// Clear all CSR bits
	csrrw x3, 0x379, x12	// Restore CSR

// Testing CSR 0x37a
	csrr x17, 0x37a	// Read CSR
	li x8, -1
	csrrw x22, 0x37a, x8	// Write all 1s to CSR
	csrrw x22, 0x37a, x0	// Write all 0s to CSR
	csrrs x22, 0x37a, x8	// Set all CSR bits
	csrrc x22, 0x37a, x8	// Clear all CSR bits
	csrrw x22, 0x37a, x17	// Restore CSR

// Testing CSR 0x37b
	csrr x31, 0x37b	// Read CSR
	li x26, -1
	csrrw x30, 0x37b, x26	// Write all 1s to CSR
	csrrw x30, 0x37b, x0	// Write all 0s to CSR
	csrrs x30, 0x37b, x26	// Set all CSR bits
	csrrc x30, 0x37b, x26	// Clear all CSR bits
	csrrw x30, 0x37b, x31	// Restore CSR

// Testing CSR 0x37c
	csrr x22, 0x37c	// Read CSR
	li x9, -1
	csrrw x25, 0x37c, x9	// Write all 1s to CSR
	csrrw x25, 0x37c, x0	// Write all 0s to CSR
	csrrs x25, 0x37c, x9	// Set all CSR bits
	csrrc x25, 0x37c, x9	// Clear all CSR bits
	csrrw x25, 0x37c, x22	// Restore CSR

// Testing CSR 0x37d
	csrr x31, 0x37d	// Read CSR
	li x23, -1
	csrrw x7, 0x37d, x23	// Write all 1s to CSR
	csrrw x7, 0x37d, x0	// Write all 0s to CSR
	csrrs x7, 0x37d, x23	// Set all CSR bits
	csrrc x7, 0x37d, x23	// Clear all CSR bits
	csrrw x7, 0x37d, x31	// Restore CSR

// Testing CSR 0x37e
	csrr x17, 0x37e	// Read CSR
	li x7, -1
	csrrw x9, 0x37e, x7	// Write all 1s to CSR
	csrrw x9, 0x37e, x0	// Write all 0s to CSR
	csrrs x9, 0x37e, x7	// Set all CSR bits
	csrrc x9, 0x37e, x7	// Clear all CSR bits
	csrrw x9, 0x37e, x17	// Restore CSR

// Testing CSR 0x37f
	csrr x26, 0x37f	// Read CSR
	li x27, -1
	csrrw x3, 0x37f, x27	// Write all 1s to CSR
	csrrw x3, 0x37f, x0	// Write all 0s to CSR
	csrrs x3, 0x37f, x27	// Set all CSR bits
	csrrc x3, 0x37f, x27	// Clear all CSR bits
	csrrw x3, 0x37f, x26	// Restore CSR

// Testing CSR 0x380
	csrr x7, 0x380	// Read CSR
	li x29, -1
	csrrw x27, 0x380, x29	// Write all 1s to CSR
	csrrw x27, 0x380, x0	// Write all 0s to CSR
	csrrs x27, 0x380, x29	// Set all CSR bits
	csrrc x27, 0x380, x29	// Clear all CSR bits
	csrrw x27, 0x380, x7	// Restore CSR

// Testing CSR 0x381
	csrr x29, 0x381	// Read CSR
	li x20, -1
	csrrw x23, 0x381, x20	// Write all 1s to CSR
	csrrw x23, 0x381, x0	// Write all 0s to CSR
	csrrs x23, 0x381, x20	// Set all CSR bits
	csrrc x23, 0x381, x20	// Clear all CSR bits
	csrrw x23, 0x381, x29	// Restore CSR

// Testing CSR 0x382
	csrr x26, 0x382	// Read CSR
	li x23, -1
	csrrw x28, 0x382, x23	// Write all 1s to CSR
	csrrw x28, 0x382, x0	// Write all 0s to CSR
	csrrs x28, 0x382, x23	// Set all CSR bits
	csrrc x28, 0x382, x23	// Clear all CSR bits
	csrrw x28, 0x382, x26	// Restore CSR

// Testing CSR 0x383
	csrr x16, 0x383	// Read CSR
	li x8, -1
	csrrw x3, 0x383, x8	// Write all 1s to CSR
	csrrw x3, 0x383, x0	// Write all 0s to CSR
	csrrs x3, 0x383, x8	// Set all CSR bits
	csrrc x3, 0x383, x8	// Clear all CSR bits
	csrrw x3, 0x383, x16	// Restore CSR

// Testing CSR 0x384
	csrr x19, 0x384	// Read CSR
	li x12, -1
	csrrw x27, 0x384, x12	// Write all 1s to CSR
	csrrw x27, 0x384, x0	// Write all 0s to CSR
	csrrs x27, 0x384, x12	// Set all CSR bits
	csrrc x27, 0x384, x12	// Clear all CSR bits
	csrrw x27, 0x384, x19	// Restore CSR

// Testing CSR 0x385
	csrr x25, 0x385	// Read CSR
	li x1, -1
	csrrw x19, 0x385, x1	// Write all 1s to CSR
	csrrw x19, 0x385, x0	// Write all 0s to CSR
	csrrs x19, 0x385, x1	// Set all CSR bits
	csrrc x19, 0x385, x1	// Clear all CSR bits
	csrrw x19, 0x385, x25	// Restore CSR

// Testing CSR 0x386
	csrr x28, 0x386	// Read CSR
	li x10, -1
	csrrw x22, 0x386, x10	// Write all 1s to CSR
	csrrw x22, 0x386, x0	// Write all 0s to CSR
	csrrs x22, 0x386, x10	// Set all CSR bits
	csrrc x22, 0x386, x10	// Clear all CSR bits
	csrrw x22, 0x386, x28	// Restore CSR

// Testing CSR 0x387
	csrr x6, 0x387	// Read CSR
	li x29, -1
	csrrw x7, 0x387, x29	// Write all 1s to CSR
	csrrw x7, 0x387, x0	// Write all 0s to CSR
	csrrs x7, 0x387, x29	// Set all CSR bits
	csrrc x7, 0x387, x29	// Clear all CSR bits
	csrrw x7, 0x387, x6	// Restore CSR

// Testing CSR 0x388
	csrr x1, 0x388	// Read CSR
	li x18, -1
	csrrw x21, 0x388, x18	// Write all 1s to CSR
	csrrw x21, 0x388, x0	// Write all 0s to CSR
	csrrs x21, 0x388, x18	// Set all CSR bits
	csrrc x21, 0x388, x18	// Clear all CSR bits
	csrrw x21, 0x388, x1	// Restore CSR

// Testing CSR 0x389
	csrr x23, 0x389	// Read CSR
	li x26, -1
	csrrw x31, 0x389, x26	// Write all 1s to CSR
	csrrw x31, 0x389, x0	// Write all 0s to CSR
	csrrs x31, 0x389, x26	// Set all CSR bits
	csrrc x31, 0x389, x26	// Clear all CSR bits
	csrrw x31, 0x389, x23	// Restore CSR

// Testing CSR 0x38a
	csrr x15, 0x38a	// Read CSR
	li x25, -1
	csrrw x24, 0x38a, x25	// Write all 1s to CSR
	csrrw x24, 0x38a, x0	// Write all 0s to CSR
	csrrs x24, 0x38a, x25	// Set all CSR bits
	csrrc x24, 0x38a, x25	// Clear all CSR bits
	csrrw x24, 0x38a, x15	// Restore CSR

// Testing CSR 0x38b
	csrr x23, 0x38b	// Read CSR
	li x20, -1
	csrrw x21, 0x38b, x20	// Write all 1s to CSR
	csrrw x21, 0x38b, x0	// Write all 0s to CSR
	csrrs x21, 0x38b, x20	// Set all CSR bits
	csrrc x21, 0x38b, x20	// Clear all CSR bits
	csrrw x21, 0x38b, x23	// Restore CSR

// Testing CSR 0x38c
	csrr x17, 0x38c	// Read CSR
	li x12, -1
	csrrw x20, 0x38c, x12	// Write all 1s to CSR
	csrrw x20, 0x38c, x0	// Write all 0s to CSR
	csrrs x20, 0x38c, x12	// Set all CSR bits
	csrrc x20, 0x38c, x12	// Clear all CSR bits
	csrrw x20, 0x38c, x17	// Restore CSR

// Testing CSR 0x38d
	csrr x27, 0x38d	// Read CSR
	li x26, -1
	csrrw x8, 0x38d, x26	// Write all 1s to CSR
	csrrw x8, 0x38d, x0	// Write all 0s to CSR
	csrrs x8, 0x38d, x26	// Set all CSR bits
	csrrc x8, 0x38d, x26	// Clear all CSR bits
	csrrw x8, 0x38d, x27	// Restore CSR

// Testing CSR 0x38e
	csrr x13, 0x38e	// Read CSR
	li x24, -1
	csrrw x5, 0x38e, x24	// Write all 1s to CSR
	csrrw x5, 0x38e, x0	// Write all 0s to CSR
	csrrs x5, 0x38e, x24	// Set all CSR bits
	csrrc x5, 0x38e, x24	// Clear all CSR bits
	csrrw x5, 0x38e, x13	// Restore CSR

// Testing CSR 0x38f
	csrr x20, 0x38f	// Read CSR
	li x12, -1
	csrrw x25, 0x38f, x12	// Write all 1s to CSR
	csrrw x25, 0x38f, x0	// Write all 0s to CSR
	csrrs x25, 0x38f, x12	// Set all CSR bits
	csrrc x25, 0x38f, x12	// Clear all CSR bits
	csrrw x25, 0x38f, x20	// Restore CSR

// Testing CSR 0x390
	csrr x26, 0x390	// Read CSR
	li x17, -1
	csrrw x6, 0x390, x17	// Write all 1s to CSR
	csrrw x6, 0x390, x0	// Write all 0s to CSR
	csrrs x6, 0x390, x17	// Set all CSR bits
	csrrc x6, 0x390, x17	// Clear all CSR bits
	csrrw x6, 0x390, x26	// Restore CSR

// Testing CSR 0x391
	csrr x16, 0x391	// Read CSR
	li x3, -1
	csrrw x7, 0x391, x3	// Write all 1s to CSR
	csrrw x7, 0x391, x0	// Write all 0s to CSR
	csrrs x7, 0x391, x3	// Set all CSR bits
	csrrc x7, 0x391, x3	// Clear all CSR bits
	csrrw x7, 0x391, x16	// Restore CSR

// Testing CSR 0x392
	csrr x16, 0x392	// Read CSR
	li x12, -1
	csrrw x24, 0x392, x12	// Write all 1s to CSR
	csrrw x24, 0x392, x0	// Write all 0s to CSR
	csrrs x24, 0x392, x12	// Set all CSR bits
	csrrc x24, 0x392, x12	// Clear all CSR bits
	csrrw x24, 0x392, x16	// Restore CSR

// Testing CSR 0x393
	csrr x20, 0x393	// Read CSR
	li x14, -1
	csrrw x9, 0x393, x14	// Write all 1s to CSR
	csrrw x9, 0x393, x0	// Write all 0s to CSR
	csrrs x9, 0x393, x14	// Set all CSR bits
	csrrc x9, 0x393, x14	// Clear all CSR bits
	csrrw x9, 0x393, x20	// Restore CSR

// Testing CSR 0x394
	csrr x6, 0x394	// Read CSR
	li x24, -1
	csrrw x31, 0x394, x24	// Write all 1s to CSR
	csrrw x31, 0x394, x0	// Write all 0s to CSR
	csrrs x31, 0x394, x24	// Set all CSR bits
	csrrc x31, 0x394, x24	// Clear all CSR bits
	csrrw x31, 0x394, x6	// Restore CSR

// Testing CSR 0x395
	csrr x1, 0x395	// Read CSR
	li x30, -1
	csrrw x28, 0x395, x30	// Write all 1s to CSR
	csrrw x28, 0x395, x0	// Write all 0s to CSR
	csrrs x28, 0x395, x30	// Set all CSR bits
	csrrc x28, 0x395, x30	// Clear all CSR bits
	csrrw x28, 0x395, x1	// Restore CSR

// Testing CSR 0x396
	csrr x28, 0x396	// Read CSR
	li x21, -1
	csrrw x16, 0x396, x21	// Write all 1s to CSR
	csrrw x16, 0x396, x0	// Write all 0s to CSR
	csrrs x16, 0x396, x21	// Set all CSR bits
	csrrc x16, 0x396, x21	// Clear all CSR bits
	csrrw x16, 0x396, x28	// Restore CSR

// Testing CSR 0x397
	csrr x9, 0x397	// Read CSR
	li x2, -1
	csrrw x3, 0x397, x2	// Write all 1s to CSR
	csrrw x3, 0x397, x0	// Write all 0s to CSR
	csrrs x3, 0x397, x2	// Set all CSR bits
	csrrc x3, 0x397, x2	// Clear all CSR bits
	csrrw x3, 0x397, x9	// Restore CSR

// Testing CSR 0x398
	csrr x20, 0x398	// Read CSR
	li x21, -1
	csrrw x24, 0x398, x21	// Write all 1s to CSR
	csrrw x24, 0x398, x0	// Write all 0s to CSR
	csrrs x24, 0x398, x21	// Set all CSR bits
	csrrc x24, 0x398, x21	// Clear all CSR bits
	csrrw x24, 0x398, x20	// Restore CSR

// Testing CSR 0x399
	csrr x2, 0x399	// Read CSR
	li x26, -1
	csrrw x12, 0x399, x26	// Write all 1s to CSR
	csrrw x12, 0x399, x0	// Write all 0s to CSR
	csrrs x12, 0x399, x26	// Set all CSR bits
	csrrc x12, 0x399, x26	// Clear all CSR bits
	csrrw x12, 0x399, x2	// Restore CSR

// Testing CSR 0x39a
	csrr x27, 0x39a	// Read CSR
	li x18, -1
	csrrw x30, 0x39a, x18	// Write all 1s to CSR
	csrrw x30, 0x39a, x0	// Write all 0s to CSR
	csrrs x30, 0x39a, x18	// Set all CSR bits
	csrrc x30, 0x39a, x18	// Clear all CSR bits
	csrrw x30, 0x39a, x27	// Restore CSR

// Testing CSR 0x39b
	csrr x16, 0x39b	// Read CSR
	li x28, -1
	csrrw x14, 0x39b, x28	// Write all 1s to CSR
	csrrw x14, 0x39b, x0	// Write all 0s to CSR
	csrrs x14, 0x39b, x28	// Set all CSR bits
	csrrc x14, 0x39b, x28	// Clear all CSR bits
	csrrw x14, 0x39b, x16	// Restore CSR

// Testing CSR 0x39c
	csrr x27, 0x39c	// Read CSR
	li x30, -1
	csrrw x19, 0x39c, x30	// Write all 1s to CSR
	csrrw x19, 0x39c, x0	// Write all 0s to CSR
	csrrs x19, 0x39c, x30	// Set all CSR bits
	csrrc x19, 0x39c, x30	// Clear all CSR bits
	csrrw x19, 0x39c, x27	// Restore CSR

// Testing CSR 0x39d
	csrr x29, 0x39d	// Read CSR
	li x21, -1
	csrrw x16, 0x39d, x21	// Write all 1s to CSR
	csrrw x16, 0x39d, x0	// Write all 0s to CSR
	csrrs x16, 0x39d, x21	// Set all CSR bits
	csrrc x16, 0x39d, x21	// Clear all CSR bits
	csrrw x16, 0x39d, x29	// Restore CSR

// Testing CSR 0x39e
	csrr x25, 0x39e	// Read CSR
	li x4, -1
	csrrw x7, 0x39e, x4	// Write all 1s to CSR
	csrrw x7, 0x39e, x0	// Write all 0s to CSR
	csrrs x7, 0x39e, x4	// Set all CSR bits
	csrrc x7, 0x39e, x4	// Clear all CSR bits
	csrrw x7, 0x39e, x25	// Restore CSR

// Testing CSR 0x39f
	csrr x28, 0x39f	// Read CSR
	li x22, -1
	csrrw x2, 0x39f, x22	// Write all 1s to CSR
	csrrw x2, 0x39f, x0	// Write all 0s to CSR
	csrrs x2, 0x39f, x22	// Set all CSR bits
	csrrc x2, 0x39f, x22	// Clear all CSR bits
	csrrw x2, 0x39f, x28	// Restore CSR

// Testing CSR 0x3a0
	csrr x12, 0x3a0	// Read CSR
	li x13, -1
	csrrw x29, 0x3a0, x13	// Write all 1s to CSR
	csrrw x29, 0x3a0, x0	// Write all 0s to CSR
	csrrs x29, 0x3a0, x13	// Set all CSR bits
	csrrc x29, 0x3a0, x13	// Clear all CSR bits
	csrrw x29, 0x3a0, x12	// Restore CSR

// Testing CSR 0x3a1
	csrr x9, 0x3a1	// Read CSR
	li x12, -1
	csrrw x17, 0x3a1, x12	// Write all 1s to CSR
	csrrw x17, 0x3a1, x0	// Write all 0s to CSR
	csrrs x17, 0x3a1, x12	// Set all CSR bits
	csrrc x17, 0x3a1, x12	// Clear all CSR bits
	csrrw x17, 0x3a1, x9	// Restore CSR

// Testing CSR 0x3a2
	csrr x20, 0x3a2	// Read CSR
	li x11, -1
	csrrw x27, 0x3a2, x11	// Write all 1s to CSR
	csrrw x27, 0x3a2, x0	// Write all 0s to CSR
	csrrs x27, 0x3a2, x11	// Set all CSR bits
	csrrc x27, 0x3a2, x11	// Clear all CSR bits
	csrrw x27, 0x3a2, x20	// Restore CSR

// Testing CSR 0x3a3
	csrr x5, 0x3a3	// Read CSR
	li x11, -1
	csrrw x4, 0x3a3, x11	// Write all 1s to CSR
	csrrw x4, 0x3a3, x0	// Write all 0s to CSR
	csrrs x4, 0x3a3, x11	// Set all CSR bits
	csrrc x4, 0x3a3, x11	// Clear all CSR bits
	csrrw x4, 0x3a3, x5	// Restore CSR

// Testing CSR 0x3a4
	csrr x24, 0x3a4	// Read CSR
	li x12, -1
	csrrw x3, 0x3a4, x12	// Write all 1s to CSR
	csrrw x3, 0x3a4, x0	// Write all 0s to CSR
	csrrs x3, 0x3a4, x12	// Set all CSR bits
	csrrc x3, 0x3a4, x12	// Clear all CSR bits
	csrrw x3, 0x3a4, x24	// Restore CSR

// Testing CSR 0x3a5
	csrr x9, 0x3a5	// Read CSR
	li x30, -1
	csrrw x12, 0x3a5, x30	// Write all 1s to CSR
	csrrw x12, 0x3a5, x0	// Write all 0s to CSR
	csrrs x12, 0x3a5, x30	// Set all CSR bits
	csrrc x12, 0x3a5, x30	// Clear all CSR bits
	csrrw x12, 0x3a5, x9	// Restore CSR

// Testing CSR 0x3a6
	csrr x13, 0x3a6	// Read CSR
	li x4, -1
	csrrw x28, 0x3a6, x4	// Write all 1s to CSR
	csrrw x28, 0x3a6, x0	// Write all 0s to CSR
	csrrs x28, 0x3a6, x4	// Set all CSR bits
	csrrc x28, 0x3a6, x4	// Clear all CSR bits
	csrrw x28, 0x3a6, x13	// Restore CSR

// Testing CSR 0x3a7
	csrr x11, 0x3a7	// Read CSR
	li x19, -1
	csrrw x5, 0x3a7, x19	// Write all 1s to CSR
	csrrw x5, 0x3a7, x0	// Write all 0s to CSR
	csrrs x5, 0x3a7, x19	// Set all CSR bits
	csrrc x5, 0x3a7, x19	// Clear all CSR bits
	csrrw x5, 0x3a7, x11	// Restore CSR

// Testing CSR 0x3a8
	csrr x27, 0x3a8	// Read CSR
	li x13, -1
	csrrw x17, 0x3a8, x13	// Write all 1s to CSR
	csrrw x17, 0x3a8, x0	// Write all 0s to CSR
	csrrs x17, 0x3a8, x13	// Set all CSR bits
	csrrc x17, 0x3a8, x13	// Clear all CSR bits
	csrrw x17, 0x3a8, x27	// Restore CSR

// Testing CSR 0x3a9
	csrr x10, 0x3a9	// Read CSR
	li x30, -1
	csrrw x31, 0x3a9, x30	// Write all 1s to CSR
	csrrw x31, 0x3a9, x0	// Write all 0s to CSR
	csrrs x31, 0x3a9, x30	// Set all CSR bits
	csrrc x31, 0x3a9, x30	// Clear all CSR bits
	csrrw x31, 0x3a9, x10	// Restore CSR

// Testing CSR 0x3aa
	csrr x9, 0x3aa	// Read CSR
	li x12, -1
	csrrw x29, 0x3aa, x12	// Write all 1s to CSR
	csrrw x29, 0x3aa, x0	// Write all 0s to CSR
	csrrs x29, 0x3aa, x12	// Set all CSR bits
	csrrc x29, 0x3aa, x12	// Clear all CSR bits
	csrrw x29, 0x3aa, x9	// Restore CSR

// Testing CSR 0x3ab
	csrr x6, 0x3ab	// Read CSR
	li x19, -1
	csrrw x2, 0x3ab, x19	// Write all 1s to CSR
	csrrw x2, 0x3ab, x0	// Write all 0s to CSR
	csrrs x2, 0x3ab, x19	// Set all CSR bits
	csrrc x2, 0x3ab, x19	// Clear all CSR bits
	csrrw x2, 0x3ab, x6	// Restore CSR

// Testing CSR 0x3ac
	csrr x4, 0x3ac	// Read CSR
	li x7, -1
	csrrw x16, 0x3ac, x7	// Write all 1s to CSR
	csrrw x16, 0x3ac, x0	// Write all 0s to CSR
	csrrs x16, 0x3ac, x7	// Set all CSR bits
	csrrc x16, 0x3ac, x7	// Clear all CSR bits
	csrrw x16, 0x3ac, x4	// Restore CSR

// Testing CSR 0x3ad
	csrr x3, 0x3ad	// Read CSR
	li x11, -1
	csrrw x28, 0x3ad, x11	// Write all 1s to CSR
	csrrw x28, 0x3ad, x0	// Write all 0s to CSR
	csrrs x28, 0x3ad, x11	// Set all CSR bits
	csrrc x28, 0x3ad, x11	// Clear all CSR bits
	csrrw x28, 0x3ad, x3	// Restore CSR

// Testing CSR 0x3ae
	csrr x8, 0x3ae	// Read CSR
	li x9, -1
	csrrw x26, 0x3ae, x9	// Write all 1s to CSR
	csrrw x26, 0x3ae, x0	// Write all 0s to CSR
	csrrs x26, 0x3ae, x9	// Set all CSR bits
	csrrc x26, 0x3ae, x9	// Clear all CSR bits
	csrrw x26, 0x3ae, x8	// Restore CSR

// Testing CSR 0x3af
	csrr x15, 0x3af	// Read CSR
	li x6, -1
	csrrw x14, 0x3af, x6	// Write all 1s to CSR
	csrrw x14, 0x3af, x0	// Write all 0s to CSR
	csrrs x14, 0x3af, x6	// Set all CSR bits
	csrrc x14, 0x3af, x6	// Clear all CSR bits
	csrrw x14, 0x3af, x15	// Restore CSR

// Testing CSR 0x3b0
	csrr x21, 0x3b0	// Read CSR
	li x7, -1
	csrrw x18, 0x3b0, x7	// Write all 1s to CSR
	csrrw x18, 0x3b0, x0	// Write all 0s to CSR
	csrrs x18, 0x3b0, x7	// Set all CSR bits
	csrrc x18, 0x3b0, x7	// Clear all CSR bits
	csrrw x18, 0x3b0, x21	// Restore CSR

// Testing CSR 0x3b1
	csrr x17, 0x3b1	// Read CSR
	li x18, -1
	csrrw x15, 0x3b1, x18	// Write all 1s to CSR
	csrrw x15, 0x3b1, x0	// Write all 0s to CSR
	csrrs x15, 0x3b1, x18	// Set all CSR bits
	csrrc x15, 0x3b1, x18	// Clear all CSR bits
	csrrw x15, 0x3b1, x17	// Restore CSR

// Testing CSR 0x3b2
	csrr x6, 0x3b2	// Read CSR
	li x16, -1
	csrrw x23, 0x3b2, x16	// Write all 1s to CSR
	csrrw x23, 0x3b2, x0	// Write all 0s to CSR
	csrrs x23, 0x3b2, x16	// Set all CSR bits
	csrrc x23, 0x3b2, x16	// Clear all CSR bits
	csrrw x23, 0x3b2, x6	// Restore CSR

// Testing CSR 0x3b3
	csrr x5, 0x3b3	// Read CSR
	li x16, -1
	csrrw x18, 0x3b3, x16	// Write all 1s to CSR
	csrrw x18, 0x3b3, x0	// Write all 0s to CSR
	csrrs x18, 0x3b3, x16	// Set all CSR bits
	csrrc x18, 0x3b3, x16	// Clear all CSR bits
	csrrw x18, 0x3b3, x5	// Restore CSR

// Testing CSR 0x3b4
	csrr x24, 0x3b4	// Read CSR
	li x30, -1
	csrrw x12, 0x3b4, x30	// Write all 1s to CSR
	csrrw x12, 0x3b4, x0	// Write all 0s to CSR
	csrrs x12, 0x3b4, x30	// Set all CSR bits
	csrrc x12, 0x3b4, x30	// Clear all CSR bits
	csrrw x12, 0x3b4, x24	// Restore CSR

// Testing CSR 0x3b5
	csrr x22, 0x3b5	// Read CSR
	li x20, -1
	csrrw x17, 0x3b5, x20	// Write all 1s to CSR
	csrrw x17, 0x3b5, x0	// Write all 0s to CSR
	csrrs x17, 0x3b5, x20	// Set all CSR bits
	csrrc x17, 0x3b5, x20	// Clear all CSR bits
	csrrw x17, 0x3b5, x22	// Restore CSR

// Testing CSR 0x3b6
	csrr x25, 0x3b6	// Read CSR
	li x23, -1
	csrrw x2, 0x3b6, x23	// Write all 1s to CSR
	csrrw x2, 0x3b6, x0	// Write all 0s to CSR
	csrrs x2, 0x3b6, x23	// Set all CSR bits
	csrrc x2, 0x3b6, x23	// Clear all CSR bits
	csrrw x2, 0x3b6, x25	// Restore CSR

// Testing CSR 0x3b7
	csrr x7, 0x3b7	// Read CSR
	li x6, -1
	csrrw x3, 0x3b7, x6	// Write all 1s to CSR
	csrrw x3, 0x3b7, x0	// Write all 0s to CSR
	csrrs x3, 0x3b7, x6	// Set all CSR bits
	csrrc x3, 0x3b7, x6	// Clear all CSR bits
	csrrw x3, 0x3b7, x7	// Restore CSR

// Testing CSR 0x3b8
	csrr x23, 0x3b8	// Read CSR
	li x27, -1
	csrrw x11, 0x3b8, x27	// Write all 1s to CSR
	csrrw x11, 0x3b8, x0	// Write all 0s to CSR
	csrrs x11, 0x3b8, x27	// Set all CSR bits
	csrrc x11, 0x3b8, x27	// Clear all CSR bits
	csrrw x11, 0x3b8, x23	// Restore CSR

// Testing CSR 0x3b9
	csrr x13, 0x3b9	// Read CSR
	li x16, -1
	csrrw x20, 0x3b9, x16	// Write all 1s to CSR
	csrrw x20, 0x3b9, x0	// Write all 0s to CSR
	csrrs x20, 0x3b9, x16	// Set all CSR bits
	csrrc x20, 0x3b9, x16	// Clear all CSR bits
	csrrw x20, 0x3b9, x13	// Restore CSR

// Testing CSR 0x3ba
	csrr x17, 0x3ba	// Read CSR
	li x13, -1
	csrrw x2, 0x3ba, x13	// Write all 1s to CSR
	csrrw x2, 0x3ba, x0	// Write all 0s to CSR
	csrrs x2, 0x3ba, x13	// Set all CSR bits
	csrrc x2, 0x3ba, x13	// Clear all CSR bits
	csrrw x2, 0x3ba, x17	// Restore CSR

// Testing CSR 0x3bb
	csrr x19, 0x3bb	// Read CSR
	li x30, -1
	csrrw x11, 0x3bb, x30	// Write all 1s to CSR
	csrrw x11, 0x3bb, x0	// Write all 0s to CSR
	csrrs x11, 0x3bb, x30	// Set all CSR bits
	csrrc x11, 0x3bb, x30	// Clear all CSR bits
	csrrw x11, 0x3bb, x19	// Restore CSR

// Testing CSR 0x3bc
	csrr x5, 0x3bc	// Read CSR
	li x6, -1
	csrrw x9, 0x3bc, x6	// Write all 1s to CSR
	csrrw x9, 0x3bc, x0	// Write all 0s to CSR
	csrrs x9, 0x3bc, x6	// Set all CSR bits
	csrrc x9, 0x3bc, x6	// Clear all CSR bits
	csrrw x9, 0x3bc, x5	// Restore CSR

// Testing CSR 0x3bd
	csrr x21, 0x3bd	// Read CSR
	li x23, -1
	csrrw x6, 0x3bd, x23	// Write all 1s to CSR
	csrrw x6, 0x3bd, x0	// Write all 0s to CSR
	csrrs x6, 0x3bd, x23	// Set all CSR bits
	csrrc x6, 0x3bd, x23	// Clear all CSR bits
	csrrw x6, 0x3bd, x21	// Restore CSR

// Testing CSR 0x3be
	csrr x19, 0x3be	// Read CSR
	li x6, -1
	csrrw x28, 0x3be, x6	// Write all 1s to CSR
	csrrw x28, 0x3be, x0	// Write all 0s to CSR
	csrrs x28, 0x3be, x6	// Set all CSR bits
	csrrc x28, 0x3be, x6	// Clear all CSR bits
	csrrw x28, 0x3be, x19	// Restore CSR

// Testing CSR 0x3bf
	csrr x15, 0x3bf	// Read CSR
	li x25, -1
	csrrw x27, 0x3bf, x25	// Write all 1s to CSR
	csrrw x27, 0x3bf, x0	// Write all 0s to CSR
	csrrs x27, 0x3bf, x25	// Set all CSR bits
	csrrc x27, 0x3bf, x25	// Clear all CSR bits
	csrrw x27, 0x3bf, x15	// Restore CSR

// Testing CSR 0x3c0
	csrr x4, 0x3c0	// Read CSR
	li x20, -1
	csrrw x24, 0x3c0, x20	// Write all 1s to CSR
	csrrw x24, 0x3c0, x0	// Write all 0s to CSR
	csrrs x24, 0x3c0, x20	// Set all CSR bits
	csrrc x24, 0x3c0, x20	// Clear all CSR bits
	csrrw x24, 0x3c0, x4	// Restore CSR

// Testing CSR 0x3c1
	csrr x12, 0x3c1	// Read CSR
	li x27, -1
	csrrw x20, 0x3c1, x27	// Write all 1s to CSR
	csrrw x20, 0x3c1, x0	// Write all 0s to CSR
	csrrs x20, 0x3c1, x27	// Set all CSR bits
	csrrc x20, 0x3c1, x27	// Clear all CSR bits
	csrrw x20, 0x3c1, x12	// Restore CSR

// Testing CSR 0x3c2
	csrr x27, 0x3c2	// Read CSR
	li x29, -1
	csrrw x20, 0x3c2, x29	// Write all 1s to CSR
	csrrw x20, 0x3c2, x0	// Write all 0s to CSR
	csrrs x20, 0x3c2, x29	// Set all CSR bits
	csrrc x20, 0x3c2, x29	// Clear all CSR bits
	csrrw x20, 0x3c2, x27	// Restore CSR

// Testing CSR 0x3c3
	csrr x8, 0x3c3	// Read CSR
	li x18, -1
	csrrw x21, 0x3c3, x18	// Write all 1s to CSR
	csrrw x21, 0x3c3, x0	// Write all 0s to CSR
	csrrs x21, 0x3c3, x18	// Set all CSR bits
	csrrc x21, 0x3c3, x18	// Clear all CSR bits
	csrrw x21, 0x3c3, x8	// Restore CSR

// Testing CSR 0x3c4
	csrr x20, 0x3c4	// Read CSR
	li x13, -1
	csrrw x11, 0x3c4, x13	// Write all 1s to CSR
	csrrw x11, 0x3c4, x0	// Write all 0s to CSR
	csrrs x11, 0x3c4, x13	// Set all CSR bits
	csrrc x11, 0x3c4, x13	// Clear all CSR bits
	csrrw x11, 0x3c4, x20	// Restore CSR

// Testing CSR 0x3c5
	csrr x5, 0x3c5	// Read CSR
	li x19, -1
	csrrw x17, 0x3c5, x19	// Write all 1s to CSR
	csrrw x17, 0x3c5, x0	// Write all 0s to CSR
	csrrs x17, 0x3c5, x19	// Set all CSR bits
	csrrc x17, 0x3c5, x19	// Clear all CSR bits
	csrrw x17, 0x3c5, x5	// Restore CSR

// Testing CSR 0x3c6
	csrr x26, 0x3c6	// Read CSR
	li x20, -1
	csrrw x15, 0x3c6, x20	// Write all 1s to CSR
	csrrw x15, 0x3c6, x0	// Write all 0s to CSR
	csrrs x15, 0x3c6, x20	// Set all CSR bits
	csrrc x15, 0x3c6, x20	// Clear all CSR bits
	csrrw x15, 0x3c6, x26	// Restore CSR

// Testing CSR 0x3c7
	csrr x17, 0x3c7	// Read CSR
	li x4, -1
	csrrw x13, 0x3c7, x4	// Write all 1s to CSR
	csrrw x13, 0x3c7, x0	// Write all 0s to CSR
	csrrs x13, 0x3c7, x4	// Set all CSR bits
	csrrc x13, 0x3c7, x4	// Clear all CSR bits
	csrrw x13, 0x3c7, x17	// Restore CSR

// Testing CSR 0x3c8
	csrr x27, 0x3c8	// Read CSR
	li x13, -1
	csrrw x10, 0x3c8, x13	// Write all 1s to CSR
	csrrw x10, 0x3c8, x0	// Write all 0s to CSR
	csrrs x10, 0x3c8, x13	// Set all CSR bits
	csrrc x10, 0x3c8, x13	// Clear all CSR bits
	csrrw x10, 0x3c8, x27	// Restore CSR

// Testing CSR 0x3c9
	csrr x11, 0x3c9	// Read CSR
	li x15, -1
	csrrw x19, 0x3c9, x15	// Write all 1s to CSR
	csrrw x19, 0x3c9, x0	// Write all 0s to CSR
	csrrs x19, 0x3c9, x15	// Set all CSR bits
	csrrc x19, 0x3c9, x15	// Clear all CSR bits
	csrrw x19, 0x3c9, x11	// Restore CSR

// Testing CSR 0x3ca
	csrr x22, 0x3ca	// Read CSR
	li x28, -1
	csrrw x26, 0x3ca, x28	// Write all 1s to CSR
	csrrw x26, 0x3ca, x0	// Write all 0s to CSR
	csrrs x26, 0x3ca, x28	// Set all CSR bits
	csrrc x26, 0x3ca, x28	// Clear all CSR bits
	csrrw x26, 0x3ca, x22	// Restore CSR

// Testing CSR 0x3cb
	csrr x21, 0x3cb	// Read CSR
	li x11, -1
	csrrw x13, 0x3cb, x11	// Write all 1s to CSR
	csrrw x13, 0x3cb, x0	// Write all 0s to CSR
	csrrs x13, 0x3cb, x11	// Set all CSR bits
	csrrc x13, 0x3cb, x11	// Clear all CSR bits
	csrrw x13, 0x3cb, x21	// Restore CSR

// Testing CSR 0x3cc
	csrr x15, 0x3cc	// Read CSR
	li x4, -1
	csrrw x28, 0x3cc, x4	// Write all 1s to CSR
	csrrw x28, 0x3cc, x0	// Write all 0s to CSR
	csrrs x28, 0x3cc, x4	// Set all CSR bits
	csrrc x28, 0x3cc, x4	// Clear all CSR bits
	csrrw x28, 0x3cc, x15	// Restore CSR

// Testing CSR 0x3cd
	csrr x31, 0x3cd	// Read CSR
	li x5, -1
	csrrw x16, 0x3cd, x5	// Write all 1s to CSR
	csrrw x16, 0x3cd, x0	// Write all 0s to CSR
	csrrs x16, 0x3cd, x5	// Set all CSR bits
	csrrc x16, 0x3cd, x5	// Clear all CSR bits
	csrrw x16, 0x3cd, x31	// Restore CSR

// Testing CSR 0x3ce
	csrr x16, 0x3ce	// Read CSR
	li x15, -1
	csrrw x6, 0x3ce, x15	// Write all 1s to CSR
	csrrw x6, 0x3ce, x0	// Write all 0s to CSR
	csrrs x6, 0x3ce, x15	// Set all CSR bits
	csrrc x6, 0x3ce, x15	// Clear all CSR bits
	csrrw x6, 0x3ce, x16	// Restore CSR

// Testing CSR 0x3cf
	csrr x25, 0x3cf	// Read CSR
	li x7, -1
	csrrw x24, 0x3cf, x7	// Write all 1s to CSR
	csrrw x24, 0x3cf, x0	// Write all 0s to CSR
	csrrs x24, 0x3cf, x7	// Set all CSR bits
	csrrc x24, 0x3cf, x7	// Clear all CSR bits
	csrrw x24, 0x3cf, x25	// Restore CSR

// Testing CSR 0x3d0
	csrr x6, 0x3d0	// Read CSR
	li x23, -1
	csrrw x4, 0x3d0, x23	// Write all 1s to CSR
	csrrw x4, 0x3d0, x0	// Write all 0s to CSR
	csrrs x4, 0x3d0, x23	// Set all CSR bits
	csrrc x4, 0x3d0, x23	// Clear all CSR bits
	csrrw x4, 0x3d0, x6	// Restore CSR

// Testing CSR 0x3d1
	csrr x21, 0x3d1	// Read CSR
	li x27, -1
	csrrw x23, 0x3d1, x27	// Write all 1s to CSR
	csrrw x23, 0x3d1, x0	// Write all 0s to CSR
	csrrs x23, 0x3d1, x27	// Set all CSR bits
	csrrc x23, 0x3d1, x27	// Clear all CSR bits
	csrrw x23, 0x3d1, x21	// Restore CSR

// Testing CSR 0x3d2
	csrr x21, 0x3d2	// Read CSR
	li x12, -1
	csrrw x5, 0x3d2, x12	// Write all 1s to CSR
	csrrw x5, 0x3d2, x0	// Write all 0s to CSR
	csrrs x5, 0x3d2, x12	// Set all CSR bits
	csrrc x5, 0x3d2, x12	// Clear all CSR bits
	csrrw x5, 0x3d2, x21	// Restore CSR

// Testing CSR 0x3d3
	csrr x26, 0x3d3	// Read CSR
	li x27, -1
	csrrw x19, 0x3d3, x27	// Write all 1s to CSR
	csrrw x19, 0x3d3, x0	// Write all 0s to CSR
	csrrs x19, 0x3d3, x27	// Set all CSR bits
	csrrc x19, 0x3d3, x27	// Clear all CSR bits
	csrrw x19, 0x3d3, x26	// Restore CSR

// Testing CSR 0x3d4
	csrr x17, 0x3d4	// Read CSR
	li x6, -1
	csrrw x19, 0x3d4, x6	// Write all 1s to CSR
	csrrw x19, 0x3d4, x0	// Write all 0s to CSR
	csrrs x19, 0x3d4, x6	// Set all CSR bits
	csrrc x19, 0x3d4, x6	// Clear all CSR bits
	csrrw x19, 0x3d4, x17	// Restore CSR

// Testing CSR 0x3d5
	csrr x21, 0x3d5	// Read CSR
	li x18, -1
	csrrw x15, 0x3d5, x18	// Write all 1s to CSR
	csrrw x15, 0x3d5, x0	// Write all 0s to CSR
	csrrs x15, 0x3d5, x18	// Set all CSR bits
	csrrc x15, 0x3d5, x18	// Clear all CSR bits
	csrrw x15, 0x3d5, x21	// Restore CSR

// Testing CSR 0x3d6
	csrr x8, 0x3d6	// Read CSR
	li x14, -1
	csrrw x18, 0x3d6, x14	// Write all 1s to CSR
	csrrw x18, 0x3d6, x0	// Write all 0s to CSR
	csrrs x18, 0x3d6, x14	// Set all CSR bits
	csrrc x18, 0x3d6, x14	// Clear all CSR bits
	csrrw x18, 0x3d6, x8	// Restore CSR

// Testing CSR 0x3d7
	csrr x16, 0x3d7	// Read CSR
	li x21, -1
	csrrw x29, 0x3d7, x21	// Write all 1s to CSR
	csrrw x29, 0x3d7, x0	// Write all 0s to CSR
	csrrs x29, 0x3d7, x21	// Set all CSR bits
	csrrc x29, 0x3d7, x21	// Clear all CSR bits
	csrrw x29, 0x3d7, x16	// Restore CSR

// Testing CSR 0x3d8
	csrr x6, 0x3d8	// Read CSR
	li x31, -1
	csrrw x2, 0x3d8, x31	// Write all 1s to CSR
	csrrw x2, 0x3d8, x0	// Write all 0s to CSR
	csrrs x2, 0x3d8, x31	// Set all CSR bits
	csrrc x2, 0x3d8, x31	// Clear all CSR bits
	csrrw x2, 0x3d8, x6	// Restore CSR

// Testing CSR 0x3d9
	csrr x20, 0x3d9	// Read CSR
	li x17, -1
	csrrw x9, 0x3d9, x17	// Write all 1s to CSR
	csrrw x9, 0x3d9, x0	// Write all 0s to CSR
	csrrs x9, 0x3d9, x17	// Set all CSR bits
	csrrc x9, 0x3d9, x17	// Clear all CSR bits
	csrrw x9, 0x3d9, x20	// Restore CSR

// Testing CSR 0x3da
	csrr x10, 0x3da	// Read CSR
	li x17, -1
	csrrw x4, 0x3da, x17	// Write all 1s to CSR
	csrrw x4, 0x3da, x0	// Write all 0s to CSR
	csrrs x4, 0x3da, x17	// Set all CSR bits
	csrrc x4, 0x3da, x17	// Clear all CSR bits
	csrrw x4, 0x3da, x10	// Restore CSR

// Testing CSR 0x3db
	csrr x26, 0x3db	// Read CSR
	li x1, -1
	csrrw x16, 0x3db, x1	// Write all 1s to CSR
	csrrw x16, 0x3db, x0	// Write all 0s to CSR
	csrrs x16, 0x3db, x1	// Set all CSR bits
	csrrc x16, 0x3db, x1	// Clear all CSR bits
	csrrw x16, 0x3db, x26	// Restore CSR

// Testing CSR 0x3dc
	csrr x9, 0x3dc	// Read CSR
	li x14, -1
	csrrw x2, 0x3dc, x14	// Write all 1s to CSR
	csrrw x2, 0x3dc, x0	// Write all 0s to CSR
	csrrs x2, 0x3dc, x14	// Set all CSR bits
	csrrc x2, 0x3dc, x14	// Clear all CSR bits
	csrrw x2, 0x3dc, x9	// Restore CSR

// Testing CSR 0x3dd
	csrr x29, 0x3dd	// Read CSR
	li x23, -1
	csrrw x9, 0x3dd, x23	// Write all 1s to CSR
	csrrw x9, 0x3dd, x0	// Write all 0s to CSR
	csrrs x9, 0x3dd, x23	// Set all CSR bits
	csrrc x9, 0x3dd, x23	// Clear all CSR bits
	csrrw x9, 0x3dd, x29	// Restore CSR

// Testing CSR 0x3de
	csrr x16, 0x3de	// Read CSR
	li x2, -1
	csrrw x27, 0x3de, x2	// Write all 1s to CSR
	csrrw x27, 0x3de, x0	// Write all 0s to CSR
	csrrs x27, 0x3de, x2	// Set all CSR bits
	csrrc x27, 0x3de, x2	// Clear all CSR bits
	csrrw x27, 0x3de, x16	// Restore CSR

// Testing CSR 0x3df
	csrr x18, 0x3df	// Read CSR
	li x27, -1
	csrrw x31, 0x3df, x27	// Write all 1s to CSR
	csrrw x31, 0x3df, x0	// Write all 0s to CSR
	csrrs x31, 0x3df, x27	// Set all CSR bits
	csrrc x31, 0x3df, x27	// Clear all CSR bits
	csrrw x31, 0x3df, x18	// Restore CSR

// Testing CSR 0x3e0
	csrr x16, 0x3e0	// Read CSR
	li x25, -1
	csrrw x19, 0x3e0, x25	// Write all 1s to CSR
	csrrw x19, 0x3e0, x0	// Write all 0s to CSR
	csrrs x19, 0x3e0, x25	// Set all CSR bits
	csrrc x19, 0x3e0, x25	// Clear all CSR bits
	csrrw x19, 0x3e0, x16	// Restore CSR

// Testing CSR 0x3e1
	csrr x17, 0x3e1	// Read CSR
	li x11, -1
	csrrw x21, 0x3e1, x11	// Write all 1s to CSR
	csrrw x21, 0x3e1, x0	// Write all 0s to CSR
	csrrs x21, 0x3e1, x11	// Set all CSR bits
	csrrc x21, 0x3e1, x11	// Clear all CSR bits
	csrrw x21, 0x3e1, x17	// Restore CSR

// Testing CSR 0x3e2
	csrr x22, 0x3e2	// Read CSR
	li x16, -1
	csrrw x14, 0x3e2, x16	// Write all 1s to CSR
	csrrw x14, 0x3e2, x0	// Write all 0s to CSR
	csrrs x14, 0x3e2, x16	// Set all CSR bits
	csrrc x14, 0x3e2, x16	// Clear all CSR bits
	csrrw x14, 0x3e2, x22	// Restore CSR

// Testing CSR 0x3e3
	csrr x31, 0x3e3	// Read CSR
	li x18, -1
	csrrw x9, 0x3e3, x18	// Write all 1s to CSR
	csrrw x9, 0x3e3, x0	// Write all 0s to CSR
	csrrs x9, 0x3e3, x18	// Set all CSR bits
	csrrc x9, 0x3e3, x18	// Clear all CSR bits
	csrrw x9, 0x3e3, x31	// Restore CSR

// Testing CSR 0x3e4
	csrr x20, 0x3e4	// Read CSR
	li x2, -1
	csrrw x29, 0x3e4, x2	// Write all 1s to CSR
	csrrw x29, 0x3e4, x0	// Write all 0s to CSR
	csrrs x29, 0x3e4, x2	// Set all CSR bits
	csrrc x29, 0x3e4, x2	// Clear all CSR bits
	csrrw x29, 0x3e4, x20	// Restore CSR

// Testing CSR 0x3e5
	csrr x3, 0x3e5	// Read CSR
	li x7, -1
	csrrw x8, 0x3e5, x7	// Write all 1s to CSR
	csrrw x8, 0x3e5, x0	// Write all 0s to CSR
	csrrs x8, 0x3e5, x7	// Set all CSR bits
	csrrc x8, 0x3e5, x7	// Clear all CSR bits
	csrrw x8, 0x3e5, x3	// Restore CSR

// Testing CSR 0x3e6
	csrr x7, 0x3e6	// Read CSR
	li x9, -1
	csrrw x21, 0x3e6, x9	// Write all 1s to CSR
	csrrw x21, 0x3e6, x0	// Write all 0s to CSR
	csrrs x21, 0x3e6, x9	// Set all CSR bits
	csrrc x21, 0x3e6, x9	// Clear all CSR bits
	csrrw x21, 0x3e6, x7	// Restore CSR

// Testing CSR 0x3e7
	csrr x27, 0x3e7	// Read CSR
	li x21, -1
	csrrw x11, 0x3e7, x21	// Write all 1s to CSR
	csrrw x11, 0x3e7, x0	// Write all 0s to CSR
	csrrs x11, 0x3e7, x21	// Set all CSR bits
	csrrc x11, 0x3e7, x21	// Clear all CSR bits
	csrrw x11, 0x3e7, x27	// Restore CSR

// Testing CSR 0x3e8
	csrr x21, 0x3e8	// Read CSR
	li x18, -1
	csrrw x28, 0x3e8, x18	// Write all 1s to CSR
	csrrw x28, 0x3e8, x0	// Write all 0s to CSR
	csrrs x28, 0x3e8, x18	// Set all CSR bits
	csrrc x28, 0x3e8, x18	// Clear all CSR bits
	csrrw x28, 0x3e8, x21	// Restore CSR

// Testing CSR 0x3e9
	csrr x6, 0x3e9	// Read CSR
	li x18, -1
	csrrw x13, 0x3e9, x18	// Write all 1s to CSR
	csrrw x13, 0x3e9, x0	// Write all 0s to CSR
	csrrs x13, 0x3e9, x18	// Set all CSR bits
	csrrc x13, 0x3e9, x18	// Clear all CSR bits
	csrrw x13, 0x3e9, x6	// Restore CSR

// Testing CSR 0x3ea
	csrr x8, 0x3ea	// Read CSR
	li x3, -1
	csrrw x17, 0x3ea, x3	// Write all 1s to CSR
	csrrw x17, 0x3ea, x0	// Write all 0s to CSR
	csrrs x17, 0x3ea, x3	// Set all CSR bits
	csrrc x17, 0x3ea, x3	// Clear all CSR bits
	csrrw x17, 0x3ea, x8	// Restore CSR

// Testing CSR 0x3eb
	csrr x1, 0x3eb	// Read CSR
	li x25, -1
	csrrw x12, 0x3eb, x25	// Write all 1s to CSR
	csrrw x12, 0x3eb, x0	// Write all 0s to CSR
	csrrs x12, 0x3eb, x25	// Set all CSR bits
	csrrc x12, 0x3eb, x25	// Clear all CSR bits
	csrrw x12, 0x3eb, x1	// Restore CSR

// Testing CSR 0x3ec
	csrr x1, 0x3ec	// Read CSR
	li x6, -1
	csrrw x10, 0x3ec, x6	// Write all 1s to CSR
	csrrw x10, 0x3ec, x0	// Write all 0s to CSR
	csrrs x10, 0x3ec, x6	// Set all CSR bits
	csrrc x10, 0x3ec, x6	// Clear all CSR bits
	csrrw x10, 0x3ec, x1	// Restore CSR

// Testing CSR 0x3ed
	csrr x13, 0x3ed	// Read CSR
	li x16, -1
	csrrw x2, 0x3ed, x16	// Write all 1s to CSR
	csrrw x2, 0x3ed, x0	// Write all 0s to CSR
	csrrs x2, 0x3ed, x16	// Set all CSR bits
	csrrc x2, 0x3ed, x16	// Clear all CSR bits
	csrrw x2, 0x3ed, x13	// Restore CSR

// Testing CSR 0x3ee
	csrr x5, 0x3ee	// Read CSR
	li x22, -1
	csrrw x29, 0x3ee, x22	// Write all 1s to CSR
	csrrw x29, 0x3ee, x0	// Write all 0s to CSR
	csrrs x29, 0x3ee, x22	// Set all CSR bits
	csrrc x29, 0x3ee, x22	// Clear all CSR bits
	csrrw x29, 0x3ee, x5	// Restore CSR

// Testing CSR 0x3ef
	csrr x23, 0x3ef	// Read CSR
	li x12, -1
	csrrw x26, 0x3ef, x12	// Write all 1s to CSR
	csrrw x26, 0x3ef, x0	// Write all 0s to CSR
	csrrs x26, 0x3ef, x12	// Set all CSR bits
	csrrc x26, 0x3ef, x12	// Clear all CSR bits
	csrrw x26, 0x3ef, x23	// Restore CSR

// Testing CSR 0x3f0
	csrr x25, 0x3f0	// Read CSR
	li x20, -1
	csrrw x4, 0x3f0, x20	// Write all 1s to CSR
	csrrw x4, 0x3f0, x0	// Write all 0s to CSR
	csrrs x4, 0x3f0, x20	// Set all CSR bits
	csrrc x4, 0x3f0, x20	// Clear all CSR bits
	csrrw x4, 0x3f0, x25	// Restore CSR

// Testing CSR 0x3f1
	csrr x10, 0x3f1	// Read CSR
	li x5, -1
	csrrw x13, 0x3f1, x5	// Write all 1s to CSR
	csrrw x13, 0x3f1, x0	// Write all 0s to CSR
	csrrs x13, 0x3f1, x5	// Set all CSR bits
	csrrc x13, 0x3f1, x5	// Clear all CSR bits
	csrrw x13, 0x3f1, x10	// Restore CSR

// Testing CSR 0x3f2
	csrr x22, 0x3f2	// Read CSR
	li x23, -1
	csrrw x14, 0x3f2, x23	// Write all 1s to CSR
	csrrw x14, 0x3f2, x0	// Write all 0s to CSR
	csrrs x14, 0x3f2, x23	// Set all CSR bits
	csrrc x14, 0x3f2, x23	// Clear all CSR bits
	csrrw x14, 0x3f2, x22	// Restore CSR

// Testing CSR 0x3f3
	csrr x22, 0x3f3	// Read CSR
	li x28, -1
	csrrw x16, 0x3f3, x28	// Write all 1s to CSR
	csrrw x16, 0x3f3, x0	// Write all 0s to CSR
	csrrs x16, 0x3f3, x28	// Set all CSR bits
	csrrc x16, 0x3f3, x28	// Clear all CSR bits
	csrrw x16, 0x3f3, x22	// Restore CSR

// Testing CSR 0x3f4
	csrr x16, 0x3f4	// Read CSR
	li x11, -1
	csrrw x24, 0x3f4, x11	// Write all 1s to CSR
	csrrw x24, 0x3f4, x0	// Write all 0s to CSR
	csrrs x24, 0x3f4, x11	// Set all CSR bits
	csrrc x24, 0x3f4, x11	// Clear all CSR bits
	csrrw x24, 0x3f4, x16	// Restore CSR

// Testing CSR 0x3f5
	csrr x28, 0x3f5	// Read CSR
	li x19, -1
	csrrw x31, 0x3f5, x19	// Write all 1s to CSR
	csrrw x31, 0x3f5, x0	// Write all 0s to CSR
	csrrs x31, 0x3f5, x19	// Set all CSR bits
	csrrc x31, 0x3f5, x19	// Clear all CSR bits
	csrrw x31, 0x3f5, x28	// Restore CSR

// Testing CSR 0x3f6
	csrr x6, 0x3f6	// Read CSR
	li x8, -1
	csrrw x29, 0x3f6, x8	// Write all 1s to CSR
	csrrw x29, 0x3f6, x0	// Write all 0s to CSR
	csrrs x29, 0x3f6, x8	// Set all CSR bits
	csrrc x29, 0x3f6, x8	// Clear all CSR bits
	csrrw x29, 0x3f6, x6	// Restore CSR

// Testing CSR 0x3f7
	csrr x12, 0x3f7	// Read CSR
	li x29, -1
	csrrw x11, 0x3f7, x29	// Write all 1s to CSR
	csrrw x11, 0x3f7, x0	// Write all 0s to CSR
	csrrs x11, 0x3f7, x29	// Set all CSR bits
	csrrc x11, 0x3f7, x29	// Clear all CSR bits
	csrrw x11, 0x3f7, x12	// Restore CSR

// Testing CSR 0x3f8
	csrr x20, 0x3f8	// Read CSR
	li x6, -1
	csrrw x19, 0x3f8, x6	// Write all 1s to CSR
	csrrw x19, 0x3f8, x0	// Write all 0s to CSR
	csrrs x19, 0x3f8, x6	// Set all CSR bits
	csrrc x19, 0x3f8, x6	// Clear all CSR bits
	csrrw x19, 0x3f8, x20	// Restore CSR

// Testing CSR 0x3f9
	csrr x14, 0x3f9	// Read CSR
	li x24, -1
	csrrw x13, 0x3f9, x24	// Write all 1s to CSR
	csrrw x13, 0x3f9, x0	// Write all 0s to CSR
	csrrs x13, 0x3f9, x24	// Set all CSR bits
	csrrc x13, 0x3f9, x24	// Clear all CSR bits
	csrrw x13, 0x3f9, x14	// Restore CSR

// Testing CSR 0x3fa
	csrr x11, 0x3fa	// Read CSR
	li x26, -1
	csrrw x28, 0x3fa, x26	// Write all 1s to CSR
	csrrw x28, 0x3fa, x0	// Write all 0s to CSR
	csrrs x28, 0x3fa, x26	// Set all CSR bits
	csrrc x28, 0x3fa, x26	// Clear all CSR bits
	csrrw x28, 0x3fa, x11	// Restore CSR

// Testing CSR 0x3fb
	csrr x24, 0x3fb	// Read CSR
	li x18, -1
	csrrw x27, 0x3fb, x18	// Write all 1s to CSR
	csrrw x27, 0x3fb, x0	// Write all 0s to CSR
	csrrs x27, 0x3fb, x18	// Set all CSR bits
	csrrc x27, 0x3fb, x18	// Clear all CSR bits
	csrrw x27, 0x3fb, x24	// Restore CSR

// Testing CSR 0x3fc
	csrr x14, 0x3fc	// Read CSR
	li x5, -1
	csrrw x15, 0x3fc, x5	// Write all 1s to CSR
	csrrw x15, 0x3fc, x0	// Write all 0s to CSR
	csrrs x15, 0x3fc, x5	// Set all CSR bits
	csrrc x15, 0x3fc, x5	// Clear all CSR bits
	csrrw x15, 0x3fc, x14	// Restore CSR

// Testing CSR 0x3fd
	csrr x29, 0x3fd	// Read CSR
	li x3, -1
	csrrw x21, 0x3fd, x3	// Write all 1s to CSR
	csrrw x21, 0x3fd, x0	// Write all 0s to CSR
	csrrs x21, 0x3fd, x3	// Set all CSR bits
	csrrc x21, 0x3fd, x3	// Clear all CSR bits
	csrrw x21, 0x3fd, x29	// Restore CSR

// Testing CSR 0x3fe
	csrr x23, 0x3fe	// Read CSR
	li x10, -1
	csrrw x13, 0x3fe, x10	// Write all 1s to CSR
	csrrw x13, 0x3fe, x0	// Write all 0s to CSR
	csrrs x13, 0x3fe, x10	// Set all CSR bits
	csrrc x13, 0x3fe, x10	// Clear all CSR bits
	csrrw x13, 0x3fe, x23	// Restore CSR

// Testing CSR 0x3ff
	csrr x7, 0x3ff	// Read CSR
	li x1, -1
	csrrw x31, 0x3ff, x1	// Write all 1s to CSR
	csrrw x31, 0x3ff, x0	// Write all 0s to CSR
	csrrs x31, 0x3ff, x1	// Set all CSR bits
	csrrc x31, 0x3ff, x1	// Clear all CSR bits
	csrrw x31, 0x3ff, x7	// Restore CSR

// Testing CSR 0x400
	csrr x23, 0x400	// Read CSR
	li x17, -1
	csrrw x25, 0x400, x17	// Write all 1s to CSR
	csrrw x25, 0x400, x0	// Write all 0s to CSR
	csrrs x25, 0x400, x17	// Set all CSR bits
	csrrc x25, 0x400, x17	// Clear all CSR bits
	csrrw x25, 0x400, x23	// Restore CSR

// Testing CSR 0x401
	csrr x15, 0x401	// Read CSR
	li x8, -1
	csrrw x10, 0x401, x8	// Write all 1s to CSR
	csrrw x10, 0x401, x0	// Write all 0s to CSR
	csrrs x10, 0x401, x8	// Set all CSR bits
	csrrc x10, 0x401, x8	// Clear all CSR bits
	csrrw x10, 0x401, x15	// Restore CSR

// Testing CSR 0x402
	csrr x1, 0x402	// Read CSR
	li x22, -1
	csrrw x31, 0x402, x22	// Write all 1s to CSR
	csrrw x31, 0x402, x0	// Write all 0s to CSR
	csrrs x31, 0x402, x22	// Set all CSR bits
	csrrc x31, 0x402, x22	// Clear all CSR bits
	csrrw x31, 0x402, x1	// Restore CSR

// Testing CSR 0x403
	csrr x1, 0x403	// Read CSR
	li x26, -1
	csrrw x30, 0x403, x26	// Write all 1s to CSR
	csrrw x30, 0x403, x0	// Write all 0s to CSR
	csrrs x30, 0x403, x26	// Set all CSR bits
	csrrc x30, 0x403, x26	// Clear all CSR bits
	csrrw x30, 0x403, x1	// Restore CSR

// Testing CSR 0x404
	csrr x10, 0x404	// Read CSR
	li x20, -1
	csrrw x27, 0x404, x20	// Write all 1s to CSR
	csrrw x27, 0x404, x0	// Write all 0s to CSR
	csrrs x27, 0x404, x20	// Set all CSR bits
	csrrc x27, 0x404, x20	// Clear all CSR bits
	csrrw x27, 0x404, x10	// Restore CSR

// Testing CSR 0x405
	csrr x1, 0x405	// Read CSR
	li x28, -1
	csrrw x2, 0x405, x28	// Write all 1s to CSR
	csrrw x2, 0x405, x0	// Write all 0s to CSR
	csrrs x2, 0x405, x28	// Set all CSR bits
	csrrc x2, 0x405, x28	// Clear all CSR bits
	csrrw x2, 0x405, x1	// Restore CSR

// Testing CSR 0x406
	csrr x20, 0x406	// Read CSR
	li x8, -1
	csrrw x17, 0x406, x8	// Write all 1s to CSR
	csrrw x17, 0x406, x0	// Write all 0s to CSR
	csrrs x17, 0x406, x8	// Set all CSR bits
	csrrc x17, 0x406, x8	// Clear all CSR bits
	csrrw x17, 0x406, x20	// Restore CSR

// Testing CSR 0x407
	csrr x11, 0x407	// Read CSR
	li x12, -1
	csrrw x28, 0x407, x12	// Write all 1s to CSR
	csrrw x28, 0x407, x0	// Write all 0s to CSR
	csrrs x28, 0x407, x12	// Set all CSR bits
	csrrc x28, 0x407, x12	// Clear all CSR bits
	csrrw x28, 0x407, x11	// Restore CSR

// Testing CSR 0x408
	csrr x12, 0x408	// Read CSR
	li x26, -1
	csrrw x3, 0x408, x26	// Write all 1s to CSR
	csrrw x3, 0x408, x0	// Write all 0s to CSR
	csrrs x3, 0x408, x26	// Set all CSR bits
	csrrc x3, 0x408, x26	// Clear all CSR bits
	csrrw x3, 0x408, x12	// Restore CSR

// Testing CSR 0x409
	csrr x17, 0x409	// Read CSR
	li x25, -1
	csrrw x29, 0x409, x25	// Write all 1s to CSR
	csrrw x29, 0x409, x0	// Write all 0s to CSR
	csrrs x29, 0x409, x25	// Set all CSR bits
	csrrc x29, 0x409, x25	// Clear all CSR bits
	csrrw x29, 0x409, x17	// Restore CSR

// Testing CSR 0x40a
	csrr x29, 0x40a	// Read CSR
	li x19, -1
	csrrw x27, 0x40a, x19	// Write all 1s to CSR
	csrrw x27, 0x40a, x0	// Write all 0s to CSR
	csrrs x27, 0x40a, x19	// Set all CSR bits
	csrrc x27, 0x40a, x19	// Clear all CSR bits
	csrrw x27, 0x40a, x29	// Restore CSR

// Testing CSR 0x40b
	csrr x9, 0x40b	// Read CSR
	li x1, -1
	csrrw x5, 0x40b, x1	// Write all 1s to CSR
	csrrw x5, 0x40b, x0	// Write all 0s to CSR
	csrrs x5, 0x40b, x1	// Set all CSR bits
	csrrc x5, 0x40b, x1	// Clear all CSR bits
	csrrw x5, 0x40b, x9	// Restore CSR

// Testing CSR 0x40c
	csrr x2, 0x40c	// Read CSR
	li x26, -1
	csrrw x3, 0x40c, x26	// Write all 1s to CSR
	csrrw x3, 0x40c, x0	// Write all 0s to CSR
	csrrs x3, 0x40c, x26	// Set all CSR bits
	csrrc x3, 0x40c, x26	// Clear all CSR bits
	csrrw x3, 0x40c, x2	// Restore CSR

// Testing CSR 0x40d
	csrr x31, 0x40d	// Read CSR
	li x29, -1
	csrrw x28, 0x40d, x29	// Write all 1s to CSR
	csrrw x28, 0x40d, x0	// Write all 0s to CSR
	csrrs x28, 0x40d, x29	// Set all CSR bits
	csrrc x28, 0x40d, x29	// Clear all CSR bits
	csrrw x28, 0x40d, x31	// Restore CSR

// Testing CSR 0x40e
	csrr x18, 0x40e	// Read CSR
	li x11, -1
	csrrw x29, 0x40e, x11	// Write all 1s to CSR
	csrrw x29, 0x40e, x0	// Write all 0s to CSR
	csrrs x29, 0x40e, x11	// Set all CSR bits
	csrrc x29, 0x40e, x11	// Clear all CSR bits
	csrrw x29, 0x40e, x18	// Restore CSR

// Testing CSR 0x40f
	csrr x3, 0x40f	// Read CSR
	li x26, -1
	csrrw x19, 0x40f, x26	// Write all 1s to CSR
	csrrw x19, 0x40f, x0	// Write all 0s to CSR
	csrrs x19, 0x40f, x26	// Set all CSR bits
	csrrc x19, 0x40f, x26	// Clear all CSR bits
	csrrw x19, 0x40f, x3	// Restore CSR

// Testing CSR 0x410
	csrr x24, 0x410	// Read CSR
	li x9, -1
	csrrw x31, 0x410, x9	// Write all 1s to CSR
	csrrw x31, 0x410, x0	// Write all 0s to CSR
	csrrs x31, 0x410, x9	// Set all CSR bits
	csrrc x31, 0x410, x9	// Clear all CSR bits
	csrrw x31, 0x410, x24	// Restore CSR

// Testing CSR 0x411
	csrr x5, 0x411	// Read CSR
	li x12, -1
	csrrw x26, 0x411, x12	// Write all 1s to CSR
	csrrw x26, 0x411, x0	// Write all 0s to CSR
	csrrs x26, 0x411, x12	// Set all CSR bits
	csrrc x26, 0x411, x12	// Clear all CSR bits
	csrrw x26, 0x411, x5	// Restore CSR

// Testing CSR 0x412
	csrr x21, 0x412	// Read CSR
	li x19, -1
	csrrw x29, 0x412, x19	// Write all 1s to CSR
	csrrw x29, 0x412, x0	// Write all 0s to CSR
	csrrs x29, 0x412, x19	// Set all CSR bits
	csrrc x29, 0x412, x19	// Clear all CSR bits
	csrrw x29, 0x412, x21	// Restore CSR

// Testing CSR 0x413
	csrr x21, 0x413	// Read CSR
	li x8, -1
	csrrw x20, 0x413, x8	// Write all 1s to CSR
	csrrw x20, 0x413, x0	// Write all 0s to CSR
	csrrs x20, 0x413, x8	// Set all CSR bits
	csrrc x20, 0x413, x8	// Clear all CSR bits
	csrrw x20, 0x413, x21	// Restore CSR

// Testing CSR 0x414
	csrr x1, 0x414	// Read CSR
	li x14, -1
	csrrw x18, 0x414, x14	// Write all 1s to CSR
	csrrw x18, 0x414, x0	// Write all 0s to CSR
	csrrs x18, 0x414, x14	// Set all CSR bits
	csrrc x18, 0x414, x14	// Clear all CSR bits
	csrrw x18, 0x414, x1	// Restore CSR

// Testing CSR 0x415
	csrr x11, 0x415	// Read CSR
	li x14, -1
	csrrw x24, 0x415, x14	// Write all 1s to CSR
	csrrw x24, 0x415, x0	// Write all 0s to CSR
	csrrs x24, 0x415, x14	// Set all CSR bits
	csrrc x24, 0x415, x14	// Clear all CSR bits
	csrrw x24, 0x415, x11	// Restore CSR

// Testing CSR 0x416
	csrr x13, 0x416	// Read CSR
	li x22, -1
	csrrw x15, 0x416, x22	// Write all 1s to CSR
	csrrw x15, 0x416, x0	// Write all 0s to CSR
	csrrs x15, 0x416, x22	// Set all CSR bits
	csrrc x15, 0x416, x22	// Clear all CSR bits
	csrrw x15, 0x416, x13	// Restore CSR

// Testing CSR 0x417
	csrr x22, 0x417	// Read CSR
	li x4, -1
	csrrw x17, 0x417, x4	// Write all 1s to CSR
	csrrw x17, 0x417, x0	// Write all 0s to CSR
	csrrs x17, 0x417, x4	// Set all CSR bits
	csrrc x17, 0x417, x4	// Clear all CSR bits
	csrrw x17, 0x417, x22	// Restore CSR

// Testing CSR 0x418
	csrr x1, 0x418	// Read CSR
	li x15, -1
	csrrw x9, 0x418, x15	// Write all 1s to CSR
	csrrw x9, 0x418, x0	// Write all 0s to CSR
	csrrs x9, 0x418, x15	// Set all CSR bits
	csrrc x9, 0x418, x15	// Clear all CSR bits
	csrrw x9, 0x418, x1	// Restore CSR

// Testing CSR 0x419
	csrr x22, 0x419	// Read CSR
	li x4, -1
	csrrw x12, 0x419, x4	// Write all 1s to CSR
	csrrw x12, 0x419, x0	// Write all 0s to CSR
	csrrs x12, 0x419, x4	// Set all CSR bits
	csrrc x12, 0x419, x4	// Clear all CSR bits
	csrrw x12, 0x419, x22	// Restore CSR

// Testing CSR 0x41a
	csrr x3, 0x41a	// Read CSR
	li x16, -1
	csrrw x31, 0x41a, x16	// Write all 1s to CSR
	csrrw x31, 0x41a, x0	// Write all 0s to CSR
	csrrs x31, 0x41a, x16	// Set all CSR bits
	csrrc x31, 0x41a, x16	// Clear all CSR bits
	csrrw x31, 0x41a, x3	// Restore CSR

// Testing CSR 0x41b
	csrr x11, 0x41b	// Read CSR
	li x29, -1
	csrrw x17, 0x41b, x29	// Write all 1s to CSR
	csrrw x17, 0x41b, x0	// Write all 0s to CSR
	csrrs x17, 0x41b, x29	// Set all CSR bits
	csrrc x17, 0x41b, x29	// Clear all CSR bits
	csrrw x17, 0x41b, x11	// Restore CSR

// Testing CSR 0x41c
	csrr x13, 0x41c	// Read CSR
	li x29, -1
	csrrw x4, 0x41c, x29	// Write all 1s to CSR
	csrrw x4, 0x41c, x0	// Write all 0s to CSR
	csrrs x4, 0x41c, x29	// Set all CSR bits
	csrrc x4, 0x41c, x29	// Clear all CSR bits
	csrrw x4, 0x41c, x13	// Restore CSR

// Testing CSR 0x41d
	csrr x18, 0x41d	// Read CSR
	li x20, -1
	csrrw x1, 0x41d, x20	// Write all 1s to CSR
	csrrw x1, 0x41d, x0	// Write all 0s to CSR
	csrrs x1, 0x41d, x20	// Set all CSR bits
	csrrc x1, 0x41d, x20	// Clear all CSR bits
	csrrw x1, 0x41d, x18	// Restore CSR

// Testing CSR 0x41e
	csrr x6, 0x41e	// Read CSR
	li x14, -1
	csrrw x30, 0x41e, x14	// Write all 1s to CSR
	csrrw x30, 0x41e, x0	// Write all 0s to CSR
	csrrs x30, 0x41e, x14	// Set all CSR bits
	csrrc x30, 0x41e, x14	// Clear all CSR bits
	csrrw x30, 0x41e, x6	// Restore CSR

// Testing CSR 0x41f
	csrr x21, 0x41f	// Read CSR
	li x27, -1
	csrrw x30, 0x41f, x27	// Write all 1s to CSR
	csrrw x30, 0x41f, x0	// Write all 0s to CSR
	csrrs x30, 0x41f, x27	// Set all CSR bits
	csrrc x30, 0x41f, x27	// Clear all CSR bits
	csrrw x30, 0x41f, x21	// Restore CSR

// Testing CSR 0x420
	csrr x13, 0x420	// Read CSR
	li x12, -1
	csrrw x31, 0x420, x12	// Write all 1s to CSR
	csrrw x31, 0x420, x0	// Write all 0s to CSR
	csrrs x31, 0x420, x12	// Set all CSR bits
	csrrc x31, 0x420, x12	// Clear all CSR bits
	csrrw x31, 0x420, x13	// Restore CSR

// Testing CSR 0x421
	csrr x2, 0x421	// Read CSR
	li x20, -1
	csrrw x24, 0x421, x20	// Write all 1s to CSR
	csrrw x24, 0x421, x0	// Write all 0s to CSR
	csrrs x24, 0x421, x20	// Set all CSR bits
	csrrc x24, 0x421, x20	// Clear all CSR bits
	csrrw x24, 0x421, x2	// Restore CSR

// Testing CSR 0x422
	csrr x6, 0x422	// Read CSR
	li x12, -1
	csrrw x26, 0x422, x12	// Write all 1s to CSR
	csrrw x26, 0x422, x0	// Write all 0s to CSR
	csrrs x26, 0x422, x12	// Set all CSR bits
	csrrc x26, 0x422, x12	// Clear all CSR bits
	csrrw x26, 0x422, x6	// Restore CSR

// Testing CSR 0x423
	csrr x31, 0x423	// Read CSR
	li x15, -1
	csrrw x10, 0x423, x15	// Write all 1s to CSR
	csrrw x10, 0x423, x0	// Write all 0s to CSR
	csrrs x10, 0x423, x15	// Set all CSR bits
	csrrc x10, 0x423, x15	// Clear all CSR bits
	csrrw x10, 0x423, x31	// Restore CSR

// Testing CSR 0x424
	csrr x31, 0x424	// Read CSR
	li x20, -1
	csrrw x16, 0x424, x20	// Write all 1s to CSR
	csrrw x16, 0x424, x0	// Write all 0s to CSR
	csrrs x16, 0x424, x20	// Set all CSR bits
	csrrc x16, 0x424, x20	// Clear all CSR bits
	csrrw x16, 0x424, x31	// Restore CSR

// Testing CSR 0x425
	csrr x21, 0x425	// Read CSR
	li x23, -1
	csrrw x11, 0x425, x23	// Write all 1s to CSR
	csrrw x11, 0x425, x0	// Write all 0s to CSR
	csrrs x11, 0x425, x23	// Set all CSR bits
	csrrc x11, 0x425, x23	// Clear all CSR bits
	csrrw x11, 0x425, x21	// Restore CSR

// Testing CSR 0x426
	csrr x25, 0x426	// Read CSR
	li x10, -1
	csrrw x21, 0x426, x10	// Write all 1s to CSR
	csrrw x21, 0x426, x0	// Write all 0s to CSR
	csrrs x21, 0x426, x10	// Set all CSR bits
	csrrc x21, 0x426, x10	// Clear all CSR bits
	csrrw x21, 0x426, x25	// Restore CSR

// Testing CSR 0x427
	csrr x4, 0x427	// Read CSR
	li x12, -1
	csrrw x31, 0x427, x12	// Write all 1s to CSR
	csrrw x31, 0x427, x0	// Write all 0s to CSR
	csrrs x31, 0x427, x12	// Set all CSR bits
	csrrc x31, 0x427, x12	// Clear all CSR bits
	csrrw x31, 0x427, x4	// Restore CSR

// Testing CSR 0x428
	csrr x6, 0x428	// Read CSR
	li x16, -1
	csrrw x2, 0x428, x16	// Write all 1s to CSR
	csrrw x2, 0x428, x0	// Write all 0s to CSR
	csrrs x2, 0x428, x16	// Set all CSR bits
	csrrc x2, 0x428, x16	// Clear all CSR bits
	csrrw x2, 0x428, x6	// Restore CSR

// Testing CSR 0x429
	csrr x23, 0x429	// Read CSR
	li x15, -1
	csrrw x26, 0x429, x15	// Write all 1s to CSR
	csrrw x26, 0x429, x0	// Write all 0s to CSR
	csrrs x26, 0x429, x15	// Set all CSR bits
	csrrc x26, 0x429, x15	// Clear all CSR bits
	csrrw x26, 0x429, x23	// Restore CSR

// Testing CSR 0x42a
	csrr x14, 0x42a	// Read CSR
	li x9, -1
	csrrw x12, 0x42a, x9	// Write all 1s to CSR
	csrrw x12, 0x42a, x0	// Write all 0s to CSR
	csrrs x12, 0x42a, x9	// Set all CSR bits
	csrrc x12, 0x42a, x9	// Clear all CSR bits
	csrrw x12, 0x42a, x14	// Restore CSR

// Testing CSR 0x42b
	csrr x7, 0x42b	// Read CSR
	li x1, -1
	csrrw x12, 0x42b, x1	// Write all 1s to CSR
	csrrw x12, 0x42b, x0	// Write all 0s to CSR
	csrrs x12, 0x42b, x1	// Set all CSR bits
	csrrc x12, 0x42b, x1	// Clear all CSR bits
	csrrw x12, 0x42b, x7	// Restore CSR

// Testing CSR 0x42c
	csrr x8, 0x42c	// Read CSR
	li x20, -1
	csrrw x29, 0x42c, x20	// Write all 1s to CSR
	csrrw x29, 0x42c, x0	// Write all 0s to CSR
	csrrs x29, 0x42c, x20	// Set all CSR bits
	csrrc x29, 0x42c, x20	// Clear all CSR bits
	csrrw x29, 0x42c, x8	// Restore CSR

// Testing CSR 0x42d
	csrr x17, 0x42d	// Read CSR
	li x4, -1
	csrrw x7, 0x42d, x4	// Write all 1s to CSR
	csrrw x7, 0x42d, x0	// Write all 0s to CSR
	csrrs x7, 0x42d, x4	// Set all CSR bits
	csrrc x7, 0x42d, x4	// Clear all CSR bits
	csrrw x7, 0x42d, x17	// Restore CSR

// Testing CSR 0x42e
	csrr x26, 0x42e	// Read CSR
	li x13, -1
	csrrw x28, 0x42e, x13	// Write all 1s to CSR
	csrrw x28, 0x42e, x0	// Write all 0s to CSR
	csrrs x28, 0x42e, x13	// Set all CSR bits
	csrrc x28, 0x42e, x13	// Clear all CSR bits
	csrrw x28, 0x42e, x26	// Restore CSR

// Testing CSR 0x42f
	csrr x10, 0x42f	// Read CSR
	li x6, -1
	csrrw x1, 0x42f, x6	// Write all 1s to CSR
	csrrw x1, 0x42f, x0	// Write all 0s to CSR
	csrrs x1, 0x42f, x6	// Set all CSR bits
	csrrc x1, 0x42f, x6	// Clear all CSR bits
	csrrw x1, 0x42f, x10	// Restore CSR

// Testing CSR 0x430
	csrr x14, 0x430	// Read CSR
	li x26, -1
	csrrw x20, 0x430, x26	// Write all 1s to CSR
	csrrw x20, 0x430, x0	// Write all 0s to CSR
	csrrs x20, 0x430, x26	// Set all CSR bits
	csrrc x20, 0x430, x26	// Clear all CSR bits
	csrrw x20, 0x430, x14	// Restore CSR

// Testing CSR 0x431
	csrr x12, 0x431	// Read CSR
	li x20, -1
	csrrw x15, 0x431, x20	// Write all 1s to CSR
	csrrw x15, 0x431, x0	// Write all 0s to CSR
	csrrs x15, 0x431, x20	// Set all CSR bits
	csrrc x15, 0x431, x20	// Clear all CSR bits
	csrrw x15, 0x431, x12	// Restore CSR

// Testing CSR 0x432
	csrr x6, 0x432	// Read CSR
	li x19, -1
	csrrw x29, 0x432, x19	// Write all 1s to CSR
	csrrw x29, 0x432, x0	// Write all 0s to CSR
	csrrs x29, 0x432, x19	// Set all CSR bits
	csrrc x29, 0x432, x19	// Clear all CSR bits
	csrrw x29, 0x432, x6	// Restore CSR

// Testing CSR 0x433
	csrr x14, 0x433	// Read CSR
	li x10, -1
	csrrw x7, 0x433, x10	// Write all 1s to CSR
	csrrw x7, 0x433, x0	// Write all 0s to CSR
	csrrs x7, 0x433, x10	// Set all CSR bits
	csrrc x7, 0x433, x10	// Clear all CSR bits
	csrrw x7, 0x433, x14	// Restore CSR

// Testing CSR 0x434
	csrr x27, 0x434	// Read CSR
	li x18, -1
	csrrw x22, 0x434, x18	// Write all 1s to CSR
	csrrw x22, 0x434, x0	// Write all 0s to CSR
	csrrs x22, 0x434, x18	// Set all CSR bits
	csrrc x22, 0x434, x18	// Clear all CSR bits
	csrrw x22, 0x434, x27	// Restore CSR

// Testing CSR 0x435
	csrr x9, 0x435	// Read CSR
	li x12, -1
	csrrw x21, 0x435, x12	// Write all 1s to CSR
	csrrw x21, 0x435, x0	// Write all 0s to CSR
	csrrs x21, 0x435, x12	// Set all CSR bits
	csrrc x21, 0x435, x12	// Clear all CSR bits
	csrrw x21, 0x435, x9	// Restore CSR

// Testing CSR 0x436
	csrr x20, 0x436	// Read CSR
	li x11, -1
	csrrw x13, 0x436, x11	// Write all 1s to CSR
	csrrw x13, 0x436, x0	// Write all 0s to CSR
	csrrs x13, 0x436, x11	// Set all CSR bits
	csrrc x13, 0x436, x11	// Clear all CSR bits
	csrrw x13, 0x436, x20	// Restore CSR

// Testing CSR 0x437
	csrr x20, 0x437	// Read CSR
	li x26, -1
	csrrw x23, 0x437, x26	// Write all 1s to CSR
	csrrw x23, 0x437, x0	// Write all 0s to CSR
	csrrs x23, 0x437, x26	// Set all CSR bits
	csrrc x23, 0x437, x26	// Clear all CSR bits
	csrrw x23, 0x437, x20	// Restore CSR

// Testing CSR 0x438
	csrr x28, 0x438	// Read CSR
	li x23, -1
	csrrw x29, 0x438, x23	// Write all 1s to CSR
	csrrw x29, 0x438, x0	// Write all 0s to CSR
	csrrs x29, 0x438, x23	// Set all CSR bits
	csrrc x29, 0x438, x23	// Clear all CSR bits
	csrrw x29, 0x438, x28	// Restore CSR

// Testing CSR 0x439
	csrr x19, 0x439	// Read CSR
	li x14, -1
	csrrw x24, 0x439, x14	// Write all 1s to CSR
	csrrw x24, 0x439, x0	// Write all 0s to CSR
	csrrs x24, 0x439, x14	// Set all CSR bits
	csrrc x24, 0x439, x14	// Clear all CSR bits
	csrrw x24, 0x439, x19	// Restore CSR

// Testing CSR 0x43a
	csrr x25, 0x43a	// Read CSR
	li x26, -1
	csrrw x4, 0x43a, x26	// Write all 1s to CSR
	csrrw x4, 0x43a, x0	// Write all 0s to CSR
	csrrs x4, 0x43a, x26	// Set all CSR bits
	csrrc x4, 0x43a, x26	// Clear all CSR bits
	csrrw x4, 0x43a, x25	// Restore CSR

// Testing CSR 0x43b
	csrr x13, 0x43b	// Read CSR
	li x30, -1
	csrrw x7, 0x43b, x30	// Write all 1s to CSR
	csrrw x7, 0x43b, x0	// Write all 0s to CSR
	csrrs x7, 0x43b, x30	// Set all CSR bits
	csrrc x7, 0x43b, x30	// Clear all CSR bits
	csrrw x7, 0x43b, x13	// Restore CSR

// Testing CSR 0x43c
	csrr x2, 0x43c	// Read CSR
	li x23, -1
	csrrw x26, 0x43c, x23	// Write all 1s to CSR
	csrrw x26, 0x43c, x0	// Write all 0s to CSR
	csrrs x26, 0x43c, x23	// Set all CSR bits
	csrrc x26, 0x43c, x23	// Clear all CSR bits
	csrrw x26, 0x43c, x2	// Restore CSR

// Testing CSR 0x43d
	csrr x7, 0x43d	// Read CSR
	li x16, -1
	csrrw x22, 0x43d, x16	// Write all 1s to CSR
	csrrw x22, 0x43d, x0	// Write all 0s to CSR
	csrrs x22, 0x43d, x16	// Set all CSR bits
	csrrc x22, 0x43d, x16	// Clear all CSR bits
	csrrw x22, 0x43d, x7	// Restore CSR

// Testing CSR 0x43e
	csrr x29, 0x43e	// Read CSR
	li x24, -1
	csrrw x25, 0x43e, x24	// Write all 1s to CSR
	csrrw x25, 0x43e, x0	// Write all 0s to CSR
	csrrs x25, 0x43e, x24	// Set all CSR bits
	csrrc x25, 0x43e, x24	// Clear all CSR bits
	csrrw x25, 0x43e, x29	// Restore CSR

// Testing CSR 0x43f
	csrr x11, 0x43f	// Read CSR
	li x17, -1
	csrrw x8, 0x43f, x17	// Write all 1s to CSR
	csrrw x8, 0x43f, x0	// Write all 0s to CSR
	csrrs x8, 0x43f, x17	// Set all CSR bits
	csrrc x8, 0x43f, x17	// Clear all CSR bits
	csrrw x8, 0x43f, x11	// Restore CSR

// Testing CSR 0x440
	csrr x18, 0x440	// Read CSR
	li x24, -1
	csrrw x8, 0x440, x24	// Write all 1s to CSR
	csrrw x8, 0x440, x0	// Write all 0s to CSR
	csrrs x8, 0x440, x24	// Set all CSR bits
	csrrc x8, 0x440, x24	// Clear all CSR bits
	csrrw x8, 0x440, x18	// Restore CSR

// Testing CSR 0x441
	csrr x16, 0x441	// Read CSR
	li x25, -1
	csrrw x23, 0x441, x25	// Write all 1s to CSR
	csrrw x23, 0x441, x0	// Write all 0s to CSR
	csrrs x23, 0x441, x25	// Set all CSR bits
	csrrc x23, 0x441, x25	// Clear all CSR bits
	csrrw x23, 0x441, x16	// Restore CSR

// Testing CSR 0x442
	csrr x28, 0x442	// Read CSR
	li x24, -1
	csrrw x16, 0x442, x24	// Write all 1s to CSR
	csrrw x16, 0x442, x0	// Write all 0s to CSR
	csrrs x16, 0x442, x24	// Set all CSR bits
	csrrc x16, 0x442, x24	// Clear all CSR bits
	csrrw x16, 0x442, x28	// Restore CSR

// Testing CSR 0x443
	csrr x31, 0x443	// Read CSR
	li x8, -1
	csrrw x25, 0x443, x8	// Write all 1s to CSR
	csrrw x25, 0x443, x0	// Write all 0s to CSR
	csrrs x25, 0x443, x8	// Set all CSR bits
	csrrc x25, 0x443, x8	// Clear all CSR bits
	csrrw x25, 0x443, x31	// Restore CSR

// Testing CSR 0x444
	csrr x4, 0x444	// Read CSR
	li x5, -1
	csrrw x24, 0x444, x5	// Write all 1s to CSR
	csrrw x24, 0x444, x0	// Write all 0s to CSR
	csrrs x24, 0x444, x5	// Set all CSR bits
	csrrc x24, 0x444, x5	// Clear all CSR bits
	csrrw x24, 0x444, x4	// Restore CSR

// Testing CSR 0x445
	csrr x9, 0x445	// Read CSR
	li x25, -1
	csrrw x26, 0x445, x25	// Write all 1s to CSR
	csrrw x26, 0x445, x0	// Write all 0s to CSR
	csrrs x26, 0x445, x25	// Set all CSR bits
	csrrc x26, 0x445, x25	// Clear all CSR bits
	csrrw x26, 0x445, x9	// Restore CSR

// Testing CSR 0x446
	csrr x11, 0x446	// Read CSR
	li x5, -1
	csrrw x25, 0x446, x5	// Write all 1s to CSR
	csrrw x25, 0x446, x0	// Write all 0s to CSR
	csrrs x25, 0x446, x5	// Set all CSR bits
	csrrc x25, 0x446, x5	// Clear all CSR bits
	csrrw x25, 0x446, x11	// Restore CSR

// Testing CSR 0x447
	csrr x27, 0x447	// Read CSR
	li x2, -1
	csrrw x19, 0x447, x2	// Write all 1s to CSR
	csrrw x19, 0x447, x0	// Write all 0s to CSR
	csrrs x19, 0x447, x2	// Set all CSR bits
	csrrc x19, 0x447, x2	// Clear all CSR bits
	csrrw x19, 0x447, x27	// Restore CSR

// Testing CSR 0x448
	csrr x22, 0x448	// Read CSR
	li x19, -1
	csrrw x23, 0x448, x19	// Write all 1s to CSR
	csrrw x23, 0x448, x0	// Write all 0s to CSR
	csrrs x23, 0x448, x19	// Set all CSR bits
	csrrc x23, 0x448, x19	// Clear all CSR bits
	csrrw x23, 0x448, x22	// Restore CSR

// Testing CSR 0x449
	csrr x17, 0x449	// Read CSR
	li x13, -1
	csrrw x6, 0x449, x13	// Write all 1s to CSR
	csrrw x6, 0x449, x0	// Write all 0s to CSR
	csrrs x6, 0x449, x13	// Set all CSR bits
	csrrc x6, 0x449, x13	// Clear all CSR bits
	csrrw x6, 0x449, x17	// Restore CSR

// Testing CSR 0x44a
	csrr x13, 0x44a	// Read CSR
	li x15, -1
	csrrw x28, 0x44a, x15	// Write all 1s to CSR
	csrrw x28, 0x44a, x0	// Write all 0s to CSR
	csrrs x28, 0x44a, x15	// Set all CSR bits
	csrrc x28, 0x44a, x15	// Clear all CSR bits
	csrrw x28, 0x44a, x13	// Restore CSR

// Testing CSR 0x44b
	csrr x28, 0x44b	// Read CSR
	li x2, -1
	csrrw x9, 0x44b, x2	// Write all 1s to CSR
	csrrw x9, 0x44b, x0	// Write all 0s to CSR
	csrrs x9, 0x44b, x2	// Set all CSR bits
	csrrc x9, 0x44b, x2	// Clear all CSR bits
	csrrw x9, 0x44b, x28	// Restore CSR

// Testing CSR 0x44c
	csrr x15, 0x44c	// Read CSR
	li x12, -1
	csrrw x21, 0x44c, x12	// Write all 1s to CSR
	csrrw x21, 0x44c, x0	// Write all 0s to CSR
	csrrs x21, 0x44c, x12	// Set all CSR bits
	csrrc x21, 0x44c, x12	// Clear all CSR bits
	csrrw x21, 0x44c, x15	// Restore CSR

// Testing CSR 0x44d
	csrr x10, 0x44d	// Read CSR
	li x28, -1
	csrrw x13, 0x44d, x28	// Write all 1s to CSR
	csrrw x13, 0x44d, x0	// Write all 0s to CSR
	csrrs x13, 0x44d, x28	// Set all CSR bits
	csrrc x13, 0x44d, x28	// Clear all CSR bits
	csrrw x13, 0x44d, x10	// Restore CSR

// Testing CSR 0x44e
	csrr x30, 0x44e	// Read CSR
	li x20, -1
	csrrw x14, 0x44e, x20	// Write all 1s to CSR
	csrrw x14, 0x44e, x0	// Write all 0s to CSR
	csrrs x14, 0x44e, x20	// Set all CSR bits
	csrrc x14, 0x44e, x20	// Clear all CSR bits
	csrrw x14, 0x44e, x30	// Restore CSR

// Testing CSR 0x44f
	csrr x17, 0x44f	// Read CSR
	li x3, -1
	csrrw x31, 0x44f, x3	// Write all 1s to CSR
	csrrw x31, 0x44f, x0	// Write all 0s to CSR
	csrrs x31, 0x44f, x3	// Set all CSR bits
	csrrc x31, 0x44f, x3	// Clear all CSR bits
	csrrw x31, 0x44f, x17	// Restore CSR

// Testing CSR 0x450
	csrr x14, 0x450	// Read CSR
	li x16, -1
	csrrw x24, 0x450, x16	// Write all 1s to CSR
	csrrw x24, 0x450, x0	// Write all 0s to CSR
	csrrs x24, 0x450, x16	// Set all CSR bits
	csrrc x24, 0x450, x16	// Clear all CSR bits
	csrrw x24, 0x450, x14	// Restore CSR

// Testing CSR 0x451
	csrr x10, 0x451	// Read CSR
	li x8, -1
	csrrw x1, 0x451, x8	// Write all 1s to CSR
	csrrw x1, 0x451, x0	// Write all 0s to CSR
	csrrs x1, 0x451, x8	// Set all CSR bits
	csrrc x1, 0x451, x8	// Clear all CSR bits
	csrrw x1, 0x451, x10	// Restore CSR

// Testing CSR 0x452
	csrr x14, 0x452	// Read CSR
	li x10, -1
	csrrw x20, 0x452, x10	// Write all 1s to CSR
	csrrw x20, 0x452, x0	// Write all 0s to CSR
	csrrs x20, 0x452, x10	// Set all CSR bits
	csrrc x20, 0x452, x10	// Clear all CSR bits
	csrrw x20, 0x452, x14	// Restore CSR

// Testing CSR 0x453
	csrr x27, 0x453	// Read CSR
	li x15, -1
	csrrw x30, 0x453, x15	// Write all 1s to CSR
	csrrw x30, 0x453, x0	// Write all 0s to CSR
	csrrs x30, 0x453, x15	// Set all CSR bits
	csrrc x30, 0x453, x15	// Clear all CSR bits
	csrrw x30, 0x453, x27	// Restore CSR

// Testing CSR 0x454
	csrr x19, 0x454	// Read CSR
	li x13, -1
	csrrw x16, 0x454, x13	// Write all 1s to CSR
	csrrw x16, 0x454, x0	// Write all 0s to CSR
	csrrs x16, 0x454, x13	// Set all CSR bits
	csrrc x16, 0x454, x13	// Clear all CSR bits
	csrrw x16, 0x454, x19	// Restore CSR

// Testing CSR 0x455
	csrr x22, 0x455	// Read CSR
	li x11, -1
	csrrw x24, 0x455, x11	// Write all 1s to CSR
	csrrw x24, 0x455, x0	// Write all 0s to CSR
	csrrs x24, 0x455, x11	// Set all CSR bits
	csrrc x24, 0x455, x11	// Clear all CSR bits
	csrrw x24, 0x455, x22	// Restore CSR

// Testing CSR 0x456
	csrr x12, 0x456	// Read CSR
	li x20, -1
	csrrw x26, 0x456, x20	// Write all 1s to CSR
	csrrw x26, 0x456, x0	// Write all 0s to CSR
	csrrs x26, 0x456, x20	// Set all CSR bits
	csrrc x26, 0x456, x20	// Clear all CSR bits
	csrrw x26, 0x456, x12	// Restore CSR

// Testing CSR 0x457
	csrr x5, 0x457	// Read CSR
	li x12, -1
	csrrw x10, 0x457, x12	// Write all 1s to CSR
	csrrw x10, 0x457, x0	// Write all 0s to CSR
	csrrs x10, 0x457, x12	// Set all CSR bits
	csrrc x10, 0x457, x12	// Clear all CSR bits
	csrrw x10, 0x457, x5	// Restore CSR

// Testing CSR 0x458
	csrr x19, 0x458	// Read CSR
	li x15, -1
	csrrw x5, 0x458, x15	// Write all 1s to CSR
	csrrw x5, 0x458, x0	// Write all 0s to CSR
	csrrs x5, 0x458, x15	// Set all CSR bits
	csrrc x5, 0x458, x15	// Clear all CSR bits
	csrrw x5, 0x458, x19	// Restore CSR

// Testing CSR 0x459
	csrr x17, 0x459	// Read CSR
	li x29, -1
	csrrw x7, 0x459, x29	// Write all 1s to CSR
	csrrw x7, 0x459, x0	// Write all 0s to CSR
	csrrs x7, 0x459, x29	// Set all CSR bits
	csrrc x7, 0x459, x29	// Clear all CSR bits
	csrrw x7, 0x459, x17	// Restore CSR

// Testing CSR 0x45a
	csrr x10, 0x45a	// Read CSR
	li x3, -1
	csrrw x15, 0x45a, x3	// Write all 1s to CSR
	csrrw x15, 0x45a, x0	// Write all 0s to CSR
	csrrs x15, 0x45a, x3	// Set all CSR bits
	csrrc x15, 0x45a, x3	// Clear all CSR bits
	csrrw x15, 0x45a, x10	// Restore CSR

// Testing CSR 0x45b
	csrr x5, 0x45b	// Read CSR
	li x9, -1
	csrrw x4, 0x45b, x9	// Write all 1s to CSR
	csrrw x4, 0x45b, x0	// Write all 0s to CSR
	csrrs x4, 0x45b, x9	// Set all CSR bits
	csrrc x4, 0x45b, x9	// Clear all CSR bits
	csrrw x4, 0x45b, x5	// Restore CSR

// Testing CSR 0x45c
	csrr x6, 0x45c	// Read CSR
	li x12, -1
	csrrw x31, 0x45c, x12	// Write all 1s to CSR
	csrrw x31, 0x45c, x0	// Write all 0s to CSR
	csrrs x31, 0x45c, x12	// Set all CSR bits
	csrrc x31, 0x45c, x12	// Clear all CSR bits
	csrrw x31, 0x45c, x6	// Restore CSR

// Testing CSR 0x45d
	csrr x17, 0x45d	// Read CSR
	li x23, -1
	csrrw x16, 0x45d, x23	// Write all 1s to CSR
	csrrw x16, 0x45d, x0	// Write all 0s to CSR
	csrrs x16, 0x45d, x23	// Set all CSR bits
	csrrc x16, 0x45d, x23	// Clear all CSR bits
	csrrw x16, 0x45d, x17	// Restore CSR

// Testing CSR 0x45e
	csrr x30, 0x45e	// Read CSR
	li x19, -1
	csrrw x2, 0x45e, x19	// Write all 1s to CSR
	csrrw x2, 0x45e, x0	// Write all 0s to CSR
	csrrs x2, 0x45e, x19	// Set all CSR bits
	csrrc x2, 0x45e, x19	// Clear all CSR bits
	csrrw x2, 0x45e, x30	// Restore CSR

// Testing CSR 0x45f
	csrr x18, 0x45f	// Read CSR
	li x30, -1
	csrrw x20, 0x45f, x30	// Write all 1s to CSR
	csrrw x20, 0x45f, x0	// Write all 0s to CSR
	csrrs x20, 0x45f, x30	// Set all CSR bits
	csrrc x20, 0x45f, x30	// Clear all CSR bits
	csrrw x20, 0x45f, x18	// Restore CSR

// Testing CSR 0x460
	csrr x6, 0x460	// Read CSR
	li x31, -1
	csrrw x22, 0x460, x31	// Write all 1s to CSR
	csrrw x22, 0x460, x0	// Write all 0s to CSR
	csrrs x22, 0x460, x31	// Set all CSR bits
	csrrc x22, 0x460, x31	// Clear all CSR bits
	csrrw x22, 0x460, x6	// Restore CSR

// Testing CSR 0x461
	csrr x23, 0x461	// Read CSR
	li x14, -1
	csrrw x21, 0x461, x14	// Write all 1s to CSR
	csrrw x21, 0x461, x0	// Write all 0s to CSR
	csrrs x21, 0x461, x14	// Set all CSR bits
	csrrc x21, 0x461, x14	// Clear all CSR bits
	csrrw x21, 0x461, x23	// Restore CSR

// Testing CSR 0x462
	csrr x7, 0x462	// Read CSR
	li x9, -1
	csrrw x1, 0x462, x9	// Write all 1s to CSR
	csrrw x1, 0x462, x0	// Write all 0s to CSR
	csrrs x1, 0x462, x9	// Set all CSR bits
	csrrc x1, 0x462, x9	// Clear all CSR bits
	csrrw x1, 0x462, x7	// Restore CSR

// Testing CSR 0x463
	csrr x29, 0x463	// Read CSR
	li x21, -1
	csrrw x19, 0x463, x21	// Write all 1s to CSR
	csrrw x19, 0x463, x0	// Write all 0s to CSR
	csrrs x19, 0x463, x21	// Set all CSR bits
	csrrc x19, 0x463, x21	// Clear all CSR bits
	csrrw x19, 0x463, x29	// Restore CSR

// Testing CSR 0x464
	csrr x12, 0x464	// Read CSR
	li x1, -1
	csrrw x22, 0x464, x1	// Write all 1s to CSR
	csrrw x22, 0x464, x0	// Write all 0s to CSR
	csrrs x22, 0x464, x1	// Set all CSR bits
	csrrc x22, 0x464, x1	// Clear all CSR bits
	csrrw x22, 0x464, x12	// Restore CSR

// Testing CSR 0x465
	csrr x21, 0x465	// Read CSR
	li x11, -1
	csrrw x28, 0x465, x11	// Write all 1s to CSR
	csrrw x28, 0x465, x0	// Write all 0s to CSR
	csrrs x28, 0x465, x11	// Set all CSR bits
	csrrc x28, 0x465, x11	// Clear all CSR bits
	csrrw x28, 0x465, x21	// Restore CSR

// Testing CSR 0x466
	csrr x11, 0x466	// Read CSR
	li x4, -1
	csrrw x21, 0x466, x4	// Write all 1s to CSR
	csrrw x21, 0x466, x0	// Write all 0s to CSR
	csrrs x21, 0x466, x4	// Set all CSR bits
	csrrc x21, 0x466, x4	// Clear all CSR bits
	csrrw x21, 0x466, x11	// Restore CSR

// Testing CSR 0x467
	csrr x7, 0x467	// Read CSR
	li x3, -1
	csrrw x18, 0x467, x3	// Write all 1s to CSR
	csrrw x18, 0x467, x0	// Write all 0s to CSR
	csrrs x18, 0x467, x3	// Set all CSR bits
	csrrc x18, 0x467, x3	// Clear all CSR bits
	csrrw x18, 0x467, x7	// Restore CSR

// Testing CSR 0x468
	csrr x13, 0x468	// Read CSR
	li x2, -1
	csrrw x31, 0x468, x2	// Write all 1s to CSR
	csrrw x31, 0x468, x0	// Write all 0s to CSR
	csrrs x31, 0x468, x2	// Set all CSR bits
	csrrc x31, 0x468, x2	// Clear all CSR bits
	csrrw x31, 0x468, x13	// Restore CSR

// Testing CSR 0x469
	csrr x13, 0x469	// Read CSR
	li x23, -1
	csrrw x19, 0x469, x23	// Write all 1s to CSR
	csrrw x19, 0x469, x0	// Write all 0s to CSR
	csrrs x19, 0x469, x23	// Set all CSR bits
	csrrc x19, 0x469, x23	// Clear all CSR bits
	csrrw x19, 0x469, x13	// Restore CSR

// Testing CSR 0x46a
	csrr x10, 0x46a	// Read CSR
	li x8, -1
	csrrw x5, 0x46a, x8	// Write all 1s to CSR
	csrrw x5, 0x46a, x0	// Write all 0s to CSR
	csrrs x5, 0x46a, x8	// Set all CSR bits
	csrrc x5, 0x46a, x8	// Clear all CSR bits
	csrrw x5, 0x46a, x10	// Restore CSR

// Testing CSR 0x46b
	csrr x28, 0x46b	// Read CSR
	li x18, -1
	csrrw x4, 0x46b, x18	// Write all 1s to CSR
	csrrw x4, 0x46b, x0	// Write all 0s to CSR
	csrrs x4, 0x46b, x18	// Set all CSR bits
	csrrc x4, 0x46b, x18	// Clear all CSR bits
	csrrw x4, 0x46b, x28	// Restore CSR

// Testing CSR 0x46c
	csrr x12, 0x46c	// Read CSR
	li x26, -1
	csrrw x18, 0x46c, x26	// Write all 1s to CSR
	csrrw x18, 0x46c, x0	// Write all 0s to CSR
	csrrs x18, 0x46c, x26	// Set all CSR bits
	csrrc x18, 0x46c, x26	// Clear all CSR bits
	csrrw x18, 0x46c, x12	// Restore CSR

// Testing CSR 0x46d
	csrr x7, 0x46d	// Read CSR
	li x23, -1
	csrrw x27, 0x46d, x23	// Write all 1s to CSR
	csrrw x27, 0x46d, x0	// Write all 0s to CSR
	csrrs x27, 0x46d, x23	// Set all CSR bits
	csrrc x27, 0x46d, x23	// Clear all CSR bits
	csrrw x27, 0x46d, x7	// Restore CSR

// Testing CSR 0x46e
	csrr x7, 0x46e	// Read CSR
	li x21, -1
	csrrw x25, 0x46e, x21	// Write all 1s to CSR
	csrrw x25, 0x46e, x0	// Write all 0s to CSR
	csrrs x25, 0x46e, x21	// Set all CSR bits
	csrrc x25, 0x46e, x21	// Clear all CSR bits
	csrrw x25, 0x46e, x7	// Restore CSR

// Testing CSR 0x46f
	csrr x24, 0x46f	// Read CSR
	li x28, -1
	csrrw x17, 0x46f, x28	// Write all 1s to CSR
	csrrw x17, 0x46f, x0	// Write all 0s to CSR
	csrrs x17, 0x46f, x28	// Set all CSR bits
	csrrc x17, 0x46f, x28	// Clear all CSR bits
	csrrw x17, 0x46f, x24	// Restore CSR

// Testing CSR 0x470
	csrr x14, 0x470	// Read CSR
	li x27, -1
	csrrw x21, 0x470, x27	// Write all 1s to CSR
	csrrw x21, 0x470, x0	// Write all 0s to CSR
	csrrs x21, 0x470, x27	// Set all CSR bits
	csrrc x21, 0x470, x27	// Clear all CSR bits
	csrrw x21, 0x470, x14	// Restore CSR

// Testing CSR 0x471
	csrr x6, 0x471	// Read CSR
	li x14, -1
	csrrw x25, 0x471, x14	// Write all 1s to CSR
	csrrw x25, 0x471, x0	// Write all 0s to CSR
	csrrs x25, 0x471, x14	// Set all CSR bits
	csrrc x25, 0x471, x14	// Clear all CSR bits
	csrrw x25, 0x471, x6	// Restore CSR

// Testing CSR 0x472
	csrr x21, 0x472	// Read CSR
	li x1, -1
	csrrw x9, 0x472, x1	// Write all 1s to CSR
	csrrw x9, 0x472, x0	// Write all 0s to CSR
	csrrs x9, 0x472, x1	// Set all CSR bits
	csrrc x9, 0x472, x1	// Clear all CSR bits
	csrrw x9, 0x472, x21	// Restore CSR

// Testing CSR 0x473
	csrr x9, 0x473	// Read CSR
	li x28, -1
	csrrw x3, 0x473, x28	// Write all 1s to CSR
	csrrw x3, 0x473, x0	// Write all 0s to CSR
	csrrs x3, 0x473, x28	// Set all CSR bits
	csrrc x3, 0x473, x28	// Clear all CSR bits
	csrrw x3, 0x473, x9	// Restore CSR

// Testing CSR 0x474
	csrr x1, 0x474	// Read CSR
	li x15, -1
	csrrw x10, 0x474, x15	// Write all 1s to CSR
	csrrw x10, 0x474, x0	// Write all 0s to CSR
	csrrs x10, 0x474, x15	// Set all CSR bits
	csrrc x10, 0x474, x15	// Clear all CSR bits
	csrrw x10, 0x474, x1	// Restore CSR

// Testing CSR 0x475
	csrr x9, 0x475	// Read CSR
	li x25, -1
	csrrw x29, 0x475, x25	// Write all 1s to CSR
	csrrw x29, 0x475, x0	// Write all 0s to CSR
	csrrs x29, 0x475, x25	// Set all CSR bits
	csrrc x29, 0x475, x25	// Clear all CSR bits
	csrrw x29, 0x475, x9	// Restore CSR

// Testing CSR 0x476
	csrr x12, 0x476	// Read CSR
	li x2, -1
	csrrw x14, 0x476, x2	// Write all 1s to CSR
	csrrw x14, 0x476, x0	// Write all 0s to CSR
	csrrs x14, 0x476, x2	// Set all CSR bits
	csrrc x14, 0x476, x2	// Clear all CSR bits
	csrrw x14, 0x476, x12	// Restore CSR

// Testing CSR 0x477
	csrr x25, 0x477	// Read CSR
	li x31, -1
	csrrw x29, 0x477, x31	// Write all 1s to CSR
	csrrw x29, 0x477, x0	// Write all 0s to CSR
	csrrs x29, 0x477, x31	// Set all CSR bits
	csrrc x29, 0x477, x31	// Clear all CSR bits
	csrrw x29, 0x477, x25	// Restore CSR

// Testing CSR 0x478
	csrr x2, 0x478	// Read CSR
	li x20, -1
	csrrw x7, 0x478, x20	// Write all 1s to CSR
	csrrw x7, 0x478, x0	// Write all 0s to CSR
	csrrs x7, 0x478, x20	// Set all CSR bits
	csrrc x7, 0x478, x20	// Clear all CSR bits
	csrrw x7, 0x478, x2	// Restore CSR

// Testing CSR 0x479
	csrr x20, 0x479	// Read CSR
	li x1, -1
	csrrw x5, 0x479, x1	// Write all 1s to CSR
	csrrw x5, 0x479, x0	// Write all 0s to CSR
	csrrs x5, 0x479, x1	// Set all CSR bits
	csrrc x5, 0x479, x1	// Clear all CSR bits
	csrrw x5, 0x479, x20	// Restore CSR

// Testing CSR 0x47a
	csrr x3, 0x47a	// Read CSR
	li x7, -1
	csrrw x27, 0x47a, x7	// Write all 1s to CSR
	csrrw x27, 0x47a, x0	// Write all 0s to CSR
	csrrs x27, 0x47a, x7	// Set all CSR bits
	csrrc x27, 0x47a, x7	// Clear all CSR bits
	csrrw x27, 0x47a, x3	// Restore CSR

// Testing CSR 0x47b
	csrr x17, 0x47b	// Read CSR
	li x21, -1
	csrrw x13, 0x47b, x21	// Write all 1s to CSR
	csrrw x13, 0x47b, x0	// Write all 0s to CSR
	csrrs x13, 0x47b, x21	// Set all CSR bits
	csrrc x13, 0x47b, x21	// Clear all CSR bits
	csrrw x13, 0x47b, x17	// Restore CSR

// Testing CSR 0x47c
	csrr x29, 0x47c	// Read CSR
	li x14, -1
	csrrw x23, 0x47c, x14	// Write all 1s to CSR
	csrrw x23, 0x47c, x0	// Write all 0s to CSR
	csrrs x23, 0x47c, x14	// Set all CSR bits
	csrrc x23, 0x47c, x14	// Clear all CSR bits
	csrrw x23, 0x47c, x29	// Restore CSR

// Testing CSR 0x47d
	csrr x11, 0x47d	// Read CSR
	li x4, -1
	csrrw x21, 0x47d, x4	// Write all 1s to CSR
	csrrw x21, 0x47d, x0	// Write all 0s to CSR
	csrrs x21, 0x47d, x4	// Set all CSR bits
	csrrc x21, 0x47d, x4	// Clear all CSR bits
	csrrw x21, 0x47d, x11	// Restore CSR

// Testing CSR 0x47e
	csrr x8, 0x47e	// Read CSR
	li x11, -1
	csrrw x3, 0x47e, x11	// Write all 1s to CSR
	csrrw x3, 0x47e, x0	// Write all 0s to CSR
	csrrs x3, 0x47e, x11	// Set all CSR bits
	csrrc x3, 0x47e, x11	// Clear all CSR bits
	csrrw x3, 0x47e, x8	// Restore CSR

// Testing CSR 0x47f
	csrr x21, 0x47f	// Read CSR
	li x6, -1
	csrrw x18, 0x47f, x6	// Write all 1s to CSR
	csrrw x18, 0x47f, x0	// Write all 0s to CSR
	csrrs x18, 0x47f, x6	// Set all CSR bits
	csrrc x18, 0x47f, x6	// Clear all CSR bits
	csrrw x18, 0x47f, x21	// Restore CSR

// Testing CSR 0x480
	csrr x26, 0x480	// Read CSR
	li x8, -1
	csrrw x23, 0x480, x8	// Write all 1s to CSR
	csrrw x23, 0x480, x0	// Write all 0s to CSR
	csrrs x23, 0x480, x8	// Set all CSR bits
	csrrc x23, 0x480, x8	// Clear all CSR bits
	csrrw x23, 0x480, x26	// Restore CSR

// Testing CSR 0x481
	csrr x16, 0x481	// Read CSR
	li x17, -1
	csrrw x20, 0x481, x17	// Write all 1s to CSR
	csrrw x20, 0x481, x0	// Write all 0s to CSR
	csrrs x20, 0x481, x17	// Set all CSR bits
	csrrc x20, 0x481, x17	// Clear all CSR bits
	csrrw x20, 0x481, x16	// Restore CSR

// Testing CSR 0x482
	csrr x20, 0x482	// Read CSR
	li x3, -1
	csrrw x14, 0x482, x3	// Write all 1s to CSR
	csrrw x14, 0x482, x0	// Write all 0s to CSR
	csrrs x14, 0x482, x3	// Set all CSR bits
	csrrc x14, 0x482, x3	// Clear all CSR bits
	csrrw x14, 0x482, x20	// Restore CSR

// Testing CSR 0x483
	csrr x19, 0x483	// Read CSR
	li x17, -1
	csrrw x8, 0x483, x17	// Write all 1s to CSR
	csrrw x8, 0x483, x0	// Write all 0s to CSR
	csrrs x8, 0x483, x17	// Set all CSR bits
	csrrc x8, 0x483, x17	// Clear all CSR bits
	csrrw x8, 0x483, x19	// Restore CSR

// Testing CSR 0x484
	csrr x17, 0x484	// Read CSR
	li x23, -1
	csrrw x11, 0x484, x23	// Write all 1s to CSR
	csrrw x11, 0x484, x0	// Write all 0s to CSR
	csrrs x11, 0x484, x23	// Set all CSR bits
	csrrc x11, 0x484, x23	// Clear all CSR bits
	csrrw x11, 0x484, x17	// Restore CSR

// Testing CSR 0x485
	csrr x29, 0x485	// Read CSR
	li x9, -1
	csrrw x17, 0x485, x9	// Write all 1s to CSR
	csrrw x17, 0x485, x0	// Write all 0s to CSR
	csrrs x17, 0x485, x9	// Set all CSR bits
	csrrc x17, 0x485, x9	// Clear all CSR bits
	csrrw x17, 0x485, x29	// Restore CSR

// Testing CSR 0x486
	csrr x13, 0x486	// Read CSR
	li x15, -1
	csrrw x4, 0x486, x15	// Write all 1s to CSR
	csrrw x4, 0x486, x0	// Write all 0s to CSR
	csrrs x4, 0x486, x15	// Set all CSR bits
	csrrc x4, 0x486, x15	// Clear all CSR bits
	csrrw x4, 0x486, x13	// Restore CSR

// Testing CSR 0x487
	csrr x19, 0x487	// Read CSR
	li x1, -1
	csrrw x21, 0x487, x1	// Write all 1s to CSR
	csrrw x21, 0x487, x0	// Write all 0s to CSR
	csrrs x21, 0x487, x1	// Set all CSR bits
	csrrc x21, 0x487, x1	// Clear all CSR bits
	csrrw x21, 0x487, x19	// Restore CSR

// Testing CSR 0x488
	csrr x25, 0x488	// Read CSR
	li x14, -1
	csrrw x28, 0x488, x14	// Write all 1s to CSR
	csrrw x28, 0x488, x0	// Write all 0s to CSR
	csrrs x28, 0x488, x14	// Set all CSR bits
	csrrc x28, 0x488, x14	// Clear all CSR bits
	csrrw x28, 0x488, x25	// Restore CSR

// Testing CSR 0x489
	csrr x3, 0x489	// Read CSR
	li x12, -1
	csrrw x26, 0x489, x12	// Write all 1s to CSR
	csrrw x26, 0x489, x0	// Write all 0s to CSR
	csrrs x26, 0x489, x12	// Set all CSR bits
	csrrc x26, 0x489, x12	// Clear all CSR bits
	csrrw x26, 0x489, x3	// Restore CSR

// Testing CSR 0x48a
	csrr x10, 0x48a	// Read CSR
	li x18, -1
	csrrw x24, 0x48a, x18	// Write all 1s to CSR
	csrrw x24, 0x48a, x0	// Write all 0s to CSR
	csrrs x24, 0x48a, x18	// Set all CSR bits
	csrrc x24, 0x48a, x18	// Clear all CSR bits
	csrrw x24, 0x48a, x10	// Restore CSR

// Testing CSR 0x48b
	csrr x2, 0x48b	// Read CSR
	li x29, -1
	csrrw x28, 0x48b, x29	// Write all 1s to CSR
	csrrw x28, 0x48b, x0	// Write all 0s to CSR
	csrrs x28, 0x48b, x29	// Set all CSR bits
	csrrc x28, 0x48b, x29	// Clear all CSR bits
	csrrw x28, 0x48b, x2	// Restore CSR

// Testing CSR 0x48c
	csrr x2, 0x48c	// Read CSR
	li x12, -1
	csrrw x6, 0x48c, x12	// Write all 1s to CSR
	csrrw x6, 0x48c, x0	// Write all 0s to CSR
	csrrs x6, 0x48c, x12	// Set all CSR bits
	csrrc x6, 0x48c, x12	// Clear all CSR bits
	csrrw x6, 0x48c, x2	// Restore CSR

// Testing CSR 0x48d
	csrr x4, 0x48d	// Read CSR
	li x8, -1
	csrrw x12, 0x48d, x8	// Write all 1s to CSR
	csrrw x12, 0x48d, x0	// Write all 0s to CSR
	csrrs x12, 0x48d, x8	// Set all CSR bits
	csrrc x12, 0x48d, x8	// Clear all CSR bits
	csrrw x12, 0x48d, x4	// Restore CSR

// Testing CSR 0x48e
	csrr x17, 0x48e	// Read CSR
	li x27, -1
	csrrw x31, 0x48e, x27	// Write all 1s to CSR
	csrrw x31, 0x48e, x0	// Write all 0s to CSR
	csrrs x31, 0x48e, x27	// Set all CSR bits
	csrrc x31, 0x48e, x27	// Clear all CSR bits
	csrrw x31, 0x48e, x17	// Restore CSR

// Testing CSR 0x48f
	csrr x2, 0x48f	// Read CSR
	li x25, -1
	csrrw x11, 0x48f, x25	// Write all 1s to CSR
	csrrw x11, 0x48f, x0	// Write all 0s to CSR
	csrrs x11, 0x48f, x25	// Set all CSR bits
	csrrc x11, 0x48f, x25	// Clear all CSR bits
	csrrw x11, 0x48f, x2	// Restore CSR

// Testing CSR 0x490
	csrr x18, 0x490	// Read CSR
	li x31, -1
	csrrw x8, 0x490, x31	// Write all 1s to CSR
	csrrw x8, 0x490, x0	// Write all 0s to CSR
	csrrs x8, 0x490, x31	// Set all CSR bits
	csrrc x8, 0x490, x31	// Clear all CSR bits
	csrrw x8, 0x490, x18	// Restore CSR

// Testing CSR 0x491
	csrr x19, 0x491	// Read CSR
	li x8, -1
	csrrw x11, 0x491, x8	// Write all 1s to CSR
	csrrw x11, 0x491, x0	// Write all 0s to CSR
	csrrs x11, 0x491, x8	// Set all CSR bits
	csrrc x11, 0x491, x8	// Clear all CSR bits
	csrrw x11, 0x491, x19	// Restore CSR

// Testing CSR 0x492
	csrr x3, 0x492	// Read CSR
	li x28, -1
	csrrw x22, 0x492, x28	// Write all 1s to CSR
	csrrw x22, 0x492, x0	// Write all 0s to CSR
	csrrs x22, 0x492, x28	// Set all CSR bits
	csrrc x22, 0x492, x28	// Clear all CSR bits
	csrrw x22, 0x492, x3	// Restore CSR

// Testing CSR 0x493
	csrr x25, 0x493	// Read CSR
	li x3, -1
	csrrw x2, 0x493, x3	// Write all 1s to CSR
	csrrw x2, 0x493, x0	// Write all 0s to CSR
	csrrs x2, 0x493, x3	// Set all CSR bits
	csrrc x2, 0x493, x3	// Clear all CSR bits
	csrrw x2, 0x493, x25	// Restore CSR

// Testing CSR 0x494
	csrr x4, 0x494	// Read CSR
	li x29, -1
	csrrw x30, 0x494, x29	// Write all 1s to CSR
	csrrw x30, 0x494, x0	// Write all 0s to CSR
	csrrs x30, 0x494, x29	// Set all CSR bits
	csrrc x30, 0x494, x29	// Clear all CSR bits
	csrrw x30, 0x494, x4	// Restore CSR

// Testing CSR 0x495
	csrr x30, 0x495	// Read CSR
	li x11, -1
	csrrw x16, 0x495, x11	// Write all 1s to CSR
	csrrw x16, 0x495, x0	// Write all 0s to CSR
	csrrs x16, 0x495, x11	// Set all CSR bits
	csrrc x16, 0x495, x11	// Clear all CSR bits
	csrrw x16, 0x495, x30	// Restore CSR

// Testing CSR 0x496
	csrr x13, 0x496	// Read CSR
	li x21, -1
	csrrw x23, 0x496, x21	// Write all 1s to CSR
	csrrw x23, 0x496, x0	// Write all 0s to CSR
	csrrs x23, 0x496, x21	// Set all CSR bits
	csrrc x23, 0x496, x21	// Clear all CSR bits
	csrrw x23, 0x496, x13	// Restore CSR

// Testing CSR 0x497
	csrr x13, 0x497	// Read CSR
	li x16, -1
	csrrw x11, 0x497, x16	// Write all 1s to CSR
	csrrw x11, 0x497, x0	// Write all 0s to CSR
	csrrs x11, 0x497, x16	// Set all CSR bits
	csrrc x11, 0x497, x16	// Clear all CSR bits
	csrrw x11, 0x497, x13	// Restore CSR

// Testing CSR 0x498
	csrr x12, 0x498	// Read CSR
	li x21, -1
	csrrw x2, 0x498, x21	// Write all 1s to CSR
	csrrw x2, 0x498, x0	// Write all 0s to CSR
	csrrs x2, 0x498, x21	// Set all CSR bits
	csrrc x2, 0x498, x21	// Clear all CSR bits
	csrrw x2, 0x498, x12	// Restore CSR

// Testing CSR 0x499
	csrr x25, 0x499	// Read CSR
	li x5, -1
	csrrw x15, 0x499, x5	// Write all 1s to CSR
	csrrw x15, 0x499, x0	// Write all 0s to CSR
	csrrs x15, 0x499, x5	// Set all CSR bits
	csrrc x15, 0x499, x5	// Clear all CSR bits
	csrrw x15, 0x499, x25	// Restore CSR

// Testing CSR 0x49a
	csrr x3, 0x49a	// Read CSR
	li x18, -1
	csrrw x11, 0x49a, x18	// Write all 1s to CSR
	csrrw x11, 0x49a, x0	// Write all 0s to CSR
	csrrs x11, 0x49a, x18	// Set all CSR bits
	csrrc x11, 0x49a, x18	// Clear all CSR bits
	csrrw x11, 0x49a, x3	// Restore CSR

// Testing CSR 0x49b
	csrr x5, 0x49b	// Read CSR
	li x14, -1
	csrrw x11, 0x49b, x14	// Write all 1s to CSR
	csrrw x11, 0x49b, x0	// Write all 0s to CSR
	csrrs x11, 0x49b, x14	// Set all CSR bits
	csrrc x11, 0x49b, x14	// Clear all CSR bits
	csrrw x11, 0x49b, x5	// Restore CSR

// Testing CSR 0x49c
	csrr x2, 0x49c	// Read CSR
	li x15, -1
	csrrw x30, 0x49c, x15	// Write all 1s to CSR
	csrrw x30, 0x49c, x0	// Write all 0s to CSR
	csrrs x30, 0x49c, x15	// Set all CSR bits
	csrrc x30, 0x49c, x15	// Clear all CSR bits
	csrrw x30, 0x49c, x2	// Restore CSR

// Testing CSR 0x49d
	csrr x29, 0x49d	// Read CSR
	li x14, -1
	csrrw x20, 0x49d, x14	// Write all 1s to CSR
	csrrw x20, 0x49d, x0	// Write all 0s to CSR
	csrrs x20, 0x49d, x14	// Set all CSR bits
	csrrc x20, 0x49d, x14	// Clear all CSR bits
	csrrw x20, 0x49d, x29	// Restore CSR

// Testing CSR 0x49e
	csrr x6, 0x49e	// Read CSR
	li x12, -1
	csrrw x15, 0x49e, x12	// Write all 1s to CSR
	csrrw x15, 0x49e, x0	// Write all 0s to CSR
	csrrs x15, 0x49e, x12	// Set all CSR bits
	csrrc x15, 0x49e, x12	// Clear all CSR bits
	csrrw x15, 0x49e, x6	// Restore CSR

// Testing CSR 0x49f
	csrr x26, 0x49f	// Read CSR
	li x15, -1
	csrrw x8, 0x49f, x15	// Write all 1s to CSR
	csrrw x8, 0x49f, x0	// Write all 0s to CSR
	csrrs x8, 0x49f, x15	// Set all CSR bits
	csrrc x8, 0x49f, x15	// Clear all CSR bits
	csrrw x8, 0x49f, x26	// Restore CSR

// Testing CSR 0x4a0
	csrr x12, 0x4a0	// Read CSR
	li x19, -1
	csrrw x20, 0x4a0, x19	// Write all 1s to CSR
	csrrw x20, 0x4a0, x0	// Write all 0s to CSR
	csrrs x20, 0x4a0, x19	// Set all CSR bits
	csrrc x20, 0x4a0, x19	// Clear all CSR bits
	csrrw x20, 0x4a0, x12	// Restore CSR

// Testing CSR 0x4a1
	csrr x31, 0x4a1	// Read CSR
	li x25, -1
	csrrw x1, 0x4a1, x25	// Write all 1s to CSR
	csrrw x1, 0x4a1, x0	// Write all 0s to CSR
	csrrs x1, 0x4a1, x25	// Set all CSR bits
	csrrc x1, 0x4a1, x25	// Clear all CSR bits
	csrrw x1, 0x4a1, x31	// Restore CSR

// Testing CSR 0x4a2
	csrr x22, 0x4a2	// Read CSR
	li x19, -1
	csrrw x8, 0x4a2, x19	// Write all 1s to CSR
	csrrw x8, 0x4a2, x0	// Write all 0s to CSR
	csrrs x8, 0x4a2, x19	// Set all CSR bits
	csrrc x8, 0x4a2, x19	// Clear all CSR bits
	csrrw x8, 0x4a2, x22	// Restore CSR

// Testing CSR 0x4a3
	csrr x25, 0x4a3	// Read CSR
	li x27, -1
	csrrw x18, 0x4a3, x27	// Write all 1s to CSR
	csrrw x18, 0x4a3, x0	// Write all 0s to CSR
	csrrs x18, 0x4a3, x27	// Set all CSR bits
	csrrc x18, 0x4a3, x27	// Clear all CSR bits
	csrrw x18, 0x4a3, x25	// Restore CSR

// Testing CSR 0x4a4
	csrr x3, 0x4a4	// Read CSR
	li x8, -1
	csrrw x29, 0x4a4, x8	// Write all 1s to CSR
	csrrw x29, 0x4a4, x0	// Write all 0s to CSR
	csrrs x29, 0x4a4, x8	// Set all CSR bits
	csrrc x29, 0x4a4, x8	// Clear all CSR bits
	csrrw x29, 0x4a4, x3	// Restore CSR

// Testing CSR 0x4a5
	csrr x28, 0x4a5	// Read CSR
	li x3, -1
	csrrw x20, 0x4a5, x3	// Write all 1s to CSR
	csrrw x20, 0x4a5, x0	// Write all 0s to CSR
	csrrs x20, 0x4a5, x3	// Set all CSR bits
	csrrc x20, 0x4a5, x3	// Clear all CSR bits
	csrrw x20, 0x4a5, x28	// Restore CSR

// Testing CSR 0x4a6
	csrr x6, 0x4a6	// Read CSR
	li x14, -1
	csrrw x15, 0x4a6, x14	// Write all 1s to CSR
	csrrw x15, 0x4a6, x0	// Write all 0s to CSR
	csrrs x15, 0x4a6, x14	// Set all CSR bits
	csrrc x15, 0x4a6, x14	// Clear all CSR bits
	csrrw x15, 0x4a6, x6	// Restore CSR

// Testing CSR 0x4a7
	csrr x8, 0x4a7	// Read CSR
	li x29, -1
	csrrw x25, 0x4a7, x29	// Write all 1s to CSR
	csrrw x25, 0x4a7, x0	// Write all 0s to CSR
	csrrs x25, 0x4a7, x29	// Set all CSR bits
	csrrc x25, 0x4a7, x29	// Clear all CSR bits
	csrrw x25, 0x4a7, x8	// Restore CSR

// Testing CSR 0x4a8
	csrr x22, 0x4a8	// Read CSR
	li x10, -1
	csrrw x20, 0x4a8, x10	// Write all 1s to CSR
	csrrw x20, 0x4a8, x0	// Write all 0s to CSR
	csrrs x20, 0x4a8, x10	// Set all CSR bits
	csrrc x20, 0x4a8, x10	// Clear all CSR bits
	csrrw x20, 0x4a8, x22	// Restore CSR

// Testing CSR 0x4a9
	csrr x22, 0x4a9	// Read CSR
	li x20, -1
	csrrw x4, 0x4a9, x20	// Write all 1s to CSR
	csrrw x4, 0x4a9, x0	// Write all 0s to CSR
	csrrs x4, 0x4a9, x20	// Set all CSR bits
	csrrc x4, 0x4a9, x20	// Clear all CSR bits
	csrrw x4, 0x4a9, x22	// Restore CSR

// Testing CSR 0x4aa
	csrr x1, 0x4aa	// Read CSR
	li x16, -1
	csrrw x26, 0x4aa, x16	// Write all 1s to CSR
	csrrw x26, 0x4aa, x0	// Write all 0s to CSR
	csrrs x26, 0x4aa, x16	// Set all CSR bits
	csrrc x26, 0x4aa, x16	// Clear all CSR bits
	csrrw x26, 0x4aa, x1	// Restore CSR

// Testing CSR 0x4ab
	csrr x21, 0x4ab	// Read CSR
	li x2, -1
	csrrw x1, 0x4ab, x2	// Write all 1s to CSR
	csrrw x1, 0x4ab, x0	// Write all 0s to CSR
	csrrs x1, 0x4ab, x2	// Set all CSR bits
	csrrc x1, 0x4ab, x2	// Clear all CSR bits
	csrrw x1, 0x4ab, x21	// Restore CSR

// Testing CSR 0x4ac
	csrr x29, 0x4ac	// Read CSR
	li x5, -1
	csrrw x23, 0x4ac, x5	// Write all 1s to CSR
	csrrw x23, 0x4ac, x0	// Write all 0s to CSR
	csrrs x23, 0x4ac, x5	// Set all CSR bits
	csrrc x23, 0x4ac, x5	// Clear all CSR bits
	csrrw x23, 0x4ac, x29	// Restore CSR

// Testing CSR 0x4ad
	csrr x21, 0x4ad	// Read CSR
	li x24, -1
	csrrw x2, 0x4ad, x24	// Write all 1s to CSR
	csrrw x2, 0x4ad, x0	// Write all 0s to CSR
	csrrs x2, 0x4ad, x24	// Set all CSR bits
	csrrc x2, 0x4ad, x24	// Clear all CSR bits
	csrrw x2, 0x4ad, x21	// Restore CSR

// Testing CSR 0x4ae
	csrr x26, 0x4ae	// Read CSR
	li x23, -1
	csrrw x16, 0x4ae, x23	// Write all 1s to CSR
	csrrw x16, 0x4ae, x0	// Write all 0s to CSR
	csrrs x16, 0x4ae, x23	// Set all CSR bits
	csrrc x16, 0x4ae, x23	// Clear all CSR bits
	csrrw x16, 0x4ae, x26	// Restore CSR

// Testing CSR 0x4af
	csrr x5, 0x4af	// Read CSR
	li x7, -1
	csrrw x14, 0x4af, x7	// Write all 1s to CSR
	csrrw x14, 0x4af, x0	// Write all 0s to CSR
	csrrs x14, 0x4af, x7	// Set all CSR bits
	csrrc x14, 0x4af, x7	// Clear all CSR bits
	csrrw x14, 0x4af, x5	// Restore CSR

// Testing CSR 0x4b0
	csrr x5, 0x4b0	// Read CSR
	li x26, -1
	csrrw x29, 0x4b0, x26	// Write all 1s to CSR
	csrrw x29, 0x4b0, x0	// Write all 0s to CSR
	csrrs x29, 0x4b0, x26	// Set all CSR bits
	csrrc x29, 0x4b0, x26	// Clear all CSR bits
	csrrw x29, 0x4b0, x5	// Restore CSR

// Testing CSR 0x4b1
	csrr x21, 0x4b1	// Read CSR
	li x2, -1
	csrrw x7, 0x4b1, x2	// Write all 1s to CSR
	csrrw x7, 0x4b1, x0	// Write all 0s to CSR
	csrrs x7, 0x4b1, x2	// Set all CSR bits
	csrrc x7, 0x4b1, x2	// Clear all CSR bits
	csrrw x7, 0x4b1, x21	// Restore CSR

// Testing CSR 0x4b2
	csrr x6, 0x4b2	// Read CSR
	li x18, -1
	csrrw x23, 0x4b2, x18	// Write all 1s to CSR
	csrrw x23, 0x4b2, x0	// Write all 0s to CSR
	csrrs x23, 0x4b2, x18	// Set all CSR bits
	csrrc x23, 0x4b2, x18	// Clear all CSR bits
	csrrw x23, 0x4b2, x6	// Restore CSR

// Testing CSR 0x4b3
	csrr x1, 0x4b3	// Read CSR
	li x7, -1
	csrrw x3, 0x4b3, x7	// Write all 1s to CSR
	csrrw x3, 0x4b3, x0	// Write all 0s to CSR
	csrrs x3, 0x4b3, x7	// Set all CSR bits
	csrrc x3, 0x4b3, x7	// Clear all CSR bits
	csrrw x3, 0x4b3, x1	// Restore CSR

// Testing CSR 0x4b4
	csrr x31, 0x4b4	// Read CSR
	li x5, -1
	csrrw x18, 0x4b4, x5	// Write all 1s to CSR
	csrrw x18, 0x4b4, x0	// Write all 0s to CSR
	csrrs x18, 0x4b4, x5	// Set all CSR bits
	csrrc x18, 0x4b4, x5	// Clear all CSR bits
	csrrw x18, 0x4b4, x31	// Restore CSR

// Testing CSR 0x4b5
	csrr x25, 0x4b5	// Read CSR
	li x1, -1
	csrrw x7, 0x4b5, x1	// Write all 1s to CSR
	csrrw x7, 0x4b5, x0	// Write all 0s to CSR
	csrrs x7, 0x4b5, x1	// Set all CSR bits
	csrrc x7, 0x4b5, x1	// Clear all CSR bits
	csrrw x7, 0x4b5, x25	// Restore CSR

// Testing CSR 0x4b6
	csrr x13, 0x4b6	// Read CSR
	li x25, -1
	csrrw x21, 0x4b6, x25	// Write all 1s to CSR
	csrrw x21, 0x4b6, x0	// Write all 0s to CSR
	csrrs x21, 0x4b6, x25	// Set all CSR bits
	csrrc x21, 0x4b6, x25	// Clear all CSR bits
	csrrw x21, 0x4b6, x13	// Restore CSR

// Testing CSR 0x4b7
	csrr x31, 0x4b7	// Read CSR
	li x24, -1
	csrrw x23, 0x4b7, x24	// Write all 1s to CSR
	csrrw x23, 0x4b7, x0	// Write all 0s to CSR
	csrrs x23, 0x4b7, x24	// Set all CSR bits
	csrrc x23, 0x4b7, x24	// Clear all CSR bits
	csrrw x23, 0x4b7, x31	// Restore CSR

// Testing CSR 0x4b8
	csrr x18, 0x4b8	// Read CSR
	li x26, -1
	csrrw x22, 0x4b8, x26	// Write all 1s to CSR
	csrrw x22, 0x4b8, x0	// Write all 0s to CSR
	csrrs x22, 0x4b8, x26	// Set all CSR bits
	csrrc x22, 0x4b8, x26	// Clear all CSR bits
	csrrw x22, 0x4b8, x18	// Restore CSR

// Testing CSR 0x4b9
	csrr x26, 0x4b9	// Read CSR
	li x24, -1
	csrrw x16, 0x4b9, x24	// Write all 1s to CSR
	csrrw x16, 0x4b9, x0	// Write all 0s to CSR
	csrrs x16, 0x4b9, x24	// Set all CSR bits
	csrrc x16, 0x4b9, x24	// Clear all CSR bits
	csrrw x16, 0x4b9, x26	// Restore CSR

// Testing CSR 0x4ba
	csrr x23, 0x4ba	// Read CSR
	li x20, -1
	csrrw x1, 0x4ba, x20	// Write all 1s to CSR
	csrrw x1, 0x4ba, x0	// Write all 0s to CSR
	csrrs x1, 0x4ba, x20	// Set all CSR bits
	csrrc x1, 0x4ba, x20	// Clear all CSR bits
	csrrw x1, 0x4ba, x23	// Restore CSR

// Testing CSR 0x4bb
	csrr x23, 0x4bb	// Read CSR
	li x15, -1
	csrrw x17, 0x4bb, x15	// Write all 1s to CSR
	csrrw x17, 0x4bb, x0	// Write all 0s to CSR
	csrrs x17, 0x4bb, x15	// Set all CSR bits
	csrrc x17, 0x4bb, x15	// Clear all CSR bits
	csrrw x17, 0x4bb, x23	// Restore CSR

// Testing CSR 0x4bc
	csrr x13, 0x4bc	// Read CSR
	li x9, -1
	csrrw x26, 0x4bc, x9	// Write all 1s to CSR
	csrrw x26, 0x4bc, x0	// Write all 0s to CSR
	csrrs x26, 0x4bc, x9	// Set all CSR bits
	csrrc x26, 0x4bc, x9	// Clear all CSR bits
	csrrw x26, 0x4bc, x13	// Restore CSR

// Testing CSR 0x4bd
	csrr x1, 0x4bd	// Read CSR
	li x25, -1
	csrrw x28, 0x4bd, x25	// Write all 1s to CSR
	csrrw x28, 0x4bd, x0	// Write all 0s to CSR
	csrrs x28, 0x4bd, x25	// Set all CSR bits
	csrrc x28, 0x4bd, x25	// Clear all CSR bits
	csrrw x28, 0x4bd, x1	// Restore CSR

// Testing CSR 0x4be
	csrr x15, 0x4be	// Read CSR
	li x23, -1
	csrrw x24, 0x4be, x23	// Write all 1s to CSR
	csrrw x24, 0x4be, x0	// Write all 0s to CSR
	csrrs x24, 0x4be, x23	// Set all CSR bits
	csrrc x24, 0x4be, x23	// Clear all CSR bits
	csrrw x24, 0x4be, x15	// Restore CSR

// Testing CSR 0x4bf
	csrr x29, 0x4bf	// Read CSR
	li x6, -1
	csrrw x16, 0x4bf, x6	// Write all 1s to CSR
	csrrw x16, 0x4bf, x0	// Write all 0s to CSR
	csrrs x16, 0x4bf, x6	// Set all CSR bits
	csrrc x16, 0x4bf, x6	// Clear all CSR bits
	csrrw x16, 0x4bf, x29	// Restore CSR

// Testing CSR 0x4c0
	csrr x28, 0x4c0	// Read CSR
	li x7, -1
	csrrw x3, 0x4c0, x7	// Write all 1s to CSR
	csrrw x3, 0x4c0, x0	// Write all 0s to CSR
	csrrs x3, 0x4c0, x7	// Set all CSR bits
	csrrc x3, 0x4c0, x7	// Clear all CSR bits
	csrrw x3, 0x4c0, x28	// Restore CSR

// Testing CSR 0x4c1
	csrr x7, 0x4c1	// Read CSR
	li x15, -1
	csrrw x1, 0x4c1, x15	// Write all 1s to CSR
	csrrw x1, 0x4c1, x0	// Write all 0s to CSR
	csrrs x1, 0x4c1, x15	// Set all CSR bits
	csrrc x1, 0x4c1, x15	// Clear all CSR bits
	csrrw x1, 0x4c1, x7	// Restore CSR

// Testing CSR 0x4c2
	csrr x11, 0x4c2	// Read CSR
	li x26, -1
	csrrw x27, 0x4c2, x26	// Write all 1s to CSR
	csrrw x27, 0x4c2, x0	// Write all 0s to CSR
	csrrs x27, 0x4c2, x26	// Set all CSR bits
	csrrc x27, 0x4c2, x26	// Clear all CSR bits
	csrrw x27, 0x4c2, x11	// Restore CSR

// Testing CSR 0x4c3
	csrr x29, 0x4c3	// Read CSR
	li x13, -1
	csrrw x28, 0x4c3, x13	// Write all 1s to CSR
	csrrw x28, 0x4c3, x0	// Write all 0s to CSR
	csrrs x28, 0x4c3, x13	// Set all CSR bits
	csrrc x28, 0x4c3, x13	// Clear all CSR bits
	csrrw x28, 0x4c3, x29	// Restore CSR

// Testing CSR 0x4c4
	csrr x4, 0x4c4	// Read CSR
	li x27, -1
	csrrw x22, 0x4c4, x27	// Write all 1s to CSR
	csrrw x22, 0x4c4, x0	// Write all 0s to CSR
	csrrs x22, 0x4c4, x27	// Set all CSR bits
	csrrc x22, 0x4c4, x27	// Clear all CSR bits
	csrrw x22, 0x4c4, x4	// Restore CSR

// Testing CSR 0x4c5
	csrr x13, 0x4c5	// Read CSR
	li x6, -1
	csrrw x30, 0x4c5, x6	// Write all 1s to CSR
	csrrw x30, 0x4c5, x0	// Write all 0s to CSR
	csrrs x30, 0x4c5, x6	// Set all CSR bits
	csrrc x30, 0x4c5, x6	// Clear all CSR bits
	csrrw x30, 0x4c5, x13	// Restore CSR

// Testing CSR 0x4c6
	csrr x20, 0x4c6	// Read CSR
	li x24, -1
	csrrw x18, 0x4c6, x24	// Write all 1s to CSR
	csrrw x18, 0x4c6, x0	// Write all 0s to CSR
	csrrs x18, 0x4c6, x24	// Set all CSR bits
	csrrc x18, 0x4c6, x24	// Clear all CSR bits
	csrrw x18, 0x4c6, x20	// Restore CSR

// Testing CSR 0x4c7
	csrr x24, 0x4c7	// Read CSR
	li x14, -1
	csrrw x10, 0x4c7, x14	// Write all 1s to CSR
	csrrw x10, 0x4c7, x0	// Write all 0s to CSR
	csrrs x10, 0x4c7, x14	// Set all CSR bits
	csrrc x10, 0x4c7, x14	// Clear all CSR bits
	csrrw x10, 0x4c7, x24	// Restore CSR

// Testing CSR 0x4c8
	csrr x6, 0x4c8	// Read CSR
	li x31, -1
	csrrw x30, 0x4c8, x31	// Write all 1s to CSR
	csrrw x30, 0x4c8, x0	// Write all 0s to CSR
	csrrs x30, 0x4c8, x31	// Set all CSR bits
	csrrc x30, 0x4c8, x31	// Clear all CSR bits
	csrrw x30, 0x4c8, x6	// Restore CSR

// Testing CSR 0x4c9
	csrr x14, 0x4c9	// Read CSR
	li x18, -1
	csrrw x9, 0x4c9, x18	// Write all 1s to CSR
	csrrw x9, 0x4c9, x0	// Write all 0s to CSR
	csrrs x9, 0x4c9, x18	// Set all CSR bits
	csrrc x9, 0x4c9, x18	// Clear all CSR bits
	csrrw x9, 0x4c9, x14	// Restore CSR

// Testing CSR 0x4ca
	csrr x30, 0x4ca	// Read CSR
	li x21, -1
	csrrw x17, 0x4ca, x21	// Write all 1s to CSR
	csrrw x17, 0x4ca, x0	// Write all 0s to CSR
	csrrs x17, 0x4ca, x21	// Set all CSR bits
	csrrc x17, 0x4ca, x21	// Clear all CSR bits
	csrrw x17, 0x4ca, x30	// Restore CSR

// Testing CSR 0x4cb
	csrr x27, 0x4cb	// Read CSR
	li x4, -1
	csrrw x30, 0x4cb, x4	// Write all 1s to CSR
	csrrw x30, 0x4cb, x0	// Write all 0s to CSR
	csrrs x30, 0x4cb, x4	// Set all CSR bits
	csrrc x30, 0x4cb, x4	// Clear all CSR bits
	csrrw x30, 0x4cb, x27	// Restore CSR

// Testing CSR 0x4cc
	csrr x26, 0x4cc	// Read CSR
	li x14, -1
	csrrw x27, 0x4cc, x14	// Write all 1s to CSR
	csrrw x27, 0x4cc, x0	// Write all 0s to CSR
	csrrs x27, 0x4cc, x14	// Set all CSR bits
	csrrc x27, 0x4cc, x14	// Clear all CSR bits
	csrrw x27, 0x4cc, x26	// Restore CSR

// Testing CSR 0x4cd
	csrr x24, 0x4cd	// Read CSR
	li x12, -1
	csrrw x3, 0x4cd, x12	// Write all 1s to CSR
	csrrw x3, 0x4cd, x0	// Write all 0s to CSR
	csrrs x3, 0x4cd, x12	// Set all CSR bits
	csrrc x3, 0x4cd, x12	// Clear all CSR bits
	csrrw x3, 0x4cd, x24	// Restore CSR

// Testing CSR 0x4ce
	csrr x30, 0x4ce	// Read CSR
	li x21, -1
	csrrw x1, 0x4ce, x21	// Write all 1s to CSR
	csrrw x1, 0x4ce, x0	// Write all 0s to CSR
	csrrs x1, 0x4ce, x21	// Set all CSR bits
	csrrc x1, 0x4ce, x21	// Clear all CSR bits
	csrrw x1, 0x4ce, x30	// Restore CSR

// Testing CSR 0x4cf
	csrr x25, 0x4cf	// Read CSR
	li x18, -1
	csrrw x16, 0x4cf, x18	// Write all 1s to CSR
	csrrw x16, 0x4cf, x0	// Write all 0s to CSR
	csrrs x16, 0x4cf, x18	// Set all CSR bits
	csrrc x16, 0x4cf, x18	// Clear all CSR bits
	csrrw x16, 0x4cf, x25	// Restore CSR

// Testing CSR 0x4d0
	csrr x10, 0x4d0	// Read CSR
	li x24, -1
	csrrw x13, 0x4d0, x24	// Write all 1s to CSR
	csrrw x13, 0x4d0, x0	// Write all 0s to CSR
	csrrs x13, 0x4d0, x24	// Set all CSR bits
	csrrc x13, 0x4d0, x24	// Clear all CSR bits
	csrrw x13, 0x4d0, x10	// Restore CSR

// Testing CSR 0x4d1
	csrr x19, 0x4d1	// Read CSR
	li x15, -1
	csrrw x21, 0x4d1, x15	// Write all 1s to CSR
	csrrw x21, 0x4d1, x0	// Write all 0s to CSR
	csrrs x21, 0x4d1, x15	// Set all CSR bits
	csrrc x21, 0x4d1, x15	// Clear all CSR bits
	csrrw x21, 0x4d1, x19	// Restore CSR

// Testing CSR 0x4d2
	csrr x16, 0x4d2	// Read CSR
	li x12, -1
	csrrw x26, 0x4d2, x12	// Write all 1s to CSR
	csrrw x26, 0x4d2, x0	// Write all 0s to CSR
	csrrs x26, 0x4d2, x12	// Set all CSR bits
	csrrc x26, 0x4d2, x12	// Clear all CSR bits
	csrrw x26, 0x4d2, x16	// Restore CSR

// Testing CSR 0x4d3
	csrr x30, 0x4d3	// Read CSR
	li x16, -1
	csrrw x17, 0x4d3, x16	// Write all 1s to CSR
	csrrw x17, 0x4d3, x0	// Write all 0s to CSR
	csrrs x17, 0x4d3, x16	// Set all CSR bits
	csrrc x17, 0x4d3, x16	// Clear all CSR bits
	csrrw x17, 0x4d3, x30	// Restore CSR

// Testing CSR 0x4d4
	csrr x17, 0x4d4	// Read CSR
	li x8, -1
	csrrw x1, 0x4d4, x8	// Write all 1s to CSR
	csrrw x1, 0x4d4, x0	// Write all 0s to CSR
	csrrs x1, 0x4d4, x8	// Set all CSR bits
	csrrc x1, 0x4d4, x8	// Clear all CSR bits
	csrrw x1, 0x4d4, x17	// Restore CSR

// Testing CSR 0x4d5
	csrr x29, 0x4d5	// Read CSR
	li x12, -1
	csrrw x8, 0x4d5, x12	// Write all 1s to CSR
	csrrw x8, 0x4d5, x0	// Write all 0s to CSR
	csrrs x8, 0x4d5, x12	// Set all CSR bits
	csrrc x8, 0x4d5, x12	// Clear all CSR bits
	csrrw x8, 0x4d5, x29	// Restore CSR

// Testing CSR 0x4d6
	csrr x27, 0x4d6	// Read CSR
	li x8, -1
	csrrw x10, 0x4d6, x8	// Write all 1s to CSR
	csrrw x10, 0x4d6, x0	// Write all 0s to CSR
	csrrs x10, 0x4d6, x8	// Set all CSR bits
	csrrc x10, 0x4d6, x8	// Clear all CSR bits
	csrrw x10, 0x4d6, x27	// Restore CSR

// Testing CSR 0x4d7
	csrr x31, 0x4d7	// Read CSR
	li x29, -1
	csrrw x9, 0x4d7, x29	// Write all 1s to CSR
	csrrw x9, 0x4d7, x0	// Write all 0s to CSR
	csrrs x9, 0x4d7, x29	// Set all CSR bits
	csrrc x9, 0x4d7, x29	// Clear all CSR bits
	csrrw x9, 0x4d7, x31	// Restore CSR

// Testing CSR 0x4d8
	csrr x14, 0x4d8	// Read CSR
	li x10, -1
	csrrw x9, 0x4d8, x10	// Write all 1s to CSR
	csrrw x9, 0x4d8, x0	// Write all 0s to CSR
	csrrs x9, 0x4d8, x10	// Set all CSR bits
	csrrc x9, 0x4d8, x10	// Clear all CSR bits
	csrrw x9, 0x4d8, x14	// Restore CSR

// Testing CSR 0x4d9
	csrr x5, 0x4d9	// Read CSR
	li x1, -1
	csrrw x8, 0x4d9, x1	// Write all 1s to CSR
	csrrw x8, 0x4d9, x0	// Write all 0s to CSR
	csrrs x8, 0x4d9, x1	// Set all CSR bits
	csrrc x8, 0x4d9, x1	// Clear all CSR bits
	csrrw x8, 0x4d9, x5	// Restore CSR

// Testing CSR 0x4da
	csrr x5, 0x4da	// Read CSR
	li x20, -1
	csrrw x16, 0x4da, x20	// Write all 1s to CSR
	csrrw x16, 0x4da, x0	// Write all 0s to CSR
	csrrs x16, 0x4da, x20	// Set all CSR bits
	csrrc x16, 0x4da, x20	// Clear all CSR bits
	csrrw x16, 0x4da, x5	// Restore CSR

// Testing CSR 0x4db
	csrr x7, 0x4db	// Read CSR
	li x18, -1
	csrrw x28, 0x4db, x18	// Write all 1s to CSR
	csrrw x28, 0x4db, x0	// Write all 0s to CSR
	csrrs x28, 0x4db, x18	// Set all CSR bits
	csrrc x28, 0x4db, x18	// Clear all CSR bits
	csrrw x28, 0x4db, x7	// Restore CSR

// Testing CSR 0x4dc
	csrr x22, 0x4dc	// Read CSR
	li x16, -1
	csrrw x29, 0x4dc, x16	// Write all 1s to CSR
	csrrw x29, 0x4dc, x0	// Write all 0s to CSR
	csrrs x29, 0x4dc, x16	// Set all CSR bits
	csrrc x29, 0x4dc, x16	// Clear all CSR bits
	csrrw x29, 0x4dc, x22	// Restore CSR

// Testing CSR 0x4dd
	csrr x31, 0x4dd	// Read CSR
	li x16, -1
	csrrw x2, 0x4dd, x16	// Write all 1s to CSR
	csrrw x2, 0x4dd, x0	// Write all 0s to CSR
	csrrs x2, 0x4dd, x16	// Set all CSR bits
	csrrc x2, 0x4dd, x16	// Clear all CSR bits
	csrrw x2, 0x4dd, x31	// Restore CSR

// Testing CSR 0x4de
	csrr x20, 0x4de	// Read CSR
	li x22, -1
	csrrw x18, 0x4de, x22	// Write all 1s to CSR
	csrrw x18, 0x4de, x0	// Write all 0s to CSR
	csrrs x18, 0x4de, x22	// Set all CSR bits
	csrrc x18, 0x4de, x22	// Clear all CSR bits
	csrrw x18, 0x4de, x20	// Restore CSR

// Testing CSR 0x4df
	csrr x16, 0x4df	// Read CSR
	li x28, -1
	csrrw x2, 0x4df, x28	// Write all 1s to CSR
	csrrw x2, 0x4df, x0	// Write all 0s to CSR
	csrrs x2, 0x4df, x28	// Set all CSR bits
	csrrc x2, 0x4df, x28	// Clear all CSR bits
	csrrw x2, 0x4df, x16	// Restore CSR

// Testing CSR 0x4e0
	csrr x1, 0x4e0	// Read CSR
	li x23, -1
	csrrw x24, 0x4e0, x23	// Write all 1s to CSR
	csrrw x24, 0x4e0, x0	// Write all 0s to CSR
	csrrs x24, 0x4e0, x23	// Set all CSR bits
	csrrc x24, 0x4e0, x23	// Clear all CSR bits
	csrrw x24, 0x4e0, x1	// Restore CSR

// Testing CSR 0x4e1
	csrr x20, 0x4e1	// Read CSR
	li x4, -1
	csrrw x22, 0x4e1, x4	// Write all 1s to CSR
	csrrw x22, 0x4e1, x0	// Write all 0s to CSR
	csrrs x22, 0x4e1, x4	// Set all CSR bits
	csrrc x22, 0x4e1, x4	// Clear all CSR bits
	csrrw x22, 0x4e1, x20	// Restore CSR

// Testing CSR 0x4e2
	csrr x28, 0x4e2	// Read CSR
	li x8, -1
	csrrw x19, 0x4e2, x8	// Write all 1s to CSR
	csrrw x19, 0x4e2, x0	// Write all 0s to CSR
	csrrs x19, 0x4e2, x8	// Set all CSR bits
	csrrc x19, 0x4e2, x8	// Clear all CSR bits
	csrrw x19, 0x4e2, x28	// Restore CSR

// Testing CSR 0x4e3
	csrr x3, 0x4e3	// Read CSR
	li x18, -1
	csrrw x8, 0x4e3, x18	// Write all 1s to CSR
	csrrw x8, 0x4e3, x0	// Write all 0s to CSR
	csrrs x8, 0x4e3, x18	// Set all CSR bits
	csrrc x8, 0x4e3, x18	// Clear all CSR bits
	csrrw x8, 0x4e3, x3	// Restore CSR

// Testing CSR 0x4e4
	csrr x5, 0x4e4	// Read CSR
	li x14, -1
	csrrw x19, 0x4e4, x14	// Write all 1s to CSR
	csrrw x19, 0x4e4, x0	// Write all 0s to CSR
	csrrs x19, 0x4e4, x14	// Set all CSR bits
	csrrc x19, 0x4e4, x14	// Clear all CSR bits
	csrrw x19, 0x4e4, x5	// Restore CSR

// Testing CSR 0x4e5
	csrr x22, 0x4e5	// Read CSR
	li x21, -1
	csrrw x24, 0x4e5, x21	// Write all 1s to CSR
	csrrw x24, 0x4e5, x0	// Write all 0s to CSR
	csrrs x24, 0x4e5, x21	// Set all CSR bits
	csrrc x24, 0x4e5, x21	// Clear all CSR bits
	csrrw x24, 0x4e5, x22	// Restore CSR

// Testing CSR 0x4e6
	csrr x25, 0x4e6	// Read CSR
	li x10, -1
	csrrw x26, 0x4e6, x10	// Write all 1s to CSR
	csrrw x26, 0x4e6, x0	// Write all 0s to CSR
	csrrs x26, 0x4e6, x10	// Set all CSR bits
	csrrc x26, 0x4e6, x10	// Clear all CSR bits
	csrrw x26, 0x4e6, x25	// Restore CSR

// Testing CSR 0x4e7
	csrr x27, 0x4e7	// Read CSR
	li x5, -1
	csrrw x21, 0x4e7, x5	// Write all 1s to CSR
	csrrw x21, 0x4e7, x0	// Write all 0s to CSR
	csrrs x21, 0x4e7, x5	// Set all CSR bits
	csrrc x21, 0x4e7, x5	// Clear all CSR bits
	csrrw x21, 0x4e7, x27	// Restore CSR

// Testing CSR 0x4e8
	csrr x21, 0x4e8	// Read CSR
	li x7, -1
	csrrw x9, 0x4e8, x7	// Write all 1s to CSR
	csrrw x9, 0x4e8, x0	// Write all 0s to CSR
	csrrs x9, 0x4e8, x7	// Set all CSR bits
	csrrc x9, 0x4e8, x7	// Clear all CSR bits
	csrrw x9, 0x4e8, x21	// Restore CSR

// Testing CSR 0x4e9
	csrr x20, 0x4e9	// Read CSR
	li x30, -1
	csrrw x29, 0x4e9, x30	// Write all 1s to CSR
	csrrw x29, 0x4e9, x0	// Write all 0s to CSR
	csrrs x29, 0x4e9, x30	// Set all CSR bits
	csrrc x29, 0x4e9, x30	// Clear all CSR bits
	csrrw x29, 0x4e9, x20	// Restore CSR

// Testing CSR 0x4ea
	csrr x26, 0x4ea	// Read CSR
	li x27, -1
	csrrw x19, 0x4ea, x27	// Write all 1s to CSR
	csrrw x19, 0x4ea, x0	// Write all 0s to CSR
	csrrs x19, 0x4ea, x27	// Set all CSR bits
	csrrc x19, 0x4ea, x27	// Clear all CSR bits
	csrrw x19, 0x4ea, x26	// Restore CSR

// Testing CSR 0x4eb
	csrr x15, 0x4eb	// Read CSR
	li x10, -1
	csrrw x9, 0x4eb, x10	// Write all 1s to CSR
	csrrw x9, 0x4eb, x0	// Write all 0s to CSR
	csrrs x9, 0x4eb, x10	// Set all CSR bits
	csrrc x9, 0x4eb, x10	// Clear all CSR bits
	csrrw x9, 0x4eb, x15	// Restore CSR

// Testing CSR 0x4ec
	csrr x5, 0x4ec	// Read CSR
	li x22, -1
	csrrw x9, 0x4ec, x22	// Write all 1s to CSR
	csrrw x9, 0x4ec, x0	// Write all 0s to CSR
	csrrs x9, 0x4ec, x22	// Set all CSR bits
	csrrc x9, 0x4ec, x22	// Clear all CSR bits
	csrrw x9, 0x4ec, x5	// Restore CSR

// Testing CSR 0x4ed
	csrr x8, 0x4ed	// Read CSR
	li x18, -1
	csrrw x23, 0x4ed, x18	// Write all 1s to CSR
	csrrw x23, 0x4ed, x0	// Write all 0s to CSR
	csrrs x23, 0x4ed, x18	// Set all CSR bits
	csrrc x23, 0x4ed, x18	// Clear all CSR bits
	csrrw x23, 0x4ed, x8	// Restore CSR

// Testing CSR 0x4ee
	csrr x14, 0x4ee	// Read CSR
	li x7, -1
	csrrw x8, 0x4ee, x7	// Write all 1s to CSR
	csrrw x8, 0x4ee, x0	// Write all 0s to CSR
	csrrs x8, 0x4ee, x7	// Set all CSR bits
	csrrc x8, 0x4ee, x7	// Clear all CSR bits
	csrrw x8, 0x4ee, x14	// Restore CSR

// Testing CSR 0x4ef
	csrr x27, 0x4ef	// Read CSR
	li x22, -1
	csrrw x2, 0x4ef, x22	// Write all 1s to CSR
	csrrw x2, 0x4ef, x0	// Write all 0s to CSR
	csrrs x2, 0x4ef, x22	// Set all CSR bits
	csrrc x2, 0x4ef, x22	// Clear all CSR bits
	csrrw x2, 0x4ef, x27	// Restore CSR

// Testing CSR 0x4f0
	csrr x17, 0x4f0	// Read CSR
	li x25, -1
	csrrw x5, 0x4f0, x25	// Write all 1s to CSR
	csrrw x5, 0x4f0, x0	// Write all 0s to CSR
	csrrs x5, 0x4f0, x25	// Set all CSR bits
	csrrc x5, 0x4f0, x25	// Clear all CSR bits
	csrrw x5, 0x4f0, x17	// Restore CSR

// Testing CSR 0x4f1
	csrr x28, 0x4f1	// Read CSR
	li x9, -1
	csrrw x19, 0x4f1, x9	// Write all 1s to CSR
	csrrw x19, 0x4f1, x0	// Write all 0s to CSR
	csrrs x19, 0x4f1, x9	// Set all CSR bits
	csrrc x19, 0x4f1, x9	// Clear all CSR bits
	csrrw x19, 0x4f1, x28	// Restore CSR

// Testing CSR 0x4f2
	csrr x12, 0x4f2	// Read CSR
	li x8, -1
	csrrw x9, 0x4f2, x8	// Write all 1s to CSR
	csrrw x9, 0x4f2, x0	// Write all 0s to CSR
	csrrs x9, 0x4f2, x8	// Set all CSR bits
	csrrc x9, 0x4f2, x8	// Clear all CSR bits
	csrrw x9, 0x4f2, x12	// Restore CSR

// Testing CSR 0x4f3
	csrr x30, 0x4f3	// Read CSR
	li x31, -1
	csrrw x26, 0x4f3, x31	// Write all 1s to CSR
	csrrw x26, 0x4f3, x0	// Write all 0s to CSR
	csrrs x26, 0x4f3, x31	// Set all CSR bits
	csrrc x26, 0x4f3, x31	// Clear all CSR bits
	csrrw x26, 0x4f3, x30	// Restore CSR

// Testing CSR 0x4f4
	csrr x8, 0x4f4	// Read CSR
	li x28, -1
	csrrw x26, 0x4f4, x28	// Write all 1s to CSR
	csrrw x26, 0x4f4, x0	// Write all 0s to CSR
	csrrs x26, 0x4f4, x28	// Set all CSR bits
	csrrc x26, 0x4f4, x28	// Clear all CSR bits
	csrrw x26, 0x4f4, x8	// Restore CSR

// Testing CSR 0x4f5
	csrr x24, 0x4f5	// Read CSR
	li x1, -1
	csrrw x17, 0x4f5, x1	// Write all 1s to CSR
	csrrw x17, 0x4f5, x0	// Write all 0s to CSR
	csrrs x17, 0x4f5, x1	// Set all CSR bits
	csrrc x17, 0x4f5, x1	// Clear all CSR bits
	csrrw x17, 0x4f5, x24	// Restore CSR

// Testing CSR 0x4f6
	csrr x20, 0x4f6	// Read CSR
	li x23, -1
	csrrw x3, 0x4f6, x23	// Write all 1s to CSR
	csrrw x3, 0x4f6, x0	// Write all 0s to CSR
	csrrs x3, 0x4f6, x23	// Set all CSR bits
	csrrc x3, 0x4f6, x23	// Clear all CSR bits
	csrrw x3, 0x4f6, x20	// Restore CSR

// Testing CSR 0x4f7
	csrr x16, 0x4f7	// Read CSR
	li x9, -1
	csrrw x18, 0x4f7, x9	// Write all 1s to CSR
	csrrw x18, 0x4f7, x0	// Write all 0s to CSR
	csrrs x18, 0x4f7, x9	// Set all CSR bits
	csrrc x18, 0x4f7, x9	// Clear all CSR bits
	csrrw x18, 0x4f7, x16	// Restore CSR

// Testing CSR 0x4f8
	csrr x7, 0x4f8	// Read CSR
	li x1, -1
	csrrw x12, 0x4f8, x1	// Write all 1s to CSR
	csrrw x12, 0x4f8, x0	// Write all 0s to CSR
	csrrs x12, 0x4f8, x1	// Set all CSR bits
	csrrc x12, 0x4f8, x1	// Clear all CSR bits
	csrrw x12, 0x4f8, x7	// Restore CSR

// Testing CSR 0x4f9
	csrr x13, 0x4f9	// Read CSR
	li x14, -1
	csrrw x15, 0x4f9, x14	// Write all 1s to CSR
	csrrw x15, 0x4f9, x0	// Write all 0s to CSR
	csrrs x15, 0x4f9, x14	// Set all CSR bits
	csrrc x15, 0x4f9, x14	// Clear all CSR bits
	csrrw x15, 0x4f9, x13	// Restore CSR

// Testing CSR 0x4fa
	csrr x18, 0x4fa	// Read CSR
	li x12, -1
	csrrw x14, 0x4fa, x12	// Write all 1s to CSR
	csrrw x14, 0x4fa, x0	// Write all 0s to CSR
	csrrs x14, 0x4fa, x12	// Set all CSR bits
	csrrc x14, 0x4fa, x12	// Clear all CSR bits
	csrrw x14, 0x4fa, x18	// Restore CSR

// Testing CSR 0x4fb
	csrr x23, 0x4fb	// Read CSR
	li x29, -1
	csrrw x25, 0x4fb, x29	// Write all 1s to CSR
	csrrw x25, 0x4fb, x0	// Write all 0s to CSR
	csrrs x25, 0x4fb, x29	// Set all CSR bits
	csrrc x25, 0x4fb, x29	// Clear all CSR bits
	csrrw x25, 0x4fb, x23	// Restore CSR

// Testing CSR 0x4fc
	csrr x26, 0x4fc	// Read CSR
	li x24, -1
	csrrw x25, 0x4fc, x24	// Write all 1s to CSR
	csrrw x25, 0x4fc, x0	// Write all 0s to CSR
	csrrs x25, 0x4fc, x24	// Set all CSR bits
	csrrc x25, 0x4fc, x24	// Clear all CSR bits
	csrrw x25, 0x4fc, x26	// Restore CSR

// Testing CSR 0x4fd
	csrr x9, 0x4fd	// Read CSR
	li x10, -1
	csrrw x18, 0x4fd, x10	// Write all 1s to CSR
	csrrw x18, 0x4fd, x0	// Write all 0s to CSR
	csrrs x18, 0x4fd, x10	// Set all CSR bits
	csrrc x18, 0x4fd, x10	// Clear all CSR bits
	csrrw x18, 0x4fd, x9	// Restore CSR

// Testing CSR 0x4fe
	csrr x28, 0x4fe	// Read CSR
	li x22, -1
	csrrw x11, 0x4fe, x22	// Write all 1s to CSR
	csrrw x11, 0x4fe, x0	// Write all 0s to CSR
	csrrs x11, 0x4fe, x22	// Set all CSR bits
	csrrc x11, 0x4fe, x22	// Clear all CSR bits
	csrrw x11, 0x4fe, x28	// Restore CSR

// Testing CSR 0x4ff
	csrr x19, 0x4ff	// Read CSR
	li x10, -1
	csrrw x1, 0x4ff, x10	// Write all 1s to CSR
	csrrw x1, 0x4ff, x0	// Write all 0s to CSR
	csrrs x1, 0x4ff, x10	// Set all CSR bits
	csrrc x1, 0x4ff, x10	// Clear all CSR bits
	csrrw x1, 0x4ff, x19	// Restore CSR

// Testing CSR 0x500
	csrr x24, 0x500	// Read CSR
	li x27, -1
	csrrw x1, 0x500, x27	// Write all 1s to CSR
	csrrw x1, 0x500, x0	// Write all 0s to CSR
	csrrs x1, 0x500, x27	// Set all CSR bits
	csrrc x1, 0x500, x27	// Clear all CSR bits
	csrrw x1, 0x500, x24	// Restore CSR

// Testing CSR 0x501
	csrr x12, 0x501	// Read CSR
	li x23, -1
	csrrw x4, 0x501, x23	// Write all 1s to CSR
	csrrw x4, 0x501, x0	// Write all 0s to CSR
	csrrs x4, 0x501, x23	// Set all CSR bits
	csrrc x4, 0x501, x23	// Clear all CSR bits
	csrrw x4, 0x501, x12	// Restore CSR

// Testing CSR 0x502
	csrr x13, 0x502	// Read CSR
	li x27, -1
	csrrw x12, 0x502, x27	// Write all 1s to CSR
	csrrw x12, 0x502, x0	// Write all 0s to CSR
	csrrs x12, 0x502, x27	// Set all CSR bits
	csrrc x12, 0x502, x27	// Clear all CSR bits
	csrrw x12, 0x502, x13	// Restore CSR

// Testing CSR 0x503
	csrr x29, 0x503	// Read CSR
	li x20, -1
	csrrw x16, 0x503, x20	// Write all 1s to CSR
	csrrw x16, 0x503, x0	// Write all 0s to CSR
	csrrs x16, 0x503, x20	// Set all CSR bits
	csrrc x16, 0x503, x20	// Clear all CSR bits
	csrrw x16, 0x503, x29	// Restore CSR

// Testing CSR 0x504
	csrr x26, 0x504	// Read CSR
	li x16, -1
	csrrw x23, 0x504, x16	// Write all 1s to CSR
	csrrw x23, 0x504, x0	// Write all 0s to CSR
	csrrs x23, 0x504, x16	// Set all CSR bits
	csrrc x23, 0x504, x16	// Clear all CSR bits
	csrrw x23, 0x504, x26	// Restore CSR

// Testing CSR 0x505
	csrr x12, 0x505	// Read CSR
	li x18, -1
	csrrw x26, 0x505, x18	// Write all 1s to CSR
	csrrw x26, 0x505, x0	// Write all 0s to CSR
	csrrs x26, 0x505, x18	// Set all CSR bits
	csrrc x26, 0x505, x18	// Clear all CSR bits
	csrrw x26, 0x505, x12	// Restore CSR

// Testing CSR 0x506
	csrr x5, 0x506	// Read CSR
	li x6, -1
	csrrw x1, 0x506, x6	// Write all 1s to CSR
	csrrw x1, 0x506, x0	// Write all 0s to CSR
	csrrs x1, 0x506, x6	// Set all CSR bits
	csrrc x1, 0x506, x6	// Clear all CSR bits
	csrrw x1, 0x506, x5	// Restore CSR

// Testing CSR 0x507
	csrr x13, 0x507	// Read CSR
	li x19, -1
	csrrw x8, 0x507, x19	// Write all 1s to CSR
	csrrw x8, 0x507, x0	// Write all 0s to CSR
	csrrs x8, 0x507, x19	// Set all CSR bits
	csrrc x8, 0x507, x19	// Clear all CSR bits
	csrrw x8, 0x507, x13	// Restore CSR

// Testing CSR 0x508
	csrr x27, 0x508	// Read CSR
	li x4, -1
	csrrw x25, 0x508, x4	// Write all 1s to CSR
	csrrw x25, 0x508, x0	// Write all 0s to CSR
	csrrs x25, 0x508, x4	// Set all CSR bits
	csrrc x25, 0x508, x4	// Clear all CSR bits
	csrrw x25, 0x508, x27	// Restore CSR

// Testing CSR 0x509
	csrr x5, 0x509	// Read CSR
	li x29, -1
	csrrw x30, 0x509, x29	// Write all 1s to CSR
	csrrw x30, 0x509, x0	// Write all 0s to CSR
	csrrs x30, 0x509, x29	// Set all CSR bits
	csrrc x30, 0x509, x29	// Clear all CSR bits
	csrrw x30, 0x509, x5	// Restore CSR

// Testing CSR 0x50a
	csrr x26, 0x50a	// Read CSR
	li x29, -1
	csrrw x7, 0x50a, x29	// Write all 1s to CSR
	csrrw x7, 0x50a, x0	// Write all 0s to CSR
	csrrs x7, 0x50a, x29	// Set all CSR bits
	csrrc x7, 0x50a, x29	// Clear all CSR bits
	csrrw x7, 0x50a, x26	// Restore CSR

// Testing CSR 0x50b
	csrr x10, 0x50b	// Read CSR
	li x9, -1
	csrrw x15, 0x50b, x9	// Write all 1s to CSR
	csrrw x15, 0x50b, x0	// Write all 0s to CSR
	csrrs x15, 0x50b, x9	// Set all CSR bits
	csrrc x15, 0x50b, x9	// Clear all CSR bits
	csrrw x15, 0x50b, x10	// Restore CSR

// Testing CSR 0x50c
	csrr x20, 0x50c	// Read CSR
	li x24, -1
	csrrw x9, 0x50c, x24	// Write all 1s to CSR
	csrrw x9, 0x50c, x0	// Write all 0s to CSR
	csrrs x9, 0x50c, x24	// Set all CSR bits
	csrrc x9, 0x50c, x24	// Clear all CSR bits
	csrrw x9, 0x50c, x20	// Restore CSR

// Testing CSR 0x50d
	csrr x8, 0x50d	// Read CSR
	li x10, -1
	csrrw x2, 0x50d, x10	// Write all 1s to CSR
	csrrw x2, 0x50d, x0	// Write all 0s to CSR
	csrrs x2, 0x50d, x10	// Set all CSR bits
	csrrc x2, 0x50d, x10	// Clear all CSR bits
	csrrw x2, 0x50d, x8	// Restore CSR

// Testing CSR 0x50e
	csrr x17, 0x50e	// Read CSR
	li x5, -1
	csrrw x26, 0x50e, x5	// Write all 1s to CSR
	csrrw x26, 0x50e, x0	// Write all 0s to CSR
	csrrs x26, 0x50e, x5	// Set all CSR bits
	csrrc x26, 0x50e, x5	// Clear all CSR bits
	csrrw x26, 0x50e, x17	// Restore CSR

// Testing CSR 0x50f
	csrr x8, 0x50f	// Read CSR
	li x20, -1
	csrrw x12, 0x50f, x20	// Write all 1s to CSR
	csrrw x12, 0x50f, x0	// Write all 0s to CSR
	csrrs x12, 0x50f, x20	// Set all CSR bits
	csrrc x12, 0x50f, x20	// Clear all CSR bits
	csrrw x12, 0x50f, x8	// Restore CSR

// Testing CSR 0x510
	csrr x31, 0x510	// Read CSR
	li x29, -1
	csrrw x11, 0x510, x29	// Write all 1s to CSR
	csrrw x11, 0x510, x0	// Write all 0s to CSR
	csrrs x11, 0x510, x29	// Set all CSR bits
	csrrc x11, 0x510, x29	// Clear all CSR bits
	csrrw x11, 0x510, x31	// Restore CSR

// Testing CSR 0x511
	csrr x27, 0x511	// Read CSR
	li x26, -1
	csrrw x22, 0x511, x26	// Write all 1s to CSR
	csrrw x22, 0x511, x0	// Write all 0s to CSR
	csrrs x22, 0x511, x26	// Set all CSR bits
	csrrc x22, 0x511, x26	// Clear all CSR bits
	csrrw x22, 0x511, x27	// Restore CSR

// Testing CSR 0x512
	csrr x19, 0x512	// Read CSR
	li x7, -1
	csrrw x16, 0x512, x7	// Write all 1s to CSR
	csrrw x16, 0x512, x0	// Write all 0s to CSR
	csrrs x16, 0x512, x7	// Set all CSR bits
	csrrc x16, 0x512, x7	// Clear all CSR bits
	csrrw x16, 0x512, x19	// Restore CSR

// Testing CSR 0x513
	csrr x4, 0x513	// Read CSR
	li x21, -1
	csrrw x16, 0x513, x21	// Write all 1s to CSR
	csrrw x16, 0x513, x0	// Write all 0s to CSR
	csrrs x16, 0x513, x21	// Set all CSR bits
	csrrc x16, 0x513, x21	// Clear all CSR bits
	csrrw x16, 0x513, x4	// Restore CSR

// Testing CSR 0x514
	csrr x9, 0x514	// Read CSR
	li x7, -1
	csrrw x31, 0x514, x7	// Write all 1s to CSR
	csrrw x31, 0x514, x0	// Write all 0s to CSR
	csrrs x31, 0x514, x7	// Set all CSR bits
	csrrc x31, 0x514, x7	// Clear all CSR bits
	csrrw x31, 0x514, x9	// Restore CSR

// Testing CSR 0x515
	csrr x13, 0x515	// Read CSR
	li x14, -1
	csrrw x2, 0x515, x14	// Write all 1s to CSR
	csrrw x2, 0x515, x0	// Write all 0s to CSR
	csrrs x2, 0x515, x14	// Set all CSR bits
	csrrc x2, 0x515, x14	// Clear all CSR bits
	csrrw x2, 0x515, x13	// Restore CSR

// Testing CSR 0x516
	csrr x31, 0x516	// Read CSR
	li x14, -1
	csrrw x2, 0x516, x14	// Write all 1s to CSR
	csrrw x2, 0x516, x0	// Write all 0s to CSR
	csrrs x2, 0x516, x14	// Set all CSR bits
	csrrc x2, 0x516, x14	// Clear all CSR bits
	csrrw x2, 0x516, x31	// Restore CSR

// Testing CSR 0x517
	csrr x13, 0x517	// Read CSR
	li x3, -1
	csrrw x15, 0x517, x3	// Write all 1s to CSR
	csrrw x15, 0x517, x0	// Write all 0s to CSR
	csrrs x15, 0x517, x3	// Set all CSR bits
	csrrc x15, 0x517, x3	// Clear all CSR bits
	csrrw x15, 0x517, x13	// Restore CSR

// Testing CSR 0x518
	csrr x27, 0x518	// Read CSR
	li x26, -1
	csrrw x7, 0x518, x26	// Write all 1s to CSR
	csrrw x7, 0x518, x0	// Write all 0s to CSR
	csrrs x7, 0x518, x26	// Set all CSR bits
	csrrc x7, 0x518, x26	// Clear all CSR bits
	csrrw x7, 0x518, x27	// Restore CSR

// Testing CSR 0x519
	csrr x21, 0x519	// Read CSR
	li x22, -1
	csrrw x11, 0x519, x22	// Write all 1s to CSR
	csrrw x11, 0x519, x0	// Write all 0s to CSR
	csrrs x11, 0x519, x22	// Set all CSR bits
	csrrc x11, 0x519, x22	// Clear all CSR bits
	csrrw x11, 0x519, x21	// Restore CSR

// Testing CSR 0x51a
	csrr x1, 0x51a	// Read CSR
	li x27, -1
	csrrw x5, 0x51a, x27	// Write all 1s to CSR
	csrrw x5, 0x51a, x0	// Write all 0s to CSR
	csrrs x5, 0x51a, x27	// Set all CSR bits
	csrrc x5, 0x51a, x27	// Clear all CSR bits
	csrrw x5, 0x51a, x1	// Restore CSR

// Testing CSR 0x51b
	csrr x15, 0x51b	// Read CSR
	li x17, -1
	csrrw x29, 0x51b, x17	// Write all 1s to CSR
	csrrw x29, 0x51b, x0	// Write all 0s to CSR
	csrrs x29, 0x51b, x17	// Set all CSR bits
	csrrc x29, 0x51b, x17	// Clear all CSR bits
	csrrw x29, 0x51b, x15	// Restore CSR

// Testing CSR 0x51c
	csrr x24, 0x51c	// Read CSR
	li x15, -1
	csrrw x22, 0x51c, x15	// Write all 1s to CSR
	csrrw x22, 0x51c, x0	// Write all 0s to CSR
	csrrs x22, 0x51c, x15	// Set all CSR bits
	csrrc x22, 0x51c, x15	// Clear all CSR bits
	csrrw x22, 0x51c, x24	// Restore CSR

// Testing CSR 0x51d
	csrr x14, 0x51d	// Read CSR
	li x31, -1
	csrrw x17, 0x51d, x31	// Write all 1s to CSR
	csrrw x17, 0x51d, x0	// Write all 0s to CSR
	csrrs x17, 0x51d, x31	// Set all CSR bits
	csrrc x17, 0x51d, x31	// Clear all CSR bits
	csrrw x17, 0x51d, x14	// Restore CSR

// Testing CSR 0x51e
	csrr x2, 0x51e	// Read CSR
	li x5, -1
	csrrw x26, 0x51e, x5	// Write all 1s to CSR
	csrrw x26, 0x51e, x0	// Write all 0s to CSR
	csrrs x26, 0x51e, x5	// Set all CSR bits
	csrrc x26, 0x51e, x5	// Clear all CSR bits
	csrrw x26, 0x51e, x2	// Restore CSR

// Testing CSR 0x51f
	csrr x8, 0x51f	// Read CSR
	li x16, -1
	csrrw x25, 0x51f, x16	// Write all 1s to CSR
	csrrw x25, 0x51f, x0	// Write all 0s to CSR
	csrrs x25, 0x51f, x16	// Set all CSR bits
	csrrc x25, 0x51f, x16	// Clear all CSR bits
	csrrw x25, 0x51f, x8	// Restore CSR

// Testing CSR 0x520
	csrr x3, 0x520	// Read CSR
	li x28, -1
	csrrw x30, 0x520, x28	// Write all 1s to CSR
	csrrw x30, 0x520, x0	// Write all 0s to CSR
	csrrs x30, 0x520, x28	// Set all CSR bits
	csrrc x30, 0x520, x28	// Clear all CSR bits
	csrrw x30, 0x520, x3	// Restore CSR

// Testing CSR 0x521
	csrr x2, 0x521	// Read CSR
	li x3, -1
	csrrw x18, 0x521, x3	// Write all 1s to CSR
	csrrw x18, 0x521, x0	// Write all 0s to CSR
	csrrs x18, 0x521, x3	// Set all CSR bits
	csrrc x18, 0x521, x3	// Clear all CSR bits
	csrrw x18, 0x521, x2	// Restore CSR

// Testing CSR 0x522
	csrr x1, 0x522	// Read CSR
	li x30, -1
	csrrw x29, 0x522, x30	// Write all 1s to CSR
	csrrw x29, 0x522, x0	// Write all 0s to CSR
	csrrs x29, 0x522, x30	// Set all CSR bits
	csrrc x29, 0x522, x30	// Clear all CSR bits
	csrrw x29, 0x522, x1	// Restore CSR

// Testing CSR 0x523
	csrr x18, 0x523	// Read CSR
	li x11, -1
	csrrw x22, 0x523, x11	// Write all 1s to CSR
	csrrw x22, 0x523, x0	// Write all 0s to CSR
	csrrs x22, 0x523, x11	// Set all CSR bits
	csrrc x22, 0x523, x11	// Clear all CSR bits
	csrrw x22, 0x523, x18	// Restore CSR

// Testing CSR 0x524
	csrr x3, 0x524	// Read CSR
	li x12, -1
	csrrw x2, 0x524, x12	// Write all 1s to CSR
	csrrw x2, 0x524, x0	// Write all 0s to CSR
	csrrs x2, 0x524, x12	// Set all CSR bits
	csrrc x2, 0x524, x12	// Clear all CSR bits
	csrrw x2, 0x524, x3	// Restore CSR

// Testing CSR 0x525
	csrr x7, 0x525	// Read CSR
	li x16, -1
	csrrw x18, 0x525, x16	// Write all 1s to CSR
	csrrw x18, 0x525, x0	// Write all 0s to CSR
	csrrs x18, 0x525, x16	// Set all CSR bits
	csrrc x18, 0x525, x16	// Clear all CSR bits
	csrrw x18, 0x525, x7	// Restore CSR

// Testing CSR 0x526
	csrr x3, 0x526	// Read CSR
	li x19, -1
	csrrw x7, 0x526, x19	// Write all 1s to CSR
	csrrw x7, 0x526, x0	// Write all 0s to CSR
	csrrs x7, 0x526, x19	// Set all CSR bits
	csrrc x7, 0x526, x19	// Clear all CSR bits
	csrrw x7, 0x526, x3	// Restore CSR

// Testing CSR 0x527
	csrr x26, 0x527	// Read CSR
	li x24, -1
	csrrw x25, 0x527, x24	// Write all 1s to CSR
	csrrw x25, 0x527, x0	// Write all 0s to CSR
	csrrs x25, 0x527, x24	// Set all CSR bits
	csrrc x25, 0x527, x24	// Clear all CSR bits
	csrrw x25, 0x527, x26	// Restore CSR

// Testing CSR 0x528
	csrr x10, 0x528	// Read CSR
	li x8, -1
	csrrw x1, 0x528, x8	// Write all 1s to CSR
	csrrw x1, 0x528, x0	// Write all 0s to CSR
	csrrs x1, 0x528, x8	// Set all CSR bits
	csrrc x1, 0x528, x8	// Clear all CSR bits
	csrrw x1, 0x528, x10	// Restore CSR

// Testing CSR 0x529
	csrr x31, 0x529	// Read CSR
	li x30, -1
	csrrw x16, 0x529, x30	// Write all 1s to CSR
	csrrw x16, 0x529, x0	// Write all 0s to CSR
	csrrs x16, 0x529, x30	// Set all CSR bits
	csrrc x16, 0x529, x30	// Clear all CSR bits
	csrrw x16, 0x529, x31	// Restore CSR

// Testing CSR 0x52a
	csrr x21, 0x52a	// Read CSR
	li x6, -1
	csrrw x25, 0x52a, x6	// Write all 1s to CSR
	csrrw x25, 0x52a, x0	// Write all 0s to CSR
	csrrs x25, 0x52a, x6	// Set all CSR bits
	csrrc x25, 0x52a, x6	// Clear all CSR bits
	csrrw x25, 0x52a, x21	// Restore CSR

// Testing CSR 0x52b
	csrr x8, 0x52b	// Read CSR
	li x30, -1
	csrrw x29, 0x52b, x30	// Write all 1s to CSR
	csrrw x29, 0x52b, x0	// Write all 0s to CSR
	csrrs x29, 0x52b, x30	// Set all CSR bits
	csrrc x29, 0x52b, x30	// Clear all CSR bits
	csrrw x29, 0x52b, x8	// Restore CSR

// Testing CSR 0x52c
	csrr x12, 0x52c	// Read CSR
	li x21, -1
	csrrw x2, 0x52c, x21	// Write all 1s to CSR
	csrrw x2, 0x52c, x0	// Write all 0s to CSR
	csrrs x2, 0x52c, x21	// Set all CSR bits
	csrrc x2, 0x52c, x21	// Clear all CSR bits
	csrrw x2, 0x52c, x12	// Restore CSR

// Testing CSR 0x52d
	csrr x2, 0x52d	// Read CSR
	li x27, -1
	csrrw x28, 0x52d, x27	// Write all 1s to CSR
	csrrw x28, 0x52d, x0	// Write all 0s to CSR
	csrrs x28, 0x52d, x27	// Set all CSR bits
	csrrc x28, 0x52d, x27	// Clear all CSR bits
	csrrw x28, 0x52d, x2	// Restore CSR

// Testing CSR 0x52e
	csrr x21, 0x52e	// Read CSR
	li x15, -1
	csrrw x11, 0x52e, x15	// Write all 1s to CSR
	csrrw x11, 0x52e, x0	// Write all 0s to CSR
	csrrs x11, 0x52e, x15	// Set all CSR bits
	csrrc x11, 0x52e, x15	// Clear all CSR bits
	csrrw x11, 0x52e, x21	// Restore CSR

// Testing CSR 0x52f
	csrr x30, 0x52f	// Read CSR
	li x18, -1
	csrrw x13, 0x52f, x18	// Write all 1s to CSR
	csrrw x13, 0x52f, x0	// Write all 0s to CSR
	csrrs x13, 0x52f, x18	// Set all CSR bits
	csrrc x13, 0x52f, x18	// Clear all CSR bits
	csrrw x13, 0x52f, x30	// Restore CSR

// Testing CSR 0x530
	csrr x2, 0x530	// Read CSR
	li x17, -1
	csrrw x30, 0x530, x17	// Write all 1s to CSR
	csrrw x30, 0x530, x0	// Write all 0s to CSR
	csrrs x30, 0x530, x17	// Set all CSR bits
	csrrc x30, 0x530, x17	// Clear all CSR bits
	csrrw x30, 0x530, x2	// Restore CSR

// Testing CSR 0x531
	csrr x1, 0x531	// Read CSR
	li x30, -1
	csrrw x6, 0x531, x30	// Write all 1s to CSR
	csrrw x6, 0x531, x0	// Write all 0s to CSR
	csrrs x6, 0x531, x30	// Set all CSR bits
	csrrc x6, 0x531, x30	// Clear all CSR bits
	csrrw x6, 0x531, x1	// Restore CSR

// Testing CSR 0x532
	csrr x18, 0x532	// Read CSR
	li x3, -1
	csrrw x8, 0x532, x3	// Write all 1s to CSR
	csrrw x8, 0x532, x0	// Write all 0s to CSR
	csrrs x8, 0x532, x3	// Set all CSR bits
	csrrc x8, 0x532, x3	// Clear all CSR bits
	csrrw x8, 0x532, x18	// Restore CSR

// Testing CSR 0x533
	csrr x16, 0x533	// Read CSR
	li x22, -1
	csrrw x26, 0x533, x22	// Write all 1s to CSR
	csrrw x26, 0x533, x0	// Write all 0s to CSR
	csrrs x26, 0x533, x22	// Set all CSR bits
	csrrc x26, 0x533, x22	// Clear all CSR bits
	csrrw x26, 0x533, x16	// Restore CSR

// Testing CSR 0x534
	csrr x18, 0x534	// Read CSR
	li x8, -1
	csrrw x17, 0x534, x8	// Write all 1s to CSR
	csrrw x17, 0x534, x0	// Write all 0s to CSR
	csrrs x17, 0x534, x8	// Set all CSR bits
	csrrc x17, 0x534, x8	// Clear all CSR bits
	csrrw x17, 0x534, x18	// Restore CSR

// Testing CSR 0x535
	csrr x2, 0x535	// Read CSR
	li x8, -1
	csrrw x15, 0x535, x8	// Write all 1s to CSR
	csrrw x15, 0x535, x0	// Write all 0s to CSR
	csrrs x15, 0x535, x8	// Set all CSR bits
	csrrc x15, 0x535, x8	// Clear all CSR bits
	csrrw x15, 0x535, x2	// Restore CSR

// Testing CSR 0x536
	csrr x1, 0x536	// Read CSR
	li x5, -1
	csrrw x30, 0x536, x5	// Write all 1s to CSR
	csrrw x30, 0x536, x0	// Write all 0s to CSR
	csrrs x30, 0x536, x5	// Set all CSR bits
	csrrc x30, 0x536, x5	// Clear all CSR bits
	csrrw x30, 0x536, x1	// Restore CSR

// Testing CSR 0x537
	csrr x25, 0x537	// Read CSR
	li x2, -1
	csrrw x29, 0x537, x2	// Write all 1s to CSR
	csrrw x29, 0x537, x0	// Write all 0s to CSR
	csrrs x29, 0x537, x2	// Set all CSR bits
	csrrc x29, 0x537, x2	// Clear all CSR bits
	csrrw x29, 0x537, x25	// Restore CSR

// Testing CSR 0x538
	csrr x6, 0x538	// Read CSR
	li x15, -1
	csrrw x29, 0x538, x15	// Write all 1s to CSR
	csrrw x29, 0x538, x0	// Write all 0s to CSR
	csrrs x29, 0x538, x15	// Set all CSR bits
	csrrc x29, 0x538, x15	// Clear all CSR bits
	csrrw x29, 0x538, x6	// Restore CSR

// Testing CSR 0x539
	csrr x8, 0x539	// Read CSR
	li x29, -1
	csrrw x16, 0x539, x29	// Write all 1s to CSR
	csrrw x16, 0x539, x0	// Write all 0s to CSR
	csrrs x16, 0x539, x29	// Set all CSR bits
	csrrc x16, 0x539, x29	// Clear all CSR bits
	csrrw x16, 0x539, x8	// Restore CSR

// Testing CSR 0x53a
	csrr x4, 0x53a	// Read CSR
	li x22, -1
	csrrw x28, 0x53a, x22	// Write all 1s to CSR
	csrrw x28, 0x53a, x0	// Write all 0s to CSR
	csrrs x28, 0x53a, x22	// Set all CSR bits
	csrrc x28, 0x53a, x22	// Clear all CSR bits
	csrrw x28, 0x53a, x4	// Restore CSR

// Testing CSR 0x53b
	csrr x23, 0x53b	// Read CSR
	li x24, -1
	csrrw x11, 0x53b, x24	// Write all 1s to CSR
	csrrw x11, 0x53b, x0	// Write all 0s to CSR
	csrrs x11, 0x53b, x24	// Set all CSR bits
	csrrc x11, 0x53b, x24	// Clear all CSR bits
	csrrw x11, 0x53b, x23	// Restore CSR

// Testing CSR 0x53c
	csrr x22, 0x53c	// Read CSR
	li x18, -1
	csrrw x14, 0x53c, x18	// Write all 1s to CSR
	csrrw x14, 0x53c, x0	// Write all 0s to CSR
	csrrs x14, 0x53c, x18	// Set all CSR bits
	csrrc x14, 0x53c, x18	// Clear all CSR bits
	csrrw x14, 0x53c, x22	// Restore CSR

// Testing CSR 0x53d
	csrr x21, 0x53d	// Read CSR
	li x19, -1
	csrrw x15, 0x53d, x19	// Write all 1s to CSR
	csrrw x15, 0x53d, x0	// Write all 0s to CSR
	csrrs x15, 0x53d, x19	// Set all CSR bits
	csrrc x15, 0x53d, x19	// Clear all CSR bits
	csrrw x15, 0x53d, x21	// Restore CSR

// Testing CSR 0x53e
	csrr x25, 0x53e	// Read CSR
	li x19, -1
	csrrw x8, 0x53e, x19	// Write all 1s to CSR
	csrrw x8, 0x53e, x0	// Write all 0s to CSR
	csrrs x8, 0x53e, x19	// Set all CSR bits
	csrrc x8, 0x53e, x19	// Clear all CSR bits
	csrrw x8, 0x53e, x25	// Restore CSR

// Testing CSR 0x53f
	csrr x8, 0x53f	// Read CSR
	li x3, -1
	csrrw x9, 0x53f, x3	// Write all 1s to CSR
	csrrw x9, 0x53f, x0	// Write all 0s to CSR
	csrrs x9, 0x53f, x3	// Set all CSR bits
	csrrc x9, 0x53f, x3	// Clear all CSR bits
	csrrw x9, 0x53f, x8	// Restore CSR

// Testing CSR 0x540
	csrr x24, 0x540	// Read CSR
	li x13, -1
	csrrw x16, 0x540, x13	// Write all 1s to CSR
	csrrw x16, 0x540, x0	// Write all 0s to CSR
	csrrs x16, 0x540, x13	// Set all CSR bits
	csrrc x16, 0x540, x13	// Clear all CSR bits
	csrrw x16, 0x540, x24	// Restore CSR

// Testing CSR 0x541
	csrr x13, 0x541	// Read CSR
	li x22, -1
	csrrw x6, 0x541, x22	// Write all 1s to CSR
	csrrw x6, 0x541, x0	// Write all 0s to CSR
	csrrs x6, 0x541, x22	// Set all CSR bits
	csrrc x6, 0x541, x22	// Clear all CSR bits
	csrrw x6, 0x541, x13	// Restore CSR

// Testing CSR 0x542
	csrr x10, 0x542	// Read CSR
	li x31, -1
	csrrw x23, 0x542, x31	// Write all 1s to CSR
	csrrw x23, 0x542, x0	// Write all 0s to CSR
	csrrs x23, 0x542, x31	// Set all CSR bits
	csrrc x23, 0x542, x31	// Clear all CSR bits
	csrrw x23, 0x542, x10	// Restore CSR

// Testing CSR 0x543
	csrr x10, 0x543	// Read CSR
	li x28, -1
	csrrw x30, 0x543, x28	// Write all 1s to CSR
	csrrw x30, 0x543, x0	// Write all 0s to CSR
	csrrs x30, 0x543, x28	// Set all CSR bits
	csrrc x30, 0x543, x28	// Clear all CSR bits
	csrrw x30, 0x543, x10	// Restore CSR

// Testing CSR 0x544
	csrr x20, 0x544	// Read CSR
	li x9, -1
	csrrw x1, 0x544, x9	// Write all 1s to CSR
	csrrw x1, 0x544, x0	// Write all 0s to CSR
	csrrs x1, 0x544, x9	// Set all CSR bits
	csrrc x1, 0x544, x9	// Clear all CSR bits
	csrrw x1, 0x544, x20	// Restore CSR

// Testing CSR 0x545
	csrr x7, 0x545	// Read CSR
	li x27, -1
	csrrw x28, 0x545, x27	// Write all 1s to CSR
	csrrw x28, 0x545, x0	// Write all 0s to CSR
	csrrs x28, 0x545, x27	// Set all CSR bits
	csrrc x28, 0x545, x27	// Clear all CSR bits
	csrrw x28, 0x545, x7	// Restore CSR

// Testing CSR 0x546
	csrr x8, 0x546	// Read CSR
	li x1, -1
	csrrw x15, 0x546, x1	// Write all 1s to CSR
	csrrw x15, 0x546, x0	// Write all 0s to CSR
	csrrs x15, 0x546, x1	// Set all CSR bits
	csrrc x15, 0x546, x1	// Clear all CSR bits
	csrrw x15, 0x546, x8	// Restore CSR

// Testing CSR 0x547
	csrr x3, 0x547	// Read CSR
	li x27, -1
	csrrw x13, 0x547, x27	// Write all 1s to CSR
	csrrw x13, 0x547, x0	// Write all 0s to CSR
	csrrs x13, 0x547, x27	// Set all CSR bits
	csrrc x13, 0x547, x27	// Clear all CSR bits
	csrrw x13, 0x547, x3	// Restore CSR

// Testing CSR 0x548
	csrr x11, 0x548	// Read CSR
	li x29, -1
	csrrw x3, 0x548, x29	// Write all 1s to CSR
	csrrw x3, 0x548, x0	// Write all 0s to CSR
	csrrs x3, 0x548, x29	// Set all CSR bits
	csrrc x3, 0x548, x29	// Clear all CSR bits
	csrrw x3, 0x548, x11	// Restore CSR

// Testing CSR 0x549
	csrr x16, 0x549	// Read CSR
	li x1, -1
	csrrw x23, 0x549, x1	// Write all 1s to CSR
	csrrw x23, 0x549, x0	// Write all 0s to CSR
	csrrs x23, 0x549, x1	// Set all CSR bits
	csrrc x23, 0x549, x1	// Clear all CSR bits
	csrrw x23, 0x549, x16	// Restore CSR

// Testing CSR 0x54a
	csrr x12, 0x54a	// Read CSR
	li x15, -1
	csrrw x22, 0x54a, x15	// Write all 1s to CSR
	csrrw x22, 0x54a, x0	// Write all 0s to CSR
	csrrs x22, 0x54a, x15	// Set all CSR bits
	csrrc x22, 0x54a, x15	// Clear all CSR bits
	csrrw x22, 0x54a, x12	// Restore CSR

// Testing CSR 0x54b
	csrr x16, 0x54b	// Read CSR
	li x2, -1
	csrrw x9, 0x54b, x2	// Write all 1s to CSR
	csrrw x9, 0x54b, x0	// Write all 0s to CSR
	csrrs x9, 0x54b, x2	// Set all CSR bits
	csrrc x9, 0x54b, x2	// Clear all CSR bits
	csrrw x9, 0x54b, x16	// Restore CSR

// Testing CSR 0x54c
	csrr x19, 0x54c	// Read CSR
	li x22, -1
	csrrw x9, 0x54c, x22	// Write all 1s to CSR
	csrrw x9, 0x54c, x0	// Write all 0s to CSR
	csrrs x9, 0x54c, x22	// Set all CSR bits
	csrrc x9, 0x54c, x22	// Clear all CSR bits
	csrrw x9, 0x54c, x19	// Restore CSR

// Testing CSR 0x54d
	csrr x7, 0x54d	// Read CSR
	li x6, -1
	csrrw x29, 0x54d, x6	// Write all 1s to CSR
	csrrw x29, 0x54d, x0	// Write all 0s to CSR
	csrrs x29, 0x54d, x6	// Set all CSR bits
	csrrc x29, 0x54d, x6	// Clear all CSR bits
	csrrw x29, 0x54d, x7	// Restore CSR

// Testing CSR 0x54e
	csrr x20, 0x54e	// Read CSR
	li x27, -1
	csrrw x18, 0x54e, x27	// Write all 1s to CSR
	csrrw x18, 0x54e, x0	// Write all 0s to CSR
	csrrs x18, 0x54e, x27	// Set all CSR bits
	csrrc x18, 0x54e, x27	// Clear all CSR bits
	csrrw x18, 0x54e, x20	// Restore CSR

// Testing CSR 0x54f
	csrr x9, 0x54f	// Read CSR
	li x3, -1
	csrrw x17, 0x54f, x3	// Write all 1s to CSR
	csrrw x17, 0x54f, x0	// Write all 0s to CSR
	csrrs x17, 0x54f, x3	// Set all CSR bits
	csrrc x17, 0x54f, x3	// Clear all CSR bits
	csrrw x17, 0x54f, x9	// Restore CSR

// Testing CSR 0x550
	csrr x31, 0x550	// Read CSR
	li x26, -1
	csrrw x28, 0x550, x26	// Write all 1s to CSR
	csrrw x28, 0x550, x0	// Write all 0s to CSR
	csrrs x28, 0x550, x26	// Set all CSR bits
	csrrc x28, 0x550, x26	// Clear all CSR bits
	csrrw x28, 0x550, x31	// Restore CSR

// Testing CSR 0x551
	csrr x26, 0x551	// Read CSR
	li x4, -1
	csrrw x14, 0x551, x4	// Write all 1s to CSR
	csrrw x14, 0x551, x0	// Write all 0s to CSR
	csrrs x14, 0x551, x4	// Set all CSR bits
	csrrc x14, 0x551, x4	// Clear all CSR bits
	csrrw x14, 0x551, x26	// Restore CSR

// Testing CSR 0x552
	csrr x31, 0x552	// Read CSR
	li x13, -1
	csrrw x17, 0x552, x13	// Write all 1s to CSR
	csrrw x17, 0x552, x0	// Write all 0s to CSR
	csrrs x17, 0x552, x13	// Set all CSR bits
	csrrc x17, 0x552, x13	// Clear all CSR bits
	csrrw x17, 0x552, x31	// Restore CSR

// Testing CSR 0x553
	csrr x29, 0x553	// Read CSR
	li x30, -1
	csrrw x31, 0x553, x30	// Write all 1s to CSR
	csrrw x31, 0x553, x0	// Write all 0s to CSR
	csrrs x31, 0x553, x30	// Set all CSR bits
	csrrc x31, 0x553, x30	// Clear all CSR bits
	csrrw x31, 0x553, x29	// Restore CSR

// Testing CSR 0x554
	csrr x3, 0x554	// Read CSR
	li x25, -1
	csrrw x12, 0x554, x25	// Write all 1s to CSR
	csrrw x12, 0x554, x0	// Write all 0s to CSR
	csrrs x12, 0x554, x25	// Set all CSR bits
	csrrc x12, 0x554, x25	// Clear all CSR bits
	csrrw x12, 0x554, x3	// Restore CSR

// Testing CSR 0x555
	csrr x21, 0x555	// Read CSR
	li x20, -1
	csrrw x9, 0x555, x20	// Write all 1s to CSR
	csrrw x9, 0x555, x0	// Write all 0s to CSR
	csrrs x9, 0x555, x20	// Set all CSR bits
	csrrc x9, 0x555, x20	// Clear all CSR bits
	csrrw x9, 0x555, x21	// Restore CSR

// Testing CSR 0x556
	csrr x28, 0x556	// Read CSR
	li x9, -1
	csrrw x14, 0x556, x9	// Write all 1s to CSR
	csrrw x14, 0x556, x0	// Write all 0s to CSR
	csrrs x14, 0x556, x9	// Set all CSR bits
	csrrc x14, 0x556, x9	// Clear all CSR bits
	csrrw x14, 0x556, x28	// Restore CSR

// Testing CSR 0x557
	csrr x15, 0x557	// Read CSR
	li x14, -1
	csrrw x23, 0x557, x14	// Write all 1s to CSR
	csrrw x23, 0x557, x0	// Write all 0s to CSR
	csrrs x23, 0x557, x14	// Set all CSR bits
	csrrc x23, 0x557, x14	// Clear all CSR bits
	csrrw x23, 0x557, x15	// Restore CSR

// Testing CSR 0x558
	csrr x14, 0x558	// Read CSR
	li x9, -1
	csrrw x29, 0x558, x9	// Write all 1s to CSR
	csrrw x29, 0x558, x0	// Write all 0s to CSR
	csrrs x29, 0x558, x9	// Set all CSR bits
	csrrc x29, 0x558, x9	// Clear all CSR bits
	csrrw x29, 0x558, x14	// Restore CSR

// Testing CSR 0x559
	csrr x26, 0x559	// Read CSR
	li x4, -1
	csrrw x29, 0x559, x4	// Write all 1s to CSR
	csrrw x29, 0x559, x0	// Write all 0s to CSR
	csrrs x29, 0x559, x4	// Set all CSR bits
	csrrc x29, 0x559, x4	// Clear all CSR bits
	csrrw x29, 0x559, x26	// Restore CSR

// Testing CSR 0x55a
	csrr x5, 0x55a	// Read CSR
	li x30, -1
	csrrw x25, 0x55a, x30	// Write all 1s to CSR
	csrrw x25, 0x55a, x0	// Write all 0s to CSR
	csrrs x25, 0x55a, x30	// Set all CSR bits
	csrrc x25, 0x55a, x30	// Clear all CSR bits
	csrrw x25, 0x55a, x5	// Restore CSR

// Testing CSR 0x55b
	csrr x29, 0x55b	// Read CSR
	li x17, -1
	csrrw x18, 0x55b, x17	// Write all 1s to CSR
	csrrw x18, 0x55b, x0	// Write all 0s to CSR
	csrrs x18, 0x55b, x17	// Set all CSR bits
	csrrc x18, 0x55b, x17	// Clear all CSR bits
	csrrw x18, 0x55b, x29	// Restore CSR

// Testing CSR 0x55c
	csrr x29, 0x55c	// Read CSR
	li x18, -1
	csrrw x20, 0x55c, x18	// Write all 1s to CSR
	csrrw x20, 0x55c, x0	// Write all 0s to CSR
	csrrs x20, 0x55c, x18	// Set all CSR bits
	csrrc x20, 0x55c, x18	// Clear all CSR bits
	csrrw x20, 0x55c, x29	// Restore CSR

// Testing CSR 0x55d
	csrr x19, 0x55d	// Read CSR
	li x14, -1
	csrrw x26, 0x55d, x14	// Write all 1s to CSR
	csrrw x26, 0x55d, x0	// Write all 0s to CSR
	csrrs x26, 0x55d, x14	// Set all CSR bits
	csrrc x26, 0x55d, x14	// Clear all CSR bits
	csrrw x26, 0x55d, x19	// Restore CSR

// Testing CSR 0x55e
	csrr x23, 0x55e	// Read CSR
	li x27, -1
	csrrw x1, 0x55e, x27	// Write all 1s to CSR
	csrrw x1, 0x55e, x0	// Write all 0s to CSR
	csrrs x1, 0x55e, x27	// Set all CSR bits
	csrrc x1, 0x55e, x27	// Clear all CSR bits
	csrrw x1, 0x55e, x23	// Restore CSR

// Testing CSR 0x55f
	csrr x11, 0x55f	// Read CSR
	li x6, -1
	csrrw x13, 0x55f, x6	// Write all 1s to CSR
	csrrw x13, 0x55f, x0	// Write all 0s to CSR
	csrrs x13, 0x55f, x6	// Set all CSR bits
	csrrc x13, 0x55f, x6	// Clear all CSR bits
	csrrw x13, 0x55f, x11	// Restore CSR

// Testing CSR 0x560
	csrr x28, 0x560	// Read CSR
	li x24, -1
	csrrw x29, 0x560, x24	// Write all 1s to CSR
	csrrw x29, 0x560, x0	// Write all 0s to CSR
	csrrs x29, 0x560, x24	// Set all CSR bits
	csrrc x29, 0x560, x24	// Clear all CSR bits
	csrrw x29, 0x560, x28	// Restore CSR

// Testing CSR 0x561
	csrr x23, 0x561	// Read CSR
	li x17, -1
	csrrw x10, 0x561, x17	// Write all 1s to CSR
	csrrw x10, 0x561, x0	// Write all 0s to CSR
	csrrs x10, 0x561, x17	// Set all CSR bits
	csrrc x10, 0x561, x17	// Clear all CSR bits
	csrrw x10, 0x561, x23	// Restore CSR

// Testing CSR 0x562
	csrr x2, 0x562	// Read CSR
	li x23, -1
	csrrw x27, 0x562, x23	// Write all 1s to CSR
	csrrw x27, 0x562, x0	// Write all 0s to CSR
	csrrs x27, 0x562, x23	// Set all CSR bits
	csrrc x27, 0x562, x23	// Clear all CSR bits
	csrrw x27, 0x562, x2	// Restore CSR

// Testing CSR 0x563
	csrr x25, 0x563	// Read CSR
	li x11, -1
	csrrw x22, 0x563, x11	// Write all 1s to CSR
	csrrw x22, 0x563, x0	// Write all 0s to CSR
	csrrs x22, 0x563, x11	// Set all CSR bits
	csrrc x22, 0x563, x11	// Clear all CSR bits
	csrrw x22, 0x563, x25	// Restore CSR

// Testing CSR 0x564
	csrr x24, 0x564	// Read CSR
	li x30, -1
	csrrw x1, 0x564, x30	// Write all 1s to CSR
	csrrw x1, 0x564, x0	// Write all 0s to CSR
	csrrs x1, 0x564, x30	// Set all CSR bits
	csrrc x1, 0x564, x30	// Clear all CSR bits
	csrrw x1, 0x564, x24	// Restore CSR

// Testing CSR 0x565
	csrr x1, 0x565	// Read CSR
	li x12, -1
	csrrw x8, 0x565, x12	// Write all 1s to CSR
	csrrw x8, 0x565, x0	// Write all 0s to CSR
	csrrs x8, 0x565, x12	// Set all CSR bits
	csrrc x8, 0x565, x12	// Clear all CSR bits
	csrrw x8, 0x565, x1	// Restore CSR

// Testing CSR 0x566
	csrr x7, 0x566	// Read CSR
	li x3, -1
	csrrw x28, 0x566, x3	// Write all 1s to CSR
	csrrw x28, 0x566, x0	// Write all 0s to CSR
	csrrs x28, 0x566, x3	// Set all CSR bits
	csrrc x28, 0x566, x3	// Clear all CSR bits
	csrrw x28, 0x566, x7	// Restore CSR

// Testing CSR 0x567
	csrr x2, 0x567	// Read CSR
	li x7, -1
	csrrw x21, 0x567, x7	// Write all 1s to CSR
	csrrw x21, 0x567, x0	// Write all 0s to CSR
	csrrs x21, 0x567, x7	// Set all CSR bits
	csrrc x21, 0x567, x7	// Clear all CSR bits
	csrrw x21, 0x567, x2	// Restore CSR

// Testing CSR 0x568
	csrr x20, 0x568	// Read CSR
	li x19, -1
	csrrw x30, 0x568, x19	// Write all 1s to CSR
	csrrw x30, 0x568, x0	// Write all 0s to CSR
	csrrs x30, 0x568, x19	// Set all CSR bits
	csrrc x30, 0x568, x19	// Clear all CSR bits
	csrrw x30, 0x568, x20	// Restore CSR

// Testing CSR 0x569
	csrr x6, 0x569	// Read CSR
	li x12, -1
	csrrw x18, 0x569, x12	// Write all 1s to CSR
	csrrw x18, 0x569, x0	// Write all 0s to CSR
	csrrs x18, 0x569, x12	// Set all CSR bits
	csrrc x18, 0x569, x12	// Clear all CSR bits
	csrrw x18, 0x569, x6	// Restore CSR

// Testing CSR 0x56a
	csrr x18, 0x56a	// Read CSR
	li x9, -1
	csrrw x14, 0x56a, x9	// Write all 1s to CSR
	csrrw x14, 0x56a, x0	// Write all 0s to CSR
	csrrs x14, 0x56a, x9	// Set all CSR bits
	csrrc x14, 0x56a, x9	// Clear all CSR bits
	csrrw x14, 0x56a, x18	// Restore CSR

// Testing CSR 0x56b
	csrr x26, 0x56b	// Read CSR
	li x4, -1
	csrrw x23, 0x56b, x4	// Write all 1s to CSR
	csrrw x23, 0x56b, x0	// Write all 0s to CSR
	csrrs x23, 0x56b, x4	// Set all CSR bits
	csrrc x23, 0x56b, x4	// Clear all CSR bits
	csrrw x23, 0x56b, x26	// Restore CSR

// Testing CSR 0x56c
	csrr x30, 0x56c	// Read CSR
	li x16, -1
	csrrw x29, 0x56c, x16	// Write all 1s to CSR
	csrrw x29, 0x56c, x0	// Write all 0s to CSR
	csrrs x29, 0x56c, x16	// Set all CSR bits
	csrrc x29, 0x56c, x16	// Clear all CSR bits
	csrrw x29, 0x56c, x30	// Restore CSR

// Testing CSR 0x56d
	csrr x23, 0x56d	// Read CSR
	li x5, -1
	csrrw x29, 0x56d, x5	// Write all 1s to CSR
	csrrw x29, 0x56d, x0	// Write all 0s to CSR
	csrrs x29, 0x56d, x5	// Set all CSR bits
	csrrc x29, 0x56d, x5	// Clear all CSR bits
	csrrw x29, 0x56d, x23	// Restore CSR

// Testing CSR 0x56e
	csrr x14, 0x56e	// Read CSR
	li x20, -1
	csrrw x1, 0x56e, x20	// Write all 1s to CSR
	csrrw x1, 0x56e, x0	// Write all 0s to CSR
	csrrs x1, 0x56e, x20	// Set all CSR bits
	csrrc x1, 0x56e, x20	// Clear all CSR bits
	csrrw x1, 0x56e, x14	// Restore CSR

// Testing CSR 0x56f
	csrr x12, 0x56f	// Read CSR
	li x31, -1
	csrrw x6, 0x56f, x31	// Write all 1s to CSR
	csrrw x6, 0x56f, x0	// Write all 0s to CSR
	csrrs x6, 0x56f, x31	// Set all CSR bits
	csrrc x6, 0x56f, x31	// Clear all CSR bits
	csrrw x6, 0x56f, x12	// Restore CSR

// Testing CSR 0x570
	csrr x19, 0x570	// Read CSR
	li x16, -1
	csrrw x11, 0x570, x16	// Write all 1s to CSR
	csrrw x11, 0x570, x0	// Write all 0s to CSR
	csrrs x11, 0x570, x16	// Set all CSR bits
	csrrc x11, 0x570, x16	// Clear all CSR bits
	csrrw x11, 0x570, x19	// Restore CSR

// Testing CSR 0x571
	csrr x1, 0x571	// Read CSR
	li x7, -1
	csrrw x9, 0x571, x7	// Write all 1s to CSR
	csrrw x9, 0x571, x0	// Write all 0s to CSR
	csrrs x9, 0x571, x7	// Set all CSR bits
	csrrc x9, 0x571, x7	// Clear all CSR bits
	csrrw x9, 0x571, x1	// Restore CSR

// Testing CSR 0x572
	csrr x17, 0x572	// Read CSR
	li x19, -1
	csrrw x18, 0x572, x19	// Write all 1s to CSR
	csrrw x18, 0x572, x0	// Write all 0s to CSR
	csrrs x18, 0x572, x19	// Set all CSR bits
	csrrc x18, 0x572, x19	// Clear all CSR bits
	csrrw x18, 0x572, x17	// Restore CSR

// Testing CSR 0x573
	csrr x25, 0x573	// Read CSR
	li x6, -1
	csrrw x23, 0x573, x6	// Write all 1s to CSR
	csrrw x23, 0x573, x0	// Write all 0s to CSR
	csrrs x23, 0x573, x6	// Set all CSR bits
	csrrc x23, 0x573, x6	// Clear all CSR bits
	csrrw x23, 0x573, x25	// Restore CSR

// Testing CSR 0x574
	csrr x13, 0x574	// Read CSR
	li x20, -1
	csrrw x16, 0x574, x20	// Write all 1s to CSR
	csrrw x16, 0x574, x0	// Write all 0s to CSR
	csrrs x16, 0x574, x20	// Set all CSR bits
	csrrc x16, 0x574, x20	// Clear all CSR bits
	csrrw x16, 0x574, x13	// Restore CSR

// Testing CSR 0x575
	csrr x19, 0x575	// Read CSR
	li x28, -1
	csrrw x16, 0x575, x28	// Write all 1s to CSR
	csrrw x16, 0x575, x0	// Write all 0s to CSR
	csrrs x16, 0x575, x28	// Set all CSR bits
	csrrc x16, 0x575, x28	// Clear all CSR bits
	csrrw x16, 0x575, x19	// Restore CSR

// Testing CSR 0x576
	csrr x7, 0x576	// Read CSR
	li x8, -1
	csrrw x12, 0x576, x8	// Write all 1s to CSR
	csrrw x12, 0x576, x0	// Write all 0s to CSR
	csrrs x12, 0x576, x8	// Set all CSR bits
	csrrc x12, 0x576, x8	// Clear all CSR bits
	csrrw x12, 0x576, x7	// Restore CSR

// Testing CSR 0x577
	csrr x16, 0x577	// Read CSR
	li x30, -1
	csrrw x19, 0x577, x30	// Write all 1s to CSR
	csrrw x19, 0x577, x0	// Write all 0s to CSR
	csrrs x19, 0x577, x30	// Set all CSR bits
	csrrc x19, 0x577, x30	// Clear all CSR bits
	csrrw x19, 0x577, x16	// Restore CSR

// Testing CSR 0x578
	csrr x12, 0x578	// Read CSR
	li x30, -1
	csrrw x18, 0x578, x30	// Write all 1s to CSR
	csrrw x18, 0x578, x0	// Write all 0s to CSR
	csrrs x18, 0x578, x30	// Set all CSR bits
	csrrc x18, 0x578, x30	// Clear all CSR bits
	csrrw x18, 0x578, x12	// Restore CSR

// Testing CSR 0x579
	csrr x14, 0x579	// Read CSR
	li x17, -1
	csrrw x10, 0x579, x17	// Write all 1s to CSR
	csrrw x10, 0x579, x0	// Write all 0s to CSR
	csrrs x10, 0x579, x17	// Set all CSR bits
	csrrc x10, 0x579, x17	// Clear all CSR bits
	csrrw x10, 0x579, x14	// Restore CSR

// Testing CSR 0x57a
	csrr x30, 0x57a	// Read CSR
	li x14, -1
	csrrw x31, 0x57a, x14	// Write all 1s to CSR
	csrrw x31, 0x57a, x0	// Write all 0s to CSR
	csrrs x31, 0x57a, x14	// Set all CSR bits
	csrrc x31, 0x57a, x14	// Clear all CSR bits
	csrrw x31, 0x57a, x30	// Restore CSR

// Testing CSR 0x57b
	csrr x9, 0x57b	// Read CSR
	li x10, -1
	csrrw x16, 0x57b, x10	// Write all 1s to CSR
	csrrw x16, 0x57b, x0	// Write all 0s to CSR
	csrrs x16, 0x57b, x10	// Set all CSR bits
	csrrc x16, 0x57b, x10	// Clear all CSR bits
	csrrw x16, 0x57b, x9	// Restore CSR

// Testing CSR 0x57c
	csrr x20, 0x57c	// Read CSR
	li x4, -1
	csrrw x24, 0x57c, x4	// Write all 1s to CSR
	csrrw x24, 0x57c, x0	// Write all 0s to CSR
	csrrs x24, 0x57c, x4	// Set all CSR bits
	csrrc x24, 0x57c, x4	// Clear all CSR bits
	csrrw x24, 0x57c, x20	// Restore CSR

// Testing CSR 0x57d
	csrr x23, 0x57d	// Read CSR
	li x2, -1
	csrrw x1, 0x57d, x2	// Write all 1s to CSR
	csrrw x1, 0x57d, x0	// Write all 0s to CSR
	csrrs x1, 0x57d, x2	// Set all CSR bits
	csrrc x1, 0x57d, x2	// Clear all CSR bits
	csrrw x1, 0x57d, x23	// Restore CSR

// Testing CSR 0x57e
	csrr x25, 0x57e	// Read CSR
	li x9, -1
	csrrw x13, 0x57e, x9	// Write all 1s to CSR
	csrrw x13, 0x57e, x0	// Write all 0s to CSR
	csrrs x13, 0x57e, x9	// Set all CSR bits
	csrrc x13, 0x57e, x9	// Clear all CSR bits
	csrrw x13, 0x57e, x25	// Restore CSR

// Testing CSR 0x57f
	csrr x17, 0x57f	// Read CSR
	li x21, -1
	csrrw x13, 0x57f, x21	// Write all 1s to CSR
	csrrw x13, 0x57f, x0	// Write all 0s to CSR
	csrrs x13, 0x57f, x21	// Set all CSR bits
	csrrc x13, 0x57f, x21	// Clear all CSR bits
	csrrw x13, 0x57f, x17	// Restore CSR

// Testing CSR 0x580
	csrr x7, 0x580	// Read CSR
	li x21, -1
	csrrw x23, 0x580, x21	// Write all 1s to CSR
	csrrw x23, 0x580, x0	// Write all 0s to CSR
	csrrs x23, 0x580, x21	// Set all CSR bits
	csrrc x23, 0x580, x21	// Clear all CSR bits
	csrrw x23, 0x580, x7	// Restore CSR

// Testing CSR 0x581
	csrr x2, 0x581	// Read CSR
	li x13, -1
	csrrw x19, 0x581, x13	// Write all 1s to CSR
	csrrw x19, 0x581, x0	// Write all 0s to CSR
	csrrs x19, 0x581, x13	// Set all CSR bits
	csrrc x19, 0x581, x13	// Clear all CSR bits
	csrrw x19, 0x581, x2	// Restore CSR

// Testing CSR 0x582
	csrr x28, 0x582	// Read CSR
	li x17, -1
	csrrw x22, 0x582, x17	// Write all 1s to CSR
	csrrw x22, 0x582, x0	// Write all 0s to CSR
	csrrs x22, 0x582, x17	// Set all CSR bits
	csrrc x22, 0x582, x17	// Clear all CSR bits
	csrrw x22, 0x582, x28	// Restore CSR

// Testing CSR 0x583
	csrr x1, 0x583	// Read CSR
	li x22, -1
	csrrw x11, 0x583, x22	// Write all 1s to CSR
	csrrw x11, 0x583, x0	// Write all 0s to CSR
	csrrs x11, 0x583, x22	// Set all CSR bits
	csrrc x11, 0x583, x22	// Clear all CSR bits
	csrrw x11, 0x583, x1	// Restore CSR

// Testing CSR 0x584
	csrr x16, 0x584	// Read CSR
	li x27, -1
	csrrw x8, 0x584, x27	// Write all 1s to CSR
	csrrw x8, 0x584, x0	// Write all 0s to CSR
	csrrs x8, 0x584, x27	// Set all CSR bits
	csrrc x8, 0x584, x27	// Clear all CSR bits
	csrrw x8, 0x584, x16	// Restore CSR

// Testing CSR 0x585
	csrr x12, 0x585	// Read CSR
	li x18, -1
	csrrw x11, 0x585, x18	// Write all 1s to CSR
	csrrw x11, 0x585, x0	// Write all 0s to CSR
	csrrs x11, 0x585, x18	// Set all CSR bits
	csrrc x11, 0x585, x18	// Clear all CSR bits
	csrrw x11, 0x585, x12	// Restore CSR

// Testing CSR 0x586
	csrr x21, 0x586	// Read CSR
	li x19, -1
	csrrw x20, 0x586, x19	// Write all 1s to CSR
	csrrw x20, 0x586, x0	// Write all 0s to CSR
	csrrs x20, 0x586, x19	// Set all CSR bits
	csrrc x20, 0x586, x19	// Clear all CSR bits
	csrrw x20, 0x586, x21	// Restore CSR

// Testing CSR 0x587
	csrr x2, 0x587	// Read CSR
	li x23, -1
	csrrw x8, 0x587, x23	// Write all 1s to CSR
	csrrw x8, 0x587, x0	// Write all 0s to CSR
	csrrs x8, 0x587, x23	// Set all CSR bits
	csrrc x8, 0x587, x23	// Clear all CSR bits
	csrrw x8, 0x587, x2	// Restore CSR

// Testing CSR 0x588
	csrr x15, 0x588	// Read CSR
	li x30, -1
	csrrw x14, 0x588, x30	// Write all 1s to CSR
	csrrw x14, 0x588, x0	// Write all 0s to CSR
	csrrs x14, 0x588, x30	// Set all CSR bits
	csrrc x14, 0x588, x30	// Clear all CSR bits
	csrrw x14, 0x588, x15	// Restore CSR

// Testing CSR 0x589
	csrr x16, 0x589	// Read CSR
	li x24, -1
	csrrw x9, 0x589, x24	// Write all 1s to CSR
	csrrw x9, 0x589, x0	// Write all 0s to CSR
	csrrs x9, 0x589, x24	// Set all CSR bits
	csrrc x9, 0x589, x24	// Clear all CSR bits
	csrrw x9, 0x589, x16	// Restore CSR

// Testing CSR 0x58a
	csrr x10, 0x58a	// Read CSR
	li x20, -1
	csrrw x27, 0x58a, x20	// Write all 1s to CSR
	csrrw x27, 0x58a, x0	// Write all 0s to CSR
	csrrs x27, 0x58a, x20	// Set all CSR bits
	csrrc x27, 0x58a, x20	// Clear all CSR bits
	csrrw x27, 0x58a, x10	// Restore CSR

// Testing CSR 0x58b
	csrr x3, 0x58b	// Read CSR
	li x29, -1
	csrrw x1, 0x58b, x29	// Write all 1s to CSR
	csrrw x1, 0x58b, x0	// Write all 0s to CSR
	csrrs x1, 0x58b, x29	// Set all CSR bits
	csrrc x1, 0x58b, x29	// Clear all CSR bits
	csrrw x1, 0x58b, x3	// Restore CSR

// Testing CSR 0x58c
	csrr x28, 0x58c	// Read CSR
	li x9, -1
	csrrw x3, 0x58c, x9	// Write all 1s to CSR
	csrrw x3, 0x58c, x0	// Write all 0s to CSR
	csrrs x3, 0x58c, x9	// Set all CSR bits
	csrrc x3, 0x58c, x9	// Clear all CSR bits
	csrrw x3, 0x58c, x28	// Restore CSR

// Testing CSR 0x58d
	csrr x28, 0x58d	// Read CSR
	li x27, -1
	csrrw x4, 0x58d, x27	// Write all 1s to CSR
	csrrw x4, 0x58d, x0	// Write all 0s to CSR
	csrrs x4, 0x58d, x27	// Set all CSR bits
	csrrc x4, 0x58d, x27	// Clear all CSR bits
	csrrw x4, 0x58d, x28	// Restore CSR

// Testing CSR 0x58e
	csrr x8, 0x58e	// Read CSR
	li x18, -1
	csrrw x28, 0x58e, x18	// Write all 1s to CSR
	csrrw x28, 0x58e, x0	// Write all 0s to CSR
	csrrs x28, 0x58e, x18	// Set all CSR bits
	csrrc x28, 0x58e, x18	// Clear all CSR bits
	csrrw x28, 0x58e, x8	// Restore CSR

// Testing CSR 0x58f
	csrr x24, 0x58f	// Read CSR
	li x19, -1
	csrrw x11, 0x58f, x19	// Write all 1s to CSR
	csrrw x11, 0x58f, x0	// Write all 0s to CSR
	csrrs x11, 0x58f, x19	// Set all CSR bits
	csrrc x11, 0x58f, x19	// Clear all CSR bits
	csrrw x11, 0x58f, x24	// Restore CSR

// Testing CSR 0x590
	csrr x8, 0x590	// Read CSR
	li x6, -1
	csrrw x16, 0x590, x6	// Write all 1s to CSR
	csrrw x16, 0x590, x0	// Write all 0s to CSR
	csrrs x16, 0x590, x6	// Set all CSR bits
	csrrc x16, 0x590, x6	// Clear all CSR bits
	csrrw x16, 0x590, x8	// Restore CSR

// Testing CSR 0x591
	csrr x26, 0x591	// Read CSR
	li x14, -1
	csrrw x25, 0x591, x14	// Write all 1s to CSR
	csrrw x25, 0x591, x0	// Write all 0s to CSR
	csrrs x25, 0x591, x14	// Set all CSR bits
	csrrc x25, 0x591, x14	// Clear all CSR bits
	csrrw x25, 0x591, x26	// Restore CSR

// Testing CSR 0x592
	csrr x4, 0x592	// Read CSR
	li x29, -1
	csrrw x12, 0x592, x29	// Write all 1s to CSR
	csrrw x12, 0x592, x0	// Write all 0s to CSR
	csrrs x12, 0x592, x29	// Set all CSR bits
	csrrc x12, 0x592, x29	// Clear all CSR bits
	csrrw x12, 0x592, x4	// Restore CSR

// Testing CSR 0x593
	csrr x27, 0x593	// Read CSR
	li x26, -1
	csrrw x2, 0x593, x26	// Write all 1s to CSR
	csrrw x2, 0x593, x0	// Write all 0s to CSR
	csrrs x2, 0x593, x26	// Set all CSR bits
	csrrc x2, 0x593, x26	// Clear all CSR bits
	csrrw x2, 0x593, x27	// Restore CSR

// Testing CSR 0x594
	csrr x3, 0x594	// Read CSR
	li x5, -1
	csrrw x28, 0x594, x5	// Write all 1s to CSR
	csrrw x28, 0x594, x0	// Write all 0s to CSR
	csrrs x28, 0x594, x5	// Set all CSR bits
	csrrc x28, 0x594, x5	// Clear all CSR bits
	csrrw x28, 0x594, x3	// Restore CSR

// Testing CSR 0x595
	csrr x28, 0x595	// Read CSR
	li x4, -1
	csrrw x26, 0x595, x4	// Write all 1s to CSR
	csrrw x26, 0x595, x0	// Write all 0s to CSR
	csrrs x26, 0x595, x4	// Set all CSR bits
	csrrc x26, 0x595, x4	// Clear all CSR bits
	csrrw x26, 0x595, x28	// Restore CSR

// Testing CSR 0x596
	csrr x4, 0x596	// Read CSR
	li x31, -1
	csrrw x28, 0x596, x31	// Write all 1s to CSR
	csrrw x28, 0x596, x0	// Write all 0s to CSR
	csrrs x28, 0x596, x31	// Set all CSR bits
	csrrc x28, 0x596, x31	// Clear all CSR bits
	csrrw x28, 0x596, x4	// Restore CSR

// Testing CSR 0x597
	csrr x26, 0x597	// Read CSR
	li x28, -1
	csrrw x13, 0x597, x28	// Write all 1s to CSR
	csrrw x13, 0x597, x0	// Write all 0s to CSR
	csrrs x13, 0x597, x28	// Set all CSR bits
	csrrc x13, 0x597, x28	// Clear all CSR bits
	csrrw x13, 0x597, x26	// Restore CSR

// Testing CSR 0x598
	csrr x16, 0x598	// Read CSR
	li x13, -1
	csrrw x6, 0x598, x13	// Write all 1s to CSR
	csrrw x6, 0x598, x0	// Write all 0s to CSR
	csrrs x6, 0x598, x13	// Set all CSR bits
	csrrc x6, 0x598, x13	// Clear all CSR bits
	csrrw x6, 0x598, x16	// Restore CSR

// Testing CSR 0x599
	csrr x11, 0x599	// Read CSR
	li x16, -1
	csrrw x30, 0x599, x16	// Write all 1s to CSR
	csrrw x30, 0x599, x0	// Write all 0s to CSR
	csrrs x30, 0x599, x16	// Set all CSR bits
	csrrc x30, 0x599, x16	// Clear all CSR bits
	csrrw x30, 0x599, x11	// Restore CSR

// Testing CSR 0x59a
	csrr x1, 0x59a	// Read CSR
	li x18, -1
	csrrw x25, 0x59a, x18	// Write all 1s to CSR
	csrrw x25, 0x59a, x0	// Write all 0s to CSR
	csrrs x25, 0x59a, x18	// Set all CSR bits
	csrrc x25, 0x59a, x18	// Clear all CSR bits
	csrrw x25, 0x59a, x1	// Restore CSR

// Testing CSR 0x59b
	csrr x23, 0x59b	// Read CSR
	li x7, -1
	csrrw x10, 0x59b, x7	// Write all 1s to CSR
	csrrw x10, 0x59b, x0	// Write all 0s to CSR
	csrrs x10, 0x59b, x7	// Set all CSR bits
	csrrc x10, 0x59b, x7	// Clear all CSR bits
	csrrw x10, 0x59b, x23	// Restore CSR

// Testing CSR 0x59c
	csrr x11, 0x59c	// Read CSR
	li x22, -1
	csrrw x19, 0x59c, x22	// Write all 1s to CSR
	csrrw x19, 0x59c, x0	// Write all 0s to CSR
	csrrs x19, 0x59c, x22	// Set all CSR bits
	csrrc x19, 0x59c, x22	// Clear all CSR bits
	csrrw x19, 0x59c, x11	// Restore CSR

// Testing CSR 0x59d
	csrr x27, 0x59d	// Read CSR
	li x21, -1
	csrrw x8, 0x59d, x21	// Write all 1s to CSR
	csrrw x8, 0x59d, x0	// Write all 0s to CSR
	csrrs x8, 0x59d, x21	// Set all CSR bits
	csrrc x8, 0x59d, x21	// Clear all CSR bits
	csrrw x8, 0x59d, x27	// Restore CSR

// Testing CSR 0x59e
	csrr x6, 0x59e	// Read CSR
	li x13, -1
	csrrw x17, 0x59e, x13	// Write all 1s to CSR
	csrrw x17, 0x59e, x0	// Write all 0s to CSR
	csrrs x17, 0x59e, x13	// Set all CSR bits
	csrrc x17, 0x59e, x13	// Clear all CSR bits
	csrrw x17, 0x59e, x6	// Restore CSR

// Testing CSR 0x59f
	csrr x19, 0x59f	// Read CSR
	li x10, -1
	csrrw x9, 0x59f, x10	// Write all 1s to CSR
	csrrw x9, 0x59f, x0	// Write all 0s to CSR
	csrrs x9, 0x59f, x10	// Set all CSR bits
	csrrc x9, 0x59f, x10	// Clear all CSR bits
	csrrw x9, 0x59f, x19	// Restore CSR

// Testing CSR 0x5a0
	csrr x4, 0x5a0	// Read CSR
	li x28, -1
	csrrw x13, 0x5a0, x28	// Write all 1s to CSR
	csrrw x13, 0x5a0, x0	// Write all 0s to CSR
	csrrs x13, 0x5a0, x28	// Set all CSR bits
	csrrc x13, 0x5a0, x28	// Clear all CSR bits
	csrrw x13, 0x5a0, x4	// Restore CSR

// Testing CSR 0x5a1
	csrr x17, 0x5a1	// Read CSR
	li x25, -1
	csrrw x21, 0x5a1, x25	// Write all 1s to CSR
	csrrw x21, 0x5a1, x0	// Write all 0s to CSR
	csrrs x21, 0x5a1, x25	// Set all CSR bits
	csrrc x21, 0x5a1, x25	// Clear all CSR bits
	csrrw x21, 0x5a1, x17	// Restore CSR

// Testing CSR 0x5a2
	csrr x28, 0x5a2	// Read CSR
	li x12, -1
	csrrw x3, 0x5a2, x12	// Write all 1s to CSR
	csrrw x3, 0x5a2, x0	// Write all 0s to CSR
	csrrs x3, 0x5a2, x12	// Set all CSR bits
	csrrc x3, 0x5a2, x12	// Clear all CSR bits
	csrrw x3, 0x5a2, x28	// Restore CSR

// Testing CSR 0x5a3
	csrr x24, 0x5a3	// Read CSR
	li x27, -1
	csrrw x29, 0x5a3, x27	// Write all 1s to CSR
	csrrw x29, 0x5a3, x0	// Write all 0s to CSR
	csrrs x29, 0x5a3, x27	// Set all CSR bits
	csrrc x29, 0x5a3, x27	// Clear all CSR bits
	csrrw x29, 0x5a3, x24	// Restore CSR

// Testing CSR 0x5a4
	csrr x9, 0x5a4	// Read CSR
	li x12, -1
	csrrw x7, 0x5a4, x12	// Write all 1s to CSR
	csrrw x7, 0x5a4, x0	// Write all 0s to CSR
	csrrs x7, 0x5a4, x12	// Set all CSR bits
	csrrc x7, 0x5a4, x12	// Clear all CSR bits
	csrrw x7, 0x5a4, x9	// Restore CSR

// Testing CSR 0x5a5
	csrr x19, 0x5a5	// Read CSR
	li x22, -1
	csrrw x14, 0x5a5, x22	// Write all 1s to CSR
	csrrw x14, 0x5a5, x0	// Write all 0s to CSR
	csrrs x14, 0x5a5, x22	// Set all CSR bits
	csrrc x14, 0x5a5, x22	// Clear all CSR bits
	csrrw x14, 0x5a5, x19	// Restore CSR

// Testing CSR 0x5a6
	csrr x22, 0x5a6	// Read CSR
	li x25, -1
	csrrw x12, 0x5a6, x25	// Write all 1s to CSR
	csrrw x12, 0x5a6, x0	// Write all 0s to CSR
	csrrs x12, 0x5a6, x25	// Set all CSR bits
	csrrc x12, 0x5a6, x25	// Clear all CSR bits
	csrrw x12, 0x5a6, x22	// Restore CSR

// Testing CSR 0x5a7
	csrr x3, 0x5a7	// Read CSR
	li x1, -1
	csrrw x21, 0x5a7, x1	// Write all 1s to CSR
	csrrw x21, 0x5a7, x0	// Write all 0s to CSR
	csrrs x21, 0x5a7, x1	// Set all CSR bits
	csrrc x21, 0x5a7, x1	// Clear all CSR bits
	csrrw x21, 0x5a7, x3	// Restore CSR

// Testing CSR 0x5a8
	csrr x31, 0x5a8	// Read CSR
	li x16, -1
	csrrw x23, 0x5a8, x16	// Write all 1s to CSR
	csrrw x23, 0x5a8, x0	// Write all 0s to CSR
	csrrs x23, 0x5a8, x16	// Set all CSR bits
	csrrc x23, 0x5a8, x16	// Clear all CSR bits
	csrrw x23, 0x5a8, x31	// Restore CSR

// Testing CSR 0x5a9
	csrr x24, 0x5a9	// Read CSR
	li x27, -1
	csrrw x1, 0x5a9, x27	// Write all 1s to CSR
	csrrw x1, 0x5a9, x0	// Write all 0s to CSR
	csrrs x1, 0x5a9, x27	// Set all CSR bits
	csrrc x1, 0x5a9, x27	// Clear all CSR bits
	csrrw x1, 0x5a9, x24	// Restore CSR

// Testing CSR 0x5aa
	csrr x8, 0x5aa	// Read CSR
	li x3, -1
	csrrw x27, 0x5aa, x3	// Write all 1s to CSR
	csrrw x27, 0x5aa, x0	// Write all 0s to CSR
	csrrs x27, 0x5aa, x3	// Set all CSR bits
	csrrc x27, 0x5aa, x3	// Clear all CSR bits
	csrrw x27, 0x5aa, x8	// Restore CSR

// Testing CSR 0x5ab
	csrr x21, 0x5ab	// Read CSR
	li x10, -1
	csrrw x22, 0x5ab, x10	// Write all 1s to CSR
	csrrw x22, 0x5ab, x0	// Write all 0s to CSR
	csrrs x22, 0x5ab, x10	// Set all CSR bits
	csrrc x22, 0x5ab, x10	// Clear all CSR bits
	csrrw x22, 0x5ab, x21	// Restore CSR

// Testing CSR 0x5ac
	csrr x4, 0x5ac	// Read CSR
	li x19, -1
	csrrw x9, 0x5ac, x19	// Write all 1s to CSR
	csrrw x9, 0x5ac, x0	// Write all 0s to CSR
	csrrs x9, 0x5ac, x19	// Set all CSR bits
	csrrc x9, 0x5ac, x19	// Clear all CSR bits
	csrrw x9, 0x5ac, x4	// Restore CSR

// Testing CSR 0x5ad
	csrr x14, 0x5ad	// Read CSR
	li x2, -1
	csrrw x9, 0x5ad, x2	// Write all 1s to CSR
	csrrw x9, 0x5ad, x0	// Write all 0s to CSR
	csrrs x9, 0x5ad, x2	// Set all CSR bits
	csrrc x9, 0x5ad, x2	// Clear all CSR bits
	csrrw x9, 0x5ad, x14	// Restore CSR

// Testing CSR 0x5ae
	csrr x27, 0x5ae	// Read CSR
	li x25, -1
	csrrw x4, 0x5ae, x25	// Write all 1s to CSR
	csrrw x4, 0x5ae, x0	// Write all 0s to CSR
	csrrs x4, 0x5ae, x25	// Set all CSR bits
	csrrc x4, 0x5ae, x25	// Clear all CSR bits
	csrrw x4, 0x5ae, x27	// Restore CSR

// Testing CSR 0x5af
	csrr x23, 0x5af	// Read CSR
	li x13, -1
	csrrw x19, 0x5af, x13	// Write all 1s to CSR
	csrrw x19, 0x5af, x0	// Write all 0s to CSR
	csrrs x19, 0x5af, x13	// Set all CSR bits
	csrrc x19, 0x5af, x13	// Clear all CSR bits
	csrrw x19, 0x5af, x23	// Restore CSR

// Testing CSR 0x5b0
	csrr x7, 0x5b0	// Read CSR
	li x18, -1
	csrrw x31, 0x5b0, x18	// Write all 1s to CSR
	csrrw x31, 0x5b0, x0	// Write all 0s to CSR
	csrrs x31, 0x5b0, x18	// Set all CSR bits
	csrrc x31, 0x5b0, x18	// Clear all CSR bits
	csrrw x31, 0x5b0, x7	// Restore CSR

// Testing CSR 0x5b1
	csrr x12, 0x5b1	// Read CSR
	li x30, -1
	csrrw x7, 0x5b1, x30	// Write all 1s to CSR
	csrrw x7, 0x5b1, x0	// Write all 0s to CSR
	csrrs x7, 0x5b1, x30	// Set all CSR bits
	csrrc x7, 0x5b1, x30	// Clear all CSR bits
	csrrw x7, 0x5b1, x12	// Restore CSR

// Testing CSR 0x5b2
	csrr x5, 0x5b2	// Read CSR
	li x28, -1
	csrrw x15, 0x5b2, x28	// Write all 1s to CSR
	csrrw x15, 0x5b2, x0	// Write all 0s to CSR
	csrrs x15, 0x5b2, x28	// Set all CSR bits
	csrrc x15, 0x5b2, x28	// Clear all CSR bits
	csrrw x15, 0x5b2, x5	// Restore CSR

// Testing CSR 0x5b3
	csrr x3, 0x5b3	// Read CSR
	li x18, -1
	csrrw x13, 0x5b3, x18	// Write all 1s to CSR
	csrrw x13, 0x5b3, x0	// Write all 0s to CSR
	csrrs x13, 0x5b3, x18	// Set all CSR bits
	csrrc x13, 0x5b3, x18	// Clear all CSR bits
	csrrw x13, 0x5b3, x3	// Restore CSR

// Testing CSR 0x5b4
	csrr x24, 0x5b4	// Read CSR
	li x26, -1
	csrrw x4, 0x5b4, x26	// Write all 1s to CSR
	csrrw x4, 0x5b4, x0	// Write all 0s to CSR
	csrrs x4, 0x5b4, x26	// Set all CSR bits
	csrrc x4, 0x5b4, x26	// Clear all CSR bits
	csrrw x4, 0x5b4, x24	// Restore CSR

// Testing CSR 0x5b5
	csrr x17, 0x5b5	// Read CSR
	li x6, -1
	csrrw x28, 0x5b5, x6	// Write all 1s to CSR
	csrrw x28, 0x5b5, x0	// Write all 0s to CSR
	csrrs x28, 0x5b5, x6	// Set all CSR bits
	csrrc x28, 0x5b5, x6	// Clear all CSR bits
	csrrw x28, 0x5b5, x17	// Restore CSR

// Testing CSR 0x5b6
	csrr x4, 0x5b6	// Read CSR
	li x15, -1
	csrrw x7, 0x5b6, x15	// Write all 1s to CSR
	csrrw x7, 0x5b6, x0	// Write all 0s to CSR
	csrrs x7, 0x5b6, x15	// Set all CSR bits
	csrrc x7, 0x5b6, x15	// Clear all CSR bits
	csrrw x7, 0x5b6, x4	// Restore CSR

// Testing CSR 0x5b7
	csrr x6, 0x5b7	// Read CSR
	li x24, -1
	csrrw x11, 0x5b7, x24	// Write all 1s to CSR
	csrrw x11, 0x5b7, x0	// Write all 0s to CSR
	csrrs x11, 0x5b7, x24	// Set all CSR bits
	csrrc x11, 0x5b7, x24	// Clear all CSR bits
	csrrw x11, 0x5b7, x6	// Restore CSR

// Testing CSR 0x5b8
	csrr x28, 0x5b8	// Read CSR
	li x24, -1
	csrrw x6, 0x5b8, x24	// Write all 1s to CSR
	csrrw x6, 0x5b8, x0	// Write all 0s to CSR
	csrrs x6, 0x5b8, x24	// Set all CSR bits
	csrrc x6, 0x5b8, x24	// Clear all CSR bits
	csrrw x6, 0x5b8, x28	// Restore CSR

// Testing CSR 0x5b9
	csrr x20, 0x5b9	// Read CSR
	li x1, -1
	csrrw x23, 0x5b9, x1	// Write all 1s to CSR
	csrrw x23, 0x5b9, x0	// Write all 0s to CSR
	csrrs x23, 0x5b9, x1	// Set all CSR bits
	csrrc x23, 0x5b9, x1	// Clear all CSR bits
	csrrw x23, 0x5b9, x20	// Restore CSR

// Testing CSR 0x5ba
	csrr x23, 0x5ba	// Read CSR
	li x10, -1
	csrrw x14, 0x5ba, x10	// Write all 1s to CSR
	csrrw x14, 0x5ba, x0	// Write all 0s to CSR
	csrrs x14, 0x5ba, x10	// Set all CSR bits
	csrrc x14, 0x5ba, x10	// Clear all CSR bits
	csrrw x14, 0x5ba, x23	// Restore CSR

// Testing CSR 0x5bb
	csrr x14, 0x5bb	// Read CSR
	li x27, -1
	csrrw x28, 0x5bb, x27	// Write all 1s to CSR
	csrrw x28, 0x5bb, x0	// Write all 0s to CSR
	csrrs x28, 0x5bb, x27	// Set all CSR bits
	csrrc x28, 0x5bb, x27	// Clear all CSR bits
	csrrw x28, 0x5bb, x14	// Restore CSR

// Testing CSR 0x5bc
	csrr x2, 0x5bc	// Read CSR
	li x7, -1
	csrrw x18, 0x5bc, x7	// Write all 1s to CSR
	csrrw x18, 0x5bc, x0	// Write all 0s to CSR
	csrrs x18, 0x5bc, x7	// Set all CSR bits
	csrrc x18, 0x5bc, x7	// Clear all CSR bits
	csrrw x18, 0x5bc, x2	// Restore CSR

// Testing CSR 0x5bd
	csrr x3, 0x5bd	// Read CSR
	li x28, -1
	csrrw x26, 0x5bd, x28	// Write all 1s to CSR
	csrrw x26, 0x5bd, x0	// Write all 0s to CSR
	csrrs x26, 0x5bd, x28	// Set all CSR bits
	csrrc x26, 0x5bd, x28	// Clear all CSR bits
	csrrw x26, 0x5bd, x3	// Restore CSR

// Testing CSR 0x5be
	csrr x16, 0x5be	// Read CSR
	li x28, -1
	csrrw x31, 0x5be, x28	// Write all 1s to CSR
	csrrw x31, 0x5be, x0	// Write all 0s to CSR
	csrrs x31, 0x5be, x28	// Set all CSR bits
	csrrc x31, 0x5be, x28	// Clear all CSR bits
	csrrw x31, 0x5be, x16	// Restore CSR

// Testing CSR 0x5bf
	csrr x6, 0x5bf	// Read CSR
	li x30, -1
	csrrw x27, 0x5bf, x30	// Write all 1s to CSR
	csrrw x27, 0x5bf, x0	// Write all 0s to CSR
	csrrs x27, 0x5bf, x30	// Set all CSR bits
	csrrc x27, 0x5bf, x30	// Clear all CSR bits
	csrrw x27, 0x5bf, x6	// Restore CSR

// Testing CSR 0x600
	csrr x24, 0x600	// Read CSR
	li x8, -1
	csrrw x15, 0x600, x8	// Write all 1s to CSR
	csrrw x15, 0x600, x0	// Write all 0s to CSR
	csrrs x15, 0x600, x8	// Set all CSR bits
	csrrc x15, 0x600, x8	// Clear all CSR bits
	csrrw x15, 0x600, x24	// Restore CSR

// Testing CSR 0x601
	csrr x26, 0x601	// Read CSR
	li x24, -1
	csrrw x23, 0x601, x24	// Write all 1s to CSR
	csrrw x23, 0x601, x0	// Write all 0s to CSR
	csrrs x23, 0x601, x24	// Set all CSR bits
	csrrc x23, 0x601, x24	// Clear all CSR bits
	csrrw x23, 0x601, x26	// Restore CSR

// Testing CSR 0x602
	csrr x15, 0x602	// Read CSR
	li x1, -1
	csrrw x13, 0x602, x1	// Write all 1s to CSR
	csrrw x13, 0x602, x0	// Write all 0s to CSR
	csrrs x13, 0x602, x1	// Set all CSR bits
	csrrc x13, 0x602, x1	// Clear all CSR bits
	csrrw x13, 0x602, x15	// Restore CSR

// Testing CSR 0x603
	csrr x4, 0x603	// Read CSR
	li x28, -1
	csrrw x9, 0x603, x28	// Write all 1s to CSR
	csrrw x9, 0x603, x0	// Write all 0s to CSR
	csrrs x9, 0x603, x28	// Set all CSR bits
	csrrc x9, 0x603, x28	// Clear all CSR bits
	csrrw x9, 0x603, x4	// Restore CSR

// Testing CSR 0x604
	csrr x7, 0x604	// Read CSR
	li x29, -1
	csrrw x19, 0x604, x29	// Write all 1s to CSR
	csrrw x19, 0x604, x0	// Write all 0s to CSR
	csrrs x19, 0x604, x29	// Set all CSR bits
	csrrc x19, 0x604, x29	// Clear all CSR bits
	csrrw x19, 0x604, x7	// Restore CSR

// Testing CSR 0x605
	csrr x13, 0x605	// Read CSR
	li x7, -1
	csrrw x30, 0x605, x7	// Write all 1s to CSR
	csrrw x30, 0x605, x0	// Write all 0s to CSR
	csrrs x30, 0x605, x7	// Set all CSR bits
	csrrc x30, 0x605, x7	// Clear all CSR bits
	csrrw x30, 0x605, x13	// Restore CSR

// Testing CSR 0x606
	csrr x30, 0x606	// Read CSR
	li x3, -1
	csrrw x4, 0x606, x3	// Write all 1s to CSR
	csrrw x4, 0x606, x0	// Write all 0s to CSR
	csrrs x4, 0x606, x3	// Set all CSR bits
	csrrc x4, 0x606, x3	// Clear all CSR bits
	csrrw x4, 0x606, x30	// Restore CSR

// Testing CSR 0x607
	csrr x4, 0x607	// Read CSR
	li x30, -1
	csrrw x13, 0x607, x30	// Write all 1s to CSR
	csrrw x13, 0x607, x0	// Write all 0s to CSR
	csrrs x13, 0x607, x30	// Set all CSR bits
	csrrc x13, 0x607, x30	// Clear all CSR bits
	csrrw x13, 0x607, x4	// Restore CSR

// Testing CSR 0x608
	csrr x29, 0x608	// Read CSR
	li x24, -1
	csrrw x31, 0x608, x24	// Write all 1s to CSR
	csrrw x31, 0x608, x0	// Write all 0s to CSR
	csrrs x31, 0x608, x24	// Set all CSR bits
	csrrc x31, 0x608, x24	// Clear all CSR bits
	csrrw x31, 0x608, x29	// Restore CSR

// Testing CSR 0x609
	csrr x24, 0x609	// Read CSR
	li x31, -1
	csrrw x7, 0x609, x31	// Write all 1s to CSR
	csrrw x7, 0x609, x0	// Write all 0s to CSR
	csrrs x7, 0x609, x31	// Set all CSR bits
	csrrc x7, 0x609, x31	// Clear all CSR bits
	csrrw x7, 0x609, x24	// Restore CSR

// Testing CSR 0x60a
	csrr x10, 0x60a	// Read CSR
	li x1, -1
	csrrw x4, 0x60a, x1	// Write all 1s to CSR
	csrrw x4, 0x60a, x0	// Write all 0s to CSR
	csrrs x4, 0x60a, x1	// Set all CSR bits
	csrrc x4, 0x60a, x1	// Clear all CSR bits
	csrrw x4, 0x60a, x10	// Restore CSR

// Testing CSR 0x60b
	csrr x12, 0x60b	// Read CSR
	li x26, -1
	csrrw x17, 0x60b, x26	// Write all 1s to CSR
	csrrw x17, 0x60b, x0	// Write all 0s to CSR
	csrrs x17, 0x60b, x26	// Set all CSR bits
	csrrc x17, 0x60b, x26	// Clear all CSR bits
	csrrw x17, 0x60b, x12	// Restore CSR

// Testing CSR 0x60c
	csrr x8, 0x60c	// Read CSR
	li x19, -1
	csrrw x28, 0x60c, x19	// Write all 1s to CSR
	csrrw x28, 0x60c, x0	// Write all 0s to CSR
	csrrs x28, 0x60c, x19	// Set all CSR bits
	csrrc x28, 0x60c, x19	// Clear all CSR bits
	csrrw x28, 0x60c, x8	// Restore CSR

// Testing CSR 0x60d
	csrr x1, 0x60d	// Read CSR
	li x13, -1
	csrrw x28, 0x60d, x13	// Write all 1s to CSR
	csrrw x28, 0x60d, x0	// Write all 0s to CSR
	csrrs x28, 0x60d, x13	// Set all CSR bits
	csrrc x28, 0x60d, x13	// Clear all CSR bits
	csrrw x28, 0x60d, x1	// Restore CSR

// Testing CSR 0x60e
	csrr x2, 0x60e	// Read CSR
	li x5, -1
	csrrw x4, 0x60e, x5	// Write all 1s to CSR
	csrrw x4, 0x60e, x0	// Write all 0s to CSR
	csrrs x4, 0x60e, x5	// Set all CSR bits
	csrrc x4, 0x60e, x5	// Clear all CSR bits
	csrrw x4, 0x60e, x2	// Restore CSR

// Testing CSR 0x60f
	csrr x5, 0x60f	// Read CSR
	li x23, -1
	csrrw x3, 0x60f, x23	// Write all 1s to CSR
	csrrw x3, 0x60f, x0	// Write all 0s to CSR
	csrrs x3, 0x60f, x23	// Set all CSR bits
	csrrc x3, 0x60f, x23	// Clear all CSR bits
	csrrw x3, 0x60f, x5	// Restore CSR

// Testing CSR 0x610
	csrr x15, 0x610	// Read CSR
	li x29, -1
	csrrw x12, 0x610, x29	// Write all 1s to CSR
	csrrw x12, 0x610, x0	// Write all 0s to CSR
	csrrs x12, 0x610, x29	// Set all CSR bits
	csrrc x12, 0x610, x29	// Clear all CSR bits
	csrrw x12, 0x610, x15	// Restore CSR

// Testing CSR 0x611
	csrr x7, 0x611	// Read CSR
	li x31, -1
	csrrw x20, 0x611, x31	// Write all 1s to CSR
	csrrw x20, 0x611, x0	// Write all 0s to CSR
	csrrs x20, 0x611, x31	// Set all CSR bits
	csrrc x20, 0x611, x31	// Clear all CSR bits
	csrrw x20, 0x611, x7	// Restore CSR

// Testing CSR 0x612
	csrr x29, 0x612	// Read CSR
	li x6, -1
	csrrw x23, 0x612, x6	// Write all 1s to CSR
	csrrw x23, 0x612, x0	// Write all 0s to CSR
	csrrs x23, 0x612, x6	// Set all CSR bits
	csrrc x23, 0x612, x6	// Clear all CSR bits
	csrrw x23, 0x612, x29	// Restore CSR

// Testing CSR 0x613
	csrr x23, 0x613	// Read CSR
	li x22, -1
	csrrw x9, 0x613, x22	// Write all 1s to CSR
	csrrw x9, 0x613, x0	// Write all 0s to CSR
	csrrs x9, 0x613, x22	// Set all CSR bits
	csrrc x9, 0x613, x22	// Clear all CSR bits
	csrrw x9, 0x613, x23	// Restore CSR

// Testing CSR 0x614
	csrr x27, 0x614	// Read CSR
	li x28, -1
	csrrw x3, 0x614, x28	// Write all 1s to CSR
	csrrw x3, 0x614, x0	// Write all 0s to CSR
	csrrs x3, 0x614, x28	// Set all CSR bits
	csrrc x3, 0x614, x28	// Clear all CSR bits
	csrrw x3, 0x614, x27	// Restore CSR

// Testing CSR 0x615
	csrr x28, 0x615	// Read CSR
	li x21, -1
	csrrw x22, 0x615, x21	// Write all 1s to CSR
	csrrw x22, 0x615, x0	// Write all 0s to CSR
	csrrs x22, 0x615, x21	// Set all CSR bits
	csrrc x22, 0x615, x21	// Clear all CSR bits
	csrrw x22, 0x615, x28	// Restore CSR

// Testing CSR 0x616
	csrr x14, 0x616	// Read CSR
	li x11, -1
	csrrw x23, 0x616, x11	// Write all 1s to CSR
	csrrw x23, 0x616, x0	// Write all 0s to CSR
	csrrs x23, 0x616, x11	// Set all CSR bits
	csrrc x23, 0x616, x11	// Clear all CSR bits
	csrrw x23, 0x616, x14	// Restore CSR

// Testing CSR 0x617
	csrr x10, 0x617	// Read CSR
	li x21, -1
	csrrw x11, 0x617, x21	// Write all 1s to CSR
	csrrw x11, 0x617, x0	// Write all 0s to CSR
	csrrs x11, 0x617, x21	// Set all CSR bits
	csrrc x11, 0x617, x21	// Clear all CSR bits
	csrrw x11, 0x617, x10	// Restore CSR

// Testing CSR 0x618
	csrr x31, 0x618	// Read CSR
	li x19, -1
	csrrw x18, 0x618, x19	// Write all 1s to CSR
	csrrw x18, 0x618, x0	// Write all 0s to CSR
	csrrs x18, 0x618, x19	// Set all CSR bits
	csrrc x18, 0x618, x19	// Clear all CSR bits
	csrrw x18, 0x618, x31	// Restore CSR

// Testing CSR 0x619
	csrr x25, 0x619	// Read CSR
	li x4, -1
	csrrw x29, 0x619, x4	// Write all 1s to CSR
	csrrw x29, 0x619, x0	// Write all 0s to CSR
	csrrs x29, 0x619, x4	// Set all CSR bits
	csrrc x29, 0x619, x4	// Clear all CSR bits
	csrrw x29, 0x619, x25	// Restore CSR

// Testing CSR 0x61a
	csrr x22, 0x61a	// Read CSR
	li x29, -1
	csrrw x8, 0x61a, x29	// Write all 1s to CSR
	csrrw x8, 0x61a, x0	// Write all 0s to CSR
	csrrs x8, 0x61a, x29	// Set all CSR bits
	csrrc x8, 0x61a, x29	// Clear all CSR bits
	csrrw x8, 0x61a, x22	// Restore CSR

// Testing CSR 0x61b
	csrr x7, 0x61b	// Read CSR
	li x30, -1
	csrrw x13, 0x61b, x30	// Write all 1s to CSR
	csrrw x13, 0x61b, x0	// Write all 0s to CSR
	csrrs x13, 0x61b, x30	// Set all CSR bits
	csrrc x13, 0x61b, x30	// Clear all CSR bits
	csrrw x13, 0x61b, x7	// Restore CSR

// Testing CSR 0x61c
	csrr x14, 0x61c	// Read CSR
	li x30, -1
	csrrw x5, 0x61c, x30	// Write all 1s to CSR
	csrrw x5, 0x61c, x0	// Write all 0s to CSR
	csrrs x5, 0x61c, x30	// Set all CSR bits
	csrrc x5, 0x61c, x30	// Clear all CSR bits
	csrrw x5, 0x61c, x14	// Restore CSR

// Testing CSR 0x61d
	csrr x20, 0x61d	// Read CSR
	li x28, -1
	csrrw x3, 0x61d, x28	// Write all 1s to CSR
	csrrw x3, 0x61d, x0	// Write all 0s to CSR
	csrrs x3, 0x61d, x28	// Set all CSR bits
	csrrc x3, 0x61d, x28	// Clear all CSR bits
	csrrw x3, 0x61d, x20	// Restore CSR

// Testing CSR 0x61e
	csrr x24, 0x61e	// Read CSR
	li x8, -1
	csrrw x10, 0x61e, x8	// Write all 1s to CSR
	csrrw x10, 0x61e, x0	// Write all 0s to CSR
	csrrs x10, 0x61e, x8	// Set all CSR bits
	csrrc x10, 0x61e, x8	// Clear all CSR bits
	csrrw x10, 0x61e, x24	// Restore CSR

// Testing CSR 0x61f
	csrr x30, 0x61f	// Read CSR
	li x23, -1
	csrrw x24, 0x61f, x23	// Write all 1s to CSR
	csrrw x24, 0x61f, x0	// Write all 0s to CSR
	csrrs x24, 0x61f, x23	// Set all CSR bits
	csrrc x24, 0x61f, x23	// Clear all CSR bits
	csrrw x24, 0x61f, x30	// Restore CSR

// Testing CSR 0x620
	csrr x14, 0x620	// Read CSR
	li x10, -1
	csrrw x2, 0x620, x10	// Write all 1s to CSR
	csrrw x2, 0x620, x0	// Write all 0s to CSR
	csrrs x2, 0x620, x10	// Set all CSR bits
	csrrc x2, 0x620, x10	// Clear all CSR bits
	csrrw x2, 0x620, x14	// Restore CSR

// Testing CSR 0x621
	csrr x26, 0x621	// Read CSR
	li x21, -1
	csrrw x2, 0x621, x21	// Write all 1s to CSR
	csrrw x2, 0x621, x0	// Write all 0s to CSR
	csrrs x2, 0x621, x21	// Set all CSR bits
	csrrc x2, 0x621, x21	// Clear all CSR bits
	csrrw x2, 0x621, x26	// Restore CSR

// Testing CSR 0x622
	csrr x13, 0x622	// Read CSR
	li x30, -1
	csrrw x9, 0x622, x30	// Write all 1s to CSR
	csrrw x9, 0x622, x0	// Write all 0s to CSR
	csrrs x9, 0x622, x30	// Set all CSR bits
	csrrc x9, 0x622, x30	// Clear all CSR bits
	csrrw x9, 0x622, x13	// Restore CSR

// Testing CSR 0x623
	csrr x26, 0x623	// Read CSR
	li x1, -1
	csrrw x13, 0x623, x1	// Write all 1s to CSR
	csrrw x13, 0x623, x0	// Write all 0s to CSR
	csrrs x13, 0x623, x1	// Set all CSR bits
	csrrc x13, 0x623, x1	// Clear all CSR bits
	csrrw x13, 0x623, x26	// Restore CSR

// Testing CSR 0x624
	csrr x4, 0x624	// Read CSR
	li x1, -1
	csrrw x19, 0x624, x1	// Write all 1s to CSR
	csrrw x19, 0x624, x0	// Write all 0s to CSR
	csrrs x19, 0x624, x1	// Set all CSR bits
	csrrc x19, 0x624, x1	// Clear all CSR bits
	csrrw x19, 0x624, x4	// Restore CSR

// Testing CSR 0x625
	csrr x1, 0x625	// Read CSR
	li x10, -1
	csrrw x2, 0x625, x10	// Write all 1s to CSR
	csrrw x2, 0x625, x0	// Write all 0s to CSR
	csrrs x2, 0x625, x10	// Set all CSR bits
	csrrc x2, 0x625, x10	// Clear all CSR bits
	csrrw x2, 0x625, x1	// Restore CSR

// Testing CSR 0x626
	csrr x1, 0x626	// Read CSR
	li x31, -1
	csrrw x13, 0x626, x31	// Write all 1s to CSR
	csrrw x13, 0x626, x0	// Write all 0s to CSR
	csrrs x13, 0x626, x31	// Set all CSR bits
	csrrc x13, 0x626, x31	// Clear all CSR bits
	csrrw x13, 0x626, x1	// Restore CSR

// Testing CSR 0x627
	csrr x31, 0x627	// Read CSR
	li x18, -1
	csrrw x20, 0x627, x18	// Write all 1s to CSR
	csrrw x20, 0x627, x0	// Write all 0s to CSR
	csrrs x20, 0x627, x18	// Set all CSR bits
	csrrc x20, 0x627, x18	// Clear all CSR bits
	csrrw x20, 0x627, x31	// Restore CSR

// Testing CSR 0x628
	csrr x18, 0x628	// Read CSR
	li x25, -1
	csrrw x5, 0x628, x25	// Write all 1s to CSR
	csrrw x5, 0x628, x0	// Write all 0s to CSR
	csrrs x5, 0x628, x25	// Set all CSR bits
	csrrc x5, 0x628, x25	// Clear all CSR bits
	csrrw x5, 0x628, x18	// Restore CSR

// Testing CSR 0x629
	csrr x16, 0x629	// Read CSR
	li x4, -1
	csrrw x26, 0x629, x4	// Write all 1s to CSR
	csrrw x26, 0x629, x0	// Write all 0s to CSR
	csrrs x26, 0x629, x4	// Set all CSR bits
	csrrc x26, 0x629, x4	// Clear all CSR bits
	csrrw x26, 0x629, x16	// Restore CSR

// Testing CSR 0x62a
	csrr x27, 0x62a	// Read CSR
	li x3, -1
	csrrw x19, 0x62a, x3	// Write all 1s to CSR
	csrrw x19, 0x62a, x0	// Write all 0s to CSR
	csrrs x19, 0x62a, x3	// Set all CSR bits
	csrrc x19, 0x62a, x3	// Clear all CSR bits
	csrrw x19, 0x62a, x27	// Restore CSR

// Testing CSR 0x62b
	csrr x2, 0x62b	// Read CSR
	li x31, -1
	csrrw x14, 0x62b, x31	// Write all 1s to CSR
	csrrw x14, 0x62b, x0	// Write all 0s to CSR
	csrrs x14, 0x62b, x31	// Set all CSR bits
	csrrc x14, 0x62b, x31	// Clear all CSR bits
	csrrw x14, 0x62b, x2	// Restore CSR

// Testing CSR 0x62c
	csrr x7, 0x62c	// Read CSR
	li x8, -1
	csrrw x27, 0x62c, x8	// Write all 1s to CSR
	csrrw x27, 0x62c, x0	// Write all 0s to CSR
	csrrs x27, 0x62c, x8	// Set all CSR bits
	csrrc x27, 0x62c, x8	// Clear all CSR bits
	csrrw x27, 0x62c, x7	// Restore CSR

// Testing CSR 0x62d
	csrr x26, 0x62d	// Read CSR
	li x1, -1
	csrrw x3, 0x62d, x1	// Write all 1s to CSR
	csrrw x3, 0x62d, x0	// Write all 0s to CSR
	csrrs x3, 0x62d, x1	// Set all CSR bits
	csrrc x3, 0x62d, x1	// Clear all CSR bits
	csrrw x3, 0x62d, x26	// Restore CSR

// Testing CSR 0x62e
	csrr x4, 0x62e	// Read CSR
	li x22, -1
	csrrw x24, 0x62e, x22	// Write all 1s to CSR
	csrrw x24, 0x62e, x0	// Write all 0s to CSR
	csrrs x24, 0x62e, x22	// Set all CSR bits
	csrrc x24, 0x62e, x22	// Clear all CSR bits
	csrrw x24, 0x62e, x4	// Restore CSR

// Testing CSR 0x62f
	csrr x7, 0x62f	// Read CSR
	li x25, -1
	csrrw x21, 0x62f, x25	// Write all 1s to CSR
	csrrw x21, 0x62f, x0	// Write all 0s to CSR
	csrrs x21, 0x62f, x25	// Set all CSR bits
	csrrc x21, 0x62f, x25	// Clear all CSR bits
	csrrw x21, 0x62f, x7	// Restore CSR

// Testing CSR 0x630
	csrr x26, 0x630	// Read CSR
	li x29, -1
	csrrw x7, 0x630, x29	// Write all 1s to CSR
	csrrw x7, 0x630, x0	// Write all 0s to CSR
	csrrs x7, 0x630, x29	// Set all CSR bits
	csrrc x7, 0x630, x29	// Clear all CSR bits
	csrrw x7, 0x630, x26	// Restore CSR

// Testing CSR 0x631
	csrr x15, 0x631	// Read CSR
	li x28, -1
	csrrw x12, 0x631, x28	// Write all 1s to CSR
	csrrw x12, 0x631, x0	// Write all 0s to CSR
	csrrs x12, 0x631, x28	// Set all CSR bits
	csrrc x12, 0x631, x28	// Clear all CSR bits
	csrrw x12, 0x631, x15	// Restore CSR

// Testing CSR 0x632
	csrr x18, 0x632	// Read CSR
	li x11, -1
	csrrw x23, 0x632, x11	// Write all 1s to CSR
	csrrw x23, 0x632, x0	// Write all 0s to CSR
	csrrs x23, 0x632, x11	// Set all CSR bits
	csrrc x23, 0x632, x11	// Clear all CSR bits
	csrrw x23, 0x632, x18	// Restore CSR

// Testing CSR 0x633
	csrr x30, 0x633	// Read CSR
	li x12, -1
	csrrw x24, 0x633, x12	// Write all 1s to CSR
	csrrw x24, 0x633, x0	// Write all 0s to CSR
	csrrs x24, 0x633, x12	// Set all CSR bits
	csrrc x24, 0x633, x12	// Clear all CSR bits
	csrrw x24, 0x633, x30	// Restore CSR

// Testing CSR 0x634
	csrr x22, 0x634	// Read CSR
	li x23, -1
	csrrw x20, 0x634, x23	// Write all 1s to CSR
	csrrw x20, 0x634, x0	// Write all 0s to CSR
	csrrs x20, 0x634, x23	// Set all CSR bits
	csrrc x20, 0x634, x23	// Clear all CSR bits
	csrrw x20, 0x634, x22	// Restore CSR

// Testing CSR 0x635
	csrr x1, 0x635	// Read CSR
	li x14, -1
	csrrw x13, 0x635, x14	// Write all 1s to CSR
	csrrw x13, 0x635, x0	// Write all 0s to CSR
	csrrs x13, 0x635, x14	// Set all CSR bits
	csrrc x13, 0x635, x14	// Clear all CSR bits
	csrrw x13, 0x635, x1	// Restore CSR

// Testing CSR 0x636
	csrr x13, 0x636	// Read CSR
	li x19, -1
	csrrw x16, 0x636, x19	// Write all 1s to CSR
	csrrw x16, 0x636, x0	// Write all 0s to CSR
	csrrs x16, 0x636, x19	// Set all CSR bits
	csrrc x16, 0x636, x19	// Clear all CSR bits
	csrrw x16, 0x636, x13	// Restore CSR

// Testing CSR 0x637
	csrr x14, 0x637	// Read CSR
	li x30, -1
	csrrw x11, 0x637, x30	// Write all 1s to CSR
	csrrw x11, 0x637, x0	// Write all 0s to CSR
	csrrs x11, 0x637, x30	// Set all CSR bits
	csrrc x11, 0x637, x30	// Clear all CSR bits
	csrrw x11, 0x637, x14	// Restore CSR

// Testing CSR 0x638
	csrr x27, 0x638	// Read CSR
	li x5, -1
	csrrw x1, 0x638, x5	// Write all 1s to CSR
	csrrw x1, 0x638, x0	// Write all 0s to CSR
	csrrs x1, 0x638, x5	// Set all CSR bits
	csrrc x1, 0x638, x5	// Clear all CSR bits
	csrrw x1, 0x638, x27	// Restore CSR

// Testing CSR 0x639
	csrr x7, 0x639	// Read CSR
	li x26, -1
	csrrw x13, 0x639, x26	// Write all 1s to CSR
	csrrw x13, 0x639, x0	// Write all 0s to CSR
	csrrs x13, 0x639, x26	// Set all CSR bits
	csrrc x13, 0x639, x26	// Clear all CSR bits
	csrrw x13, 0x639, x7	// Restore CSR

// Testing CSR 0x63a
	csrr x13, 0x63a	// Read CSR
	li x31, -1
	csrrw x5, 0x63a, x31	// Write all 1s to CSR
	csrrw x5, 0x63a, x0	// Write all 0s to CSR
	csrrs x5, 0x63a, x31	// Set all CSR bits
	csrrc x5, 0x63a, x31	// Clear all CSR bits
	csrrw x5, 0x63a, x13	// Restore CSR

// Testing CSR 0x63b
	csrr x24, 0x63b	// Read CSR
	li x28, -1
	csrrw x25, 0x63b, x28	// Write all 1s to CSR
	csrrw x25, 0x63b, x0	// Write all 0s to CSR
	csrrs x25, 0x63b, x28	// Set all CSR bits
	csrrc x25, 0x63b, x28	// Clear all CSR bits
	csrrw x25, 0x63b, x24	// Restore CSR

// Testing CSR 0x63c
	csrr x16, 0x63c	// Read CSR
	li x25, -1
	csrrw x9, 0x63c, x25	// Write all 1s to CSR
	csrrw x9, 0x63c, x0	// Write all 0s to CSR
	csrrs x9, 0x63c, x25	// Set all CSR bits
	csrrc x9, 0x63c, x25	// Clear all CSR bits
	csrrw x9, 0x63c, x16	// Restore CSR

// Testing CSR 0x63d
	csrr x22, 0x63d	// Read CSR
	li x30, -1
	csrrw x21, 0x63d, x30	// Write all 1s to CSR
	csrrw x21, 0x63d, x0	// Write all 0s to CSR
	csrrs x21, 0x63d, x30	// Set all CSR bits
	csrrc x21, 0x63d, x30	// Clear all CSR bits
	csrrw x21, 0x63d, x22	// Restore CSR

// Testing CSR 0x63e
	csrr x18, 0x63e	// Read CSR
	li x2, -1
	csrrw x26, 0x63e, x2	// Write all 1s to CSR
	csrrw x26, 0x63e, x0	// Write all 0s to CSR
	csrrs x26, 0x63e, x2	// Set all CSR bits
	csrrc x26, 0x63e, x2	// Clear all CSR bits
	csrrw x26, 0x63e, x18	// Restore CSR

// Testing CSR 0x63f
	csrr x14, 0x63f	// Read CSR
	li x26, -1
	csrrw x11, 0x63f, x26	// Write all 1s to CSR
	csrrw x11, 0x63f, x0	// Write all 0s to CSR
	csrrs x11, 0x63f, x26	// Set all CSR bits
	csrrc x11, 0x63f, x26	// Clear all CSR bits
	csrrw x11, 0x63f, x14	// Restore CSR

// Testing CSR 0x640
	csrr x7, 0x640	// Read CSR
	li x29, -1
	csrrw x1, 0x640, x29	// Write all 1s to CSR
	csrrw x1, 0x640, x0	// Write all 0s to CSR
	csrrs x1, 0x640, x29	// Set all CSR bits
	csrrc x1, 0x640, x29	// Clear all CSR bits
	csrrw x1, 0x640, x7	// Restore CSR

// Testing CSR 0x641
	csrr x14, 0x641	// Read CSR
	li x11, -1
	csrrw x6, 0x641, x11	// Write all 1s to CSR
	csrrw x6, 0x641, x0	// Write all 0s to CSR
	csrrs x6, 0x641, x11	// Set all CSR bits
	csrrc x6, 0x641, x11	// Clear all CSR bits
	csrrw x6, 0x641, x14	// Restore CSR

// Testing CSR 0x642
	csrr x4, 0x642	// Read CSR
	li x21, -1
	csrrw x8, 0x642, x21	// Write all 1s to CSR
	csrrw x8, 0x642, x0	// Write all 0s to CSR
	csrrs x8, 0x642, x21	// Set all CSR bits
	csrrc x8, 0x642, x21	// Clear all CSR bits
	csrrw x8, 0x642, x4	// Restore CSR

// Testing CSR 0x643
	csrr x24, 0x643	// Read CSR
	li x11, -1
	csrrw x30, 0x643, x11	// Write all 1s to CSR
	csrrw x30, 0x643, x0	// Write all 0s to CSR
	csrrs x30, 0x643, x11	// Set all CSR bits
	csrrc x30, 0x643, x11	// Clear all CSR bits
	csrrw x30, 0x643, x24	// Restore CSR

// Testing CSR 0x644
	csrr x13, 0x644	// Read CSR
	li x22, -1
	csrrw x11, 0x644, x22	// Write all 1s to CSR
	csrrw x11, 0x644, x0	// Write all 0s to CSR
	csrrs x11, 0x644, x22	// Set all CSR bits
	csrrc x11, 0x644, x22	// Clear all CSR bits
	csrrw x11, 0x644, x13	// Restore CSR

// Testing CSR 0x645
	csrr x11, 0x645	// Read CSR
	li x6, -1
	csrrw x7, 0x645, x6	// Write all 1s to CSR
	csrrw x7, 0x645, x0	// Write all 0s to CSR
	csrrs x7, 0x645, x6	// Set all CSR bits
	csrrc x7, 0x645, x6	// Clear all CSR bits
	csrrw x7, 0x645, x11	// Restore CSR

// Testing CSR 0x646
	csrr x25, 0x646	// Read CSR
	li x19, -1
	csrrw x8, 0x646, x19	// Write all 1s to CSR
	csrrw x8, 0x646, x0	// Write all 0s to CSR
	csrrs x8, 0x646, x19	// Set all CSR bits
	csrrc x8, 0x646, x19	// Clear all CSR bits
	csrrw x8, 0x646, x25	// Restore CSR

// Testing CSR 0x647
	csrr x27, 0x647	// Read CSR
	li x13, -1
	csrrw x4, 0x647, x13	// Write all 1s to CSR
	csrrw x4, 0x647, x0	// Write all 0s to CSR
	csrrs x4, 0x647, x13	// Set all CSR bits
	csrrc x4, 0x647, x13	// Clear all CSR bits
	csrrw x4, 0x647, x27	// Restore CSR

// Testing CSR 0x648
	csrr x13, 0x648	// Read CSR
	li x25, -1
	csrrw x26, 0x648, x25	// Write all 1s to CSR
	csrrw x26, 0x648, x0	// Write all 0s to CSR
	csrrs x26, 0x648, x25	// Set all CSR bits
	csrrc x26, 0x648, x25	// Clear all CSR bits
	csrrw x26, 0x648, x13	// Restore CSR

// Testing CSR 0x649
	csrr x28, 0x649	// Read CSR
	li x19, -1
	csrrw x18, 0x649, x19	// Write all 1s to CSR
	csrrw x18, 0x649, x0	// Write all 0s to CSR
	csrrs x18, 0x649, x19	// Set all CSR bits
	csrrc x18, 0x649, x19	// Clear all CSR bits
	csrrw x18, 0x649, x28	// Restore CSR

// Testing CSR 0x64a
	csrr x30, 0x64a	// Read CSR
	li x21, -1
	csrrw x20, 0x64a, x21	// Write all 1s to CSR
	csrrw x20, 0x64a, x0	// Write all 0s to CSR
	csrrs x20, 0x64a, x21	// Set all CSR bits
	csrrc x20, 0x64a, x21	// Clear all CSR bits
	csrrw x20, 0x64a, x30	// Restore CSR

// Testing CSR 0x64b
	csrr x8, 0x64b	// Read CSR
	li x24, -1
	csrrw x25, 0x64b, x24	// Write all 1s to CSR
	csrrw x25, 0x64b, x0	// Write all 0s to CSR
	csrrs x25, 0x64b, x24	// Set all CSR bits
	csrrc x25, 0x64b, x24	// Clear all CSR bits
	csrrw x25, 0x64b, x8	// Restore CSR

// Testing CSR 0x64c
	csrr x10, 0x64c	// Read CSR
	li x1, -1
	csrrw x26, 0x64c, x1	// Write all 1s to CSR
	csrrw x26, 0x64c, x0	// Write all 0s to CSR
	csrrs x26, 0x64c, x1	// Set all CSR bits
	csrrc x26, 0x64c, x1	// Clear all CSR bits
	csrrw x26, 0x64c, x10	// Restore CSR

// Testing CSR 0x64d
	csrr x6, 0x64d	// Read CSR
	li x19, -1
	csrrw x10, 0x64d, x19	// Write all 1s to CSR
	csrrw x10, 0x64d, x0	// Write all 0s to CSR
	csrrs x10, 0x64d, x19	// Set all CSR bits
	csrrc x10, 0x64d, x19	// Clear all CSR bits
	csrrw x10, 0x64d, x6	// Restore CSR

// Testing CSR 0x64e
	csrr x12, 0x64e	// Read CSR
	li x11, -1
	csrrw x30, 0x64e, x11	// Write all 1s to CSR
	csrrw x30, 0x64e, x0	// Write all 0s to CSR
	csrrs x30, 0x64e, x11	// Set all CSR bits
	csrrc x30, 0x64e, x11	// Clear all CSR bits
	csrrw x30, 0x64e, x12	// Restore CSR

// Testing CSR 0x64f
	csrr x17, 0x64f	// Read CSR
	li x11, -1
	csrrw x19, 0x64f, x11	// Write all 1s to CSR
	csrrw x19, 0x64f, x0	// Write all 0s to CSR
	csrrs x19, 0x64f, x11	// Set all CSR bits
	csrrc x19, 0x64f, x11	// Clear all CSR bits
	csrrw x19, 0x64f, x17	// Restore CSR

// Testing CSR 0x650
	csrr x14, 0x650	// Read CSR
	li x24, -1
	csrrw x30, 0x650, x24	// Write all 1s to CSR
	csrrw x30, 0x650, x0	// Write all 0s to CSR
	csrrs x30, 0x650, x24	// Set all CSR bits
	csrrc x30, 0x650, x24	// Clear all CSR bits
	csrrw x30, 0x650, x14	// Restore CSR

// Testing CSR 0x651
	csrr x15, 0x651	// Read CSR
	li x31, -1
	csrrw x6, 0x651, x31	// Write all 1s to CSR
	csrrw x6, 0x651, x0	// Write all 0s to CSR
	csrrs x6, 0x651, x31	// Set all CSR bits
	csrrc x6, 0x651, x31	// Clear all CSR bits
	csrrw x6, 0x651, x15	// Restore CSR

// Testing CSR 0x652
	csrr x12, 0x652	// Read CSR
	li x3, -1
	csrrw x8, 0x652, x3	// Write all 1s to CSR
	csrrw x8, 0x652, x0	// Write all 0s to CSR
	csrrs x8, 0x652, x3	// Set all CSR bits
	csrrc x8, 0x652, x3	// Clear all CSR bits
	csrrw x8, 0x652, x12	// Restore CSR

// Testing CSR 0x653
	csrr x12, 0x653	// Read CSR
	li x22, -1
	csrrw x7, 0x653, x22	// Write all 1s to CSR
	csrrw x7, 0x653, x0	// Write all 0s to CSR
	csrrs x7, 0x653, x22	// Set all CSR bits
	csrrc x7, 0x653, x22	// Clear all CSR bits
	csrrw x7, 0x653, x12	// Restore CSR

// Testing CSR 0x654
	csrr x26, 0x654	// Read CSR
	li x29, -1
	csrrw x2, 0x654, x29	// Write all 1s to CSR
	csrrw x2, 0x654, x0	// Write all 0s to CSR
	csrrs x2, 0x654, x29	// Set all CSR bits
	csrrc x2, 0x654, x29	// Clear all CSR bits
	csrrw x2, 0x654, x26	// Restore CSR

// Testing CSR 0x655
	csrr x11, 0x655	// Read CSR
	li x17, -1
	csrrw x27, 0x655, x17	// Write all 1s to CSR
	csrrw x27, 0x655, x0	// Write all 0s to CSR
	csrrs x27, 0x655, x17	// Set all CSR bits
	csrrc x27, 0x655, x17	// Clear all CSR bits
	csrrw x27, 0x655, x11	// Restore CSR

// Testing CSR 0x656
	csrr x23, 0x656	// Read CSR
	li x30, -1
	csrrw x21, 0x656, x30	// Write all 1s to CSR
	csrrw x21, 0x656, x0	// Write all 0s to CSR
	csrrs x21, 0x656, x30	// Set all CSR bits
	csrrc x21, 0x656, x30	// Clear all CSR bits
	csrrw x21, 0x656, x23	// Restore CSR

// Testing CSR 0x657
	csrr x31, 0x657	// Read CSR
	li x4, -1
	csrrw x12, 0x657, x4	// Write all 1s to CSR
	csrrw x12, 0x657, x0	// Write all 0s to CSR
	csrrs x12, 0x657, x4	// Set all CSR bits
	csrrc x12, 0x657, x4	// Clear all CSR bits
	csrrw x12, 0x657, x31	// Restore CSR

// Testing CSR 0x658
	csrr x28, 0x658	// Read CSR
	li x9, -1
	csrrw x19, 0x658, x9	// Write all 1s to CSR
	csrrw x19, 0x658, x0	// Write all 0s to CSR
	csrrs x19, 0x658, x9	// Set all CSR bits
	csrrc x19, 0x658, x9	// Clear all CSR bits
	csrrw x19, 0x658, x28	// Restore CSR

// Testing CSR 0x659
	csrr x21, 0x659	// Read CSR
	li x1, -1
	csrrw x3, 0x659, x1	// Write all 1s to CSR
	csrrw x3, 0x659, x0	// Write all 0s to CSR
	csrrs x3, 0x659, x1	// Set all CSR bits
	csrrc x3, 0x659, x1	// Clear all CSR bits
	csrrw x3, 0x659, x21	// Restore CSR

// Testing CSR 0x65a
	csrr x31, 0x65a	// Read CSR
	li x9, -1
	csrrw x5, 0x65a, x9	// Write all 1s to CSR
	csrrw x5, 0x65a, x0	// Write all 0s to CSR
	csrrs x5, 0x65a, x9	// Set all CSR bits
	csrrc x5, 0x65a, x9	// Clear all CSR bits
	csrrw x5, 0x65a, x31	// Restore CSR

// Testing CSR 0x65b
	csrr x15, 0x65b	// Read CSR
	li x31, -1
	csrrw x9, 0x65b, x31	// Write all 1s to CSR
	csrrw x9, 0x65b, x0	// Write all 0s to CSR
	csrrs x9, 0x65b, x31	// Set all CSR bits
	csrrc x9, 0x65b, x31	// Clear all CSR bits
	csrrw x9, 0x65b, x15	// Restore CSR

// Testing CSR 0x65c
	csrr x28, 0x65c	// Read CSR
	li x30, -1
	csrrw x10, 0x65c, x30	// Write all 1s to CSR
	csrrw x10, 0x65c, x0	// Write all 0s to CSR
	csrrs x10, 0x65c, x30	// Set all CSR bits
	csrrc x10, 0x65c, x30	// Clear all CSR bits
	csrrw x10, 0x65c, x28	// Restore CSR

// Testing CSR 0x65d
	csrr x27, 0x65d	// Read CSR
	li x3, -1
	csrrw x18, 0x65d, x3	// Write all 1s to CSR
	csrrw x18, 0x65d, x0	// Write all 0s to CSR
	csrrs x18, 0x65d, x3	// Set all CSR bits
	csrrc x18, 0x65d, x3	// Clear all CSR bits
	csrrw x18, 0x65d, x27	// Restore CSR

// Testing CSR 0x65e
	csrr x3, 0x65e	// Read CSR
	li x20, -1
	csrrw x5, 0x65e, x20	// Write all 1s to CSR
	csrrw x5, 0x65e, x0	// Write all 0s to CSR
	csrrs x5, 0x65e, x20	// Set all CSR bits
	csrrc x5, 0x65e, x20	// Clear all CSR bits
	csrrw x5, 0x65e, x3	// Restore CSR

// Testing CSR 0x65f
	csrr x31, 0x65f	// Read CSR
	li x19, -1
	csrrw x4, 0x65f, x19	// Write all 1s to CSR
	csrrw x4, 0x65f, x0	// Write all 0s to CSR
	csrrs x4, 0x65f, x19	// Set all CSR bits
	csrrc x4, 0x65f, x19	// Clear all CSR bits
	csrrw x4, 0x65f, x31	// Restore CSR

// Testing CSR 0x660
	csrr x3, 0x660	// Read CSR
	li x18, -1
	csrrw x8, 0x660, x18	// Write all 1s to CSR
	csrrw x8, 0x660, x0	// Write all 0s to CSR
	csrrs x8, 0x660, x18	// Set all CSR bits
	csrrc x8, 0x660, x18	// Clear all CSR bits
	csrrw x8, 0x660, x3	// Restore CSR

// Testing CSR 0x661
	csrr x20, 0x661	// Read CSR
	li x2, -1
	csrrw x5, 0x661, x2	// Write all 1s to CSR
	csrrw x5, 0x661, x0	// Write all 0s to CSR
	csrrs x5, 0x661, x2	// Set all CSR bits
	csrrc x5, 0x661, x2	// Clear all CSR bits
	csrrw x5, 0x661, x20	// Restore CSR

// Testing CSR 0x662
	csrr x18, 0x662	// Read CSR
	li x29, -1
	csrrw x11, 0x662, x29	// Write all 1s to CSR
	csrrw x11, 0x662, x0	// Write all 0s to CSR
	csrrs x11, 0x662, x29	// Set all CSR bits
	csrrc x11, 0x662, x29	// Clear all CSR bits
	csrrw x11, 0x662, x18	// Restore CSR

// Testing CSR 0x663
	csrr x23, 0x663	// Read CSR
	li x28, -1
	csrrw x4, 0x663, x28	// Write all 1s to CSR
	csrrw x4, 0x663, x0	// Write all 0s to CSR
	csrrs x4, 0x663, x28	// Set all CSR bits
	csrrc x4, 0x663, x28	// Clear all CSR bits
	csrrw x4, 0x663, x23	// Restore CSR

// Testing CSR 0x664
	csrr x3, 0x664	// Read CSR
	li x26, -1
	csrrw x5, 0x664, x26	// Write all 1s to CSR
	csrrw x5, 0x664, x0	// Write all 0s to CSR
	csrrs x5, 0x664, x26	// Set all CSR bits
	csrrc x5, 0x664, x26	// Clear all CSR bits
	csrrw x5, 0x664, x3	// Restore CSR

// Testing CSR 0x665
	csrr x25, 0x665	// Read CSR
	li x19, -1
	csrrw x27, 0x665, x19	// Write all 1s to CSR
	csrrw x27, 0x665, x0	// Write all 0s to CSR
	csrrs x27, 0x665, x19	// Set all CSR bits
	csrrc x27, 0x665, x19	// Clear all CSR bits
	csrrw x27, 0x665, x25	// Restore CSR

// Testing CSR 0x666
	csrr x6, 0x666	// Read CSR
	li x27, -1
	csrrw x25, 0x666, x27	// Write all 1s to CSR
	csrrw x25, 0x666, x0	// Write all 0s to CSR
	csrrs x25, 0x666, x27	// Set all CSR bits
	csrrc x25, 0x666, x27	// Clear all CSR bits
	csrrw x25, 0x666, x6	// Restore CSR

// Testing CSR 0x667
	csrr x12, 0x667	// Read CSR
	li x5, -1
	csrrw x9, 0x667, x5	// Write all 1s to CSR
	csrrw x9, 0x667, x0	// Write all 0s to CSR
	csrrs x9, 0x667, x5	// Set all CSR bits
	csrrc x9, 0x667, x5	// Clear all CSR bits
	csrrw x9, 0x667, x12	// Restore CSR

// Testing CSR 0x668
	csrr x17, 0x668	// Read CSR
	li x16, -1
	csrrw x21, 0x668, x16	// Write all 1s to CSR
	csrrw x21, 0x668, x0	// Write all 0s to CSR
	csrrs x21, 0x668, x16	// Set all CSR bits
	csrrc x21, 0x668, x16	// Clear all CSR bits
	csrrw x21, 0x668, x17	// Restore CSR

// Testing CSR 0x669
	csrr x23, 0x669	// Read CSR
	li x9, -1
	csrrw x8, 0x669, x9	// Write all 1s to CSR
	csrrw x8, 0x669, x0	// Write all 0s to CSR
	csrrs x8, 0x669, x9	// Set all CSR bits
	csrrc x8, 0x669, x9	// Clear all CSR bits
	csrrw x8, 0x669, x23	// Restore CSR

// Testing CSR 0x66a
	csrr x23, 0x66a	// Read CSR
	li x28, -1
	csrrw x18, 0x66a, x28	// Write all 1s to CSR
	csrrw x18, 0x66a, x0	// Write all 0s to CSR
	csrrs x18, 0x66a, x28	// Set all CSR bits
	csrrc x18, 0x66a, x28	// Clear all CSR bits
	csrrw x18, 0x66a, x23	// Restore CSR

// Testing CSR 0x66b
	csrr x25, 0x66b	// Read CSR
	li x1, -1
	csrrw x10, 0x66b, x1	// Write all 1s to CSR
	csrrw x10, 0x66b, x0	// Write all 0s to CSR
	csrrs x10, 0x66b, x1	// Set all CSR bits
	csrrc x10, 0x66b, x1	// Clear all CSR bits
	csrrw x10, 0x66b, x25	// Restore CSR

// Testing CSR 0x66c
	csrr x7, 0x66c	// Read CSR
	li x12, -1
	csrrw x13, 0x66c, x12	// Write all 1s to CSR
	csrrw x13, 0x66c, x0	// Write all 0s to CSR
	csrrs x13, 0x66c, x12	// Set all CSR bits
	csrrc x13, 0x66c, x12	// Clear all CSR bits
	csrrw x13, 0x66c, x7	// Restore CSR

// Testing CSR 0x66d
	csrr x16, 0x66d	// Read CSR
	li x11, -1
	csrrw x9, 0x66d, x11	// Write all 1s to CSR
	csrrw x9, 0x66d, x0	// Write all 0s to CSR
	csrrs x9, 0x66d, x11	// Set all CSR bits
	csrrc x9, 0x66d, x11	// Clear all CSR bits
	csrrw x9, 0x66d, x16	// Restore CSR

// Testing CSR 0x66e
	csrr x31, 0x66e	// Read CSR
	li x1, -1
	csrrw x20, 0x66e, x1	// Write all 1s to CSR
	csrrw x20, 0x66e, x0	// Write all 0s to CSR
	csrrs x20, 0x66e, x1	// Set all CSR bits
	csrrc x20, 0x66e, x1	// Clear all CSR bits
	csrrw x20, 0x66e, x31	// Restore CSR

// Testing CSR 0x66f
	csrr x26, 0x66f	// Read CSR
	li x5, -1
	csrrw x9, 0x66f, x5	// Write all 1s to CSR
	csrrw x9, 0x66f, x0	// Write all 0s to CSR
	csrrs x9, 0x66f, x5	// Set all CSR bits
	csrrc x9, 0x66f, x5	// Clear all CSR bits
	csrrw x9, 0x66f, x26	// Restore CSR

// Testing CSR 0x670
	csrr x8, 0x670	// Read CSR
	li x10, -1
	csrrw x29, 0x670, x10	// Write all 1s to CSR
	csrrw x29, 0x670, x0	// Write all 0s to CSR
	csrrs x29, 0x670, x10	// Set all CSR bits
	csrrc x29, 0x670, x10	// Clear all CSR bits
	csrrw x29, 0x670, x8	// Restore CSR

// Testing CSR 0x671
	csrr x10, 0x671	// Read CSR
	li x5, -1
	csrrw x8, 0x671, x5	// Write all 1s to CSR
	csrrw x8, 0x671, x0	// Write all 0s to CSR
	csrrs x8, 0x671, x5	// Set all CSR bits
	csrrc x8, 0x671, x5	// Clear all CSR bits
	csrrw x8, 0x671, x10	// Restore CSR

// Testing CSR 0x672
	csrr x11, 0x672	// Read CSR
	li x5, -1
	csrrw x18, 0x672, x5	// Write all 1s to CSR
	csrrw x18, 0x672, x0	// Write all 0s to CSR
	csrrs x18, 0x672, x5	// Set all CSR bits
	csrrc x18, 0x672, x5	// Clear all CSR bits
	csrrw x18, 0x672, x11	// Restore CSR

// Testing CSR 0x673
	csrr x3, 0x673	// Read CSR
	li x28, -1
	csrrw x30, 0x673, x28	// Write all 1s to CSR
	csrrw x30, 0x673, x0	// Write all 0s to CSR
	csrrs x30, 0x673, x28	// Set all CSR bits
	csrrc x30, 0x673, x28	// Clear all CSR bits
	csrrw x30, 0x673, x3	// Restore CSR

// Testing CSR 0x674
	csrr x4, 0x674	// Read CSR
	li x16, -1
	csrrw x11, 0x674, x16	// Write all 1s to CSR
	csrrw x11, 0x674, x0	// Write all 0s to CSR
	csrrs x11, 0x674, x16	// Set all CSR bits
	csrrc x11, 0x674, x16	// Clear all CSR bits
	csrrw x11, 0x674, x4	// Restore CSR

// Testing CSR 0x675
	csrr x27, 0x675	// Read CSR
	li x20, -1
	csrrw x3, 0x675, x20	// Write all 1s to CSR
	csrrw x3, 0x675, x0	// Write all 0s to CSR
	csrrs x3, 0x675, x20	// Set all CSR bits
	csrrc x3, 0x675, x20	// Clear all CSR bits
	csrrw x3, 0x675, x27	// Restore CSR

// Testing CSR 0x676
	csrr x26, 0x676	// Read CSR
	li x8, -1
	csrrw x22, 0x676, x8	// Write all 1s to CSR
	csrrw x22, 0x676, x0	// Write all 0s to CSR
	csrrs x22, 0x676, x8	// Set all CSR bits
	csrrc x22, 0x676, x8	// Clear all CSR bits
	csrrw x22, 0x676, x26	// Restore CSR

// Testing CSR 0x677
	csrr x22, 0x677	// Read CSR
	li x10, -1
	csrrw x6, 0x677, x10	// Write all 1s to CSR
	csrrw x6, 0x677, x0	// Write all 0s to CSR
	csrrs x6, 0x677, x10	// Set all CSR bits
	csrrc x6, 0x677, x10	// Clear all CSR bits
	csrrw x6, 0x677, x22	// Restore CSR

// Testing CSR 0x678
	csrr x2, 0x678	// Read CSR
	li x9, -1
	csrrw x1, 0x678, x9	// Write all 1s to CSR
	csrrw x1, 0x678, x0	// Write all 0s to CSR
	csrrs x1, 0x678, x9	// Set all CSR bits
	csrrc x1, 0x678, x9	// Clear all CSR bits
	csrrw x1, 0x678, x2	// Restore CSR

// Testing CSR 0x679
	csrr x1, 0x679	// Read CSR
	li x27, -1
	csrrw x3, 0x679, x27	// Write all 1s to CSR
	csrrw x3, 0x679, x0	// Write all 0s to CSR
	csrrs x3, 0x679, x27	// Set all CSR bits
	csrrc x3, 0x679, x27	// Clear all CSR bits
	csrrw x3, 0x679, x1	// Restore CSR

// Testing CSR 0x67a
	csrr x10, 0x67a	// Read CSR
	li x9, -1
	csrrw x22, 0x67a, x9	// Write all 1s to CSR
	csrrw x22, 0x67a, x0	// Write all 0s to CSR
	csrrs x22, 0x67a, x9	// Set all CSR bits
	csrrc x22, 0x67a, x9	// Clear all CSR bits
	csrrw x22, 0x67a, x10	// Restore CSR

// Testing CSR 0x67b
	csrr x11, 0x67b	// Read CSR
	li x14, -1
	csrrw x29, 0x67b, x14	// Write all 1s to CSR
	csrrw x29, 0x67b, x0	// Write all 0s to CSR
	csrrs x29, 0x67b, x14	// Set all CSR bits
	csrrc x29, 0x67b, x14	// Clear all CSR bits
	csrrw x29, 0x67b, x11	// Restore CSR

// Testing CSR 0x67c
	csrr x14, 0x67c	// Read CSR
	li x5, -1
	csrrw x21, 0x67c, x5	// Write all 1s to CSR
	csrrw x21, 0x67c, x0	// Write all 0s to CSR
	csrrs x21, 0x67c, x5	// Set all CSR bits
	csrrc x21, 0x67c, x5	// Clear all CSR bits
	csrrw x21, 0x67c, x14	// Restore CSR

// Testing CSR 0x67d
	csrr x22, 0x67d	// Read CSR
	li x20, -1
	csrrw x23, 0x67d, x20	// Write all 1s to CSR
	csrrw x23, 0x67d, x0	// Write all 0s to CSR
	csrrs x23, 0x67d, x20	// Set all CSR bits
	csrrc x23, 0x67d, x20	// Clear all CSR bits
	csrrw x23, 0x67d, x22	// Restore CSR

// Testing CSR 0x67e
	csrr x17, 0x67e	// Read CSR
	li x21, -1
	csrrw x4, 0x67e, x21	// Write all 1s to CSR
	csrrw x4, 0x67e, x0	// Write all 0s to CSR
	csrrs x4, 0x67e, x21	// Set all CSR bits
	csrrc x4, 0x67e, x21	// Clear all CSR bits
	csrrw x4, 0x67e, x17	// Restore CSR

// Testing CSR 0x67f
	csrr x20, 0x67f	// Read CSR
	li x27, -1
	csrrw x14, 0x67f, x27	// Write all 1s to CSR
	csrrw x14, 0x67f, x0	// Write all 0s to CSR
	csrrs x14, 0x67f, x27	// Set all CSR bits
	csrrc x14, 0x67f, x27	// Clear all CSR bits
	csrrw x14, 0x67f, x20	// Restore CSR

// Testing CSR 0x680
	csrr x15, 0x680	// Read CSR
	li x12, -1
	csrrw x10, 0x680, x12	// Write all 1s to CSR
	csrrw x10, 0x680, x0	// Write all 0s to CSR
	csrrs x10, 0x680, x12	// Set all CSR bits
	csrrc x10, 0x680, x12	// Clear all CSR bits
	csrrw x10, 0x680, x15	// Restore CSR

// Testing CSR 0x681
	csrr x19, 0x681	// Read CSR
	li x16, -1
	csrrw x4, 0x681, x16	// Write all 1s to CSR
	csrrw x4, 0x681, x0	// Write all 0s to CSR
	csrrs x4, 0x681, x16	// Set all CSR bits
	csrrc x4, 0x681, x16	// Clear all CSR bits
	csrrw x4, 0x681, x19	// Restore CSR

// Testing CSR 0x682
	csrr x29, 0x682	// Read CSR
	li x15, -1
	csrrw x23, 0x682, x15	// Write all 1s to CSR
	csrrw x23, 0x682, x0	// Write all 0s to CSR
	csrrs x23, 0x682, x15	// Set all CSR bits
	csrrc x23, 0x682, x15	// Clear all CSR bits
	csrrw x23, 0x682, x29	// Restore CSR

// Testing CSR 0x683
	csrr x28, 0x683	// Read CSR
	li x29, -1
	csrrw x14, 0x683, x29	// Write all 1s to CSR
	csrrw x14, 0x683, x0	// Write all 0s to CSR
	csrrs x14, 0x683, x29	// Set all CSR bits
	csrrc x14, 0x683, x29	// Clear all CSR bits
	csrrw x14, 0x683, x28	// Restore CSR

// Testing CSR 0x684
	csrr x4, 0x684	// Read CSR
	li x14, -1
	csrrw x10, 0x684, x14	// Write all 1s to CSR
	csrrw x10, 0x684, x0	// Write all 0s to CSR
	csrrs x10, 0x684, x14	// Set all CSR bits
	csrrc x10, 0x684, x14	// Clear all CSR bits
	csrrw x10, 0x684, x4	// Restore CSR

// Testing CSR 0x685
	csrr x15, 0x685	// Read CSR
	li x9, -1
	csrrw x6, 0x685, x9	// Write all 1s to CSR
	csrrw x6, 0x685, x0	// Write all 0s to CSR
	csrrs x6, 0x685, x9	// Set all CSR bits
	csrrc x6, 0x685, x9	// Clear all CSR bits
	csrrw x6, 0x685, x15	// Restore CSR

// Testing CSR 0x686
	csrr x13, 0x686	// Read CSR
	li x20, -1
	csrrw x5, 0x686, x20	// Write all 1s to CSR
	csrrw x5, 0x686, x0	// Write all 0s to CSR
	csrrs x5, 0x686, x20	// Set all CSR bits
	csrrc x5, 0x686, x20	// Clear all CSR bits
	csrrw x5, 0x686, x13	// Restore CSR

// Testing CSR 0x687
	csrr x19, 0x687	// Read CSR
	li x14, -1
	csrrw x7, 0x687, x14	// Write all 1s to CSR
	csrrw x7, 0x687, x0	// Write all 0s to CSR
	csrrs x7, 0x687, x14	// Set all CSR bits
	csrrc x7, 0x687, x14	// Clear all CSR bits
	csrrw x7, 0x687, x19	// Restore CSR

// Testing CSR 0x688
	csrr x5, 0x688	// Read CSR
	li x6, -1
	csrrw x17, 0x688, x6	// Write all 1s to CSR
	csrrw x17, 0x688, x0	// Write all 0s to CSR
	csrrs x17, 0x688, x6	// Set all CSR bits
	csrrc x17, 0x688, x6	// Clear all CSR bits
	csrrw x17, 0x688, x5	// Restore CSR

// Testing CSR 0x689
	csrr x30, 0x689	// Read CSR
	li x8, -1
	csrrw x3, 0x689, x8	// Write all 1s to CSR
	csrrw x3, 0x689, x0	// Write all 0s to CSR
	csrrs x3, 0x689, x8	// Set all CSR bits
	csrrc x3, 0x689, x8	// Clear all CSR bits
	csrrw x3, 0x689, x30	// Restore CSR

// Testing CSR 0x68a
	csrr x29, 0x68a	// Read CSR
	li x7, -1
	csrrw x12, 0x68a, x7	// Write all 1s to CSR
	csrrw x12, 0x68a, x0	// Write all 0s to CSR
	csrrs x12, 0x68a, x7	// Set all CSR bits
	csrrc x12, 0x68a, x7	// Clear all CSR bits
	csrrw x12, 0x68a, x29	// Restore CSR

// Testing CSR 0x68b
	csrr x10, 0x68b	// Read CSR
	li x26, -1
	csrrw x15, 0x68b, x26	// Write all 1s to CSR
	csrrw x15, 0x68b, x0	// Write all 0s to CSR
	csrrs x15, 0x68b, x26	// Set all CSR bits
	csrrc x15, 0x68b, x26	// Clear all CSR bits
	csrrw x15, 0x68b, x10	// Restore CSR

// Testing CSR 0x68c
	csrr x16, 0x68c	// Read CSR
	li x30, -1
	csrrw x17, 0x68c, x30	// Write all 1s to CSR
	csrrw x17, 0x68c, x0	// Write all 0s to CSR
	csrrs x17, 0x68c, x30	// Set all CSR bits
	csrrc x17, 0x68c, x30	// Clear all CSR bits
	csrrw x17, 0x68c, x16	// Restore CSR

// Testing CSR 0x68d
	csrr x20, 0x68d	// Read CSR
	li x2, -1
	csrrw x11, 0x68d, x2	// Write all 1s to CSR
	csrrw x11, 0x68d, x0	// Write all 0s to CSR
	csrrs x11, 0x68d, x2	// Set all CSR bits
	csrrc x11, 0x68d, x2	// Clear all CSR bits
	csrrw x11, 0x68d, x20	// Restore CSR

// Testing CSR 0x68e
	csrr x9, 0x68e	// Read CSR
	li x10, -1
	csrrw x14, 0x68e, x10	// Write all 1s to CSR
	csrrw x14, 0x68e, x0	// Write all 0s to CSR
	csrrs x14, 0x68e, x10	// Set all CSR bits
	csrrc x14, 0x68e, x10	// Clear all CSR bits
	csrrw x14, 0x68e, x9	// Restore CSR

// Testing CSR 0x68f
	csrr x23, 0x68f	// Read CSR
	li x18, -1
	csrrw x16, 0x68f, x18	// Write all 1s to CSR
	csrrw x16, 0x68f, x0	// Write all 0s to CSR
	csrrs x16, 0x68f, x18	// Set all CSR bits
	csrrc x16, 0x68f, x18	// Clear all CSR bits
	csrrw x16, 0x68f, x23	// Restore CSR

// Testing CSR 0x690
	csrr x19, 0x690	// Read CSR
	li x1, -1
	csrrw x10, 0x690, x1	// Write all 1s to CSR
	csrrw x10, 0x690, x0	// Write all 0s to CSR
	csrrs x10, 0x690, x1	// Set all CSR bits
	csrrc x10, 0x690, x1	// Clear all CSR bits
	csrrw x10, 0x690, x19	// Restore CSR

// Testing CSR 0x691
	csrr x14, 0x691	// Read CSR
	li x1, -1
	csrrw x7, 0x691, x1	// Write all 1s to CSR
	csrrw x7, 0x691, x0	// Write all 0s to CSR
	csrrs x7, 0x691, x1	// Set all CSR bits
	csrrc x7, 0x691, x1	// Clear all CSR bits
	csrrw x7, 0x691, x14	// Restore CSR

// Testing CSR 0x692
	csrr x24, 0x692	// Read CSR
	li x23, -1
	csrrw x3, 0x692, x23	// Write all 1s to CSR
	csrrw x3, 0x692, x0	// Write all 0s to CSR
	csrrs x3, 0x692, x23	// Set all CSR bits
	csrrc x3, 0x692, x23	// Clear all CSR bits
	csrrw x3, 0x692, x24	// Restore CSR

// Testing CSR 0x693
	csrr x8, 0x693	// Read CSR
	li x10, -1
	csrrw x21, 0x693, x10	// Write all 1s to CSR
	csrrw x21, 0x693, x0	// Write all 0s to CSR
	csrrs x21, 0x693, x10	// Set all CSR bits
	csrrc x21, 0x693, x10	// Clear all CSR bits
	csrrw x21, 0x693, x8	// Restore CSR

// Testing CSR 0x694
	csrr x17, 0x694	// Read CSR
	li x21, -1
	csrrw x8, 0x694, x21	// Write all 1s to CSR
	csrrw x8, 0x694, x0	// Write all 0s to CSR
	csrrs x8, 0x694, x21	// Set all CSR bits
	csrrc x8, 0x694, x21	// Clear all CSR bits
	csrrw x8, 0x694, x17	// Restore CSR

// Testing CSR 0x695
	csrr x29, 0x695	// Read CSR
	li x1, -1
	csrrw x14, 0x695, x1	// Write all 1s to CSR
	csrrw x14, 0x695, x0	// Write all 0s to CSR
	csrrs x14, 0x695, x1	// Set all CSR bits
	csrrc x14, 0x695, x1	// Clear all CSR bits
	csrrw x14, 0x695, x29	// Restore CSR

// Testing CSR 0x696
	csrr x30, 0x696	// Read CSR
	li x3, -1
	csrrw x19, 0x696, x3	// Write all 1s to CSR
	csrrw x19, 0x696, x0	// Write all 0s to CSR
	csrrs x19, 0x696, x3	// Set all CSR bits
	csrrc x19, 0x696, x3	// Clear all CSR bits
	csrrw x19, 0x696, x30	// Restore CSR

// Testing CSR 0x697
	csrr x17, 0x697	// Read CSR
	li x8, -1
	csrrw x31, 0x697, x8	// Write all 1s to CSR
	csrrw x31, 0x697, x0	// Write all 0s to CSR
	csrrs x31, 0x697, x8	// Set all CSR bits
	csrrc x31, 0x697, x8	// Clear all CSR bits
	csrrw x31, 0x697, x17	// Restore CSR

// Testing CSR 0x698
	csrr x3, 0x698	// Read CSR
	li x9, -1
	csrrw x22, 0x698, x9	// Write all 1s to CSR
	csrrw x22, 0x698, x0	// Write all 0s to CSR
	csrrs x22, 0x698, x9	// Set all CSR bits
	csrrc x22, 0x698, x9	// Clear all CSR bits
	csrrw x22, 0x698, x3	// Restore CSR

// Testing CSR 0x699
	csrr x4, 0x699	// Read CSR
	li x19, -1
	csrrw x13, 0x699, x19	// Write all 1s to CSR
	csrrw x13, 0x699, x0	// Write all 0s to CSR
	csrrs x13, 0x699, x19	// Set all CSR bits
	csrrc x13, 0x699, x19	// Clear all CSR bits
	csrrw x13, 0x699, x4	// Restore CSR

// Testing CSR 0x69a
	csrr x22, 0x69a	// Read CSR
	li x23, -1
	csrrw x13, 0x69a, x23	// Write all 1s to CSR
	csrrw x13, 0x69a, x0	// Write all 0s to CSR
	csrrs x13, 0x69a, x23	// Set all CSR bits
	csrrc x13, 0x69a, x23	// Clear all CSR bits
	csrrw x13, 0x69a, x22	// Restore CSR

// Testing CSR 0x69b
	csrr x29, 0x69b	// Read CSR
	li x4, -1
	csrrw x15, 0x69b, x4	// Write all 1s to CSR
	csrrw x15, 0x69b, x0	// Write all 0s to CSR
	csrrs x15, 0x69b, x4	// Set all CSR bits
	csrrc x15, 0x69b, x4	// Clear all CSR bits
	csrrw x15, 0x69b, x29	// Restore CSR

// Testing CSR 0x69c
	csrr x3, 0x69c	// Read CSR
	li x1, -1
	csrrw x9, 0x69c, x1	// Write all 1s to CSR
	csrrw x9, 0x69c, x0	// Write all 0s to CSR
	csrrs x9, 0x69c, x1	// Set all CSR bits
	csrrc x9, 0x69c, x1	// Clear all CSR bits
	csrrw x9, 0x69c, x3	// Restore CSR

// Testing CSR 0x69d
	csrr x26, 0x69d	// Read CSR
	li x12, -1
	csrrw x6, 0x69d, x12	// Write all 1s to CSR
	csrrw x6, 0x69d, x0	// Write all 0s to CSR
	csrrs x6, 0x69d, x12	// Set all CSR bits
	csrrc x6, 0x69d, x12	// Clear all CSR bits
	csrrw x6, 0x69d, x26	// Restore CSR

// Testing CSR 0x69e
	csrr x16, 0x69e	// Read CSR
	li x8, -1
	csrrw x7, 0x69e, x8	// Write all 1s to CSR
	csrrw x7, 0x69e, x0	// Write all 0s to CSR
	csrrs x7, 0x69e, x8	// Set all CSR bits
	csrrc x7, 0x69e, x8	// Clear all CSR bits
	csrrw x7, 0x69e, x16	// Restore CSR

// Testing CSR 0x69f
	csrr x10, 0x69f	// Read CSR
	li x12, -1
	csrrw x7, 0x69f, x12	// Write all 1s to CSR
	csrrw x7, 0x69f, x0	// Write all 0s to CSR
	csrrs x7, 0x69f, x12	// Set all CSR bits
	csrrc x7, 0x69f, x12	// Clear all CSR bits
	csrrw x7, 0x69f, x10	// Restore CSR

// Testing CSR 0x6a0
	csrr x25, 0x6a0	// Read CSR
	li x5, -1
	csrrw x21, 0x6a0, x5	// Write all 1s to CSR
	csrrw x21, 0x6a0, x0	// Write all 0s to CSR
	csrrs x21, 0x6a0, x5	// Set all CSR bits
	csrrc x21, 0x6a0, x5	// Clear all CSR bits
	csrrw x21, 0x6a0, x25	// Restore CSR

// Testing CSR 0x6a1
	csrr x16, 0x6a1	// Read CSR
	li x7, -1
	csrrw x29, 0x6a1, x7	// Write all 1s to CSR
	csrrw x29, 0x6a1, x0	// Write all 0s to CSR
	csrrs x29, 0x6a1, x7	// Set all CSR bits
	csrrc x29, 0x6a1, x7	// Clear all CSR bits
	csrrw x29, 0x6a1, x16	// Restore CSR

// Testing CSR 0x6a2
	csrr x6, 0x6a2	// Read CSR
	li x5, -1
	csrrw x11, 0x6a2, x5	// Write all 1s to CSR
	csrrw x11, 0x6a2, x0	// Write all 0s to CSR
	csrrs x11, 0x6a2, x5	// Set all CSR bits
	csrrc x11, 0x6a2, x5	// Clear all CSR bits
	csrrw x11, 0x6a2, x6	// Restore CSR

// Testing CSR 0x6a3
	csrr x9, 0x6a3	// Read CSR
	li x22, -1
	csrrw x1, 0x6a3, x22	// Write all 1s to CSR
	csrrw x1, 0x6a3, x0	// Write all 0s to CSR
	csrrs x1, 0x6a3, x22	// Set all CSR bits
	csrrc x1, 0x6a3, x22	// Clear all CSR bits
	csrrw x1, 0x6a3, x9	// Restore CSR

// Testing CSR 0x6a4
	csrr x5, 0x6a4	// Read CSR
	li x9, -1
	csrrw x27, 0x6a4, x9	// Write all 1s to CSR
	csrrw x27, 0x6a4, x0	// Write all 0s to CSR
	csrrs x27, 0x6a4, x9	// Set all CSR bits
	csrrc x27, 0x6a4, x9	// Clear all CSR bits
	csrrw x27, 0x6a4, x5	// Restore CSR

// Testing CSR 0x6a5
	csrr x21, 0x6a5	// Read CSR
	li x3, -1
	csrrw x15, 0x6a5, x3	// Write all 1s to CSR
	csrrw x15, 0x6a5, x0	// Write all 0s to CSR
	csrrs x15, 0x6a5, x3	// Set all CSR bits
	csrrc x15, 0x6a5, x3	// Clear all CSR bits
	csrrw x15, 0x6a5, x21	// Restore CSR

// Testing CSR 0x6a6
	csrr x17, 0x6a6	// Read CSR
	li x18, -1
	csrrw x8, 0x6a6, x18	// Write all 1s to CSR
	csrrw x8, 0x6a6, x0	// Write all 0s to CSR
	csrrs x8, 0x6a6, x18	// Set all CSR bits
	csrrc x8, 0x6a6, x18	// Clear all CSR bits
	csrrw x8, 0x6a6, x17	// Restore CSR

// Testing CSR 0x6a7
	csrr x14, 0x6a7	// Read CSR
	li x30, -1
	csrrw x24, 0x6a7, x30	// Write all 1s to CSR
	csrrw x24, 0x6a7, x0	// Write all 0s to CSR
	csrrs x24, 0x6a7, x30	// Set all CSR bits
	csrrc x24, 0x6a7, x30	// Clear all CSR bits
	csrrw x24, 0x6a7, x14	// Restore CSR

// Testing CSR 0x6a8
	csrr x8, 0x6a8	// Read CSR
	li x15, -1
	csrrw x21, 0x6a8, x15	// Write all 1s to CSR
	csrrw x21, 0x6a8, x0	// Write all 0s to CSR
	csrrs x21, 0x6a8, x15	// Set all CSR bits
	csrrc x21, 0x6a8, x15	// Clear all CSR bits
	csrrw x21, 0x6a8, x8	// Restore CSR

// Testing CSR 0x6a9
	csrr x18, 0x6a9	// Read CSR
	li x2, -1
	csrrw x22, 0x6a9, x2	// Write all 1s to CSR
	csrrw x22, 0x6a9, x0	// Write all 0s to CSR
	csrrs x22, 0x6a9, x2	// Set all CSR bits
	csrrc x22, 0x6a9, x2	// Clear all CSR bits
	csrrw x22, 0x6a9, x18	// Restore CSR

// Testing CSR 0x6aa
	csrr x12, 0x6aa	// Read CSR
	li x4, -1
	csrrw x14, 0x6aa, x4	// Write all 1s to CSR
	csrrw x14, 0x6aa, x0	// Write all 0s to CSR
	csrrs x14, 0x6aa, x4	// Set all CSR bits
	csrrc x14, 0x6aa, x4	// Clear all CSR bits
	csrrw x14, 0x6aa, x12	// Restore CSR

// Testing CSR 0x6ab
	csrr x9, 0x6ab	// Read CSR
	li x19, -1
	csrrw x3, 0x6ab, x19	// Write all 1s to CSR
	csrrw x3, 0x6ab, x0	// Write all 0s to CSR
	csrrs x3, 0x6ab, x19	// Set all CSR bits
	csrrc x3, 0x6ab, x19	// Clear all CSR bits
	csrrw x3, 0x6ab, x9	// Restore CSR

// Testing CSR 0x6ac
	csrr x30, 0x6ac	// Read CSR
	li x21, -1
	csrrw x16, 0x6ac, x21	// Write all 1s to CSR
	csrrw x16, 0x6ac, x0	// Write all 0s to CSR
	csrrs x16, 0x6ac, x21	// Set all CSR bits
	csrrc x16, 0x6ac, x21	// Clear all CSR bits
	csrrw x16, 0x6ac, x30	// Restore CSR

// Testing CSR 0x6ad
	csrr x12, 0x6ad	// Read CSR
	li x7, -1
	csrrw x3, 0x6ad, x7	// Write all 1s to CSR
	csrrw x3, 0x6ad, x0	// Write all 0s to CSR
	csrrs x3, 0x6ad, x7	// Set all CSR bits
	csrrc x3, 0x6ad, x7	// Clear all CSR bits
	csrrw x3, 0x6ad, x12	// Restore CSR

// Testing CSR 0x6ae
	csrr x6, 0x6ae	// Read CSR
	li x3, -1
	csrrw x1, 0x6ae, x3	// Write all 1s to CSR
	csrrw x1, 0x6ae, x0	// Write all 0s to CSR
	csrrs x1, 0x6ae, x3	// Set all CSR bits
	csrrc x1, 0x6ae, x3	// Clear all CSR bits
	csrrw x1, 0x6ae, x6	// Restore CSR

// Testing CSR 0x6af
	csrr x14, 0x6af	// Read CSR
	li x4, -1
	csrrw x11, 0x6af, x4	// Write all 1s to CSR
	csrrw x11, 0x6af, x0	// Write all 0s to CSR
	csrrs x11, 0x6af, x4	// Set all CSR bits
	csrrc x11, 0x6af, x4	// Clear all CSR bits
	csrrw x11, 0x6af, x14	// Restore CSR

// Testing CSR 0x6b0
	csrr x19, 0x6b0	// Read CSR
	li x11, -1
	csrrw x4, 0x6b0, x11	// Write all 1s to CSR
	csrrw x4, 0x6b0, x0	// Write all 0s to CSR
	csrrs x4, 0x6b0, x11	// Set all CSR bits
	csrrc x4, 0x6b0, x11	// Clear all CSR bits
	csrrw x4, 0x6b0, x19	// Restore CSR

// Testing CSR 0x6b1
	csrr x22, 0x6b1	// Read CSR
	li x6, -1
	csrrw x29, 0x6b1, x6	// Write all 1s to CSR
	csrrw x29, 0x6b1, x0	// Write all 0s to CSR
	csrrs x29, 0x6b1, x6	// Set all CSR bits
	csrrc x29, 0x6b1, x6	// Clear all CSR bits
	csrrw x29, 0x6b1, x22	// Restore CSR

// Testing CSR 0x6b2
	csrr x11, 0x6b2	// Read CSR
	li x10, -1
	csrrw x17, 0x6b2, x10	// Write all 1s to CSR
	csrrw x17, 0x6b2, x0	// Write all 0s to CSR
	csrrs x17, 0x6b2, x10	// Set all CSR bits
	csrrc x17, 0x6b2, x10	// Clear all CSR bits
	csrrw x17, 0x6b2, x11	// Restore CSR

// Testing CSR 0x6b3
	csrr x29, 0x6b3	// Read CSR
	li x31, -1
	csrrw x4, 0x6b3, x31	// Write all 1s to CSR
	csrrw x4, 0x6b3, x0	// Write all 0s to CSR
	csrrs x4, 0x6b3, x31	// Set all CSR bits
	csrrc x4, 0x6b3, x31	// Clear all CSR bits
	csrrw x4, 0x6b3, x29	// Restore CSR

// Testing CSR 0x6b4
	csrr x27, 0x6b4	// Read CSR
	li x18, -1
	csrrw x5, 0x6b4, x18	// Write all 1s to CSR
	csrrw x5, 0x6b4, x0	// Write all 0s to CSR
	csrrs x5, 0x6b4, x18	// Set all CSR bits
	csrrc x5, 0x6b4, x18	// Clear all CSR bits
	csrrw x5, 0x6b4, x27	// Restore CSR

// Testing CSR 0x6b5
	csrr x11, 0x6b5	// Read CSR
	li x14, -1
	csrrw x21, 0x6b5, x14	// Write all 1s to CSR
	csrrw x21, 0x6b5, x0	// Write all 0s to CSR
	csrrs x21, 0x6b5, x14	// Set all CSR bits
	csrrc x21, 0x6b5, x14	// Clear all CSR bits
	csrrw x21, 0x6b5, x11	// Restore CSR

// Testing CSR 0x6b6
	csrr x6, 0x6b6	// Read CSR
	li x29, -1
	csrrw x23, 0x6b6, x29	// Write all 1s to CSR
	csrrw x23, 0x6b6, x0	// Write all 0s to CSR
	csrrs x23, 0x6b6, x29	// Set all CSR bits
	csrrc x23, 0x6b6, x29	// Clear all CSR bits
	csrrw x23, 0x6b6, x6	// Restore CSR

// Testing CSR 0x6b7
	csrr x5, 0x6b7	// Read CSR
	li x2, -1
	csrrw x11, 0x6b7, x2	// Write all 1s to CSR
	csrrw x11, 0x6b7, x0	// Write all 0s to CSR
	csrrs x11, 0x6b7, x2	// Set all CSR bits
	csrrc x11, 0x6b7, x2	// Clear all CSR bits
	csrrw x11, 0x6b7, x5	// Restore CSR

// Testing CSR 0x6b8
	csrr x10, 0x6b8	// Read CSR
	li x25, -1
	csrrw x7, 0x6b8, x25	// Write all 1s to CSR
	csrrw x7, 0x6b8, x0	// Write all 0s to CSR
	csrrs x7, 0x6b8, x25	// Set all CSR bits
	csrrc x7, 0x6b8, x25	// Clear all CSR bits
	csrrw x7, 0x6b8, x10	// Restore CSR

// Testing CSR 0x6b9
	csrr x8, 0x6b9	// Read CSR
	li x29, -1
	csrrw x10, 0x6b9, x29	// Write all 1s to CSR
	csrrw x10, 0x6b9, x0	// Write all 0s to CSR
	csrrs x10, 0x6b9, x29	// Set all CSR bits
	csrrc x10, 0x6b9, x29	// Clear all CSR bits
	csrrw x10, 0x6b9, x8	// Restore CSR

// Testing CSR 0x6ba
	csrr x15, 0x6ba	// Read CSR
	li x1, -1
	csrrw x17, 0x6ba, x1	// Write all 1s to CSR
	csrrw x17, 0x6ba, x0	// Write all 0s to CSR
	csrrs x17, 0x6ba, x1	// Set all CSR bits
	csrrc x17, 0x6ba, x1	// Clear all CSR bits
	csrrw x17, 0x6ba, x15	// Restore CSR

// Testing CSR 0x6bb
	csrr x9, 0x6bb	// Read CSR
	li x18, -1
	csrrw x25, 0x6bb, x18	// Write all 1s to CSR
	csrrw x25, 0x6bb, x0	// Write all 0s to CSR
	csrrs x25, 0x6bb, x18	// Set all CSR bits
	csrrc x25, 0x6bb, x18	// Clear all CSR bits
	csrrw x25, 0x6bb, x9	// Restore CSR

// Testing CSR 0x6bc
	csrr x4, 0x6bc	// Read CSR
	li x20, -1
	csrrw x31, 0x6bc, x20	// Write all 1s to CSR
	csrrw x31, 0x6bc, x0	// Write all 0s to CSR
	csrrs x31, 0x6bc, x20	// Set all CSR bits
	csrrc x31, 0x6bc, x20	// Clear all CSR bits
	csrrw x31, 0x6bc, x4	// Restore CSR

// Testing CSR 0x6bd
	csrr x21, 0x6bd	// Read CSR
	li x1, -1
	csrrw x7, 0x6bd, x1	// Write all 1s to CSR
	csrrw x7, 0x6bd, x0	// Write all 0s to CSR
	csrrs x7, 0x6bd, x1	// Set all CSR bits
	csrrc x7, 0x6bd, x1	// Clear all CSR bits
	csrrw x7, 0x6bd, x21	// Restore CSR

// Testing CSR 0x6be
	csrr x6, 0x6be	// Read CSR
	li x23, -1
	csrrw x19, 0x6be, x23	// Write all 1s to CSR
	csrrw x19, 0x6be, x0	// Write all 0s to CSR
	csrrs x19, 0x6be, x23	// Set all CSR bits
	csrrc x19, 0x6be, x23	// Clear all CSR bits
	csrrw x19, 0x6be, x6	// Restore CSR

// Testing CSR 0x6bf
	csrr x31, 0x6bf	// Read CSR
	li x14, -1
	csrrw x1, 0x6bf, x14	// Write all 1s to CSR
	csrrw x1, 0x6bf, x0	// Write all 0s to CSR
	csrrs x1, 0x6bf, x14	// Set all CSR bits
	csrrc x1, 0x6bf, x14	// Clear all CSR bits
	csrrw x1, 0x6bf, x31	// Restore CSR

// Testing CSR 0x700
	csrr x5, 0x700	// Read CSR
	li x15, -1
	csrrw x25, 0x700, x15	// Write all 1s to CSR
	csrrw x25, 0x700, x0	// Write all 0s to CSR
	csrrs x25, 0x700, x15	// Set all CSR bits
	csrrc x25, 0x700, x15	// Clear all CSR bits
	csrrw x25, 0x700, x5	// Restore CSR

// Testing CSR 0x701
	csrr x13, 0x701	// Read CSR
	li x15, -1
	csrrw x17, 0x701, x15	// Write all 1s to CSR
	csrrw x17, 0x701, x0	// Write all 0s to CSR
	csrrs x17, 0x701, x15	// Set all CSR bits
	csrrc x17, 0x701, x15	// Clear all CSR bits
	csrrw x17, 0x701, x13	// Restore CSR

// Testing CSR 0x702
	csrr x15, 0x702	// Read CSR
	li x26, -1
	csrrw x11, 0x702, x26	// Write all 1s to CSR
	csrrw x11, 0x702, x0	// Write all 0s to CSR
	csrrs x11, 0x702, x26	// Set all CSR bits
	csrrc x11, 0x702, x26	// Clear all CSR bits
	csrrw x11, 0x702, x15	// Restore CSR

// Testing CSR 0x703
	csrr x24, 0x703	// Read CSR
	li x25, -1
	csrrw x17, 0x703, x25	// Write all 1s to CSR
	csrrw x17, 0x703, x0	// Write all 0s to CSR
	csrrs x17, 0x703, x25	// Set all CSR bits
	csrrc x17, 0x703, x25	// Clear all CSR bits
	csrrw x17, 0x703, x24	// Restore CSR

// Testing CSR 0x704
	csrr x22, 0x704	// Read CSR
	li x24, -1
	csrrw x15, 0x704, x24	// Write all 1s to CSR
	csrrw x15, 0x704, x0	// Write all 0s to CSR
	csrrs x15, 0x704, x24	// Set all CSR bits
	csrrc x15, 0x704, x24	// Clear all CSR bits
	csrrw x15, 0x704, x22	// Restore CSR

// Testing CSR 0x705
	csrr x16, 0x705	// Read CSR
	li x3, -1
	csrrw x9, 0x705, x3	// Write all 1s to CSR
	csrrw x9, 0x705, x0	// Write all 0s to CSR
	csrrs x9, 0x705, x3	// Set all CSR bits
	csrrc x9, 0x705, x3	// Clear all CSR bits
	csrrw x9, 0x705, x16	// Restore CSR

// Testing CSR 0x706
	csrr x3, 0x706	// Read CSR
	li x14, -1
	csrrw x21, 0x706, x14	// Write all 1s to CSR
	csrrw x21, 0x706, x0	// Write all 0s to CSR
	csrrs x21, 0x706, x14	// Set all CSR bits
	csrrc x21, 0x706, x14	// Clear all CSR bits
	csrrw x21, 0x706, x3	// Restore CSR

// Testing CSR 0x707
	csrr x7, 0x707	// Read CSR
	li x25, -1
	csrrw x24, 0x707, x25	// Write all 1s to CSR
	csrrw x24, 0x707, x0	// Write all 0s to CSR
	csrrs x24, 0x707, x25	// Set all CSR bits
	csrrc x24, 0x707, x25	// Clear all CSR bits
	csrrw x24, 0x707, x7	// Restore CSR

// Testing CSR 0x708
	csrr x21, 0x708	// Read CSR
	li x3, -1
	csrrw x12, 0x708, x3	// Write all 1s to CSR
	csrrw x12, 0x708, x0	// Write all 0s to CSR
	csrrs x12, 0x708, x3	// Set all CSR bits
	csrrc x12, 0x708, x3	// Clear all CSR bits
	csrrw x12, 0x708, x21	// Restore CSR

// Testing CSR 0x709
	csrr x28, 0x709	// Read CSR
	li x3, -1
	csrrw x13, 0x709, x3	// Write all 1s to CSR
	csrrw x13, 0x709, x0	// Write all 0s to CSR
	csrrs x13, 0x709, x3	// Set all CSR bits
	csrrc x13, 0x709, x3	// Clear all CSR bits
	csrrw x13, 0x709, x28	// Restore CSR

// Testing CSR 0x70a
	csrr x23, 0x70a	// Read CSR
	li x13, -1
	csrrw x28, 0x70a, x13	// Write all 1s to CSR
	csrrw x28, 0x70a, x0	// Write all 0s to CSR
	csrrs x28, 0x70a, x13	// Set all CSR bits
	csrrc x28, 0x70a, x13	// Clear all CSR bits
	csrrw x28, 0x70a, x23	// Restore CSR

// Testing CSR 0x70b
	csrr x23, 0x70b	// Read CSR
	li x14, -1
	csrrw x7, 0x70b, x14	// Write all 1s to CSR
	csrrw x7, 0x70b, x0	// Write all 0s to CSR
	csrrs x7, 0x70b, x14	// Set all CSR bits
	csrrc x7, 0x70b, x14	// Clear all CSR bits
	csrrw x7, 0x70b, x23	// Restore CSR

// Testing CSR 0x70c
	csrr x11, 0x70c	// Read CSR
	li x26, -1
	csrrw x31, 0x70c, x26	// Write all 1s to CSR
	csrrw x31, 0x70c, x0	// Write all 0s to CSR
	csrrs x31, 0x70c, x26	// Set all CSR bits
	csrrc x31, 0x70c, x26	// Clear all CSR bits
	csrrw x31, 0x70c, x11	// Restore CSR

// Testing CSR 0x70d
	csrr x16, 0x70d	// Read CSR
	li x2, -1
	csrrw x11, 0x70d, x2	// Write all 1s to CSR
	csrrw x11, 0x70d, x0	// Write all 0s to CSR
	csrrs x11, 0x70d, x2	// Set all CSR bits
	csrrc x11, 0x70d, x2	// Clear all CSR bits
	csrrw x11, 0x70d, x16	// Restore CSR

// Testing CSR 0x70e
	csrr x17, 0x70e	// Read CSR
	li x5, -1
	csrrw x10, 0x70e, x5	// Write all 1s to CSR
	csrrw x10, 0x70e, x0	// Write all 0s to CSR
	csrrs x10, 0x70e, x5	// Set all CSR bits
	csrrc x10, 0x70e, x5	// Clear all CSR bits
	csrrw x10, 0x70e, x17	// Restore CSR

// Testing CSR 0x70f
	csrr x10, 0x70f	// Read CSR
	li x19, -1
	csrrw x24, 0x70f, x19	// Write all 1s to CSR
	csrrw x24, 0x70f, x0	// Write all 0s to CSR
	csrrs x24, 0x70f, x19	// Set all CSR bits
	csrrc x24, 0x70f, x19	// Clear all CSR bits
	csrrw x24, 0x70f, x10	// Restore CSR

// Testing CSR 0x710
	csrr x23, 0x710	// Read CSR
	li x1, -1
	csrrw x31, 0x710, x1	// Write all 1s to CSR
	csrrw x31, 0x710, x0	// Write all 0s to CSR
	csrrs x31, 0x710, x1	// Set all CSR bits
	csrrc x31, 0x710, x1	// Clear all CSR bits
	csrrw x31, 0x710, x23	// Restore CSR

// Testing CSR 0x711
	csrr x5, 0x711	// Read CSR
	li x2, -1
	csrrw x28, 0x711, x2	// Write all 1s to CSR
	csrrw x28, 0x711, x0	// Write all 0s to CSR
	csrrs x28, 0x711, x2	// Set all CSR bits
	csrrc x28, 0x711, x2	// Clear all CSR bits
	csrrw x28, 0x711, x5	// Restore CSR

// Testing CSR 0x712
	csrr x6, 0x712	// Read CSR
	li x18, -1
	csrrw x9, 0x712, x18	// Write all 1s to CSR
	csrrw x9, 0x712, x0	// Write all 0s to CSR
	csrrs x9, 0x712, x18	// Set all CSR bits
	csrrc x9, 0x712, x18	// Clear all CSR bits
	csrrw x9, 0x712, x6	// Restore CSR

// Testing CSR 0x713
	csrr x11, 0x713	// Read CSR
	li x13, -1
	csrrw x20, 0x713, x13	// Write all 1s to CSR
	csrrw x20, 0x713, x0	// Write all 0s to CSR
	csrrs x20, 0x713, x13	// Set all CSR bits
	csrrc x20, 0x713, x13	// Clear all CSR bits
	csrrw x20, 0x713, x11	// Restore CSR

// Testing CSR 0x714
	csrr x9, 0x714	// Read CSR
	li x13, -1
	csrrw x23, 0x714, x13	// Write all 1s to CSR
	csrrw x23, 0x714, x0	// Write all 0s to CSR
	csrrs x23, 0x714, x13	// Set all CSR bits
	csrrc x23, 0x714, x13	// Clear all CSR bits
	csrrw x23, 0x714, x9	// Restore CSR

// Testing CSR 0x715
	csrr x8, 0x715	// Read CSR
	li x7, -1
	csrrw x11, 0x715, x7	// Write all 1s to CSR
	csrrw x11, 0x715, x0	// Write all 0s to CSR
	csrrs x11, 0x715, x7	// Set all CSR bits
	csrrc x11, 0x715, x7	// Clear all CSR bits
	csrrw x11, 0x715, x8	// Restore CSR

// Testing CSR 0x716
	csrr x16, 0x716	// Read CSR
	li x26, -1
	csrrw x21, 0x716, x26	// Write all 1s to CSR
	csrrw x21, 0x716, x0	// Write all 0s to CSR
	csrrs x21, 0x716, x26	// Set all CSR bits
	csrrc x21, 0x716, x26	// Clear all CSR bits
	csrrw x21, 0x716, x16	// Restore CSR

// Testing CSR 0x717
	csrr x28, 0x717	// Read CSR
	li x11, -1
	csrrw x6, 0x717, x11	// Write all 1s to CSR
	csrrw x6, 0x717, x0	// Write all 0s to CSR
	csrrs x6, 0x717, x11	// Set all CSR bits
	csrrc x6, 0x717, x11	// Clear all CSR bits
	csrrw x6, 0x717, x28	// Restore CSR

// Testing CSR 0x718
	csrr x1, 0x718	// Read CSR
	li x28, -1
	csrrw x25, 0x718, x28	// Write all 1s to CSR
	csrrw x25, 0x718, x0	// Write all 0s to CSR
	csrrs x25, 0x718, x28	// Set all CSR bits
	csrrc x25, 0x718, x28	// Clear all CSR bits
	csrrw x25, 0x718, x1	// Restore CSR

// Testing CSR 0x719
	csrr x9, 0x719	// Read CSR
	li x5, -1
	csrrw x25, 0x719, x5	// Write all 1s to CSR
	csrrw x25, 0x719, x0	// Write all 0s to CSR
	csrrs x25, 0x719, x5	// Set all CSR bits
	csrrc x25, 0x719, x5	// Clear all CSR bits
	csrrw x25, 0x719, x9	// Restore CSR

// Testing CSR 0x71a
	csrr x9, 0x71a	// Read CSR
	li x8, -1
	csrrw x29, 0x71a, x8	// Write all 1s to CSR
	csrrw x29, 0x71a, x0	// Write all 0s to CSR
	csrrs x29, 0x71a, x8	// Set all CSR bits
	csrrc x29, 0x71a, x8	// Clear all CSR bits
	csrrw x29, 0x71a, x9	// Restore CSR

// Testing CSR 0x71b
	csrr x26, 0x71b	// Read CSR
	li x24, -1
	csrrw x17, 0x71b, x24	// Write all 1s to CSR
	csrrw x17, 0x71b, x0	// Write all 0s to CSR
	csrrs x17, 0x71b, x24	// Set all CSR bits
	csrrc x17, 0x71b, x24	// Clear all CSR bits
	csrrw x17, 0x71b, x26	// Restore CSR

// Testing CSR 0x71c
	csrr x25, 0x71c	// Read CSR
	li x19, -1
	csrrw x22, 0x71c, x19	// Write all 1s to CSR
	csrrw x22, 0x71c, x0	// Write all 0s to CSR
	csrrs x22, 0x71c, x19	// Set all CSR bits
	csrrc x22, 0x71c, x19	// Clear all CSR bits
	csrrw x22, 0x71c, x25	// Restore CSR

// Testing CSR 0x71d
	csrr x26, 0x71d	// Read CSR
	li x13, -1
	csrrw x30, 0x71d, x13	// Write all 1s to CSR
	csrrw x30, 0x71d, x0	// Write all 0s to CSR
	csrrs x30, 0x71d, x13	// Set all CSR bits
	csrrc x30, 0x71d, x13	// Clear all CSR bits
	csrrw x30, 0x71d, x26	// Restore CSR

// Testing CSR 0x71e
	csrr x22, 0x71e	// Read CSR
	li x28, -1
	csrrw x4, 0x71e, x28	// Write all 1s to CSR
	csrrw x4, 0x71e, x0	// Write all 0s to CSR
	csrrs x4, 0x71e, x28	// Set all CSR bits
	csrrc x4, 0x71e, x28	// Clear all CSR bits
	csrrw x4, 0x71e, x22	// Restore CSR

// Testing CSR 0x71f
	csrr x14, 0x71f	// Read CSR
	li x27, -1
	csrrw x15, 0x71f, x27	// Write all 1s to CSR
	csrrw x15, 0x71f, x0	// Write all 0s to CSR
	csrrs x15, 0x71f, x27	// Set all CSR bits
	csrrc x15, 0x71f, x27	// Clear all CSR bits
	csrrw x15, 0x71f, x14	// Restore CSR

// Testing CSR 0x720
	csrr x15, 0x720	// Read CSR
	li x14, -1
	csrrw x22, 0x720, x14	// Write all 1s to CSR
	csrrw x22, 0x720, x0	// Write all 0s to CSR
	csrrs x22, 0x720, x14	// Set all CSR bits
	csrrc x22, 0x720, x14	// Clear all CSR bits
	csrrw x22, 0x720, x15	// Restore CSR

// Testing CSR 0x721
	csrr x14, 0x721	// Read CSR
	li x3, -1
	csrrw x27, 0x721, x3	// Write all 1s to CSR
	csrrw x27, 0x721, x0	// Write all 0s to CSR
	csrrs x27, 0x721, x3	// Set all CSR bits
	csrrc x27, 0x721, x3	// Clear all CSR bits
	csrrw x27, 0x721, x14	// Restore CSR

// Testing CSR 0x722
	csrr x1, 0x722	// Read CSR
	li x7, -1
	csrrw x10, 0x722, x7	// Write all 1s to CSR
	csrrw x10, 0x722, x0	// Write all 0s to CSR
	csrrs x10, 0x722, x7	// Set all CSR bits
	csrrc x10, 0x722, x7	// Clear all CSR bits
	csrrw x10, 0x722, x1	// Restore CSR

// Testing CSR 0x723
	csrr x1, 0x723	// Read CSR
	li x8, -1
	csrrw x19, 0x723, x8	// Write all 1s to CSR
	csrrw x19, 0x723, x0	// Write all 0s to CSR
	csrrs x19, 0x723, x8	// Set all CSR bits
	csrrc x19, 0x723, x8	// Clear all CSR bits
	csrrw x19, 0x723, x1	// Restore CSR

// Testing CSR 0x724
	csrr x27, 0x724	// Read CSR
	li x22, -1
	csrrw x21, 0x724, x22	// Write all 1s to CSR
	csrrw x21, 0x724, x0	// Write all 0s to CSR
	csrrs x21, 0x724, x22	// Set all CSR bits
	csrrc x21, 0x724, x22	// Clear all CSR bits
	csrrw x21, 0x724, x27	// Restore CSR

// Testing CSR 0x725
	csrr x22, 0x725	// Read CSR
	li x31, -1
	csrrw x27, 0x725, x31	// Write all 1s to CSR
	csrrw x27, 0x725, x0	// Write all 0s to CSR
	csrrs x27, 0x725, x31	// Set all CSR bits
	csrrc x27, 0x725, x31	// Clear all CSR bits
	csrrw x27, 0x725, x22	// Restore CSR

// Testing CSR 0x726
	csrr x25, 0x726	// Read CSR
	li x5, -1
	csrrw x6, 0x726, x5	// Write all 1s to CSR
	csrrw x6, 0x726, x0	// Write all 0s to CSR
	csrrs x6, 0x726, x5	// Set all CSR bits
	csrrc x6, 0x726, x5	// Clear all CSR bits
	csrrw x6, 0x726, x25	// Restore CSR

// Testing CSR 0x727
	csrr x29, 0x727	// Read CSR
	li x13, -1
	csrrw x6, 0x727, x13	// Write all 1s to CSR
	csrrw x6, 0x727, x0	// Write all 0s to CSR
	csrrs x6, 0x727, x13	// Set all CSR bits
	csrrc x6, 0x727, x13	// Clear all CSR bits
	csrrw x6, 0x727, x29	// Restore CSR

// Testing CSR 0x728
	csrr x7, 0x728	// Read CSR
	li x14, -1
	csrrw x29, 0x728, x14	// Write all 1s to CSR
	csrrw x29, 0x728, x0	// Write all 0s to CSR
	csrrs x29, 0x728, x14	// Set all CSR bits
	csrrc x29, 0x728, x14	// Clear all CSR bits
	csrrw x29, 0x728, x7	// Restore CSR

// Testing CSR 0x729
	csrr x24, 0x729	// Read CSR
	li x20, -1
	csrrw x28, 0x729, x20	// Write all 1s to CSR
	csrrw x28, 0x729, x0	// Write all 0s to CSR
	csrrs x28, 0x729, x20	// Set all CSR bits
	csrrc x28, 0x729, x20	// Clear all CSR bits
	csrrw x28, 0x729, x24	// Restore CSR

// Testing CSR 0x72a
	csrr x17, 0x72a	// Read CSR
	li x2, -1
	csrrw x30, 0x72a, x2	// Write all 1s to CSR
	csrrw x30, 0x72a, x0	// Write all 0s to CSR
	csrrs x30, 0x72a, x2	// Set all CSR bits
	csrrc x30, 0x72a, x2	// Clear all CSR bits
	csrrw x30, 0x72a, x17	// Restore CSR

// Testing CSR 0x72b
	csrr x6, 0x72b	// Read CSR
	li x1, -1
	csrrw x29, 0x72b, x1	// Write all 1s to CSR
	csrrw x29, 0x72b, x0	// Write all 0s to CSR
	csrrs x29, 0x72b, x1	// Set all CSR bits
	csrrc x29, 0x72b, x1	// Clear all CSR bits
	csrrw x29, 0x72b, x6	// Restore CSR

// Testing CSR 0x72c
	csrr x2, 0x72c	// Read CSR
	li x20, -1
	csrrw x23, 0x72c, x20	// Write all 1s to CSR
	csrrw x23, 0x72c, x0	// Write all 0s to CSR
	csrrs x23, 0x72c, x20	// Set all CSR bits
	csrrc x23, 0x72c, x20	// Clear all CSR bits
	csrrw x23, 0x72c, x2	// Restore CSR

// Testing CSR 0x72d
	csrr x5, 0x72d	// Read CSR
	li x9, -1
	csrrw x25, 0x72d, x9	// Write all 1s to CSR
	csrrw x25, 0x72d, x0	// Write all 0s to CSR
	csrrs x25, 0x72d, x9	// Set all CSR bits
	csrrc x25, 0x72d, x9	// Clear all CSR bits
	csrrw x25, 0x72d, x5	// Restore CSR

// Testing CSR 0x72e
	csrr x20, 0x72e	// Read CSR
	li x14, -1
	csrrw x7, 0x72e, x14	// Write all 1s to CSR
	csrrw x7, 0x72e, x0	// Write all 0s to CSR
	csrrs x7, 0x72e, x14	// Set all CSR bits
	csrrc x7, 0x72e, x14	// Clear all CSR bits
	csrrw x7, 0x72e, x20	// Restore CSR

// Testing CSR 0x72f
	csrr x3, 0x72f	// Read CSR
	li x10, -1
	csrrw x1, 0x72f, x10	// Write all 1s to CSR
	csrrw x1, 0x72f, x0	// Write all 0s to CSR
	csrrs x1, 0x72f, x10	// Set all CSR bits
	csrrc x1, 0x72f, x10	// Clear all CSR bits
	csrrw x1, 0x72f, x3	// Restore CSR

// Testing CSR 0x730
	csrr x7, 0x730	// Read CSR
	li x18, -1
	csrrw x17, 0x730, x18	// Write all 1s to CSR
	csrrw x17, 0x730, x0	// Write all 0s to CSR
	csrrs x17, 0x730, x18	// Set all CSR bits
	csrrc x17, 0x730, x18	// Clear all CSR bits
	csrrw x17, 0x730, x7	// Restore CSR

// Testing CSR 0x731
	csrr x22, 0x731	// Read CSR
	li x1, -1
	csrrw x11, 0x731, x1	// Write all 1s to CSR
	csrrw x11, 0x731, x0	// Write all 0s to CSR
	csrrs x11, 0x731, x1	// Set all CSR bits
	csrrc x11, 0x731, x1	// Clear all CSR bits
	csrrw x11, 0x731, x22	// Restore CSR

// Testing CSR 0x732
	csrr x23, 0x732	// Read CSR
	li x17, -1
	csrrw x3, 0x732, x17	// Write all 1s to CSR
	csrrw x3, 0x732, x0	// Write all 0s to CSR
	csrrs x3, 0x732, x17	// Set all CSR bits
	csrrc x3, 0x732, x17	// Clear all CSR bits
	csrrw x3, 0x732, x23	// Restore CSR

// Testing CSR 0x733
	csrr x30, 0x733	// Read CSR
	li x18, -1
	csrrw x11, 0x733, x18	// Write all 1s to CSR
	csrrw x11, 0x733, x0	// Write all 0s to CSR
	csrrs x11, 0x733, x18	// Set all CSR bits
	csrrc x11, 0x733, x18	// Clear all CSR bits
	csrrw x11, 0x733, x30	// Restore CSR

// Testing CSR 0x734
	csrr x8, 0x734	// Read CSR
	li x20, -1
	csrrw x18, 0x734, x20	// Write all 1s to CSR
	csrrw x18, 0x734, x0	// Write all 0s to CSR
	csrrs x18, 0x734, x20	// Set all CSR bits
	csrrc x18, 0x734, x20	// Clear all CSR bits
	csrrw x18, 0x734, x8	// Restore CSR

// Testing CSR 0x735
	csrr x3, 0x735	// Read CSR
	li x15, -1
	csrrw x16, 0x735, x15	// Write all 1s to CSR
	csrrw x16, 0x735, x0	// Write all 0s to CSR
	csrrs x16, 0x735, x15	// Set all CSR bits
	csrrc x16, 0x735, x15	// Clear all CSR bits
	csrrw x16, 0x735, x3	// Restore CSR

// Testing CSR 0x736
	csrr x16, 0x736	// Read CSR
	li x18, -1
	csrrw x29, 0x736, x18	// Write all 1s to CSR
	csrrw x29, 0x736, x0	// Write all 0s to CSR
	csrrs x29, 0x736, x18	// Set all CSR bits
	csrrc x29, 0x736, x18	// Clear all CSR bits
	csrrw x29, 0x736, x16	// Restore CSR

// Testing CSR 0x737
	csrr x30, 0x737	// Read CSR
	li x19, -1
	csrrw x23, 0x737, x19	// Write all 1s to CSR
	csrrw x23, 0x737, x0	// Write all 0s to CSR
	csrrs x23, 0x737, x19	// Set all CSR bits
	csrrc x23, 0x737, x19	// Clear all CSR bits
	csrrw x23, 0x737, x30	// Restore CSR

// Testing CSR 0x738
	csrr x31, 0x738	// Read CSR
	li x21, -1
	csrrw x19, 0x738, x21	// Write all 1s to CSR
	csrrw x19, 0x738, x0	// Write all 0s to CSR
	csrrs x19, 0x738, x21	// Set all CSR bits
	csrrc x19, 0x738, x21	// Clear all CSR bits
	csrrw x19, 0x738, x31	// Restore CSR

// Testing CSR 0x739
	csrr x15, 0x739	// Read CSR
	li x19, -1
	csrrw x8, 0x739, x19	// Write all 1s to CSR
	csrrw x8, 0x739, x0	// Write all 0s to CSR
	csrrs x8, 0x739, x19	// Set all CSR bits
	csrrc x8, 0x739, x19	// Clear all CSR bits
	csrrw x8, 0x739, x15	// Restore CSR

// Testing CSR 0x73a
	csrr x25, 0x73a	// Read CSR
	li x26, -1
	csrrw x19, 0x73a, x26	// Write all 1s to CSR
	csrrw x19, 0x73a, x0	// Write all 0s to CSR
	csrrs x19, 0x73a, x26	// Set all CSR bits
	csrrc x19, 0x73a, x26	// Clear all CSR bits
	csrrw x19, 0x73a, x25	// Restore CSR

// Testing CSR 0x73b
	csrr x4, 0x73b	// Read CSR
	li x18, -1
	csrrw x31, 0x73b, x18	// Write all 1s to CSR
	csrrw x31, 0x73b, x0	// Write all 0s to CSR
	csrrs x31, 0x73b, x18	// Set all CSR bits
	csrrc x31, 0x73b, x18	// Clear all CSR bits
	csrrw x31, 0x73b, x4	// Restore CSR

// Testing CSR 0x73c
	csrr x18, 0x73c	// Read CSR
	li x2, -1
	csrrw x20, 0x73c, x2	// Write all 1s to CSR
	csrrw x20, 0x73c, x0	// Write all 0s to CSR
	csrrs x20, 0x73c, x2	// Set all CSR bits
	csrrc x20, 0x73c, x2	// Clear all CSR bits
	csrrw x20, 0x73c, x18	// Restore CSR

// Testing CSR 0x73d
	csrr x21, 0x73d	// Read CSR
	li x27, -1
	csrrw x2, 0x73d, x27	// Write all 1s to CSR
	csrrw x2, 0x73d, x0	// Write all 0s to CSR
	csrrs x2, 0x73d, x27	// Set all CSR bits
	csrrc x2, 0x73d, x27	// Clear all CSR bits
	csrrw x2, 0x73d, x21	// Restore CSR

// Testing CSR 0x73e
	csrr x2, 0x73e	// Read CSR
	li x14, -1
	csrrw x20, 0x73e, x14	// Write all 1s to CSR
	csrrw x20, 0x73e, x0	// Write all 0s to CSR
	csrrs x20, 0x73e, x14	// Set all CSR bits
	csrrc x20, 0x73e, x14	// Clear all CSR bits
	csrrw x20, 0x73e, x2	// Restore CSR

// Testing CSR 0x73f
	csrr x30, 0x73f	// Read CSR
	li x14, -1
	csrrw x29, 0x73f, x14	// Write all 1s to CSR
	csrrw x29, 0x73f, x0	// Write all 0s to CSR
	csrrs x29, 0x73f, x14	// Set all CSR bits
	csrrc x29, 0x73f, x14	// Clear all CSR bits
	csrrw x29, 0x73f, x30	// Restore CSR

// Testing CSR 0x740
	csrr x16, 0x740	// Read CSR
	li x7, -1
	csrrw x1, 0x740, x7	// Write all 1s to CSR
	csrrw x1, 0x740, x0	// Write all 0s to CSR
	csrrs x1, 0x740, x7	// Set all CSR bits
	csrrc x1, 0x740, x7	// Clear all CSR bits
	csrrw x1, 0x740, x16	// Restore CSR

// Testing CSR 0x741
	csrr x11, 0x741	// Read CSR
	li x1, -1
	csrrw x14, 0x741, x1	// Write all 1s to CSR
	csrrw x14, 0x741, x0	// Write all 0s to CSR
	csrrs x14, 0x741, x1	// Set all CSR bits
	csrrc x14, 0x741, x1	// Clear all CSR bits
	csrrw x14, 0x741, x11	// Restore CSR

// Testing CSR 0x742
	csrr x22, 0x742	// Read CSR
	li x19, -1
	csrrw x7, 0x742, x19	// Write all 1s to CSR
	csrrw x7, 0x742, x0	// Write all 0s to CSR
	csrrs x7, 0x742, x19	// Set all CSR bits
	csrrc x7, 0x742, x19	// Clear all CSR bits
	csrrw x7, 0x742, x22	// Restore CSR

// Testing CSR 0x743
	csrr x26, 0x743	// Read CSR
	li x16, -1
	csrrw x19, 0x743, x16	// Write all 1s to CSR
	csrrw x19, 0x743, x0	// Write all 0s to CSR
	csrrs x19, 0x743, x16	// Set all CSR bits
	csrrc x19, 0x743, x16	// Clear all CSR bits
	csrrw x19, 0x743, x26	// Restore CSR

// Testing CSR 0x744
	csrr x27, 0x744	// Read CSR
	li x3, -1
	csrrw x19, 0x744, x3	// Write all 1s to CSR
	csrrw x19, 0x744, x0	// Write all 0s to CSR
	csrrs x19, 0x744, x3	// Set all CSR bits
	csrrc x19, 0x744, x3	// Clear all CSR bits
	csrrw x19, 0x744, x27	// Restore CSR

// Testing CSR 0x745
	csrr x4, 0x745	// Read CSR
	li x9, -1
	csrrw x28, 0x745, x9	// Write all 1s to CSR
	csrrw x28, 0x745, x0	// Write all 0s to CSR
	csrrs x28, 0x745, x9	// Set all CSR bits
	csrrc x28, 0x745, x9	// Clear all CSR bits
	csrrw x28, 0x745, x4	// Restore CSR

// Testing CSR 0x746
	csrr x20, 0x746	// Read CSR
	li x14, -1
	csrrw x5, 0x746, x14	// Write all 1s to CSR
	csrrw x5, 0x746, x0	// Write all 0s to CSR
	csrrs x5, 0x746, x14	// Set all CSR bits
	csrrc x5, 0x746, x14	// Clear all CSR bits
	csrrw x5, 0x746, x20	// Restore CSR

// Testing CSR 0x747
	csrr x23, 0x747	// Read CSR
	li x10, -1
	csrrw x7, 0x747, x10	// Write all 1s to CSR
	csrrw x7, 0x747, x0	// Write all 0s to CSR
	csrrs x7, 0x747, x10	// Set all CSR bits
	csrrc x7, 0x747, x10	// Clear all CSR bits
	csrrw x7, 0x747, x23	// Restore CSR

// Testing CSR 0x748
	csrr x23, 0x748	// Read CSR
	li x1, -1
	csrrw x24, 0x748, x1	// Write all 1s to CSR
	csrrw x24, 0x748, x0	// Write all 0s to CSR
	csrrs x24, 0x748, x1	// Set all CSR bits
	csrrc x24, 0x748, x1	// Clear all CSR bits
	csrrw x24, 0x748, x23	// Restore CSR

// Testing CSR 0x749
	csrr x24, 0x749	// Read CSR
	li x6, -1
	csrrw x14, 0x749, x6	// Write all 1s to CSR
	csrrw x14, 0x749, x0	// Write all 0s to CSR
	csrrs x14, 0x749, x6	// Set all CSR bits
	csrrc x14, 0x749, x6	// Clear all CSR bits
	csrrw x14, 0x749, x24	// Restore CSR

// Testing CSR 0x74a
	csrr x18, 0x74a	// Read CSR
	li x8, -1
	csrrw x23, 0x74a, x8	// Write all 1s to CSR
	csrrw x23, 0x74a, x0	// Write all 0s to CSR
	csrrs x23, 0x74a, x8	// Set all CSR bits
	csrrc x23, 0x74a, x8	// Clear all CSR bits
	csrrw x23, 0x74a, x18	// Restore CSR

// Testing CSR 0x74b
	csrr x31, 0x74b	// Read CSR
	li x12, -1
	csrrw x22, 0x74b, x12	// Write all 1s to CSR
	csrrw x22, 0x74b, x0	// Write all 0s to CSR
	csrrs x22, 0x74b, x12	// Set all CSR bits
	csrrc x22, 0x74b, x12	// Clear all CSR bits
	csrrw x22, 0x74b, x31	// Restore CSR

// Testing CSR 0x74c
	csrr x2, 0x74c	// Read CSR
	li x22, -1
	csrrw x5, 0x74c, x22	// Write all 1s to CSR
	csrrw x5, 0x74c, x0	// Write all 0s to CSR
	csrrs x5, 0x74c, x22	// Set all CSR bits
	csrrc x5, 0x74c, x22	// Clear all CSR bits
	csrrw x5, 0x74c, x2	// Restore CSR

// Testing CSR 0x74d
	csrr x13, 0x74d	// Read CSR
	li x30, -1
	csrrw x31, 0x74d, x30	// Write all 1s to CSR
	csrrw x31, 0x74d, x0	// Write all 0s to CSR
	csrrs x31, 0x74d, x30	// Set all CSR bits
	csrrc x31, 0x74d, x30	// Clear all CSR bits
	csrrw x31, 0x74d, x13	// Restore CSR

// Testing CSR 0x74e
	csrr x15, 0x74e	// Read CSR
	li x13, -1
	csrrw x4, 0x74e, x13	// Write all 1s to CSR
	csrrw x4, 0x74e, x0	// Write all 0s to CSR
	csrrs x4, 0x74e, x13	// Set all CSR bits
	csrrc x4, 0x74e, x13	// Clear all CSR bits
	csrrw x4, 0x74e, x15	// Restore CSR

// Testing CSR 0x74f
	csrr x13, 0x74f	// Read CSR
	li x26, -1
	csrrw x10, 0x74f, x26	// Write all 1s to CSR
	csrrw x10, 0x74f, x0	// Write all 0s to CSR
	csrrs x10, 0x74f, x26	// Set all CSR bits
	csrrc x10, 0x74f, x26	// Clear all CSR bits
	csrrw x10, 0x74f, x13	// Restore CSR

// Testing CSR 0x750
	csrr x2, 0x750	// Read CSR
	li x9, -1
	csrrw x8, 0x750, x9	// Write all 1s to CSR
	csrrw x8, 0x750, x0	// Write all 0s to CSR
	csrrs x8, 0x750, x9	// Set all CSR bits
	csrrc x8, 0x750, x9	// Clear all CSR bits
	csrrw x8, 0x750, x2	// Restore CSR

// Testing CSR 0x751
	csrr x5, 0x751	// Read CSR
	li x13, -1
	csrrw x19, 0x751, x13	// Write all 1s to CSR
	csrrw x19, 0x751, x0	// Write all 0s to CSR
	csrrs x19, 0x751, x13	// Set all CSR bits
	csrrc x19, 0x751, x13	// Clear all CSR bits
	csrrw x19, 0x751, x5	// Restore CSR

// Testing CSR 0x752
	csrr x30, 0x752	// Read CSR
	li x22, -1
	csrrw x6, 0x752, x22	// Write all 1s to CSR
	csrrw x6, 0x752, x0	// Write all 0s to CSR
	csrrs x6, 0x752, x22	// Set all CSR bits
	csrrc x6, 0x752, x22	// Clear all CSR bits
	csrrw x6, 0x752, x30	// Restore CSR

// Testing CSR 0x753
	csrr x11, 0x753	// Read CSR
	li x25, -1
	csrrw x8, 0x753, x25	// Write all 1s to CSR
	csrrw x8, 0x753, x0	// Write all 0s to CSR
	csrrs x8, 0x753, x25	// Set all CSR bits
	csrrc x8, 0x753, x25	// Clear all CSR bits
	csrrw x8, 0x753, x11	// Restore CSR

// Testing CSR 0x754
	csrr x17, 0x754	// Read CSR
	li x2, -1
	csrrw x12, 0x754, x2	// Write all 1s to CSR
	csrrw x12, 0x754, x0	// Write all 0s to CSR
	csrrs x12, 0x754, x2	// Set all CSR bits
	csrrc x12, 0x754, x2	// Clear all CSR bits
	csrrw x12, 0x754, x17	// Restore CSR

// Testing CSR 0x755
	csrr x13, 0x755	// Read CSR
	li x31, -1
	csrrw x14, 0x755, x31	// Write all 1s to CSR
	csrrw x14, 0x755, x0	// Write all 0s to CSR
	csrrs x14, 0x755, x31	// Set all CSR bits
	csrrc x14, 0x755, x31	// Clear all CSR bits
	csrrw x14, 0x755, x13	// Restore CSR

// Testing CSR 0x756
	csrr x1, 0x756	// Read CSR
	li x8, -1
	csrrw x3, 0x756, x8	// Write all 1s to CSR
	csrrw x3, 0x756, x0	// Write all 0s to CSR
	csrrs x3, 0x756, x8	// Set all CSR bits
	csrrc x3, 0x756, x8	// Clear all CSR bits
	csrrw x3, 0x756, x1	// Restore CSR

// Testing CSR 0x757
	csrr x12, 0x757	// Read CSR
	li x22, -1
	csrrw x6, 0x757, x22	// Write all 1s to CSR
	csrrw x6, 0x757, x0	// Write all 0s to CSR
	csrrs x6, 0x757, x22	// Set all CSR bits
	csrrc x6, 0x757, x22	// Clear all CSR bits
	csrrw x6, 0x757, x12	// Restore CSR

// Testing CSR 0x758
	csrr x16, 0x758	// Read CSR
	li x27, -1
	csrrw x24, 0x758, x27	// Write all 1s to CSR
	csrrw x24, 0x758, x0	// Write all 0s to CSR
	csrrs x24, 0x758, x27	// Set all CSR bits
	csrrc x24, 0x758, x27	// Clear all CSR bits
	csrrw x24, 0x758, x16	// Restore CSR

// Testing CSR 0x759
	csrr x18, 0x759	// Read CSR
	li x4, -1
	csrrw x23, 0x759, x4	// Write all 1s to CSR
	csrrw x23, 0x759, x0	// Write all 0s to CSR
	csrrs x23, 0x759, x4	// Set all CSR bits
	csrrc x23, 0x759, x4	// Clear all CSR bits
	csrrw x23, 0x759, x18	// Restore CSR

// Testing CSR 0x75a
	csrr x18, 0x75a	// Read CSR
	li x25, -1
	csrrw x4, 0x75a, x25	// Write all 1s to CSR
	csrrw x4, 0x75a, x0	// Write all 0s to CSR
	csrrs x4, 0x75a, x25	// Set all CSR bits
	csrrc x4, 0x75a, x25	// Clear all CSR bits
	csrrw x4, 0x75a, x18	// Restore CSR

// Testing CSR 0x75b
	csrr x29, 0x75b	// Read CSR
	li x16, -1
	csrrw x17, 0x75b, x16	// Write all 1s to CSR
	csrrw x17, 0x75b, x0	// Write all 0s to CSR
	csrrs x17, 0x75b, x16	// Set all CSR bits
	csrrc x17, 0x75b, x16	// Clear all CSR bits
	csrrw x17, 0x75b, x29	// Restore CSR

// Testing CSR 0x75c
	csrr x12, 0x75c	// Read CSR
	li x16, -1
	csrrw x21, 0x75c, x16	// Write all 1s to CSR
	csrrw x21, 0x75c, x0	// Write all 0s to CSR
	csrrs x21, 0x75c, x16	// Set all CSR bits
	csrrc x21, 0x75c, x16	// Clear all CSR bits
	csrrw x21, 0x75c, x12	// Restore CSR

// Testing CSR 0x75d
	csrr x1, 0x75d	// Read CSR
	li x6, -1
	csrrw x28, 0x75d, x6	// Write all 1s to CSR
	csrrw x28, 0x75d, x0	// Write all 0s to CSR
	csrrs x28, 0x75d, x6	// Set all CSR bits
	csrrc x28, 0x75d, x6	// Clear all CSR bits
	csrrw x28, 0x75d, x1	// Restore CSR

// Testing CSR 0x75e
	csrr x17, 0x75e	// Read CSR
	li x6, -1
	csrrw x30, 0x75e, x6	// Write all 1s to CSR
	csrrw x30, 0x75e, x0	// Write all 0s to CSR
	csrrs x30, 0x75e, x6	// Set all CSR bits
	csrrc x30, 0x75e, x6	// Clear all CSR bits
	csrrw x30, 0x75e, x17	// Restore CSR

// Testing CSR 0x75f
	csrr x15, 0x75f	// Read CSR
	li x7, -1
	csrrw x23, 0x75f, x7	// Write all 1s to CSR
	csrrw x23, 0x75f, x0	// Write all 0s to CSR
	csrrs x23, 0x75f, x7	// Set all CSR bits
	csrrc x23, 0x75f, x7	// Clear all CSR bits
	csrrw x23, 0x75f, x15	// Restore CSR

// Testing CSR 0x760
	csrr x16, 0x760	// Read CSR
	li x5, -1
	csrrw x14, 0x760, x5	// Write all 1s to CSR
	csrrw x14, 0x760, x0	// Write all 0s to CSR
	csrrs x14, 0x760, x5	// Set all CSR bits
	csrrc x14, 0x760, x5	// Clear all CSR bits
	csrrw x14, 0x760, x16	// Restore CSR

// Testing CSR 0x761
	csrr x10, 0x761	// Read CSR
	li x29, -1
	csrrw x17, 0x761, x29	// Write all 1s to CSR
	csrrw x17, 0x761, x0	// Write all 0s to CSR
	csrrs x17, 0x761, x29	// Set all CSR bits
	csrrc x17, 0x761, x29	// Clear all CSR bits
	csrrw x17, 0x761, x10	// Restore CSR

// Testing CSR 0x762
	csrr x2, 0x762	// Read CSR
	li x26, -1
	csrrw x15, 0x762, x26	// Write all 1s to CSR
	csrrw x15, 0x762, x0	// Write all 0s to CSR
	csrrs x15, 0x762, x26	// Set all CSR bits
	csrrc x15, 0x762, x26	// Clear all CSR bits
	csrrw x15, 0x762, x2	// Restore CSR

// Testing CSR 0x763
	csrr x6, 0x763	// Read CSR
	li x7, -1
	csrrw x28, 0x763, x7	// Write all 1s to CSR
	csrrw x28, 0x763, x0	// Write all 0s to CSR
	csrrs x28, 0x763, x7	// Set all CSR bits
	csrrc x28, 0x763, x7	// Clear all CSR bits
	csrrw x28, 0x763, x6	// Restore CSR

// Testing CSR 0x764
	csrr x16, 0x764	// Read CSR
	li x3, -1
	csrrw x5, 0x764, x3	// Write all 1s to CSR
	csrrw x5, 0x764, x0	// Write all 0s to CSR
	csrrs x5, 0x764, x3	// Set all CSR bits
	csrrc x5, 0x764, x3	// Clear all CSR bits
	csrrw x5, 0x764, x16	// Restore CSR

// Testing CSR 0x765
	csrr x13, 0x765	// Read CSR
	li x19, -1
	csrrw x29, 0x765, x19	// Write all 1s to CSR
	csrrw x29, 0x765, x0	// Write all 0s to CSR
	csrrs x29, 0x765, x19	// Set all CSR bits
	csrrc x29, 0x765, x19	// Clear all CSR bits
	csrrw x29, 0x765, x13	// Restore CSR

// Testing CSR 0x766
	csrr x29, 0x766	// Read CSR
	li x4, -1
	csrrw x8, 0x766, x4	// Write all 1s to CSR
	csrrw x8, 0x766, x0	// Write all 0s to CSR
	csrrs x8, 0x766, x4	// Set all CSR bits
	csrrc x8, 0x766, x4	// Clear all CSR bits
	csrrw x8, 0x766, x29	// Restore CSR

// Testing CSR 0x767
	csrr x28, 0x767	// Read CSR
	li x14, -1
	csrrw x25, 0x767, x14	// Write all 1s to CSR
	csrrw x25, 0x767, x0	// Write all 0s to CSR
	csrrs x25, 0x767, x14	// Set all CSR bits
	csrrc x25, 0x767, x14	// Clear all CSR bits
	csrrw x25, 0x767, x28	// Restore CSR

// Testing CSR 0x768
	csrr x16, 0x768	// Read CSR
	li x10, -1
	csrrw x21, 0x768, x10	// Write all 1s to CSR
	csrrw x21, 0x768, x0	// Write all 0s to CSR
	csrrs x21, 0x768, x10	// Set all CSR bits
	csrrc x21, 0x768, x10	// Clear all CSR bits
	csrrw x21, 0x768, x16	// Restore CSR

// Testing CSR 0x769
	csrr x10, 0x769	// Read CSR
	li x17, -1
	csrrw x4, 0x769, x17	// Write all 1s to CSR
	csrrw x4, 0x769, x0	// Write all 0s to CSR
	csrrs x4, 0x769, x17	// Set all CSR bits
	csrrc x4, 0x769, x17	// Clear all CSR bits
	csrrw x4, 0x769, x10	// Restore CSR

// Testing CSR 0x76a
	csrr x3, 0x76a	// Read CSR
	li x24, -1
	csrrw x15, 0x76a, x24	// Write all 1s to CSR
	csrrw x15, 0x76a, x0	// Write all 0s to CSR
	csrrs x15, 0x76a, x24	// Set all CSR bits
	csrrc x15, 0x76a, x24	// Clear all CSR bits
	csrrw x15, 0x76a, x3	// Restore CSR

// Testing CSR 0x76b
	csrr x14, 0x76b	// Read CSR
	li x23, -1
	csrrw x24, 0x76b, x23	// Write all 1s to CSR
	csrrw x24, 0x76b, x0	// Write all 0s to CSR
	csrrs x24, 0x76b, x23	// Set all CSR bits
	csrrc x24, 0x76b, x23	// Clear all CSR bits
	csrrw x24, 0x76b, x14	// Restore CSR

// Testing CSR 0x76c
	csrr x27, 0x76c	// Read CSR
	li x13, -1
	csrrw x7, 0x76c, x13	// Write all 1s to CSR
	csrrw x7, 0x76c, x0	// Write all 0s to CSR
	csrrs x7, 0x76c, x13	// Set all CSR bits
	csrrc x7, 0x76c, x13	// Clear all CSR bits
	csrrw x7, 0x76c, x27	// Restore CSR

// Testing CSR 0x76d
	csrr x5, 0x76d	// Read CSR
	li x12, -1
	csrrw x30, 0x76d, x12	// Write all 1s to CSR
	csrrw x30, 0x76d, x0	// Write all 0s to CSR
	csrrs x30, 0x76d, x12	// Set all CSR bits
	csrrc x30, 0x76d, x12	// Clear all CSR bits
	csrrw x30, 0x76d, x5	// Restore CSR

// Testing CSR 0x76e
	csrr x3, 0x76e	// Read CSR
	li x29, -1
	csrrw x1, 0x76e, x29	// Write all 1s to CSR
	csrrw x1, 0x76e, x0	// Write all 0s to CSR
	csrrs x1, 0x76e, x29	// Set all CSR bits
	csrrc x1, 0x76e, x29	// Clear all CSR bits
	csrrw x1, 0x76e, x3	// Restore CSR

// Testing CSR 0x76f
	csrr x9, 0x76f	// Read CSR
	li x23, -1
	csrrw x8, 0x76f, x23	// Write all 1s to CSR
	csrrw x8, 0x76f, x0	// Write all 0s to CSR
	csrrs x8, 0x76f, x23	// Set all CSR bits
	csrrc x8, 0x76f, x23	// Clear all CSR bits
	csrrw x8, 0x76f, x9	// Restore CSR

// Testing CSR 0x770
	csrr x11, 0x770	// Read CSR
	li x3, -1
	csrrw x26, 0x770, x3	// Write all 1s to CSR
	csrrw x26, 0x770, x0	// Write all 0s to CSR
	csrrs x26, 0x770, x3	// Set all CSR bits
	csrrc x26, 0x770, x3	// Clear all CSR bits
	csrrw x26, 0x770, x11	// Restore CSR

// Testing CSR 0x771
	csrr x5, 0x771	// Read CSR
	li x30, -1
	csrrw x22, 0x771, x30	// Write all 1s to CSR
	csrrw x22, 0x771, x0	// Write all 0s to CSR
	csrrs x22, 0x771, x30	// Set all CSR bits
	csrrc x22, 0x771, x30	// Clear all CSR bits
	csrrw x22, 0x771, x5	// Restore CSR

// Testing CSR 0x772
	csrr x8, 0x772	// Read CSR
	li x17, -1
	csrrw x14, 0x772, x17	// Write all 1s to CSR
	csrrw x14, 0x772, x0	// Write all 0s to CSR
	csrrs x14, 0x772, x17	// Set all CSR bits
	csrrc x14, 0x772, x17	// Clear all CSR bits
	csrrw x14, 0x772, x8	// Restore CSR

// Testing CSR 0x773
	csrr x2, 0x773	// Read CSR
	li x31, -1
	csrrw x10, 0x773, x31	// Write all 1s to CSR
	csrrw x10, 0x773, x0	// Write all 0s to CSR
	csrrs x10, 0x773, x31	// Set all CSR bits
	csrrc x10, 0x773, x31	// Clear all CSR bits
	csrrw x10, 0x773, x2	// Restore CSR

// Testing CSR 0x774
	csrr x1, 0x774	// Read CSR
	li x25, -1
	csrrw x28, 0x774, x25	// Write all 1s to CSR
	csrrw x28, 0x774, x0	// Write all 0s to CSR
	csrrs x28, 0x774, x25	// Set all CSR bits
	csrrc x28, 0x774, x25	// Clear all CSR bits
	csrrw x28, 0x774, x1	// Restore CSR

// Testing CSR 0x775
	csrr x3, 0x775	// Read CSR
	li x25, -1
	csrrw x20, 0x775, x25	// Write all 1s to CSR
	csrrw x20, 0x775, x0	// Write all 0s to CSR
	csrrs x20, 0x775, x25	// Set all CSR bits
	csrrc x20, 0x775, x25	// Clear all CSR bits
	csrrw x20, 0x775, x3	// Restore CSR

// Testing CSR 0x776
	csrr x14, 0x776	// Read CSR
	li x28, -1
	csrrw x20, 0x776, x28	// Write all 1s to CSR
	csrrw x20, 0x776, x0	// Write all 0s to CSR
	csrrs x20, 0x776, x28	// Set all CSR bits
	csrrc x20, 0x776, x28	// Clear all CSR bits
	csrrw x20, 0x776, x14	// Restore CSR

// Testing CSR 0x777
	csrr x3, 0x777	// Read CSR
	li x13, -1
	csrrw x17, 0x777, x13	// Write all 1s to CSR
	csrrw x17, 0x777, x0	// Write all 0s to CSR
	csrrs x17, 0x777, x13	// Set all CSR bits
	csrrc x17, 0x777, x13	// Clear all CSR bits
	csrrw x17, 0x777, x3	// Restore CSR

// Testing CSR 0x778
	csrr x18, 0x778	// Read CSR
	li x27, -1
	csrrw x2, 0x778, x27	// Write all 1s to CSR
	csrrw x2, 0x778, x0	// Write all 0s to CSR
	csrrs x2, 0x778, x27	// Set all CSR bits
	csrrc x2, 0x778, x27	// Clear all CSR bits
	csrrw x2, 0x778, x18	// Restore CSR

// Testing CSR 0x779
	csrr x24, 0x779	// Read CSR
	li x20, -1
	csrrw x3, 0x779, x20	// Write all 1s to CSR
	csrrw x3, 0x779, x0	// Write all 0s to CSR
	csrrs x3, 0x779, x20	// Set all CSR bits
	csrrc x3, 0x779, x20	// Clear all CSR bits
	csrrw x3, 0x779, x24	// Restore CSR

// Testing CSR 0x77a
	csrr x26, 0x77a	// Read CSR
	li x25, -1
	csrrw x4, 0x77a, x25	// Write all 1s to CSR
	csrrw x4, 0x77a, x0	// Write all 0s to CSR
	csrrs x4, 0x77a, x25	// Set all CSR bits
	csrrc x4, 0x77a, x25	// Clear all CSR bits
	csrrw x4, 0x77a, x26	// Restore CSR

// Testing CSR 0x77b
	csrr x7, 0x77b	// Read CSR
	li x3, -1
	csrrw x23, 0x77b, x3	// Write all 1s to CSR
	csrrw x23, 0x77b, x0	// Write all 0s to CSR
	csrrs x23, 0x77b, x3	// Set all CSR bits
	csrrc x23, 0x77b, x3	// Clear all CSR bits
	csrrw x23, 0x77b, x7	// Restore CSR

// Testing CSR 0x77c
	csrr x14, 0x77c	// Read CSR
	li x24, -1
	csrrw x20, 0x77c, x24	// Write all 1s to CSR
	csrrw x20, 0x77c, x0	// Write all 0s to CSR
	csrrs x20, 0x77c, x24	// Set all CSR bits
	csrrc x20, 0x77c, x24	// Clear all CSR bits
	csrrw x20, 0x77c, x14	// Restore CSR

// Testing CSR 0x77d
	csrr x19, 0x77d	// Read CSR
	li x24, -1
	csrrw x25, 0x77d, x24	// Write all 1s to CSR
	csrrw x25, 0x77d, x0	// Write all 0s to CSR
	csrrs x25, 0x77d, x24	// Set all CSR bits
	csrrc x25, 0x77d, x24	// Clear all CSR bits
	csrrw x25, 0x77d, x19	// Restore CSR

// Testing CSR 0x77e
	csrr x27, 0x77e	// Read CSR
	li x2, -1
	csrrw x29, 0x77e, x2	// Write all 1s to CSR
	csrrw x29, 0x77e, x0	// Write all 0s to CSR
	csrrs x29, 0x77e, x2	// Set all CSR bits
	csrrc x29, 0x77e, x2	// Clear all CSR bits
	csrrw x29, 0x77e, x27	// Restore CSR

// Testing CSR 0x77f
	csrr x13, 0x77f	// Read CSR
	li x11, -1
	csrrw x19, 0x77f, x11	// Write all 1s to CSR
	csrrw x19, 0x77f, x0	// Write all 0s to CSR
	csrrs x19, 0x77f, x11	// Set all CSR bits
	csrrc x19, 0x77f, x11	// Clear all CSR bits
	csrrw x19, 0x77f, x13	// Restore CSR

// Testing CSR 0x780
	csrr x23, 0x780	// Read CSR
	li x13, -1
	csrrw x22, 0x780, x13	// Write all 1s to CSR
	csrrw x22, 0x780, x0	// Write all 0s to CSR
	csrrs x22, 0x780, x13	// Set all CSR bits
	csrrc x22, 0x780, x13	// Clear all CSR bits
	csrrw x22, 0x780, x23	// Restore CSR

// Testing CSR 0x781
	csrr x1, 0x781	// Read CSR
	li x16, -1
	csrrw x18, 0x781, x16	// Write all 1s to CSR
	csrrw x18, 0x781, x0	// Write all 0s to CSR
	csrrs x18, 0x781, x16	// Set all CSR bits
	csrrc x18, 0x781, x16	// Clear all CSR bits
	csrrw x18, 0x781, x1	// Restore CSR

// Testing CSR 0x782
	csrr x10, 0x782	// Read CSR
	li x12, -1
	csrrw x16, 0x782, x12	// Write all 1s to CSR
	csrrw x16, 0x782, x0	// Write all 0s to CSR
	csrrs x16, 0x782, x12	// Set all CSR bits
	csrrc x16, 0x782, x12	// Clear all CSR bits
	csrrw x16, 0x782, x10	// Restore CSR

// Testing CSR 0x783
	csrr x23, 0x783	// Read CSR
	li x2, -1
	csrrw x31, 0x783, x2	// Write all 1s to CSR
	csrrw x31, 0x783, x0	// Write all 0s to CSR
	csrrs x31, 0x783, x2	// Set all CSR bits
	csrrc x31, 0x783, x2	// Clear all CSR bits
	csrrw x31, 0x783, x23	// Restore CSR

// Testing CSR 0x784
	csrr x9, 0x784	// Read CSR
	li x28, -1
	csrrw x26, 0x784, x28	// Write all 1s to CSR
	csrrw x26, 0x784, x0	// Write all 0s to CSR
	csrrs x26, 0x784, x28	// Set all CSR bits
	csrrc x26, 0x784, x28	// Clear all CSR bits
	csrrw x26, 0x784, x9	// Restore CSR

// Testing CSR 0x785
	csrr x1, 0x785	// Read CSR
	li x10, -1
	csrrw x8, 0x785, x10	// Write all 1s to CSR
	csrrw x8, 0x785, x0	// Write all 0s to CSR
	csrrs x8, 0x785, x10	// Set all CSR bits
	csrrc x8, 0x785, x10	// Clear all CSR bits
	csrrw x8, 0x785, x1	// Restore CSR

// Testing CSR 0x786
	csrr x6, 0x786	// Read CSR
	li x22, -1
	csrrw x10, 0x786, x22	// Write all 1s to CSR
	csrrw x10, 0x786, x0	// Write all 0s to CSR
	csrrs x10, 0x786, x22	// Set all CSR bits
	csrrc x10, 0x786, x22	// Clear all CSR bits
	csrrw x10, 0x786, x6	// Restore CSR

// Testing CSR 0x787
	csrr x31, 0x787	// Read CSR
	li x8, -1
	csrrw x18, 0x787, x8	// Write all 1s to CSR
	csrrw x18, 0x787, x0	// Write all 0s to CSR
	csrrs x18, 0x787, x8	// Set all CSR bits
	csrrc x18, 0x787, x8	// Clear all CSR bits
	csrrw x18, 0x787, x31	// Restore CSR

// Testing CSR 0x788
	csrr x4, 0x788	// Read CSR
	li x22, -1
	csrrw x29, 0x788, x22	// Write all 1s to CSR
	csrrw x29, 0x788, x0	// Write all 0s to CSR
	csrrs x29, 0x788, x22	// Set all CSR bits
	csrrc x29, 0x788, x22	// Clear all CSR bits
	csrrw x29, 0x788, x4	// Restore CSR

// Testing CSR 0x789
	csrr x7, 0x789	// Read CSR
	li x21, -1
	csrrw x31, 0x789, x21	// Write all 1s to CSR
	csrrw x31, 0x789, x0	// Write all 0s to CSR
	csrrs x31, 0x789, x21	// Set all CSR bits
	csrrc x31, 0x789, x21	// Clear all CSR bits
	csrrw x31, 0x789, x7	// Restore CSR

// Testing CSR 0x78a
	csrr x8, 0x78a	// Read CSR
	li x15, -1
	csrrw x28, 0x78a, x15	// Write all 1s to CSR
	csrrw x28, 0x78a, x0	// Write all 0s to CSR
	csrrs x28, 0x78a, x15	// Set all CSR bits
	csrrc x28, 0x78a, x15	// Clear all CSR bits
	csrrw x28, 0x78a, x8	// Restore CSR

// Testing CSR 0x78b
	csrr x14, 0x78b	// Read CSR
	li x27, -1
	csrrw x4, 0x78b, x27	// Write all 1s to CSR
	csrrw x4, 0x78b, x0	// Write all 0s to CSR
	csrrs x4, 0x78b, x27	// Set all CSR bits
	csrrc x4, 0x78b, x27	// Clear all CSR bits
	csrrw x4, 0x78b, x14	// Restore CSR

// Testing CSR 0x78c
	csrr x29, 0x78c	// Read CSR
	li x1, -1
	csrrw x17, 0x78c, x1	// Write all 1s to CSR
	csrrw x17, 0x78c, x0	// Write all 0s to CSR
	csrrs x17, 0x78c, x1	// Set all CSR bits
	csrrc x17, 0x78c, x1	// Clear all CSR bits
	csrrw x17, 0x78c, x29	// Restore CSR

// Testing CSR 0x78d
	csrr x5, 0x78d	// Read CSR
	li x6, -1
	csrrw x4, 0x78d, x6	// Write all 1s to CSR
	csrrw x4, 0x78d, x0	// Write all 0s to CSR
	csrrs x4, 0x78d, x6	// Set all CSR bits
	csrrc x4, 0x78d, x6	// Clear all CSR bits
	csrrw x4, 0x78d, x5	// Restore CSR

// Testing CSR 0x78e
	csrr x26, 0x78e	// Read CSR
	li x13, -1
	csrrw x6, 0x78e, x13	// Write all 1s to CSR
	csrrw x6, 0x78e, x0	// Write all 0s to CSR
	csrrs x6, 0x78e, x13	// Set all CSR bits
	csrrc x6, 0x78e, x13	// Clear all CSR bits
	csrrw x6, 0x78e, x26	// Restore CSR

// Testing CSR 0x78f
	csrr x18, 0x78f	// Read CSR
	li x27, -1
	csrrw x22, 0x78f, x27	// Write all 1s to CSR
	csrrw x22, 0x78f, x0	// Write all 0s to CSR
	csrrs x22, 0x78f, x27	// Set all CSR bits
	csrrc x22, 0x78f, x27	// Clear all CSR bits
	csrrw x22, 0x78f, x18	// Restore CSR

// Testing CSR 0x790
	csrr x7, 0x790	// Read CSR
	li x15, -1
	csrrw x31, 0x790, x15	// Write all 1s to CSR
	csrrw x31, 0x790, x0	// Write all 0s to CSR
	csrrs x31, 0x790, x15	// Set all CSR bits
	csrrc x31, 0x790, x15	// Clear all CSR bits
	csrrw x31, 0x790, x7	// Restore CSR

// Testing CSR 0x791
	csrr x30, 0x791	// Read CSR
	li x31, -1
	csrrw x26, 0x791, x31	// Write all 1s to CSR
	csrrw x26, 0x791, x0	// Write all 0s to CSR
	csrrs x26, 0x791, x31	// Set all CSR bits
	csrrc x26, 0x791, x31	// Clear all CSR bits
	csrrw x26, 0x791, x30	// Restore CSR

// Testing CSR 0x792
	csrr x16, 0x792	// Read CSR
	li x7, -1
	csrrw x8, 0x792, x7	// Write all 1s to CSR
	csrrw x8, 0x792, x0	// Write all 0s to CSR
	csrrs x8, 0x792, x7	// Set all CSR bits
	csrrc x8, 0x792, x7	// Clear all CSR bits
	csrrw x8, 0x792, x16	// Restore CSR

// Testing CSR 0x793
	csrr x3, 0x793	// Read CSR
	li x10, -1
	csrrw x5, 0x793, x10	// Write all 1s to CSR
	csrrw x5, 0x793, x0	// Write all 0s to CSR
	csrrs x5, 0x793, x10	// Set all CSR bits
	csrrc x5, 0x793, x10	// Clear all CSR bits
	csrrw x5, 0x793, x3	// Restore CSR

// Testing CSR 0x794
	csrr x25, 0x794	// Read CSR
	li x2, -1
	csrrw x20, 0x794, x2	// Write all 1s to CSR
	csrrw x20, 0x794, x0	// Write all 0s to CSR
	csrrs x20, 0x794, x2	// Set all CSR bits
	csrrc x20, 0x794, x2	// Clear all CSR bits
	csrrw x20, 0x794, x25	// Restore CSR

// Testing CSR 0x795
	csrr x14, 0x795	// Read CSR
	li x9, -1
	csrrw x28, 0x795, x9	// Write all 1s to CSR
	csrrw x28, 0x795, x0	// Write all 0s to CSR
	csrrs x28, 0x795, x9	// Set all CSR bits
	csrrc x28, 0x795, x9	// Clear all CSR bits
	csrrw x28, 0x795, x14	// Restore CSR

// Testing CSR 0x796
	csrr x10, 0x796	// Read CSR
	li x17, -1
	csrrw x18, 0x796, x17	// Write all 1s to CSR
	csrrw x18, 0x796, x0	// Write all 0s to CSR
	csrrs x18, 0x796, x17	// Set all CSR bits
	csrrc x18, 0x796, x17	// Clear all CSR bits
	csrrw x18, 0x796, x10	// Restore CSR

// Testing CSR 0x797
	csrr x27, 0x797	// Read CSR
	li x9, -1
	csrrw x18, 0x797, x9	// Write all 1s to CSR
	csrrw x18, 0x797, x0	// Write all 0s to CSR
	csrrs x18, 0x797, x9	// Set all CSR bits
	csrrc x18, 0x797, x9	// Clear all CSR bits
	csrrw x18, 0x797, x27	// Restore CSR

// Testing CSR 0x798
	csrr x20, 0x798	// Read CSR
	li x29, -1
	csrrw x22, 0x798, x29	// Write all 1s to CSR
	csrrw x22, 0x798, x0	// Write all 0s to CSR
	csrrs x22, 0x798, x29	// Set all CSR bits
	csrrc x22, 0x798, x29	// Clear all CSR bits
	csrrw x22, 0x798, x20	// Restore CSR

// Testing CSR 0x799
	csrr x30, 0x799	// Read CSR
	li x16, -1
	csrrw x13, 0x799, x16	// Write all 1s to CSR
	csrrw x13, 0x799, x0	// Write all 0s to CSR
	csrrs x13, 0x799, x16	// Set all CSR bits
	csrrc x13, 0x799, x16	// Clear all CSR bits
	csrrw x13, 0x799, x30	// Restore CSR

// Testing CSR 0x79a
	csrr x23, 0x79a	// Read CSR
	li x9, -1
	csrrw x18, 0x79a, x9	// Write all 1s to CSR
	csrrw x18, 0x79a, x0	// Write all 0s to CSR
	csrrs x18, 0x79a, x9	// Set all CSR bits
	csrrc x18, 0x79a, x9	// Clear all CSR bits
	csrrw x18, 0x79a, x23	// Restore CSR

// Testing CSR 0x79b
	csrr x11, 0x79b	// Read CSR
	li x13, -1
	csrrw x22, 0x79b, x13	// Write all 1s to CSR
	csrrw x22, 0x79b, x0	// Write all 0s to CSR
	csrrs x22, 0x79b, x13	// Set all CSR bits
	csrrc x22, 0x79b, x13	// Clear all CSR bits
	csrrw x22, 0x79b, x11	// Restore CSR

// Testing CSR 0x79c
	csrr x28, 0x79c	// Read CSR
	li x24, -1
	csrrw x23, 0x79c, x24	// Write all 1s to CSR
	csrrw x23, 0x79c, x0	// Write all 0s to CSR
	csrrs x23, 0x79c, x24	// Set all CSR bits
	csrrc x23, 0x79c, x24	// Clear all CSR bits
	csrrw x23, 0x79c, x28	// Restore CSR

// Testing CSR 0x79d
	csrr x3, 0x79d	// Read CSR
	li x24, -1
	csrrw x19, 0x79d, x24	// Write all 1s to CSR
	csrrw x19, 0x79d, x0	// Write all 0s to CSR
	csrrs x19, 0x79d, x24	// Set all CSR bits
	csrrc x19, 0x79d, x24	// Clear all CSR bits
	csrrw x19, 0x79d, x3	// Restore CSR

// Testing CSR 0x79e
	csrr x27, 0x79e	// Read CSR
	li x4, -1
	csrrw x28, 0x79e, x4	// Write all 1s to CSR
	csrrw x28, 0x79e, x0	// Write all 0s to CSR
	csrrs x28, 0x79e, x4	// Set all CSR bits
	csrrc x28, 0x79e, x4	// Clear all CSR bits
	csrrw x28, 0x79e, x27	// Restore CSR

// Testing CSR 0x79f
	csrr x16, 0x79f	// Read CSR
	li x3, -1
	csrrw x5, 0x79f, x3	// Write all 1s to CSR
	csrrw x5, 0x79f, x0	// Write all 0s to CSR
	csrrs x5, 0x79f, x3	// Set all CSR bits
	csrrc x5, 0x79f, x3	// Clear all CSR bits
	csrrw x5, 0x79f, x16	// Restore CSR

// Testing CSR 0x7a0
	csrr x11, 0x7a0	// Read CSR
	li x12, -1
	csrrw x3, 0x7a0, x12	// Write all 1s to CSR
	csrrw x3, 0x7a0, x0	// Write all 0s to CSR
	csrrs x3, 0x7a0, x12	// Set all CSR bits
	csrrc x3, 0x7a0, x12	// Clear all CSR bits
	csrrw x3, 0x7a0, x11	// Restore CSR

// Testing CSR 0x7a1
	csrr x31, 0x7a1	// Read CSR
	li x14, -1
	csrrw x23, 0x7a1, x14	// Write all 1s to CSR
	csrrw x23, 0x7a1, x0	// Write all 0s to CSR
	csrrs x23, 0x7a1, x14	// Set all CSR bits
	csrrc x23, 0x7a1, x14	// Clear all CSR bits
	csrrw x23, 0x7a1, x31	// Restore CSR

// Testing CSR 0x7a2
	csrr x9, 0x7a2	// Read CSR
	li x24, -1
	csrrw x13, 0x7a2, x24	// Write all 1s to CSR
	csrrw x13, 0x7a2, x0	// Write all 0s to CSR
	csrrs x13, 0x7a2, x24	// Set all CSR bits
	csrrc x13, 0x7a2, x24	// Clear all CSR bits
	csrrw x13, 0x7a2, x9	// Restore CSR

// Testing CSR 0x7a3
	csrr x6, 0x7a3	// Read CSR
	li x10, -1
	csrrw x29, 0x7a3, x10	// Write all 1s to CSR
	csrrw x29, 0x7a3, x0	// Write all 0s to CSR
	csrrs x29, 0x7a3, x10	// Set all CSR bits
	csrrc x29, 0x7a3, x10	// Clear all CSR bits
	csrrw x29, 0x7a3, x6	// Restore CSR

// Testing CSR 0x7a4
	csrr x17, 0x7a4	// Read CSR
	li x10, -1
	csrrw x19, 0x7a4, x10	// Write all 1s to CSR
	csrrw x19, 0x7a4, x0	// Write all 0s to CSR
	csrrs x19, 0x7a4, x10	// Set all CSR bits
	csrrc x19, 0x7a4, x10	// Clear all CSR bits
	csrrw x19, 0x7a4, x17	// Restore CSR

// Testing CSR 0x7a5
	csrr x27, 0x7a5	// Read CSR
	li x2, -1
	csrrw x17, 0x7a5, x2	// Write all 1s to CSR
	csrrw x17, 0x7a5, x0	// Write all 0s to CSR
	csrrs x17, 0x7a5, x2	// Set all CSR bits
	csrrc x17, 0x7a5, x2	// Clear all CSR bits
	csrrw x17, 0x7a5, x27	// Restore CSR

// Testing CSR 0x7a6
	csrr x10, 0x7a6	// Read CSR
	li x17, -1
	csrrw x5, 0x7a6, x17	// Write all 1s to CSR
	csrrw x5, 0x7a6, x0	// Write all 0s to CSR
	csrrs x5, 0x7a6, x17	// Set all CSR bits
	csrrc x5, 0x7a6, x17	// Clear all CSR bits
	csrrw x5, 0x7a6, x10	// Restore CSR

// Testing CSR 0x7a7
	csrr x16, 0x7a7	// Read CSR
	li x7, -1
	csrrw x27, 0x7a7, x7	// Write all 1s to CSR
	csrrw x27, 0x7a7, x0	// Write all 0s to CSR
	csrrs x27, 0x7a7, x7	// Set all CSR bits
	csrrc x27, 0x7a7, x7	// Clear all CSR bits
	csrrw x27, 0x7a7, x16	// Restore CSR

// Testing CSR 0x7a8
	csrr x14, 0x7a8	// Read CSR
	li x21, -1
	csrrw x22, 0x7a8, x21	// Write all 1s to CSR
	csrrw x22, 0x7a8, x0	// Write all 0s to CSR
	csrrs x22, 0x7a8, x21	// Set all CSR bits
	csrrc x22, 0x7a8, x21	// Clear all CSR bits
	csrrw x22, 0x7a8, x14	// Restore CSR

// Testing CSR 0x7a9
	csrr x2, 0x7a9	// Read CSR
	li x30, -1
	csrrw x23, 0x7a9, x30	// Write all 1s to CSR
	csrrw x23, 0x7a9, x0	// Write all 0s to CSR
	csrrs x23, 0x7a9, x30	// Set all CSR bits
	csrrc x23, 0x7a9, x30	// Clear all CSR bits
	csrrw x23, 0x7a9, x2	// Restore CSR

// Testing CSR 0x7aa
	csrr x23, 0x7aa	// Read CSR
	li x7, -1
	csrrw x10, 0x7aa, x7	// Write all 1s to CSR
	csrrw x10, 0x7aa, x0	// Write all 0s to CSR
	csrrs x10, 0x7aa, x7	// Set all CSR bits
	csrrc x10, 0x7aa, x7	// Clear all CSR bits
	csrrw x10, 0x7aa, x23	// Restore CSR

// Testing CSR 0x7ab
	csrr x19, 0x7ab	// Read CSR
	li x27, -1
	csrrw x9, 0x7ab, x27	// Write all 1s to CSR
	csrrw x9, 0x7ab, x0	// Write all 0s to CSR
	csrrs x9, 0x7ab, x27	// Set all CSR bits
	csrrc x9, 0x7ab, x27	// Clear all CSR bits
	csrrw x9, 0x7ab, x19	// Restore CSR

// Testing CSR 0x7ac
	csrr x30, 0x7ac	// Read CSR
	li x3, -1
	csrrw x24, 0x7ac, x3	// Write all 1s to CSR
	csrrw x24, 0x7ac, x0	// Write all 0s to CSR
	csrrs x24, 0x7ac, x3	// Set all CSR bits
	csrrc x24, 0x7ac, x3	// Clear all CSR bits
	csrrw x24, 0x7ac, x30	// Restore CSR

// Testing CSR 0x7ad
	csrr x21, 0x7ad	// Read CSR
	li x26, -1
	csrrw x19, 0x7ad, x26	// Write all 1s to CSR
	csrrw x19, 0x7ad, x0	// Write all 0s to CSR
	csrrs x19, 0x7ad, x26	// Set all CSR bits
	csrrc x19, 0x7ad, x26	// Clear all CSR bits
	csrrw x19, 0x7ad, x21	// Restore CSR

// Testing CSR 0x7ae
	csrr x15, 0x7ae	// Read CSR
	li x24, -1
	csrrw x6, 0x7ae, x24	// Write all 1s to CSR
	csrrw x6, 0x7ae, x0	// Write all 0s to CSR
	csrrs x6, 0x7ae, x24	// Set all CSR bits
	csrrc x6, 0x7ae, x24	// Clear all CSR bits
	csrrw x6, 0x7ae, x15	// Restore CSR

// Testing CSR 0x7af
	csrr x23, 0x7af	// Read CSR
	li x20, -1
	csrrw x9, 0x7af, x20	// Write all 1s to CSR
	csrrw x9, 0x7af, x0	// Write all 0s to CSR
	csrrs x9, 0x7af, x20	// Set all CSR bits
	csrrc x9, 0x7af, x20	// Clear all CSR bits
	csrrw x9, 0x7af, x23	// Restore CSR

// Testing CSR 0x7b0
	csrr x3, 0x7b0	// Read CSR
	li x11, -1
	csrrw x2, 0x7b0, x11	// Write all 1s to CSR
	csrrw x2, 0x7b0, x0	// Write all 0s to CSR
	csrrs x2, 0x7b0, x11	// Set all CSR bits
	csrrc x2, 0x7b0, x11	// Clear all CSR bits
	csrrw x2, 0x7b0, x3	// Restore CSR

// Testing CSR 0x7b1
	csrr x6, 0x7b1	// Read CSR
	li x11, -1
	csrrw x14, 0x7b1, x11	// Write all 1s to CSR
	csrrw x14, 0x7b1, x0	// Write all 0s to CSR
	csrrs x14, 0x7b1, x11	// Set all CSR bits
	csrrc x14, 0x7b1, x11	// Clear all CSR bits
	csrrw x14, 0x7b1, x6	// Restore CSR

// Testing CSR 0x7b2
	csrr x30, 0x7b2	// Read CSR
	li x11, -1
	csrrw x1, 0x7b2, x11	// Write all 1s to CSR
	csrrw x1, 0x7b2, x0	// Write all 0s to CSR
	csrrs x1, 0x7b2, x11	// Set all CSR bits
	csrrc x1, 0x7b2, x11	// Clear all CSR bits
	csrrw x1, 0x7b2, x30	// Restore CSR

// Testing CSR 0x7b3
	csrr x3, 0x7b3	// Read CSR
	li x5, -1
	csrrw x21, 0x7b3, x5	// Write all 1s to CSR
	csrrw x21, 0x7b3, x0	// Write all 0s to CSR
	csrrs x21, 0x7b3, x5	// Set all CSR bits
	csrrc x21, 0x7b3, x5	// Clear all CSR bits
	csrrw x21, 0x7b3, x3	// Restore CSR

// Testing CSR 0x7b4
	csrr x22, 0x7b4	// Read CSR
	li x12, -1
	csrrw x23, 0x7b4, x12	// Write all 1s to CSR
	csrrw x23, 0x7b4, x0	// Write all 0s to CSR
	csrrs x23, 0x7b4, x12	// Set all CSR bits
	csrrc x23, 0x7b4, x12	// Clear all CSR bits
	csrrw x23, 0x7b4, x22	// Restore CSR

// Testing CSR 0x7b5
	csrr x31, 0x7b5	// Read CSR
	li x12, -1
	csrrw x29, 0x7b5, x12	// Write all 1s to CSR
	csrrw x29, 0x7b5, x0	// Write all 0s to CSR
	csrrs x29, 0x7b5, x12	// Set all CSR bits
	csrrc x29, 0x7b5, x12	// Clear all CSR bits
	csrrw x29, 0x7b5, x31	// Restore CSR

// Testing CSR 0x7b6
	csrr x14, 0x7b6	// Read CSR
	li x1, -1
	csrrw x12, 0x7b6, x1	// Write all 1s to CSR
	csrrw x12, 0x7b6, x0	// Write all 0s to CSR
	csrrs x12, 0x7b6, x1	// Set all CSR bits
	csrrc x12, 0x7b6, x1	// Clear all CSR bits
	csrrw x12, 0x7b6, x14	// Restore CSR

// Testing CSR 0x7b7
	csrr x23, 0x7b7	// Read CSR
	li x3, -1
	csrrw x27, 0x7b7, x3	// Write all 1s to CSR
	csrrw x27, 0x7b7, x0	// Write all 0s to CSR
	csrrs x27, 0x7b7, x3	// Set all CSR bits
	csrrc x27, 0x7b7, x3	// Clear all CSR bits
	csrrw x27, 0x7b7, x23	// Restore CSR

// Testing CSR 0x7b8
	csrr x19, 0x7b8	// Read CSR
	li x21, -1
	csrrw x12, 0x7b8, x21	// Write all 1s to CSR
	csrrw x12, 0x7b8, x0	// Write all 0s to CSR
	csrrs x12, 0x7b8, x21	// Set all CSR bits
	csrrc x12, 0x7b8, x21	// Clear all CSR bits
	csrrw x12, 0x7b8, x19	// Restore CSR

// Testing CSR 0x7b9
	csrr x20, 0x7b9	// Read CSR
	li x11, -1
	csrrw x5, 0x7b9, x11	// Write all 1s to CSR
	csrrw x5, 0x7b9, x0	// Write all 0s to CSR
	csrrs x5, 0x7b9, x11	// Set all CSR bits
	csrrc x5, 0x7b9, x11	// Clear all CSR bits
	csrrw x5, 0x7b9, x20	// Restore CSR

// Testing CSR 0x7ba
	csrr x15, 0x7ba	// Read CSR
	li x4, -1
	csrrw x25, 0x7ba, x4	// Write all 1s to CSR
	csrrw x25, 0x7ba, x0	// Write all 0s to CSR
	csrrs x25, 0x7ba, x4	// Set all CSR bits
	csrrc x25, 0x7ba, x4	// Clear all CSR bits
	csrrw x25, 0x7ba, x15	// Restore CSR

// Testing CSR 0x7bb
	csrr x24, 0x7bb	// Read CSR
	li x26, -1
	csrrw x23, 0x7bb, x26	// Write all 1s to CSR
	csrrw x23, 0x7bb, x0	// Write all 0s to CSR
	csrrs x23, 0x7bb, x26	// Set all CSR bits
	csrrc x23, 0x7bb, x26	// Clear all CSR bits
	csrrw x23, 0x7bb, x24	// Restore CSR

// Testing CSR 0x7bc
	csrr x30, 0x7bc	// Read CSR
	li x24, -1
	csrrw x22, 0x7bc, x24	// Write all 1s to CSR
	csrrw x22, 0x7bc, x0	// Write all 0s to CSR
	csrrs x22, 0x7bc, x24	// Set all CSR bits
	csrrc x22, 0x7bc, x24	// Clear all CSR bits
	csrrw x22, 0x7bc, x30	// Restore CSR

// Testing CSR 0x7bd
	csrr x20, 0x7bd	// Read CSR
	li x18, -1
	csrrw x27, 0x7bd, x18	// Write all 1s to CSR
	csrrw x27, 0x7bd, x0	// Write all 0s to CSR
	csrrs x27, 0x7bd, x18	// Set all CSR bits
	csrrc x27, 0x7bd, x18	// Clear all CSR bits
	csrrw x27, 0x7bd, x20	// Restore CSR

// Testing CSR 0x7be
	csrr x15, 0x7be	// Read CSR
	li x5, -1
	csrrw x28, 0x7be, x5	// Write all 1s to CSR
	csrrw x28, 0x7be, x0	// Write all 0s to CSR
	csrrs x28, 0x7be, x5	// Set all CSR bits
	csrrc x28, 0x7be, x5	// Clear all CSR bits
	csrrw x28, 0x7be, x15	// Restore CSR

// Testing CSR 0x7bf
	csrr x24, 0x7bf	// Read CSR
	li x15, -1
	csrrw x13, 0x7bf, x15	// Write all 1s to CSR
	csrrw x13, 0x7bf, x0	// Write all 0s to CSR
	csrrs x13, 0x7bf, x15	// Set all CSR bits
	csrrc x13, 0x7bf, x15	// Clear all CSR bits
	csrrw x13, 0x7bf, x24	// Restore CSR

// Testing CSR 0x7c0
	csrr x16, 0x7c0	// Read CSR
	li x18, -1
	csrrw x10, 0x7c0, x18	// Write all 1s to CSR
	csrrw x10, 0x7c0, x0	// Write all 0s to CSR
	csrrs x10, 0x7c0, x18	// Set all CSR bits
	csrrc x10, 0x7c0, x18	// Clear all CSR bits
	csrrw x10, 0x7c0, x16	// Restore CSR

// Testing CSR 0x7c1
	csrr x28, 0x7c1	// Read CSR
	li x24, -1
	csrrw x22, 0x7c1, x24	// Write all 1s to CSR
	csrrw x22, 0x7c1, x0	// Write all 0s to CSR
	csrrs x22, 0x7c1, x24	// Set all CSR bits
	csrrc x22, 0x7c1, x24	// Clear all CSR bits
	csrrw x22, 0x7c1, x28	// Restore CSR

// Testing CSR 0x7c2
	csrr x21, 0x7c2	// Read CSR
	li x16, -1
	csrrw x31, 0x7c2, x16	// Write all 1s to CSR
	csrrw x31, 0x7c2, x0	// Write all 0s to CSR
	csrrs x31, 0x7c2, x16	// Set all CSR bits
	csrrc x31, 0x7c2, x16	// Clear all CSR bits
	csrrw x31, 0x7c2, x21	// Restore CSR

// Testing CSR 0x7c3
	csrr x7, 0x7c3	// Read CSR
	li x14, -1
	csrrw x11, 0x7c3, x14	// Write all 1s to CSR
	csrrw x11, 0x7c3, x0	// Write all 0s to CSR
	csrrs x11, 0x7c3, x14	// Set all CSR bits
	csrrc x11, 0x7c3, x14	// Clear all CSR bits
	csrrw x11, 0x7c3, x7	// Restore CSR

// Testing CSR 0x7c4
	csrr x1, 0x7c4	// Read CSR
	li x16, -1
	csrrw x31, 0x7c4, x16	// Write all 1s to CSR
	csrrw x31, 0x7c4, x0	// Write all 0s to CSR
	csrrs x31, 0x7c4, x16	// Set all CSR bits
	csrrc x31, 0x7c4, x16	// Clear all CSR bits
	csrrw x31, 0x7c4, x1	// Restore CSR

// Testing CSR 0x7c5
	csrr x27, 0x7c5	// Read CSR
	li x14, -1
	csrrw x5, 0x7c5, x14	// Write all 1s to CSR
	csrrw x5, 0x7c5, x0	// Write all 0s to CSR
	csrrs x5, 0x7c5, x14	// Set all CSR bits
	csrrc x5, 0x7c5, x14	// Clear all CSR bits
	csrrw x5, 0x7c5, x27	// Restore CSR

// Testing CSR 0x7c6
	csrr x20, 0x7c6	// Read CSR
	li x10, -1
	csrrw x27, 0x7c6, x10	// Write all 1s to CSR
	csrrw x27, 0x7c6, x0	// Write all 0s to CSR
	csrrs x27, 0x7c6, x10	// Set all CSR bits
	csrrc x27, 0x7c6, x10	// Clear all CSR bits
	csrrw x27, 0x7c6, x20	// Restore CSR

// Testing CSR 0x7c7
	csrr x28, 0x7c7	// Read CSR
	li x26, -1
	csrrw x11, 0x7c7, x26	// Write all 1s to CSR
	csrrw x11, 0x7c7, x0	// Write all 0s to CSR
	csrrs x11, 0x7c7, x26	// Set all CSR bits
	csrrc x11, 0x7c7, x26	// Clear all CSR bits
	csrrw x11, 0x7c7, x28	// Restore CSR

// Testing CSR 0x7c8
	csrr x7, 0x7c8	// Read CSR
	li x4, -1
	csrrw x5, 0x7c8, x4	// Write all 1s to CSR
	csrrw x5, 0x7c8, x0	// Write all 0s to CSR
	csrrs x5, 0x7c8, x4	// Set all CSR bits
	csrrc x5, 0x7c8, x4	// Clear all CSR bits
	csrrw x5, 0x7c8, x7	// Restore CSR

// Testing CSR 0x7c9
	csrr x24, 0x7c9	// Read CSR
	li x19, -1
	csrrw x14, 0x7c9, x19	// Write all 1s to CSR
	csrrw x14, 0x7c9, x0	// Write all 0s to CSR
	csrrs x14, 0x7c9, x19	// Set all CSR bits
	csrrc x14, 0x7c9, x19	// Clear all CSR bits
	csrrw x14, 0x7c9, x24	// Restore CSR

// Testing CSR 0x7ca
	csrr x2, 0x7ca	// Read CSR
	li x21, -1
	csrrw x25, 0x7ca, x21	// Write all 1s to CSR
	csrrw x25, 0x7ca, x0	// Write all 0s to CSR
	csrrs x25, 0x7ca, x21	// Set all CSR bits
	csrrc x25, 0x7ca, x21	// Clear all CSR bits
	csrrw x25, 0x7ca, x2	// Restore CSR

// Testing CSR 0x7cb
	csrr x24, 0x7cb	// Read CSR
	li x16, -1
	csrrw x22, 0x7cb, x16	// Write all 1s to CSR
	csrrw x22, 0x7cb, x0	// Write all 0s to CSR
	csrrs x22, 0x7cb, x16	// Set all CSR bits
	csrrc x22, 0x7cb, x16	// Clear all CSR bits
	csrrw x22, 0x7cb, x24	// Restore CSR

// Testing CSR 0x7cc
	csrr x11, 0x7cc	// Read CSR
	li x24, -1
	csrrw x9, 0x7cc, x24	// Write all 1s to CSR
	csrrw x9, 0x7cc, x0	// Write all 0s to CSR
	csrrs x9, 0x7cc, x24	// Set all CSR bits
	csrrc x9, 0x7cc, x24	// Clear all CSR bits
	csrrw x9, 0x7cc, x11	// Restore CSR

// Testing CSR 0x7cd
	csrr x11, 0x7cd	// Read CSR
	li x27, -1
	csrrw x21, 0x7cd, x27	// Write all 1s to CSR
	csrrw x21, 0x7cd, x0	// Write all 0s to CSR
	csrrs x21, 0x7cd, x27	// Set all CSR bits
	csrrc x21, 0x7cd, x27	// Clear all CSR bits
	csrrw x21, 0x7cd, x11	// Restore CSR

// Testing CSR 0x7ce
	csrr x16, 0x7ce	// Read CSR
	li x31, -1
	csrrw x4, 0x7ce, x31	// Write all 1s to CSR
	csrrw x4, 0x7ce, x0	// Write all 0s to CSR
	csrrs x4, 0x7ce, x31	// Set all CSR bits
	csrrc x4, 0x7ce, x31	// Clear all CSR bits
	csrrw x4, 0x7ce, x16	// Restore CSR

// Testing CSR 0x7cf
	csrr x1, 0x7cf	// Read CSR
	li x25, -1
	csrrw x12, 0x7cf, x25	// Write all 1s to CSR
	csrrw x12, 0x7cf, x0	// Write all 0s to CSR
	csrrs x12, 0x7cf, x25	// Set all CSR bits
	csrrc x12, 0x7cf, x25	// Clear all CSR bits
	csrrw x12, 0x7cf, x1	// Restore CSR

// Testing CSR 0x7d0
	csrr x21, 0x7d0	// Read CSR
	li x9, -1
	csrrw x14, 0x7d0, x9	// Write all 1s to CSR
	csrrw x14, 0x7d0, x0	// Write all 0s to CSR
	csrrs x14, 0x7d0, x9	// Set all CSR bits
	csrrc x14, 0x7d0, x9	// Clear all CSR bits
	csrrw x14, 0x7d0, x21	// Restore CSR

// Testing CSR 0x7d1
	csrr x22, 0x7d1	// Read CSR
	li x19, -1
	csrrw x8, 0x7d1, x19	// Write all 1s to CSR
	csrrw x8, 0x7d1, x0	// Write all 0s to CSR
	csrrs x8, 0x7d1, x19	// Set all CSR bits
	csrrc x8, 0x7d1, x19	// Clear all CSR bits
	csrrw x8, 0x7d1, x22	// Restore CSR

// Testing CSR 0x7d2
	csrr x13, 0x7d2	// Read CSR
	li x8, -1
	csrrw x19, 0x7d2, x8	// Write all 1s to CSR
	csrrw x19, 0x7d2, x0	// Write all 0s to CSR
	csrrs x19, 0x7d2, x8	// Set all CSR bits
	csrrc x19, 0x7d2, x8	// Clear all CSR bits
	csrrw x19, 0x7d2, x13	// Restore CSR

// Testing CSR 0x7d3
	csrr x23, 0x7d3	// Read CSR
	li x3, -1
	csrrw x19, 0x7d3, x3	// Write all 1s to CSR
	csrrw x19, 0x7d3, x0	// Write all 0s to CSR
	csrrs x19, 0x7d3, x3	// Set all CSR bits
	csrrc x19, 0x7d3, x3	// Clear all CSR bits
	csrrw x19, 0x7d3, x23	// Restore CSR

// Testing CSR 0x7d4
	csrr x4, 0x7d4	// Read CSR
	li x21, -1
	csrrw x9, 0x7d4, x21	// Write all 1s to CSR
	csrrw x9, 0x7d4, x0	// Write all 0s to CSR
	csrrs x9, 0x7d4, x21	// Set all CSR bits
	csrrc x9, 0x7d4, x21	// Clear all CSR bits
	csrrw x9, 0x7d4, x4	// Restore CSR

// Testing CSR 0x7d5
	csrr x29, 0x7d5	// Read CSR
	li x19, -1
	csrrw x1, 0x7d5, x19	// Write all 1s to CSR
	csrrw x1, 0x7d5, x0	// Write all 0s to CSR
	csrrs x1, 0x7d5, x19	// Set all CSR bits
	csrrc x1, 0x7d5, x19	// Clear all CSR bits
	csrrw x1, 0x7d5, x29	// Restore CSR

// Testing CSR 0x7d6
	csrr x27, 0x7d6	// Read CSR
	li x13, -1
	csrrw x10, 0x7d6, x13	// Write all 1s to CSR
	csrrw x10, 0x7d6, x0	// Write all 0s to CSR
	csrrs x10, 0x7d6, x13	// Set all CSR bits
	csrrc x10, 0x7d6, x13	// Clear all CSR bits
	csrrw x10, 0x7d6, x27	// Restore CSR

// Testing CSR 0x7d7
	csrr x23, 0x7d7	// Read CSR
	li x27, -1
	csrrw x12, 0x7d7, x27	// Write all 1s to CSR
	csrrw x12, 0x7d7, x0	// Write all 0s to CSR
	csrrs x12, 0x7d7, x27	// Set all CSR bits
	csrrc x12, 0x7d7, x27	// Clear all CSR bits
	csrrw x12, 0x7d7, x23	// Restore CSR

// Testing CSR 0x7d8
	csrr x13, 0x7d8	// Read CSR
	li x6, -1
	csrrw x12, 0x7d8, x6	// Write all 1s to CSR
	csrrw x12, 0x7d8, x0	// Write all 0s to CSR
	csrrs x12, 0x7d8, x6	// Set all CSR bits
	csrrc x12, 0x7d8, x6	// Clear all CSR bits
	csrrw x12, 0x7d8, x13	// Restore CSR

// Testing CSR 0x7d9
	csrr x13, 0x7d9	// Read CSR
	li x20, -1
	csrrw x30, 0x7d9, x20	// Write all 1s to CSR
	csrrw x30, 0x7d9, x0	// Write all 0s to CSR
	csrrs x30, 0x7d9, x20	// Set all CSR bits
	csrrc x30, 0x7d9, x20	// Clear all CSR bits
	csrrw x30, 0x7d9, x13	// Restore CSR

// Testing CSR 0x7da
	csrr x19, 0x7da	// Read CSR
	li x23, -1
	csrrw x4, 0x7da, x23	// Write all 1s to CSR
	csrrw x4, 0x7da, x0	// Write all 0s to CSR
	csrrs x4, 0x7da, x23	// Set all CSR bits
	csrrc x4, 0x7da, x23	// Clear all CSR bits
	csrrw x4, 0x7da, x19	// Restore CSR

// Testing CSR 0x7db
	csrr x26, 0x7db	// Read CSR
	li x30, -1
	csrrw x24, 0x7db, x30	// Write all 1s to CSR
	csrrw x24, 0x7db, x0	// Write all 0s to CSR
	csrrs x24, 0x7db, x30	// Set all CSR bits
	csrrc x24, 0x7db, x30	// Clear all CSR bits
	csrrw x24, 0x7db, x26	// Restore CSR

// Testing CSR 0x7dc
	csrr x18, 0x7dc	// Read CSR
	li x25, -1
	csrrw x14, 0x7dc, x25	// Write all 1s to CSR
	csrrw x14, 0x7dc, x0	// Write all 0s to CSR
	csrrs x14, 0x7dc, x25	// Set all CSR bits
	csrrc x14, 0x7dc, x25	// Clear all CSR bits
	csrrw x14, 0x7dc, x18	// Restore CSR

// Testing CSR 0x7dd
	csrr x11, 0x7dd	// Read CSR
	li x9, -1
	csrrw x4, 0x7dd, x9	// Write all 1s to CSR
	csrrw x4, 0x7dd, x0	// Write all 0s to CSR
	csrrs x4, 0x7dd, x9	// Set all CSR bits
	csrrc x4, 0x7dd, x9	// Clear all CSR bits
	csrrw x4, 0x7dd, x11	// Restore CSR

// Testing CSR 0x7de
	csrr x20, 0x7de	// Read CSR
	li x6, -1
	csrrw x15, 0x7de, x6	// Write all 1s to CSR
	csrrw x15, 0x7de, x0	// Write all 0s to CSR
	csrrs x15, 0x7de, x6	// Set all CSR bits
	csrrc x15, 0x7de, x6	// Clear all CSR bits
	csrrw x15, 0x7de, x20	// Restore CSR

// Testing CSR 0x7df
	csrr x28, 0x7df	// Read CSR
	li x8, -1
	csrrw x7, 0x7df, x8	// Write all 1s to CSR
	csrrw x7, 0x7df, x0	// Write all 0s to CSR
	csrrs x7, 0x7df, x8	// Set all CSR bits
	csrrc x7, 0x7df, x8	// Clear all CSR bits
	csrrw x7, 0x7df, x28	// Restore CSR

// Testing CSR 0x7e0
	csrr x4, 0x7e0	// Read CSR
	li x15, -1
	csrrw x23, 0x7e0, x15	// Write all 1s to CSR
	csrrw x23, 0x7e0, x0	// Write all 0s to CSR
	csrrs x23, 0x7e0, x15	// Set all CSR bits
	csrrc x23, 0x7e0, x15	// Clear all CSR bits
	csrrw x23, 0x7e0, x4	// Restore CSR

// Testing CSR 0x7e1
	csrr x6, 0x7e1	// Read CSR
	li x1, -1
	csrrw x22, 0x7e1, x1	// Write all 1s to CSR
	csrrw x22, 0x7e1, x0	// Write all 0s to CSR
	csrrs x22, 0x7e1, x1	// Set all CSR bits
	csrrc x22, 0x7e1, x1	// Clear all CSR bits
	csrrw x22, 0x7e1, x6	// Restore CSR

// Testing CSR 0x7e2
	csrr x20, 0x7e2	// Read CSR
	li x6, -1
	csrrw x12, 0x7e2, x6	// Write all 1s to CSR
	csrrw x12, 0x7e2, x0	// Write all 0s to CSR
	csrrs x12, 0x7e2, x6	// Set all CSR bits
	csrrc x12, 0x7e2, x6	// Clear all CSR bits
	csrrw x12, 0x7e2, x20	// Restore CSR

// Testing CSR 0x7e3
	csrr x26, 0x7e3	// Read CSR
	li x24, -1
	csrrw x2, 0x7e3, x24	// Write all 1s to CSR
	csrrw x2, 0x7e3, x0	// Write all 0s to CSR
	csrrs x2, 0x7e3, x24	// Set all CSR bits
	csrrc x2, 0x7e3, x24	// Clear all CSR bits
	csrrw x2, 0x7e3, x26	// Restore CSR

// Testing CSR 0x7e4
	csrr x24, 0x7e4	// Read CSR
	li x10, -1
	csrrw x8, 0x7e4, x10	// Write all 1s to CSR
	csrrw x8, 0x7e4, x0	// Write all 0s to CSR
	csrrs x8, 0x7e4, x10	// Set all CSR bits
	csrrc x8, 0x7e4, x10	// Clear all CSR bits
	csrrw x8, 0x7e4, x24	// Restore CSR

// Testing CSR 0x7e5
	csrr x6, 0x7e5	// Read CSR
	li x3, -1
	csrrw x18, 0x7e5, x3	// Write all 1s to CSR
	csrrw x18, 0x7e5, x0	// Write all 0s to CSR
	csrrs x18, 0x7e5, x3	// Set all CSR bits
	csrrc x18, 0x7e5, x3	// Clear all CSR bits
	csrrw x18, 0x7e5, x6	// Restore CSR

// Testing CSR 0x7e6
	csrr x24, 0x7e6	// Read CSR
	li x11, -1
	csrrw x16, 0x7e6, x11	// Write all 1s to CSR
	csrrw x16, 0x7e6, x0	// Write all 0s to CSR
	csrrs x16, 0x7e6, x11	// Set all CSR bits
	csrrc x16, 0x7e6, x11	// Clear all CSR bits
	csrrw x16, 0x7e6, x24	// Restore CSR

// Testing CSR 0x7e7
	csrr x20, 0x7e7	// Read CSR
	li x3, -1
	csrrw x19, 0x7e7, x3	// Write all 1s to CSR
	csrrw x19, 0x7e7, x0	// Write all 0s to CSR
	csrrs x19, 0x7e7, x3	// Set all CSR bits
	csrrc x19, 0x7e7, x3	// Clear all CSR bits
	csrrw x19, 0x7e7, x20	// Restore CSR

// Testing CSR 0x7e8
	csrr x19, 0x7e8	// Read CSR
	li x11, -1
	csrrw x1, 0x7e8, x11	// Write all 1s to CSR
	csrrw x1, 0x7e8, x0	// Write all 0s to CSR
	csrrs x1, 0x7e8, x11	// Set all CSR bits
	csrrc x1, 0x7e8, x11	// Clear all CSR bits
	csrrw x1, 0x7e8, x19	// Restore CSR

// Testing CSR 0x7e9
	csrr x2, 0x7e9	// Read CSR
	li x28, -1
	csrrw x11, 0x7e9, x28	// Write all 1s to CSR
	csrrw x11, 0x7e9, x0	// Write all 0s to CSR
	csrrs x11, 0x7e9, x28	// Set all CSR bits
	csrrc x11, 0x7e9, x28	// Clear all CSR bits
	csrrw x11, 0x7e9, x2	// Restore CSR

// Testing CSR 0x7ea
	csrr x4, 0x7ea	// Read CSR
	li x16, -1
	csrrw x14, 0x7ea, x16	// Write all 1s to CSR
	csrrw x14, 0x7ea, x0	// Write all 0s to CSR
	csrrs x14, 0x7ea, x16	// Set all CSR bits
	csrrc x14, 0x7ea, x16	// Clear all CSR bits
	csrrw x14, 0x7ea, x4	// Restore CSR

// Testing CSR 0x7eb
	csrr x30, 0x7eb	// Read CSR
	li x27, -1
	csrrw x31, 0x7eb, x27	// Write all 1s to CSR
	csrrw x31, 0x7eb, x0	// Write all 0s to CSR
	csrrs x31, 0x7eb, x27	// Set all CSR bits
	csrrc x31, 0x7eb, x27	// Clear all CSR bits
	csrrw x31, 0x7eb, x30	// Restore CSR

// Testing CSR 0x7ec
	csrr x28, 0x7ec	// Read CSR
	li x13, -1
	csrrw x19, 0x7ec, x13	// Write all 1s to CSR
	csrrw x19, 0x7ec, x0	// Write all 0s to CSR
	csrrs x19, 0x7ec, x13	// Set all CSR bits
	csrrc x19, 0x7ec, x13	// Clear all CSR bits
	csrrw x19, 0x7ec, x28	// Restore CSR

// Testing CSR 0x7ed
	csrr x12, 0x7ed	// Read CSR
	li x9, -1
	csrrw x20, 0x7ed, x9	// Write all 1s to CSR
	csrrw x20, 0x7ed, x0	// Write all 0s to CSR
	csrrs x20, 0x7ed, x9	// Set all CSR bits
	csrrc x20, 0x7ed, x9	// Clear all CSR bits
	csrrw x20, 0x7ed, x12	// Restore CSR

// Testing CSR 0x7ee
	csrr x19, 0x7ee	// Read CSR
	li x2, -1
	csrrw x26, 0x7ee, x2	// Write all 1s to CSR
	csrrw x26, 0x7ee, x0	// Write all 0s to CSR
	csrrs x26, 0x7ee, x2	// Set all CSR bits
	csrrc x26, 0x7ee, x2	// Clear all CSR bits
	csrrw x26, 0x7ee, x19	// Restore CSR

// Testing CSR 0x7ef
	csrr x8, 0x7ef	// Read CSR
	li x21, -1
	csrrw x9, 0x7ef, x21	// Write all 1s to CSR
	csrrw x9, 0x7ef, x0	// Write all 0s to CSR
	csrrs x9, 0x7ef, x21	// Set all CSR bits
	csrrc x9, 0x7ef, x21	// Clear all CSR bits
	csrrw x9, 0x7ef, x8	// Restore CSR

// Testing CSR 0x7f0
	csrr x7, 0x7f0	// Read CSR
	li x22, -1
	csrrw x24, 0x7f0, x22	// Write all 1s to CSR
	csrrw x24, 0x7f0, x0	// Write all 0s to CSR
	csrrs x24, 0x7f0, x22	// Set all CSR bits
	csrrc x24, 0x7f0, x22	// Clear all CSR bits
	csrrw x24, 0x7f0, x7	// Restore CSR

// Testing CSR 0x7f1
	csrr x18, 0x7f1	// Read CSR
	li x1, -1
	csrrw x24, 0x7f1, x1	// Write all 1s to CSR
	csrrw x24, 0x7f1, x0	// Write all 0s to CSR
	csrrs x24, 0x7f1, x1	// Set all CSR bits
	csrrc x24, 0x7f1, x1	// Clear all CSR bits
	csrrw x24, 0x7f1, x18	// Restore CSR

// Testing CSR 0x7f2
	csrr x21, 0x7f2	// Read CSR
	li x17, -1
	csrrw x16, 0x7f2, x17	// Write all 1s to CSR
	csrrw x16, 0x7f2, x0	// Write all 0s to CSR
	csrrs x16, 0x7f2, x17	// Set all CSR bits
	csrrc x16, 0x7f2, x17	// Clear all CSR bits
	csrrw x16, 0x7f2, x21	// Restore CSR

// Testing CSR 0x7f3
	csrr x22, 0x7f3	// Read CSR
	li x1, -1
	csrrw x25, 0x7f3, x1	// Write all 1s to CSR
	csrrw x25, 0x7f3, x0	// Write all 0s to CSR
	csrrs x25, 0x7f3, x1	// Set all CSR bits
	csrrc x25, 0x7f3, x1	// Clear all CSR bits
	csrrw x25, 0x7f3, x22	// Restore CSR

// Testing CSR 0x7f4
	csrr x17, 0x7f4	// Read CSR
	li x1, -1
	csrrw x29, 0x7f4, x1	// Write all 1s to CSR
	csrrw x29, 0x7f4, x0	// Write all 0s to CSR
	csrrs x29, 0x7f4, x1	// Set all CSR bits
	csrrc x29, 0x7f4, x1	// Clear all CSR bits
	csrrw x29, 0x7f4, x17	// Restore CSR

// Testing CSR 0x7f5
	csrr x1, 0x7f5	// Read CSR
	li x3, -1
	csrrw x6, 0x7f5, x3	// Write all 1s to CSR
	csrrw x6, 0x7f5, x0	// Write all 0s to CSR
	csrrs x6, 0x7f5, x3	// Set all CSR bits
	csrrc x6, 0x7f5, x3	// Clear all CSR bits
	csrrw x6, 0x7f5, x1	// Restore CSR

// Testing CSR 0x7f6
	csrr x21, 0x7f6	// Read CSR
	li x12, -1
	csrrw x15, 0x7f6, x12	// Write all 1s to CSR
	csrrw x15, 0x7f6, x0	// Write all 0s to CSR
	csrrs x15, 0x7f6, x12	// Set all CSR bits
	csrrc x15, 0x7f6, x12	// Clear all CSR bits
	csrrw x15, 0x7f6, x21	// Restore CSR

// Testing CSR 0x7f7
	csrr x16, 0x7f7	// Read CSR
	li x26, -1
	csrrw x18, 0x7f7, x26	// Write all 1s to CSR
	csrrw x18, 0x7f7, x0	// Write all 0s to CSR
	csrrs x18, 0x7f7, x26	// Set all CSR bits
	csrrc x18, 0x7f7, x26	// Clear all CSR bits
	csrrw x18, 0x7f7, x16	// Restore CSR

// Testing CSR 0x7f8
	csrr x4, 0x7f8	// Read CSR
	li x25, -1
	csrrw x27, 0x7f8, x25	// Write all 1s to CSR
	csrrw x27, 0x7f8, x0	// Write all 0s to CSR
	csrrs x27, 0x7f8, x25	// Set all CSR bits
	csrrc x27, 0x7f8, x25	// Clear all CSR bits
	csrrw x27, 0x7f8, x4	// Restore CSR

// Testing CSR 0x7f9
	csrr x13, 0x7f9	// Read CSR
	li x6, -1
	csrrw x30, 0x7f9, x6	// Write all 1s to CSR
	csrrw x30, 0x7f9, x0	// Write all 0s to CSR
	csrrs x30, 0x7f9, x6	// Set all CSR bits
	csrrc x30, 0x7f9, x6	// Clear all CSR bits
	csrrw x30, 0x7f9, x13	// Restore CSR

// Testing CSR 0x7fa
	csrr x18, 0x7fa	// Read CSR
	li x26, -1
	csrrw x29, 0x7fa, x26	// Write all 1s to CSR
	csrrw x29, 0x7fa, x0	// Write all 0s to CSR
	csrrs x29, 0x7fa, x26	// Set all CSR bits
	csrrc x29, 0x7fa, x26	// Clear all CSR bits
	csrrw x29, 0x7fa, x18	// Restore CSR

// Testing CSR 0x7fb
	csrr x31, 0x7fb	// Read CSR
	li x24, -1
	csrrw x27, 0x7fb, x24	// Write all 1s to CSR
	csrrw x27, 0x7fb, x0	// Write all 0s to CSR
	csrrs x27, 0x7fb, x24	// Set all CSR bits
	csrrc x27, 0x7fb, x24	// Clear all CSR bits
	csrrw x27, 0x7fb, x31	// Restore CSR

// Testing CSR 0x7fc
	csrr x24, 0x7fc	// Read CSR
	li x27, -1
	csrrw x15, 0x7fc, x27	// Write all 1s to CSR
	csrrw x15, 0x7fc, x0	// Write all 0s to CSR
	csrrs x15, 0x7fc, x27	// Set all CSR bits
	csrrc x15, 0x7fc, x27	// Clear all CSR bits
	csrrw x15, 0x7fc, x24	// Restore CSR

// Testing CSR 0x7fd
	csrr x6, 0x7fd	// Read CSR
	li x28, -1
	csrrw x12, 0x7fd, x28	// Write all 1s to CSR
	csrrw x12, 0x7fd, x0	// Write all 0s to CSR
	csrrs x12, 0x7fd, x28	// Set all CSR bits
	csrrc x12, 0x7fd, x28	// Clear all CSR bits
	csrrw x12, 0x7fd, x6	// Restore CSR

// Testing CSR 0x7fe
	csrr x15, 0x7fe	// Read CSR
	li x6, -1
	csrrw x3, 0x7fe, x6	// Write all 1s to CSR
	csrrw x3, 0x7fe, x0	// Write all 0s to CSR
	csrrs x3, 0x7fe, x6	// Set all CSR bits
	csrrc x3, 0x7fe, x6	// Clear all CSR bits
	csrrw x3, 0x7fe, x15	// Restore CSR

// Testing CSR 0x7ff
	csrr x29, 0x7ff	// Read CSR
	li x28, -1
	csrrw x15, 0x7ff, x28	// Write all 1s to CSR
	csrrw x15, 0x7ff, x0	// Write all 0s to CSR
	csrrs x15, 0x7ff, x28	// Set all CSR bits
	csrrc x15, 0x7ff, x28	// Clear all CSR bits
	csrrw x15, 0x7ff, x29	// Restore CSR

// Testing CSR 0x900
	csrr x27, 0x900	// Read CSR
	li x28, -1
	csrrw x1, 0x900, x28	// Write all 1s to CSR
	csrrw x1, 0x900, x0	// Write all 0s to CSR
	csrrs x1, 0x900, x28	// Set all CSR bits
	csrrc x1, 0x900, x28	// Clear all CSR bits
	csrrw x1, 0x900, x27	// Restore CSR

// Testing CSR 0x901
	csrr x15, 0x901	// Read CSR
	li x13, -1
	csrrw x27, 0x901, x13	// Write all 1s to CSR
	csrrw x27, 0x901, x0	// Write all 0s to CSR
	csrrs x27, 0x901, x13	// Set all CSR bits
	csrrc x27, 0x901, x13	// Clear all CSR bits
	csrrw x27, 0x901, x15	// Restore CSR

// Testing CSR 0x902
	csrr x20, 0x902	// Read CSR
	li x3, -1
	csrrw x31, 0x902, x3	// Write all 1s to CSR
	csrrw x31, 0x902, x0	// Write all 0s to CSR
	csrrs x31, 0x902, x3	// Set all CSR bits
	csrrc x31, 0x902, x3	// Clear all CSR bits
	csrrw x31, 0x902, x20	// Restore CSR

// Testing CSR 0x903
	csrr x2, 0x903	// Read CSR
	li x25, -1
	csrrw x15, 0x903, x25	// Write all 1s to CSR
	csrrw x15, 0x903, x0	// Write all 0s to CSR
	csrrs x15, 0x903, x25	// Set all CSR bits
	csrrc x15, 0x903, x25	// Clear all CSR bits
	csrrw x15, 0x903, x2	// Restore CSR

// Testing CSR 0x904
	csrr x28, 0x904	// Read CSR
	li x27, -1
	csrrw x19, 0x904, x27	// Write all 1s to CSR
	csrrw x19, 0x904, x0	// Write all 0s to CSR
	csrrs x19, 0x904, x27	// Set all CSR bits
	csrrc x19, 0x904, x27	// Clear all CSR bits
	csrrw x19, 0x904, x28	// Restore CSR

// Testing CSR 0x905
	csrr x27, 0x905	// Read CSR
	li x3, -1
	csrrw x4, 0x905, x3	// Write all 1s to CSR
	csrrw x4, 0x905, x0	// Write all 0s to CSR
	csrrs x4, 0x905, x3	// Set all CSR bits
	csrrc x4, 0x905, x3	// Clear all CSR bits
	csrrw x4, 0x905, x27	// Restore CSR

// Testing CSR 0x906
	csrr x19, 0x906	// Read CSR
	li x5, -1
	csrrw x28, 0x906, x5	// Write all 1s to CSR
	csrrw x28, 0x906, x0	// Write all 0s to CSR
	csrrs x28, 0x906, x5	// Set all CSR bits
	csrrc x28, 0x906, x5	// Clear all CSR bits
	csrrw x28, 0x906, x19	// Restore CSR

// Testing CSR 0x907
	csrr x22, 0x907	// Read CSR
	li x15, -1
	csrrw x6, 0x907, x15	// Write all 1s to CSR
	csrrw x6, 0x907, x0	// Write all 0s to CSR
	csrrs x6, 0x907, x15	// Set all CSR bits
	csrrc x6, 0x907, x15	// Clear all CSR bits
	csrrw x6, 0x907, x22	// Restore CSR

// Testing CSR 0x908
	csrr x24, 0x908	// Read CSR
	li x19, -1
	csrrw x2, 0x908, x19	// Write all 1s to CSR
	csrrw x2, 0x908, x0	// Write all 0s to CSR
	csrrs x2, 0x908, x19	// Set all CSR bits
	csrrc x2, 0x908, x19	// Clear all CSR bits
	csrrw x2, 0x908, x24	// Restore CSR

// Testing CSR 0x909
	csrr x4, 0x909	// Read CSR
	li x2, -1
	csrrw x14, 0x909, x2	// Write all 1s to CSR
	csrrw x14, 0x909, x0	// Write all 0s to CSR
	csrrs x14, 0x909, x2	// Set all CSR bits
	csrrc x14, 0x909, x2	// Clear all CSR bits
	csrrw x14, 0x909, x4	// Restore CSR

// Testing CSR 0x90a
	csrr x12, 0x90a	// Read CSR
	li x11, -1
	csrrw x4, 0x90a, x11	// Write all 1s to CSR
	csrrw x4, 0x90a, x0	// Write all 0s to CSR
	csrrs x4, 0x90a, x11	// Set all CSR bits
	csrrc x4, 0x90a, x11	// Clear all CSR bits
	csrrw x4, 0x90a, x12	// Restore CSR

// Testing CSR 0x90b
	csrr x12, 0x90b	// Read CSR
	li x14, -1
	csrrw x16, 0x90b, x14	// Write all 1s to CSR
	csrrw x16, 0x90b, x0	// Write all 0s to CSR
	csrrs x16, 0x90b, x14	// Set all CSR bits
	csrrc x16, 0x90b, x14	// Clear all CSR bits
	csrrw x16, 0x90b, x12	// Restore CSR

// Testing CSR 0x90c
	csrr x20, 0x90c	// Read CSR
	li x31, -1
	csrrw x4, 0x90c, x31	// Write all 1s to CSR
	csrrw x4, 0x90c, x0	// Write all 0s to CSR
	csrrs x4, 0x90c, x31	// Set all CSR bits
	csrrc x4, 0x90c, x31	// Clear all CSR bits
	csrrw x4, 0x90c, x20	// Restore CSR

// Testing CSR 0x90d
	csrr x2, 0x90d	// Read CSR
	li x7, -1
	csrrw x4, 0x90d, x7	// Write all 1s to CSR
	csrrw x4, 0x90d, x0	// Write all 0s to CSR
	csrrs x4, 0x90d, x7	// Set all CSR bits
	csrrc x4, 0x90d, x7	// Clear all CSR bits
	csrrw x4, 0x90d, x2	// Restore CSR

// Testing CSR 0x90e
	csrr x28, 0x90e	// Read CSR
	li x6, -1
	csrrw x15, 0x90e, x6	// Write all 1s to CSR
	csrrw x15, 0x90e, x0	// Write all 0s to CSR
	csrrs x15, 0x90e, x6	// Set all CSR bits
	csrrc x15, 0x90e, x6	// Clear all CSR bits
	csrrw x15, 0x90e, x28	// Restore CSR

// Testing CSR 0x90f
	csrr x1, 0x90f	// Read CSR
	li x16, -1
	csrrw x14, 0x90f, x16	// Write all 1s to CSR
	csrrw x14, 0x90f, x0	// Write all 0s to CSR
	csrrs x14, 0x90f, x16	// Set all CSR bits
	csrrc x14, 0x90f, x16	// Clear all CSR bits
	csrrw x14, 0x90f, x1	// Restore CSR

// Testing CSR 0x910
	csrr x18, 0x910	// Read CSR
	li x5, -1
	csrrw x20, 0x910, x5	// Write all 1s to CSR
	csrrw x20, 0x910, x0	// Write all 0s to CSR
	csrrs x20, 0x910, x5	// Set all CSR bits
	csrrc x20, 0x910, x5	// Clear all CSR bits
	csrrw x20, 0x910, x18	// Restore CSR

// Testing CSR 0x911
	csrr x21, 0x911	// Read CSR
	li x1, -1
	csrrw x24, 0x911, x1	// Write all 1s to CSR
	csrrw x24, 0x911, x0	// Write all 0s to CSR
	csrrs x24, 0x911, x1	// Set all CSR bits
	csrrc x24, 0x911, x1	// Clear all CSR bits
	csrrw x24, 0x911, x21	// Restore CSR

// Testing CSR 0x912
	csrr x30, 0x912	// Read CSR
	li x5, -1
	csrrw x23, 0x912, x5	// Write all 1s to CSR
	csrrw x23, 0x912, x0	// Write all 0s to CSR
	csrrs x23, 0x912, x5	// Set all CSR bits
	csrrc x23, 0x912, x5	// Clear all CSR bits
	csrrw x23, 0x912, x30	// Restore CSR

// Testing CSR 0x913
	csrr x31, 0x913	// Read CSR
	li x24, -1
	csrrw x22, 0x913, x24	// Write all 1s to CSR
	csrrw x22, 0x913, x0	// Write all 0s to CSR
	csrrs x22, 0x913, x24	// Set all CSR bits
	csrrc x22, 0x913, x24	// Clear all CSR bits
	csrrw x22, 0x913, x31	// Restore CSR

// Testing CSR 0x914
	csrr x30, 0x914	// Read CSR
	li x13, -1
	csrrw x4, 0x914, x13	// Write all 1s to CSR
	csrrw x4, 0x914, x0	// Write all 0s to CSR
	csrrs x4, 0x914, x13	// Set all CSR bits
	csrrc x4, 0x914, x13	// Clear all CSR bits
	csrrw x4, 0x914, x30	// Restore CSR

// Testing CSR 0x915
	csrr x4, 0x915	// Read CSR
	li x17, -1
	csrrw x18, 0x915, x17	// Write all 1s to CSR
	csrrw x18, 0x915, x0	// Write all 0s to CSR
	csrrs x18, 0x915, x17	// Set all CSR bits
	csrrc x18, 0x915, x17	// Clear all CSR bits
	csrrw x18, 0x915, x4	// Restore CSR

// Testing CSR 0x916
	csrr x8, 0x916	// Read CSR
	li x23, -1
	csrrw x20, 0x916, x23	// Write all 1s to CSR
	csrrw x20, 0x916, x0	// Write all 0s to CSR
	csrrs x20, 0x916, x23	// Set all CSR bits
	csrrc x20, 0x916, x23	// Clear all CSR bits
	csrrw x20, 0x916, x8	// Restore CSR

// Testing CSR 0x917
	csrr x1, 0x917	// Read CSR
	li x4, -1
	csrrw x22, 0x917, x4	// Write all 1s to CSR
	csrrw x22, 0x917, x0	// Write all 0s to CSR
	csrrs x22, 0x917, x4	// Set all CSR bits
	csrrc x22, 0x917, x4	// Clear all CSR bits
	csrrw x22, 0x917, x1	// Restore CSR

// Testing CSR 0x918
	csrr x27, 0x918	// Read CSR
	li x25, -1
	csrrw x3, 0x918, x25	// Write all 1s to CSR
	csrrw x3, 0x918, x0	// Write all 0s to CSR
	csrrs x3, 0x918, x25	// Set all CSR bits
	csrrc x3, 0x918, x25	// Clear all CSR bits
	csrrw x3, 0x918, x27	// Restore CSR

// Testing CSR 0x919
	csrr x30, 0x919	// Read CSR
	li x2, -1
	csrrw x25, 0x919, x2	// Write all 1s to CSR
	csrrw x25, 0x919, x0	// Write all 0s to CSR
	csrrs x25, 0x919, x2	// Set all CSR bits
	csrrc x25, 0x919, x2	// Clear all CSR bits
	csrrw x25, 0x919, x30	// Restore CSR

// Testing CSR 0x91a
	csrr x21, 0x91a	// Read CSR
	li x20, -1
	csrrw x11, 0x91a, x20	// Write all 1s to CSR
	csrrw x11, 0x91a, x0	// Write all 0s to CSR
	csrrs x11, 0x91a, x20	// Set all CSR bits
	csrrc x11, 0x91a, x20	// Clear all CSR bits
	csrrw x11, 0x91a, x21	// Restore CSR

// Testing CSR 0x91b
	csrr x31, 0x91b	// Read CSR
	li x7, -1
	csrrw x12, 0x91b, x7	// Write all 1s to CSR
	csrrw x12, 0x91b, x0	// Write all 0s to CSR
	csrrs x12, 0x91b, x7	// Set all CSR bits
	csrrc x12, 0x91b, x7	// Clear all CSR bits
	csrrw x12, 0x91b, x31	// Restore CSR

// Testing CSR 0x91c
	csrr x4, 0x91c	// Read CSR
	li x11, -1
	csrrw x5, 0x91c, x11	// Write all 1s to CSR
	csrrw x5, 0x91c, x0	// Write all 0s to CSR
	csrrs x5, 0x91c, x11	// Set all CSR bits
	csrrc x5, 0x91c, x11	// Clear all CSR bits
	csrrw x5, 0x91c, x4	// Restore CSR

// Testing CSR 0x91d
	csrr x11, 0x91d	// Read CSR
	li x8, -1
	csrrw x19, 0x91d, x8	// Write all 1s to CSR
	csrrw x19, 0x91d, x0	// Write all 0s to CSR
	csrrs x19, 0x91d, x8	// Set all CSR bits
	csrrc x19, 0x91d, x8	// Clear all CSR bits
	csrrw x19, 0x91d, x11	// Restore CSR

// Testing CSR 0x91e
	csrr x28, 0x91e	// Read CSR
	li x2, -1
	csrrw x22, 0x91e, x2	// Write all 1s to CSR
	csrrw x22, 0x91e, x0	// Write all 0s to CSR
	csrrs x22, 0x91e, x2	// Set all CSR bits
	csrrc x22, 0x91e, x2	// Clear all CSR bits
	csrrw x22, 0x91e, x28	// Restore CSR

// Testing CSR 0x91f
	csrr x17, 0x91f	// Read CSR
	li x18, -1
	csrrw x16, 0x91f, x18	// Write all 1s to CSR
	csrrw x16, 0x91f, x0	// Write all 0s to CSR
	csrrs x16, 0x91f, x18	// Set all CSR bits
	csrrc x16, 0x91f, x18	// Clear all CSR bits
	csrrw x16, 0x91f, x17	// Restore CSR

// Testing CSR 0x920
	csrr x4, 0x920	// Read CSR
	li x19, -1
	csrrw x5, 0x920, x19	// Write all 1s to CSR
	csrrw x5, 0x920, x0	// Write all 0s to CSR
	csrrs x5, 0x920, x19	// Set all CSR bits
	csrrc x5, 0x920, x19	// Clear all CSR bits
	csrrw x5, 0x920, x4	// Restore CSR

// Testing CSR 0x921
	csrr x30, 0x921	// Read CSR
	li x22, -1
	csrrw x19, 0x921, x22	// Write all 1s to CSR
	csrrw x19, 0x921, x0	// Write all 0s to CSR
	csrrs x19, 0x921, x22	// Set all CSR bits
	csrrc x19, 0x921, x22	// Clear all CSR bits
	csrrw x19, 0x921, x30	// Restore CSR

// Testing CSR 0x922
	csrr x11, 0x922	// Read CSR
	li x27, -1
	csrrw x16, 0x922, x27	// Write all 1s to CSR
	csrrw x16, 0x922, x0	// Write all 0s to CSR
	csrrs x16, 0x922, x27	// Set all CSR bits
	csrrc x16, 0x922, x27	// Clear all CSR bits
	csrrw x16, 0x922, x11	// Restore CSR

// Testing CSR 0x923
	csrr x5, 0x923	// Read CSR
	li x17, -1
	csrrw x6, 0x923, x17	// Write all 1s to CSR
	csrrw x6, 0x923, x0	// Write all 0s to CSR
	csrrs x6, 0x923, x17	// Set all CSR bits
	csrrc x6, 0x923, x17	// Clear all CSR bits
	csrrw x6, 0x923, x5	// Restore CSR

// Testing CSR 0x924
	csrr x30, 0x924	// Read CSR
	li x16, -1
	csrrw x21, 0x924, x16	// Write all 1s to CSR
	csrrw x21, 0x924, x0	// Write all 0s to CSR
	csrrs x21, 0x924, x16	// Set all CSR bits
	csrrc x21, 0x924, x16	// Clear all CSR bits
	csrrw x21, 0x924, x30	// Restore CSR

// Testing CSR 0x925
	csrr x27, 0x925	// Read CSR
	li x12, -1
	csrrw x5, 0x925, x12	// Write all 1s to CSR
	csrrw x5, 0x925, x0	// Write all 0s to CSR
	csrrs x5, 0x925, x12	// Set all CSR bits
	csrrc x5, 0x925, x12	// Clear all CSR bits
	csrrw x5, 0x925, x27	// Restore CSR

// Testing CSR 0x926
	csrr x29, 0x926	// Read CSR
	li x30, -1
	csrrw x2, 0x926, x30	// Write all 1s to CSR
	csrrw x2, 0x926, x0	// Write all 0s to CSR
	csrrs x2, 0x926, x30	// Set all CSR bits
	csrrc x2, 0x926, x30	// Clear all CSR bits
	csrrw x2, 0x926, x29	// Restore CSR

// Testing CSR 0x927
	csrr x23, 0x927	// Read CSR
	li x6, -1
	csrrw x9, 0x927, x6	// Write all 1s to CSR
	csrrw x9, 0x927, x0	// Write all 0s to CSR
	csrrs x9, 0x927, x6	// Set all CSR bits
	csrrc x9, 0x927, x6	// Clear all CSR bits
	csrrw x9, 0x927, x23	// Restore CSR

// Testing CSR 0x928
	csrr x12, 0x928	// Read CSR
	li x31, -1
	csrrw x28, 0x928, x31	// Write all 1s to CSR
	csrrw x28, 0x928, x0	// Write all 0s to CSR
	csrrs x28, 0x928, x31	// Set all CSR bits
	csrrc x28, 0x928, x31	// Clear all CSR bits
	csrrw x28, 0x928, x12	// Restore CSR

// Testing CSR 0x929
	csrr x29, 0x929	// Read CSR
	li x11, -1
	csrrw x8, 0x929, x11	// Write all 1s to CSR
	csrrw x8, 0x929, x0	// Write all 0s to CSR
	csrrs x8, 0x929, x11	// Set all CSR bits
	csrrc x8, 0x929, x11	// Clear all CSR bits
	csrrw x8, 0x929, x29	// Restore CSR

// Testing CSR 0x92a
	csrr x9, 0x92a	// Read CSR
	li x19, -1
	csrrw x14, 0x92a, x19	// Write all 1s to CSR
	csrrw x14, 0x92a, x0	// Write all 0s to CSR
	csrrs x14, 0x92a, x19	// Set all CSR bits
	csrrc x14, 0x92a, x19	// Clear all CSR bits
	csrrw x14, 0x92a, x9	// Restore CSR

// Testing CSR 0x92b
	csrr x10, 0x92b	// Read CSR
	li x21, -1
	csrrw x30, 0x92b, x21	// Write all 1s to CSR
	csrrw x30, 0x92b, x0	// Write all 0s to CSR
	csrrs x30, 0x92b, x21	// Set all CSR bits
	csrrc x30, 0x92b, x21	// Clear all CSR bits
	csrrw x30, 0x92b, x10	// Restore CSR

// Testing CSR 0x92c
	csrr x11, 0x92c	// Read CSR
	li x20, -1
	csrrw x1, 0x92c, x20	// Write all 1s to CSR
	csrrw x1, 0x92c, x0	// Write all 0s to CSR
	csrrs x1, 0x92c, x20	// Set all CSR bits
	csrrc x1, 0x92c, x20	// Clear all CSR bits
	csrrw x1, 0x92c, x11	// Restore CSR

// Testing CSR 0x92d
	csrr x24, 0x92d	// Read CSR
	li x22, -1
	csrrw x30, 0x92d, x22	// Write all 1s to CSR
	csrrw x30, 0x92d, x0	// Write all 0s to CSR
	csrrs x30, 0x92d, x22	// Set all CSR bits
	csrrc x30, 0x92d, x22	// Clear all CSR bits
	csrrw x30, 0x92d, x24	// Restore CSR

// Testing CSR 0x92e
	csrr x16, 0x92e	// Read CSR
	li x26, -1
	csrrw x10, 0x92e, x26	// Write all 1s to CSR
	csrrw x10, 0x92e, x0	// Write all 0s to CSR
	csrrs x10, 0x92e, x26	// Set all CSR bits
	csrrc x10, 0x92e, x26	// Clear all CSR bits
	csrrw x10, 0x92e, x16	// Restore CSR

// Testing CSR 0x92f
	csrr x30, 0x92f	// Read CSR
	li x26, -1
	csrrw x5, 0x92f, x26	// Write all 1s to CSR
	csrrw x5, 0x92f, x0	// Write all 0s to CSR
	csrrs x5, 0x92f, x26	// Set all CSR bits
	csrrc x5, 0x92f, x26	// Clear all CSR bits
	csrrw x5, 0x92f, x30	// Restore CSR

// Testing CSR 0x930
	csrr x22, 0x930	// Read CSR
	li x9, -1
	csrrw x7, 0x930, x9	// Write all 1s to CSR
	csrrw x7, 0x930, x0	// Write all 0s to CSR
	csrrs x7, 0x930, x9	// Set all CSR bits
	csrrc x7, 0x930, x9	// Clear all CSR bits
	csrrw x7, 0x930, x22	// Restore CSR

// Testing CSR 0x931
	csrr x28, 0x931	// Read CSR
	li x1, -1
	csrrw x16, 0x931, x1	// Write all 1s to CSR
	csrrw x16, 0x931, x0	// Write all 0s to CSR
	csrrs x16, 0x931, x1	// Set all CSR bits
	csrrc x16, 0x931, x1	// Clear all CSR bits
	csrrw x16, 0x931, x28	// Restore CSR

// Testing CSR 0x932
	csrr x25, 0x932	// Read CSR
	li x10, -1
	csrrw x24, 0x932, x10	// Write all 1s to CSR
	csrrw x24, 0x932, x0	// Write all 0s to CSR
	csrrs x24, 0x932, x10	// Set all CSR bits
	csrrc x24, 0x932, x10	// Clear all CSR bits
	csrrw x24, 0x932, x25	// Restore CSR

// Testing CSR 0x933
	csrr x31, 0x933	// Read CSR
	li x28, -1
	csrrw x25, 0x933, x28	// Write all 1s to CSR
	csrrw x25, 0x933, x0	// Write all 0s to CSR
	csrrs x25, 0x933, x28	// Set all CSR bits
	csrrc x25, 0x933, x28	// Clear all CSR bits
	csrrw x25, 0x933, x31	// Restore CSR

// Testing CSR 0x934
	csrr x16, 0x934	// Read CSR
	li x1, -1
	csrrw x4, 0x934, x1	// Write all 1s to CSR
	csrrw x4, 0x934, x0	// Write all 0s to CSR
	csrrs x4, 0x934, x1	// Set all CSR bits
	csrrc x4, 0x934, x1	// Clear all CSR bits
	csrrw x4, 0x934, x16	// Restore CSR

// Testing CSR 0x935
	csrr x12, 0x935	// Read CSR
	li x24, -1
	csrrw x26, 0x935, x24	// Write all 1s to CSR
	csrrw x26, 0x935, x0	// Write all 0s to CSR
	csrrs x26, 0x935, x24	// Set all CSR bits
	csrrc x26, 0x935, x24	// Clear all CSR bits
	csrrw x26, 0x935, x12	// Restore CSR

// Testing CSR 0x936
	csrr x8, 0x936	// Read CSR
	li x28, -1
	csrrw x20, 0x936, x28	// Write all 1s to CSR
	csrrw x20, 0x936, x0	// Write all 0s to CSR
	csrrs x20, 0x936, x28	// Set all CSR bits
	csrrc x20, 0x936, x28	// Clear all CSR bits
	csrrw x20, 0x936, x8	// Restore CSR

// Testing CSR 0x937
	csrr x21, 0x937	// Read CSR
	li x18, -1
	csrrw x8, 0x937, x18	// Write all 1s to CSR
	csrrw x8, 0x937, x0	// Write all 0s to CSR
	csrrs x8, 0x937, x18	// Set all CSR bits
	csrrc x8, 0x937, x18	// Clear all CSR bits
	csrrw x8, 0x937, x21	// Restore CSR

// Testing CSR 0x938
	csrr x13, 0x938	// Read CSR
	li x7, -1
	csrrw x21, 0x938, x7	// Write all 1s to CSR
	csrrw x21, 0x938, x0	// Write all 0s to CSR
	csrrs x21, 0x938, x7	// Set all CSR bits
	csrrc x21, 0x938, x7	// Clear all CSR bits
	csrrw x21, 0x938, x13	// Restore CSR

// Testing CSR 0x939
	csrr x25, 0x939	// Read CSR
	li x13, -1
	csrrw x30, 0x939, x13	// Write all 1s to CSR
	csrrw x30, 0x939, x0	// Write all 0s to CSR
	csrrs x30, 0x939, x13	// Set all CSR bits
	csrrc x30, 0x939, x13	// Clear all CSR bits
	csrrw x30, 0x939, x25	// Restore CSR

// Testing CSR 0x93a
	csrr x4, 0x93a	// Read CSR
	li x6, -1
	csrrw x28, 0x93a, x6	// Write all 1s to CSR
	csrrw x28, 0x93a, x0	// Write all 0s to CSR
	csrrs x28, 0x93a, x6	// Set all CSR bits
	csrrc x28, 0x93a, x6	// Clear all CSR bits
	csrrw x28, 0x93a, x4	// Restore CSR

// Testing CSR 0x93b
	csrr x9, 0x93b	// Read CSR
	li x28, -1
	csrrw x4, 0x93b, x28	// Write all 1s to CSR
	csrrw x4, 0x93b, x0	// Write all 0s to CSR
	csrrs x4, 0x93b, x28	// Set all CSR bits
	csrrc x4, 0x93b, x28	// Clear all CSR bits
	csrrw x4, 0x93b, x9	// Restore CSR

// Testing CSR 0x93c
	csrr x10, 0x93c	// Read CSR
	li x6, -1
	csrrw x18, 0x93c, x6	// Write all 1s to CSR
	csrrw x18, 0x93c, x0	// Write all 0s to CSR
	csrrs x18, 0x93c, x6	// Set all CSR bits
	csrrc x18, 0x93c, x6	// Clear all CSR bits
	csrrw x18, 0x93c, x10	// Restore CSR

// Testing CSR 0x93d
	csrr x28, 0x93d	// Read CSR
	li x5, -1
	csrrw x19, 0x93d, x5	// Write all 1s to CSR
	csrrw x19, 0x93d, x0	// Write all 0s to CSR
	csrrs x19, 0x93d, x5	// Set all CSR bits
	csrrc x19, 0x93d, x5	// Clear all CSR bits
	csrrw x19, 0x93d, x28	// Restore CSR

// Testing CSR 0x93e
	csrr x24, 0x93e	// Read CSR
	li x28, -1
	csrrw x15, 0x93e, x28	// Write all 1s to CSR
	csrrw x15, 0x93e, x0	// Write all 0s to CSR
	csrrs x15, 0x93e, x28	// Set all CSR bits
	csrrc x15, 0x93e, x28	// Clear all CSR bits
	csrrw x15, 0x93e, x24	// Restore CSR

// Testing CSR 0x93f
	csrr x14, 0x93f	// Read CSR
	li x13, -1
	csrrw x30, 0x93f, x13	// Write all 1s to CSR
	csrrw x30, 0x93f, x0	// Write all 0s to CSR
	csrrs x30, 0x93f, x13	// Set all CSR bits
	csrrc x30, 0x93f, x13	// Clear all CSR bits
	csrrw x30, 0x93f, x14	// Restore CSR

// Testing CSR 0x940
	csrr x8, 0x940	// Read CSR
	li x27, -1
	csrrw x18, 0x940, x27	// Write all 1s to CSR
	csrrw x18, 0x940, x0	// Write all 0s to CSR
	csrrs x18, 0x940, x27	// Set all CSR bits
	csrrc x18, 0x940, x27	// Clear all CSR bits
	csrrw x18, 0x940, x8	// Restore CSR

// Testing CSR 0x941
	csrr x27, 0x941	// Read CSR
	li x3, -1
	csrrw x26, 0x941, x3	// Write all 1s to CSR
	csrrw x26, 0x941, x0	// Write all 0s to CSR
	csrrs x26, 0x941, x3	// Set all CSR bits
	csrrc x26, 0x941, x3	// Clear all CSR bits
	csrrw x26, 0x941, x27	// Restore CSR

// Testing CSR 0x942
	csrr x24, 0x942	// Read CSR
	li x3, -1
	csrrw x29, 0x942, x3	// Write all 1s to CSR
	csrrw x29, 0x942, x0	// Write all 0s to CSR
	csrrs x29, 0x942, x3	// Set all CSR bits
	csrrc x29, 0x942, x3	// Clear all CSR bits
	csrrw x29, 0x942, x24	// Restore CSR

// Testing CSR 0x943
	csrr x14, 0x943	// Read CSR
	li x11, -1
	csrrw x10, 0x943, x11	// Write all 1s to CSR
	csrrw x10, 0x943, x0	// Write all 0s to CSR
	csrrs x10, 0x943, x11	// Set all CSR bits
	csrrc x10, 0x943, x11	// Clear all CSR bits
	csrrw x10, 0x943, x14	// Restore CSR

// Testing CSR 0x944
	csrr x30, 0x944	// Read CSR
	li x16, -1
	csrrw x14, 0x944, x16	// Write all 1s to CSR
	csrrw x14, 0x944, x0	// Write all 0s to CSR
	csrrs x14, 0x944, x16	// Set all CSR bits
	csrrc x14, 0x944, x16	// Clear all CSR bits
	csrrw x14, 0x944, x30	// Restore CSR

// Testing CSR 0x945
	csrr x25, 0x945	// Read CSR
	li x14, -1
	csrrw x12, 0x945, x14	// Write all 1s to CSR
	csrrw x12, 0x945, x0	// Write all 0s to CSR
	csrrs x12, 0x945, x14	// Set all CSR bits
	csrrc x12, 0x945, x14	// Clear all CSR bits
	csrrw x12, 0x945, x25	// Restore CSR

// Testing CSR 0x946
	csrr x13, 0x946	// Read CSR
	li x16, -1
	csrrw x8, 0x946, x16	// Write all 1s to CSR
	csrrw x8, 0x946, x0	// Write all 0s to CSR
	csrrs x8, 0x946, x16	// Set all CSR bits
	csrrc x8, 0x946, x16	// Clear all CSR bits
	csrrw x8, 0x946, x13	// Restore CSR

// Testing CSR 0x947
	csrr x2, 0x947	// Read CSR
	li x4, -1
	csrrw x10, 0x947, x4	// Write all 1s to CSR
	csrrw x10, 0x947, x0	// Write all 0s to CSR
	csrrs x10, 0x947, x4	// Set all CSR bits
	csrrc x10, 0x947, x4	// Clear all CSR bits
	csrrw x10, 0x947, x2	// Restore CSR

// Testing CSR 0x948
	csrr x11, 0x948	// Read CSR
	li x17, -1
	csrrw x2, 0x948, x17	// Write all 1s to CSR
	csrrw x2, 0x948, x0	// Write all 0s to CSR
	csrrs x2, 0x948, x17	// Set all CSR bits
	csrrc x2, 0x948, x17	// Clear all CSR bits
	csrrw x2, 0x948, x11	// Restore CSR

// Testing CSR 0x949
	csrr x29, 0x949	// Read CSR
	li x11, -1
	csrrw x10, 0x949, x11	// Write all 1s to CSR
	csrrw x10, 0x949, x0	// Write all 0s to CSR
	csrrs x10, 0x949, x11	// Set all CSR bits
	csrrc x10, 0x949, x11	// Clear all CSR bits
	csrrw x10, 0x949, x29	// Restore CSR

// Testing CSR 0x94a
	csrr x11, 0x94a	// Read CSR
	li x16, -1
	csrrw x3, 0x94a, x16	// Write all 1s to CSR
	csrrw x3, 0x94a, x0	// Write all 0s to CSR
	csrrs x3, 0x94a, x16	// Set all CSR bits
	csrrc x3, 0x94a, x16	// Clear all CSR bits
	csrrw x3, 0x94a, x11	// Restore CSR

// Testing CSR 0x94b
	csrr x20, 0x94b	// Read CSR
	li x19, -1
	csrrw x5, 0x94b, x19	// Write all 1s to CSR
	csrrw x5, 0x94b, x0	// Write all 0s to CSR
	csrrs x5, 0x94b, x19	// Set all CSR bits
	csrrc x5, 0x94b, x19	// Clear all CSR bits
	csrrw x5, 0x94b, x20	// Restore CSR

// Testing CSR 0x94c
	csrr x27, 0x94c	// Read CSR
	li x2, -1
	csrrw x20, 0x94c, x2	// Write all 1s to CSR
	csrrw x20, 0x94c, x0	// Write all 0s to CSR
	csrrs x20, 0x94c, x2	// Set all CSR bits
	csrrc x20, 0x94c, x2	// Clear all CSR bits
	csrrw x20, 0x94c, x27	// Restore CSR

// Testing CSR 0x94d
	csrr x23, 0x94d	// Read CSR
	li x4, -1
	csrrw x13, 0x94d, x4	// Write all 1s to CSR
	csrrw x13, 0x94d, x0	// Write all 0s to CSR
	csrrs x13, 0x94d, x4	// Set all CSR bits
	csrrc x13, 0x94d, x4	// Clear all CSR bits
	csrrw x13, 0x94d, x23	// Restore CSR

// Testing CSR 0x94e
	csrr x8, 0x94e	// Read CSR
	li x1, -1
	csrrw x10, 0x94e, x1	// Write all 1s to CSR
	csrrw x10, 0x94e, x0	// Write all 0s to CSR
	csrrs x10, 0x94e, x1	// Set all CSR bits
	csrrc x10, 0x94e, x1	// Clear all CSR bits
	csrrw x10, 0x94e, x8	// Restore CSR

// Testing CSR 0x94f
	csrr x8, 0x94f	// Read CSR
	li x10, -1
	csrrw x4, 0x94f, x10	// Write all 1s to CSR
	csrrw x4, 0x94f, x0	// Write all 0s to CSR
	csrrs x4, 0x94f, x10	// Set all CSR bits
	csrrc x4, 0x94f, x10	// Clear all CSR bits
	csrrw x4, 0x94f, x8	// Restore CSR

// Testing CSR 0x950
	csrr x24, 0x950	// Read CSR
	li x13, -1
	csrrw x14, 0x950, x13	// Write all 1s to CSR
	csrrw x14, 0x950, x0	// Write all 0s to CSR
	csrrs x14, 0x950, x13	// Set all CSR bits
	csrrc x14, 0x950, x13	// Clear all CSR bits
	csrrw x14, 0x950, x24	// Restore CSR

// Testing CSR 0x951
	csrr x9, 0x951	// Read CSR
	li x3, -1
	csrrw x25, 0x951, x3	// Write all 1s to CSR
	csrrw x25, 0x951, x0	// Write all 0s to CSR
	csrrs x25, 0x951, x3	// Set all CSR bits
	csrrc x25, 0x951, x3	// Clear all CSR bits
	csrrw x25, 0x951, x9	// Restore CSR

// Testing CSR 0x952
	csrr x23, 0x952	// Read CSR
	li x1, -1
	csrrw x8, 0x952, x1	// Write all 1s to CSR
	csrrw x8, 0x952, x0	// Write all 0s to CSR
	csrrs x8, 0x952, x1	// Set all CSR bits
	csrrc x8, 0x952, x1	// Clear all CSR bits
	csrrw x8, 0x952, x23	// Restore CSR

// Testing CSR 0x953
	csrr x10, 0x953	// Read CSR
	li x18, -1
	csrrw x1, 0x953, x18	// Write all 1s to CSR
	csrrw x1, 0x953, x0	// Write all 0s to CSR
	csrrs x1, 0x953, x18	// Set all CSR bits
	csrrc x1, 0x953, x18	// Clear all CSR bits
	csrrw x1, 0x953, x10	// Restore CSR

// Testing CSR 0x954
	csrr x3, 0x954	// Read CSR
	li x27, -1
	csrrw x23, 0x954, x27	// Write all 1s to CSR
	csrrw x23, 0x954, x0	// Write all 0s to CSR
	csrrs x23, 0x954, x27	// Set all CSR bits
	csrrc x23, 0x954, x27	// Clear all CSR bits
	csrrw x23, 0x954, x3	// Restore CSR

// Testing CSR 0x955
	csrr x17, 0x955	// Read CSR
	li x19, -1
	csrrw x9, 0x955, x19	// Write all 1s to CSR
	csrrw x9, 0x955, x0	// Write all 0s to CSR
	csrrs x9, 0x955, x19	// Set all CSR bits
	csrrc x9, 0x955, x19	// Clear all CSR bits
	csrrw x9, 0x955, x17	// Restore CSR

// Testing CSR 0x956
	csrr x27, 0x956	// Read CSR
	li x5, -1
	csrrw x8, 0x956, x5	// Write all 1s to CSR
	csrrw x8, 0x956, x0	// Write all 0s to CSR
	csrrs x8, 0x956, x5	// Set all CSR bits
	csrrc x8, 0x956, x5	// Clear all CSR bits
	csrrw x8, 0x956, x27	// Restore CSR

// Testing CSR 0x957
	csrr x7, 0x957	// Read CSR
	li x8, -1
	csrrw x10, 0x957, x8	// Write all 1s to CSR
	csrrw x10, 0x957, x0	// Write all 0s to CSR
	csrrs x10, 0x957, x8	// Set all CSR bits
	csrrc x10, 0x957, x8	// Clear all CSR bits
	csrrw x10, 0x957, x7	// Restore CSR

// Testing CSR 0x958
	csrr x25, 0x958	// Read CSR
	li x3, -1
	csrrw x28, 0x958, x3	// Write all 1s to CSR
	csrrw x28, 0x958, x0	// Write all 0s to CSR
	csrrs x28, 0x958, x3	// Set all CSR bits
	csrrc x28, 0x958, x3	// Clear all CSR bits
	csrrw x28, 0x958, x25	// Restore CSR

// Testing CSR 0x959
	csrr x29, 0x959	// Read CSR
	li x8, -1
	csrrw x15, 0x959, x8	// Write all 1s to CSR
	csrrw x15, 0x959, x0	// Write all 0s to CSR
	csrrs x15, 0x959, x8	// Set all CSR bits
	csrrc x15, 0x959, x8	// Clear all CSR bits
	csrrw x15, 0x959, x29	// Restore CSR

// Testing CSR 0x95a
	csrr x3, 0x95a	// Read CSR
	li x1, -1
	csrrw x16, 0x95a, x1	// Write all 1s to CSR
	csrrw x16, 0x95a, x0	// Write all 0s to CSR
	csrrs x16, 0x95a, x1	// Set all CSR bits
	csrrc x16, 0x95a, x1	// Clear all CSR bits
	csrrw x16, 0x95a, x3	// Restore CSR

// Testing CSR 0x95b
	csrr x25, 0x95b	// Read CSR
	li x5, -1
	csrrw x12, 0x95b, x5	// Write all 1s to CSR
	csrrw x12, 0x95b, x0	// Write all 0s to CSR
	csrrs x12, 0x95b, x5	// Set all CSR bits
	csrrc x12, 0x95b, x5	// Clear all CSR bits
	csrrw x12, 0x95b, x25	// Restore CSR

// Testing CSR 0x95c
	csrr x28, 0x95c	// Read CSR
	li x14, -1
	csrrw x26, 0x95c, x14	// Write all 1s to CSR
	csrrw x26, 0x95c, x0	// Write all 0s to CSR
	csrrs x26, 0x95c, x14	// Set all CSR bits
	csrrc x26, 0x95c, x14	// Clear all CSR bits
	csrrw x26, 0x95c, x28	// Restore CSR

// Testing CSR 0x95d
	csrr x31, 0x95d	// Read CSR
	li x13, -1
	csrrw x21, 0x95d, x13	// Write all 1s to CSR
	csrrw x21, 0x95d, x0	// Write all 0s to CSR
	csrrs x21, 0x95d, x13	// Set all CSR bits
	csrrc x21, 0x95d, x13	// Clear all CSR bits
	csrrw x21, 0x95d, x31	// Restore CSR

// Testing CSR 0x95e
	csrr x11, 0x95e	// Read CSR
	li x29, -1
	csrrw x25, 0x95e, x29	// Write all 1s to CSR
	csrrw x25, 0x95e, x0	// Write all 0s to CSR
	csrrs x25, 0x95e, x29	// Set all CSR bits
	csrrc x25, 0x95e, x29	// Clear all CSR bits
	csrrw x25, 0x95e, x11	// Restore CSR

// Testing CSR 0x95f
	csrr x15, 0x95f	// Read CSR
	li x5, -1
	csrrw x20, 0x95f, x5	// Write all 1s to CSR
	csrrw x20, 0x95f, x0	// Write all 0s to CSR
	csrrs x20, 0x95f, x5	// Set all CSR bits
	csrrc x20, 0x95f, x5	// Clear all CSR bits
	csrrw x20, 0x95f, x15	// Restore CSR

// Testing CSR 0x960
	csrr x21, 0x960	// Read CSR
	li x20, -1
	csrrw x1, 0x960, x20	// Write all 1s to CSR
	csrrw x1, 0x960, x0	// Write all 0s to CSR
	csrrs x1, 0x960, x20	// Set all CSR bits
	csrrc x1, 0x960, x20	// Clear all CSR bits
	csrrw x1, 0x960, x21	// Restore CSR

// Testing CSR 0x961
	csrr x31, 0x961	// Read CSR
	li x25, -1
	csrrw x30, 0x961, x25	// Write all 1s to CSR
	csrrw x30, 0x961, x0	// Write all 0s to CSR
	csrrs x30, 0x961, x25	// Set all CSR bits
	csrrc x30, 0x961, x25	// Clear all CSR bits
	csrrw x30, 0x961, x31	// Restore CSR

// Testing CSR 0x962
	csrr x7, 0x962	// Read CSR
	li x27, -1
	csrrw x30, 0x962, x27	// Write all 1s to CSR
	csrrw x30, 0x962, x0	// Write all 0s to CSR
	csrrs x30, 0x962, x27	// Set all CSR bits
	csrrc x30, 0x962, x27	// Clear all CSR bits
	csrrw x30, 0x962, x7	// Restore CSR

// Testing CSR 0x963
	csrr x14, 0x963	// Read CSR
	li x7, -1
	csrrw x25, 0x963, x7	// Write all 1s to CSR
	csrrw x25, 0x963, x0	// Write all 0s to CSR
	csrrs x25, 0x963, x7	// Set all CSR bits
	csrrc x25, 0x963, x7	// Clear all CSR bits
	csrrw x25, 0x963, x14	// Restore CSR

// Testing CSR 0x964
	csrr x31, 0x964	// Read CSR
	li x21, -1
	csrrw x3, 0x964, x21	// Write all 1s to CSR
	csrrw x3, 0x964, x0	// Write all 0s to CSR
	csrrs x3, 0x964, x21	// Set all CSR bits
	csrrc x3, 0x964, x21	// Clear all CSR bits
	csrrw x3, 0x964, x31	// Restore CSR

// Testing CSR 0x965
	csrr x9, 0x965	// Read CSR
	li x17, -1
	csrrw x26, 0x965, x17	// Write all 1s to CSR
	csrrw x26, 0x965, x0	// Write all 0s to CSR
	csrrs x26, 0x965, x17	// Set all CSR bits
	csrrc x26, 0x965, x17	// Clear all CSR bits
	csrrw x26, 0x965, x9	// Restore CSR

// Testing CSR 0x966
	csrr x28, 0x966	// Read CSR
	li x26, -1
	csrrw x4, 0x966, x26	// Write all 1s to CSR
	csrrw x4, 0x966, x0	// Write all 0s to CSR
	csrrs x4, 0x966, x26	// Set all CSR bits
	csrrc x4, 0x966, x26	// Clear all CSR bits
	csrrw x4, 0x966, x28	// Restore CSR

// Testing CSR 0x967
	csrr x20, 0x967	// Read CSR
	li x10, -1
	csrrw x29, 0x967, x10	// Write all 1s to CSR
	csrrw x29, 0x967, x0	// Write all 0s to CSR
	csrrs x29, 0x967, x10	// Set all CSR bits
	csrrc x29, 0x967, x10	// Clear all CSR bits
	csrrw x29, 0x967, x20	// Restore CSR

// Testing CSR 0x968
	csrr x15, 0x968	// Read CSR
	li x22, -1
	csrrw x13, 0x968, x22	// Write all 1s to CSR
	csrrw x13, 0x968, x0	// Write all 0s to CSR
	csrrs x13, 0x968, x22	// Set all CSR bits
	csrrc x13, 0x968, x22	// Clear all CSR bits
	csrrw x13, 0x968, x15	// Restore CSR

// Testing CSR 0x969
	csrr x23, 0x969	// Read CSR
	li x7, -1
	csrrw x13, 0x969, x7	// Write all 1s to CSR
	csrrw x13, 0x969, x0	// Write all 0s to CSR
	csrrs x13, 0x969, x7	// Set all CSR bits
	csrrc x13, 0x969, x7	// Clear all CSR bits
	csrrw x13, 0x969, x23	// Restore CSR

// Testing CSR 0x96a
	csrr x8, 0x96a	// Read CSR
	li x4, -1
	csrrw x26, 0x96a, x4	// Write all 1s to CSR
	csrrw x26, 0x96a, x0	// Write all 0s to CSR
	csrrs x26, 0x96a, x4	// Set all CSR bits
	csrrc x26, 0x96a, x4	// Clear all CSR bits
	csrrw x26, 0x96a, x8	// Restore CSR

// Testing CSR 0x96b
	csrr x14, 0x96b	// Read CSR
	li x2, -1
	csrrw x3, 0x96b, x2	// Write all 1s to CSR
	csrrw x3, 0x96b, x0	// Write all 0s to CSR
	csrrs x3, 0x96b, x2	// Set all CSR bits
	csrrc x3, 0x96b, x2	// Clear all CSR bits
	csrrw x3, 0x96b, x14	// Restore CSR

// Testing CSR 0x96c
	csrr x27, 0x96c	// Read CSR
	li x11, -1
	csrrw x10, 0x96c, x11	// Write all 1s to CSR
	csrrw x10, 0x96c, x0	// Write all 0s to CSR
	csrrs x10, 0x96c, x11	// Set all CSR bits
	csrrc x10, 0x96c, x11	// Clear all CSR bits
	csrrw x10, 0x96c, x27	// Restore CSR

// Testing CSR 0x96d
	csrr x22, 0x96d	// Read CSR
	li x6, -1
	csrrw x27, 0x96d, x6	// Write all 1s to CSR
	csrrw x27, 0x96d, x0	// Write all 0s to CSR
	csrrs x27, 0x96d, x6	// Set all CSR bits
	csrrc x27, 0x96d, x6	// Clear all CSR bits
	csrrw x27, 0x96d, x22	// Restore CSR

// Testing CSR 0x96e
	csrr x5, 0x96e	// Read CSR
	li x20, -1
	csrrw x1, 0x96e, x20	// Write all 1s to CSR
	csrrw x1, 0x96e, x0	// Write all 0s to CSR
	csrrs x1, 0x96e, x20	// Set all CSR bits
	csrrc x1, 0x96e, x20	// Clear all CSR bits
	csrrw x1, 0x96e, x5	// Restore CSR

// Testing CSR 0x96f
	csrr x8, 0x96f	// Read CSR
	li x21, -1
	csrrw x23, 0x96f, x21	// Write all 1s to CSR
	csrrw x23, 0x96f, x0	// Write all 0s to CSR
	csrrs x23, 0x96f, x21	// Set all CSR bits
	csrrc x23, 0x96f, x21	// Clear all CSR bits
	csrrw x23, 0x96f, x8	// Restore CSR

// Testing CSR 0x970
	csrr x21, 0x970	// Read CSR
	li x22, -1
	csrrw x31, 0x970, x22	// Write all 1s to CSR
	csrrw x31, 0x970, x0	// Write all 0s to CSR
	csrrs x31, 0x970, x22	// Set all CSR bits
	csrrc x31, 0x970, x22	// Clear all CSR bits
	csrrw x31, 0x970, x21	// Restore CSR

// Testing CSR 0x971
	csrr x30, 0x971	// Read CSR
	li x3, -1
	csrrw x10, 0x971, x3	// Write all 1s to CSR
	csrrw x10, 0x971, x0	// Write all 0s to CSR
	csrrs x10, 0x971, x3	// Set all CSR bits
	csrrc x10, 0x971, x3	// Clear all CSR bits
	csrrw x10, 0x971, x30	// Restore CSR

// Testing CSR 0x972
	csrr x30, 0x972	// Read CSR
	li x2, -1
	csrrw x8, 0x972, x2	// Write all 1s to CSR
	csrrw x8, 0x972, x0	// Write all 0s to CSR
	csrrs x8, 0x972, x2	// Set all CSR bits
	csrrc x8, 0x972, x2	// Clear all CSR bits
	csrrw x8, 0x972, x30	// Restore CSR

// Testing CSR 0x973
	csrr x6, 0x973	// Read CSR
	li x14, -1
	csrrw x31, 0x973, x14	// Write all 1s to CSR
	csrrw x31, 0x973, x0	// Write all 0s to CSR
	csrrs x31, 0x973, x14	// Set all CSR bits
	csrrc x31, 0x973, x14	// Clear all CSR bits
	csrrw x31, 0x973, x6	// Restore CSR

// Testing CSR 0x974
	csrr x28, 0x974	// Read CSR
	li x21, -1
	csrrw x19, 0x974, x21	// Write all 1s to CSR
	csrrw x19, 0x974, x0	// Write all 0s to CSR
	csrrs x19, 0x974, x21	// Set all CSR bits
	csrrc x19, 0x974, x21	// Clear all CSR bits
	csrrw x19, 0x974, x28	// Restore CSR

// Testing CSR 0x975
	csrr x14, 0x975	// Read CSR
	li x28, -1
	csrrw x22, 0x975, x28	// Write all 1s to CSR
	csrrw x22, 0x975, x0	// Write all 0s to CSR
	csrrs x22, 0x975, x28	// Set all CSR bits
	csrrc x22, 0x975, x28	// Clear all CSR bits
	csrrw x22, 0x975, x14	// Restore CSR

// Testing CSR 0x976
	csrr x26, 0x976	// Read CSR
	li x11, -1
	csrrw x21, 0x976, x11	// Write all 1s to CSR
	csrrw x21, 0x976, x0	// Write all 0s to CSR
	csrrs x21, 0x976, x11	// Set all CSR bits
	csrrc x21, 0x976, x11	// Clear all CSR bits
	csrrw x21, 0x976, x26	// Restore CSR

// Testing CSR 0x977
	csrr x4, 0x977	// Read CSR
	li x16, -1
	csrrw x20, 0x977, x16	// Write all 1s to CSR
	csrrw x20, 0x977, x0	// Write all 0s to CSR
	csrrs x20, 0x977, x16	// Set all CSR bits
	csrrc x20, 0x977, x16	// Clear all CSR bits
	csrrw x20, 0x977, x4	// Restore CSR

// Testing CSR 0x978
	csrr x30, 0x978	// Read CSR
	li x3, -1
	csrrw x27, 0x978, x3	// Write all 1s to CSR
	csrrw x27, 0x978, x0	// Write all 0s to CSR
	csrrs x27, 0x978, x3	// Set all CSR bits
	csrrc x27, 0x978, x3	// Clear all CSR bits
	csrrw x27, 0x978, x30	// Restore CSR

// Testing CSR 0x979
	csrr x22, 0x979	// Read CSR
	li x13, -1
	csrrw x21, 0x979, x13	// Write all 1s to CSR
	csrrw x21, 0x979, x0	// Write all 0s to CSR
	csrrs x21, 0x979, x13	// Set all CSR bits
	csrrc x21, 0x979, x13	// Clear all CSR bits
	csrrw x21, 0x979, x22	// Restore CSR

// Testing CSR 0x97a
	csrr x16, 0x97a	// Read CSR
	li x24, -1
	csrrw x20, 0x97a, x24	// Write all 1s to CSR
	csrrw x20, 0x97a, x0	// Write all 0s to CSR
	csrrs x20, 0x97a, x24	// Set all CSR bits
	csrrc x20, 0x97a, x24	// Clear all CSR bits
	csrrw x20, 0x97a, x16	// Restore CSR

// Testing CSR 0x97b
	csrr x2, 0x97b	// Read CSR
	li x31, -1
	csrrw x30, 0x97b, x31	// Write all 1s to CSR
	csrrw x30, 0x97b, x0	// Write all 0s to CSR
	csrrs x30, 0x97b, x31	// Set all CSR bits
	csrrc x30, 0x97b, x31	// Clear all CSR bits
	csrrw x30, 0x97b, x2	// Restore CSR

// Testing CSR 0x97c
	csrr x27, 0x97c	// Read CSR
	li x4, -1
	csrrw x31, 0x97c, x4	// Write all 1s to CSR
	csrrw x31, 0x97c, x0	// Write all 0s to CSR
	csrrs x31, 0x97c, x4	// Set all CSR bits
	csrrc x31, 0x97c, x4	// Clear all CSR bits
	csrrw x31, 0x97c, x27	// Restore CSR

// Testing CSR 0x97d
	csrr x6, 0x97d	// Read CSR
	li x16, -1
	csrrw x23, 0x97d, x16	// Write all 1s to CSR
	csrrw x23, 0x97d, x0	// Write all 0s to CSR
	csrrs x23, 0x97d, x16	// Set all CSR bits
	csrrc x23, 0x97d, x16	// Clear all CSR bits
	csrrw x23, 0x97d, x6	// Restore CSR

// Testing CSR 0x97e
	csrr x14, 0x97e	// Read CSR
	li x25, -1
	csrrw x9, 0x97e, x25	// Write all 1s to CSR
	csrrw x9, 0x97e, x0	// Write all 0s to CSR
	csrrs x9, 0x97e, x25	// Set all CSR bits
	csrrc x9, 0x97e, x25	// Clear all CSR bits
	csrrw x9, 0x97e, x14	// Restore CSR

// Testing CSR 0x97f
	csrr x7, 0x97f	// Read CSR
	li x23, -1
	csrrw x14, 0x97f, x23	// Write all 1s to CSR
	csrrw x14, 0x97f, x0	// Write all 0s to CSR
	csrrs x14, 0x97f, x23	// Set all CSR bits
	csrrc x14, 0x97f, x23	// Clear all CSR bits
	csrrw x14, 0x97f, x7	// Restore CSR

// Testing CSR 0x980
	csrr x10, 0x980	// Read CSR
	li x6, -1
	csrrw x3, 0x980, x6	// Write all 1s to CSR
	csrrw x3, 0x980, x0	// Write all 0s to CSR
	csrrs x3, 0x980, x6	// Set all CSR bits
	csrrc x3, 0x980, x6	// Clear all CSR bits
	csrrw x3, 0x980, x10	// Restore CSR

// Testing CSR 0x981
	csrr x4, 0x981	// Read CSR
	li x15, -1
	csrrw x26, 0x981, x15	// Write all 1s to CSR
	csrrw x26, 0x981, x0	// Write all 0s to CSR
	csrrs x26, 0x981, x15	// Set all CSR bits
	csrrc x26, 0x981, x15	// Clear all CSR bits
	csrrw x26, 0x981, x4	// Restore CSR

// Testing CSR 0x982
	csrr x21, 0x982	// Read CSR
	li x1, -1
	csrrw x10, 0x982, x1	// Write all 1s to CSR
	csrrw x10, 0x982, x0	// Write all 0s to CSR
	csrrs x10, 0x982, x1	// Set all CSR bits
	csrrc x10, 0x982, x1	// Clear all CSR bits
	csrrw x10, 0x982, x21	// Restore CSR

// Testing CSR 0x983
	csrr x23, 0x983	// Read CSR
	li x6, -1
	csrrw x27, 0x983, x6	// Write all 1s to CSR
	csrrw x27, 0x983, x0	// Write all 0s to CSR
	csrrs x27, 0x983, x6	// Set all CSR bits
	csrrc x27, 0x983, x6	// Clear all CSR bits
	csrrw x27, 0x983, x23	// Restore CSR

// Testing CSR 0x984
	csrr x28, 0x984	// Read CSR
	li x30, -1
	csrrw x27, 0x984, x30	// Write all 1s to CSR
	csrrw x27, 0x984, x0	// Write all 0s to CSR
	csrrs x27, 0x984, x30	// Set all CSR bits
	csrrc x27, 0x984, x30	// Clear all CSR bits
	csrrw x27, 0x984, x28	// Restore CSR

// Testing CSR 0x985
	csrr x21, 0x985	// Read CSR
	li x26, -1
	csrrw x27, 0x985, x26	// Write all 1s to CSR
	csrrw x27, 0x985, x0	// Write all 0s to CSR
	csrrs x27, 0x985, x26	// Set all CSR bits
	csrrc x27, 0x985, x26	// Clear all CSR bits
	csrrw x27, 0x985, x21	// Restore CSR

// Testing CSR 0x986
	csrr x31, 0x986	// Read CSR
	li x5, -1
	csrrw x13, 0x986, x5	// Write all 1s to CSR
	csrrw x13, 0x986, x0	// Write all 0s to CSR
	csrrs x13, 0x986, x5	// Set all CSR bits
	csrrc x13, 0x986, x5	// Clear all CSR bits
	csrrw x13, 0x986, x31	// Restore CSR

// Testing CSR 0x987
	csrr x5, 0x987	// Read CSR
	li x8, -1
	csrrw x23, 0x987, x8	// Write all 1s to CSR
	csrrw x23, 0x987, x0	// Write all 0s to CSR
	csrrs x23, 0x987, x8	// Set all CSR bits
	csrrc x23, 0x987, x8	// Clear all CSR bits
	csrrw x23, 0x987, x5	// Restore CSR

// Testing CSR 0x988
	csrr x4, 0x988	// Read CSR
	li x13, -1
	csrrw x5, 0x988, x13	// Write all 1s to CSR
	csrrw x5, 0x988, x0	// Write all 0s to CSR
	csrrs x5, 0x988, x13	// Set all CSR bits
	csrrc x5, 0x988, x13	// Clear all CSR bits
	csrrw x5, 0x988, x4	// Restore CSR

// Testing CSR 0x989
	csrr x7, 0x989	// Read CSR
	li x6, -1
	csrrw x16, 0x989, x6	// Write all 1s to CSR
	csrrw x16, 0x989, x0	// Write all 0s to CSR
	csrrs x16, 0x989, x6	// Set all CSR bits
	csrrc x16, 0x989, x6	// Clear all CSR bits
	csrrw x16, 0x989, x7	// Restore CSR

// Testing CSR 0x98a
	csrr x12, 0x98a	// Read CSR
	li x30, -1
	csrrw x19, 0x98a, x30	// Write all 1s to CSR
	csrrw x19, 0x98a, x0	// Write all 0s to CSR
	csrrs x19, 0x98a, x30	// Set all CSR bits
	csrrc x19, 0x98a, x30	// Clear all CSR bits
	csrrw x19, 0x98a, x12	// Restore CSR

// Testing CSR 0x98b
	csrr x20, 0x98b	// Read CSR
	li x4, -1
	csrrw x1, 0x98b, x4	// Write all 1s to CSR
	csrrw x1, 0x98b, x0	// Write all 0s to CSR
	csrrs x1, 0x98b, x4	// Set all CSR bits
	csrrc x1, 0x98b, x4	// Clear all CSR bits
	csrrw x1, 0x98b, x20	// Restore CSR

// Testing CSR 0x98c
	csrr x25, 0x98c	// Read CSR
	li x23, -1
	csrrw x26, 0x98c, x23	// Write all 1s to CSR
	csrrw x26, 0x98c, x0	// Write all 0s to CSR
	csrrs x26, 0x98c, x23	// Set all CSR bits
	csrrc x26, 0x98c, x23	// Clear all CSR bits
	csrrw x26, 0x98c, x25	// Restore CSR

// Testing CSR 0x98d
	csrr x13, 0x98d	// Read CSR
	li x1, -1
	csrrw x28, 0x98d, x1	// Write all 1s to CSR
	csrrw x28, 0x98d, x0	// Write all 0s to CSR
	csrrs x28, 0x98d, x1	// Set all CSR bits
	csrrc x28, 0x98d, x1	// Clear all CSR bits
	csrrw x28, 0x98d, x13	// Restore CSR

// Testing CSR 0x98e
	csrr x14, 0x98e	// Read CSR
	li x28, -1
	csrrw x9, 0x98e, x28	// Write all 1s to CSR
	csrrw x9, 0x98e, x0	// Write all 0s to CSR
	csrrs x9, 0x98e, x28	// Set all CSR bits
	csrrc x9, 0x98e, x28	// Clear all CSR bits
	csrrw x9, 0x98e, x14	// Restore CSR

// Testing CSR 0x98f
	csrr x9, 0x98f	// Read CSR
	li x31, -1
	csrrw x11, 0x98f, x31	// Write all 1s to CSR
	csrrw x11, 0x98f, x0	// Write all 0s to CSR
	csrrs x11, 0x98f, x31	// Set all CSR bits
	csrrc x11, 0x98f, x31	// Clear all CSR bits
	csrrw x11, 0x98f, x9	// Restore CSR

// Testing CSR 0x990
	csrr x25, 0x990	// Read CSR
	li x23, -1
	csrrw x17, 0x990, x23	// Write all 1s to CSR
	csrrw x17, 0x990, x0	// Write all 0s to CSR
	csrrs x17, 0x990, x23	// Set all CSR bits
	csrrc x17, 0x990, x23	// Clear all CSR bits
	csrrw x17, 0x990, x25	// Restore CSR

// Testing CSR 0x991
	csrr x26, 0x991	// Read CSR
	li x18, -1
	csrrw x3, 0x991, x18	// Write all 1s to CSR
	csrrw x3, 0x991, x0	// Write all 0s to CSR
	csrrs x3, 0x991, x18	// Set all CSR bits
	csrrc x3, 0x991, x18	// Clear all CSR bits
	csrrw x3, 0x991, x26	// Restore CSR

// Testing CSR 0x992
	csrr x7, 0x992	// Read CSR
	li x12, -1
	csrrw x24, 0x992, x12	// Write all 1s to CSR
	csrrw x24, 0x992, x0	// Write all 0s to CSR
	csrrs x24, 0x992, x12	// Set all CSR bits
	csrrc x24, 0x992, x12	// Clear all CSR bits
	csrrw x24, 0x992, x7	// Restore CSR

// Testing CSR 0x993
	csrr x26, 0x993	// Read CSR
	li x22, -1
	csrrw x3, 0x993, x22	// Write all 1s to CSR
	csrrw x3, 0x993, x0	// Write all 0s to CSR
	csrrs x3, 0x993, x22	// Set all CSR bits
	csrrc x3, 0x993, x22	// Clear all CSR bits
	csrrw x3, 0x993, x26	// Restore CSR

// Testing CSR 0x994
	csrr x12, 0x994	// Read CSR
	li x2, -1
	csrrw x26, 0x994, x2	// Write all 1s to CSR
	csrrw x26, 0x994, x0	// Write all 0s to CSR
	csrrs x26, 0x994, x2	// Set all CSR bits
	csrrc x26, 0x994, x2	// Clear all CSR bits
	csrrw x26, 0x994, x12	// Restore CSR

// Testing CSR 0x995
	csrr x8, 0x995	// Read CSR
	li x17, -1
	csrrw x21, 0x995, x17	// Write all 1s to CSR
	csrrw x21, 0x995, x0	// Write all 0s to CSR
	csrrs x21, 0x995, x17	// Set all CSR bits
	csrrc x21, 0x995, x17	// Clear all CSR bits
	csrrw x21, 0x995, x8	// Restore CSR

// Testing CSR 0x996
	csrr x22, 0x996	// Read CSR
	li x27, -1
	csrrw x13, 0x996, x27	// Write all 1s to CSR
	csrrw x13, 0x996, x0	// Write all 0s to CSR
	csrrs x13, 0x996, x27	// Set all CSR bits
	csrrc x13, 0x996, x27	// Clear all CSR bits
	csrrw x13, 0x996, x22	// Restore CSR

// Testing CSR 0x997
	csrr x25, 0x997	// Read CSR
	li x3, -1
	csrrw x20, 0x997, x3	// Write all 1s to CSR
	csrrw x20, 0x997, x0	// Write all 0s to CSR
	csrrs x20, 0x997, x3	// Set all CSR bits
	csrrc x20, 0x997, x3	// Clear all CSR bits
	csrrw x20, 0x997, x25	// Restore CSR

// Testing CSR 0x998
	csrr x21, 0x998	// Read CSR
	li x3, -1
	csrrw x17, 0x998, x3	// Write all 1s to CSR
	csrrw x17, 0x998, x0	// Write all 0s to CSR
	csrrs x17, 0x998, x3	// Set all CSR bits
	csrrc x17, 0x998, x3	// Clear all CSR bits
	csrrw x17, 0x998, x21	// Restore CSR

// Testing CSR 0x999
	csrr x3, 0x999	// Read CSR
	li x20, -1
	csrrw x10, 0x999, x20	// Write all 1s to CSR
	csrrw x10, 0x999, x0	// Write all 0s to CSR
	csrrs x10, 0x999, x20	// Set all CSR bits
	csrrc x10, 0x999, x20	// Clear all CSR bits
	csrrw x10, 0x999, x3	// Restore CSR

// Testing CSR 0x99a
	csrr x2, 0x99a	// Read CSR
	li x13, -1
	csrrw x1, 0x99a, x13	// Write all 1s to CSR
	csrrw x1, 0x99a, x0	// Write all 0s to CSR
	csrrs x1, 0x99a, x13	// Set all CSR bits
	csrrc x1, 0x99a, x13	// Clear all CSR bits
	csrrw x1, 0x99a, x2	// Restore CSR

// Testing CSR 0x99b
	csrr x19, 0x99b	// Read CSR
	li x30, -1
	csrrw x26, 0x99b, x30	// Write all 1s to CSR
	csrrw x26, 0x99b, x0	// Write all 0s to CSR
	csrrs x26, 0x99b, x30	// Set all CSR bits
	csrrc x26, 0x99b, x30	// Clear all CSR bits
	csrrw x26, 0x99b, x19	// Restore CSR

// Testing CSR 0x99c
	csrr x29, 0x99c	// Read CSR
	li x31, -1
	csrrw x17, 0x99c, x31	// Write all 1s to CSR
	csrrw x17, 0x99c, x0	// Write all 0s to CSR
	csrrs x17, 0x99c, x31	// Set all CSR bits
	csrrc x17, 0x99c, x31	// Clear all CSR bits
	csrrw x17, 0x99c, x29	// Restore CSR

// Testing CSR 0x99d
	csrr x13, 0x99d	// Read CSR
	li x14, -1
	csrrw x27, 0x99d, x14	// Write all 1s to CSR
	csrrw x27, 0x99d, x0	// Write all 0s to CSR
	csrrs x27, 0x99d, x14	// Set all CSR bits
	csrrc x27, 0x99d, x14	// Clear all CSR bits
	csrrw x27, 0x99d, x13	// Restore CSR

// Testing CSR 0x99e
	csrr x4, 0x99e	// Read CSR
	li x12, -1
	csrrw x27, 0x99e, x12	// Write all 1s to CSR
	csrrw x27, 0x99e, x0	// Write all 0s to CSR
	csrrs x27, 0x99e, x12	// Set all CSR bits
	csrrc x27, 0x99e, x12	// Clear all CSR bits
	csrrw x27, 0x99e, x4	// Restore CSR

// Testing CSR 0x99f
	csrr x31, 0x99f	// Read CSR
	li x26, -1
	csrrw x7, 0x99f, x26	// Write all 1s to CSR
	csrrw x7, 0x99f, x0	// Write all 0s to CSR
	csrrs x7, 0x99f, x26	// Set all CSR bits
	csrrc x7, 0x99f, x26	// Clear all CSR bits
	csrrw x7, 0x99f, x31	// Restore CSR

// Testing CSR 0x9a0
	csrr x22, 0x9a0	// Read CSR
	li x28, -1
	csrrw x26, 0x9a0, x28	// Write all 1s to CSR
	csrrw x26, 0x9a0, x0	// Write all 0s to CSR
	csrrs x26, 0x9a0, x28	// Set all CSR bits
	csrrc x26, 0x9a0, x28	// Clear all CSR bits
	csrrw x26, 0x9a0, x22	// Restore CSR

// Testing CSR 0x9a1
	csrr x25, 0x9a1	// Read CSR
	li x16, -1
	csrrw x27, 0x9a1, x16	// Write all 1s to CSR
	csrrw x27, 0x9a1, x0	// Write all 0s to CSR
	csrrs x27, 0x9a1, x16	// Set all CSR bits
	csrrc x27, 0x9a1, x16	// Clear all CSR bits
	csrrw x27, 0x9a1, x25	// Restore CSR

// Testing CSR 0x9a2
	csrr x26, 0x9a2	// Read CSR
	li x6, -1
	csrrw x2, 0x9a2, x6	// Write all 1s to CSR
	csrrw x2, 0x9a2, x0	// Write all 0s to CSR
	csrrs x2, 0x9a2, x6	// Set all CSR bits
	csrrc x2, 0x9a2, x6	// Clear all CSR bits
	csrrw x2, 0x9a2, x26	// Restore CSR

// Testing CSR 0x9a3
	csrr x3, 0x9a3	// Read CSR
	li x7, -1
	csrrw x18, 0x9a3, x7	// Write all 1s to CSR
	csrrw x18, 0x9a3, x0	// Write all 0s to CSR
	csrrs x18, 0x9a3, x7	// Set all CSR bits
	csrrc x18, 0x9a3, x7	// Clear all CSR bits
	csrrw x18, 0x9a3, x3	// Restore CSR

// Testing CSR 0x9a4
	csrr x5, 0x9a4	// Read CSR
	li x18, -1
	csrrw x9, 0x9a4, x18	// Write all 1s to CSR
	csrrw x9, 0x9a4, x0	// Write all 0s to CSR
	csrrs x9, 0x9a4, x18	// Set all CSR bits
	csrrc x9, 0x9a4, x18	// Clear all CSR bits
	csrrw x9, 0x9a4, x5	// Restore CSR

// Testing CSR 0x9a5
	csrr x19, 0x9a5	// Read CSR
	li x15, -1
	csrrw x8, 0x9a5, x15	// Write all 1s to CSR
	csrrw x8, 0x9a5, x0	// Write all 0s to CSR
	csrrs x8, 0x9a5, x15	// Set all CSR bits
	csrrc x8, 0x9a5, x15	// Clear all CSR bits
	csrrw x8, 0x9a5, x19	// Restore CSR

// Testing CSR 0x9a6
	csrr x6, 0x9a6	// Read CSR
	li x13, -1
	csrrw x16, 0x9a6, x13	// Write all 1s to CSR
	csrrw x16, 0x9a6, x0	// Write all 0s to CSR
	csrrs x16, 0x9a6, x13	// Set all CSR bits
	csrrc x16, 0x9a6, x13	// Clear all CSR bits
	csrrw x16, 0x9a6, x6	// Restore CSR

// Testing CSR 0x9a7
	csrr x4, 0x9a7	// Read CSR
	li x9, -1
	csrrw x27, 0x9a7, x9	// Write all 1s to CSR
	csrrw x27, 0x9a7, x0	// Write all 0s to CSR
	csrrs x27, 0x9a7, x9	// Set all CSR bits
	csrrc x27, 0x9a7, x9	// Clear all CSR bits
	csrrw x27, 0x9a7, x4	// Restore CSR

// Testing CSR 0x9a8
	csrr x9, 0x9a8	// Read CSR
	li x28, -1
	csrrw x24, 0x9a8, x28	// Write all 1s to CSR
	csrrw x24, 0x9a8, x0	// Write all 0s to CSR
	csrrs x24, 0x9a8, x28	// Set all CSR bits
	csrrc x24, 0x9a8, x28	// Clear all CSR bits
	csrrw x24, 0x9a8, x9	// Restore CSR

// Testing CSR 0x9a9
	csrr x21, 0x9a9	// Read CSR
	li x14, -1
	csrrw x31, 0x9a9, x14	// Write all 1s to CSR
	csrrw x31, 0x9a9, x0	// Write all 0s to CSR
	csrrs x31, 0x9a9, x14	// Set all CSR bits
	csrrc x31, 0x9a9, x14	// Clear all CSR bits
	csrrw x31, 0x9a9, x21	// Restore CSR

// Testing CSR 0x9aa
	csrr x3, 0x9aa	// Read CSR
	li x21, -1
	csrrw x30, 0x9aa, x21	// Write all 1s to CSR
	csrrw x30, 0x9aa, x0	// Write all 0s to CSR
	csrrs x30, 0x9aa, x21	// Set all CSR bits
	csrrc x30, 0x9aa, x21	// Clear all CSR bits
	csrrw x30, 0x9aa, x3	// Restore CSR

// Testing CSR 0x9ab
	csrr x18, 0x9ab	// Read CSR
	li x26, -1
	csrrw x17, 0x9ab, x26	// Write all 1s to CSR
	csrrw x17, 0x9ab, x0	// Write all 0s to CSR
	csrrs x17, 0x9ab, x26	// Set all CSR bits
	csrrc x17, 0x9ab, x26	// Clear all CSR bits
	csrrw x17, 0x9ab, x18	// Restore CSR

// Testing CSR 0x9ac
	csrr x29, 0x9ac	// Read CSR
	li x13, -1
	csrrw x12, 0x9ac, x13	// Write all 1s to CSR
	csrrw x12, 0x9ac, x0	// Write all 0s to CSR
	csrrs x12, 0x9ac, x13	// Set all CSR bits
	csrrc x12, 0x9ac, x13	// Clear all CSR bits
	csrrw x12, 0x9ac, x29	// Restore CSR

// Testing CSR 0x9ad
	csrr x20, 0x9ad	// Read CSR
	li x4, -1
	csrrw x5, 0x9ad, x4	// Write all 1s to CSR
	csrrw x5, 0x9ad, x0	// Write all 0s to CSR
	csrrs x5, 0x9ad, x4	// Set all CSR bits
	csrrc x5, 0x9ad, x4	// Clear all CSR bits
	csrrw x5, 0x9ad, x20	// Restore CSR

// Testing CSR 0x9ae
	csrr x30, 0x9ae	// Read CSR
	li x21, -1
	csrrw x10, 0x9ae, x21	// Write all 1s to CSR
	csrrw x10, 0x9ae, x0	// Write all 0s to CSR
	csrrs x10, 0x9ae, x21	// Set all CSR bits
	csrrc x10, 0x9ae, x21	// Clear all CSR bits
	csrrw x10, 0x9ae, x30	// Restore CSR

// Testing CSR 0x9af
	csrr x26, 0x9af	// Read CSR
	li x8, -1
	csrrw x15, 0x9af, x8	// Write all 1s to CSR
	csrrw x15, 0x9af, x0	// Write all 0s to CSR
	csrrs x15, 0x9af, x8	// Set all CSR bits
	csrrc x15, 0x9af, x8	// Clear all CSR bits
	csrrw x15, 0x9af, x26	// Restore CSR

// Testing CSR 0x9b0
	csrr x29, 0x9b0	// Read CSR
	li x26, -1
	csrrw x19, 0x9b0, x26	// Write all 1s to CSR
	csrrw x19, 0x9b0, x0	// Write all 0s to CSR
	csrrs x19, 0x9b0, x26	// Set all CSR bits
	csrrc x19, 0x9b0, x26	// Clear all CSR bits
	csrrw x19, 0x9b0, x29	// Restore CSR

// Testing CSR 0x9b1
	csrr x22, 0x9b1	// Read CSR
	li x7, -1
	csrrw x16, 0x9b1, x7	// Write all 1s to CSR
	csrrw x16, 0x9b1, x0	// Write all 0s to CSR
	csrrs x16, 0x9b1, x7	// Set all CSR bits
	csrrc x16, 0x9b1, x7	// Clear all CSR bits
	csrrw x16, 0x9b1, x22	// Restore CSR

// Testing CSR 0x9b2
	csrr x7, 0x9b2	// Read CSR
	li x20, -1
	csrrw x9, 0x9b2, x20	// Write all 1s to CSR
	csrrw x9, 0x9b2, x0	// Write all 0s to CSR
	csrrs x9, 0x9b2, x20	// Set all CSR bits
	csrrc x9, 0x9b2, x20	// Clear all CSR bits
	csrrw x9, 0x9b2, x7	// Restore CSR

// Testing CSR 0x9b3
	csrr x14, 0x9b3	// Read CSR
	li x9, -1
	csrrw x18, 0x9b3, x9	// Write all 1s to CSR
	csrrw x18, 0x9b3, x0	// Write all 0s to CSR
	csrrs x18, 0x9b3, x9	// Set all CSR bits
	csrrc x18, 0x9b3, x9	// Clear all CSR bits
	csrrw x18, 0x9b3, x14	// Restore CSR

// Testing CSR 0x9b4
	csrr x18, 0x9b4	// Read CSR
	li x25, -1
	csrrw x8, 0x9b4, x25	// Write all 1s to CSR
	csrrw x8, 0x9b4, x0	// Write all 0s to CSR
	csrrs x8, 0x9b4, x25	// Set all CSR bits
	csrrc x8, 0x9b4, x25	// Clear all CSR bits
	csrrw x8, 0x9b4, x18	// Restore CSR

// Testing CSR 0x9b5
	csrr x9, 0x9b5	// Read CSR
	li x19, -1
	csrrw x16, 0x9b5, x19	// Write all 1s to CSR
	csrrw x16, 0x9b5, x0	// Write all 0s to CSR
	csrrs x16, 0x9b5, x19	// Set all CSR bits
	csrrc x16, 0x9b5, x19	// Clear all CSR bits
	csrrw x16, 0x9b5, x9	// Restore CSR

// Testing CSR 0x9b6
	csrr x20, 0x9b6	// Read CSR
	li x5, -1
	csrrw x26, 0x9b6, x5	// Write all 1s to CSR
	csrrw x26, 0x9b6, x0	// Write all 0s to CSR
	csrrs x26, 0x9b6, x5	// Set all CSR bits
	csrrc x26, 0x9b6, x5	// Clear all CSR bits
	csrrw x26, 0x9b6, x20	// Restore CSR

// Testing CSR 0x9b7
	csrr x22, 0x9b7	// Read CSR
	li x25, -1
	csrrw x16, 0x9b7, x25	// Write all 1s to CSR
	csrrw x16, 0x9b7, x0	// Write all 0s to CSR
	csrrs x16, 0x9b7, x25	// Set all CSR bits
	csrrc x16, 0x9b7, x25	// Clear all CSR bits
	csrrw x16, 0x9b7, x22	// Restore CSR

// Testing CSR 0x9b8
	csrr x8, 0x9b8	// Read CSR
	li x1, -1
	csrrw x21, 0x9b8, x1	// Write all 1s to CSR
	csrrw x21, 0x9b8, x0	// Write all 0s to CSR
	csrrs x21, 0x9b8, x1	// Set all CSR bits
	csrrc x21, 0x9b8, x1	// Clear all CSR bits
	csrrw x21, 0x9b8, x8	// Restore CSR

// Testing CSR 0x9b9
	csrr x11, 0x9b9	// Read CSR
	li x3, -1
	csrrw x21, 0x9b9, x3	// Write all 1s to CSR
	csrrw x21, 0x9b9, x0	// Write all 0s to CSR
	csrrs x21, 0x9b9, x3	// Set all CSR bits
	csrrc x21, 0x9b9, x3	// Clear all CSR bits
	csrrw x21, 0x9b9, x11	// Restore CSR

// Testing CSR 0x9ba
	csrr x31, 0x9ba	// Read CSR
	li x16, -1
	csrrw x30, 0x9ba, x16	// Write all 1s to CSR
	csrrw x30, 0x9ba, x0	// Write all 0s to CSR
	csrrs x30, 0x9ba, x16	// Set all CSR bits
	csrrc x30, 0x9ba, x16	// Clear all CSR bits
	csrrw x30, 0x9ba, x31	// Restore CSR

// Testing CSR 0x9bb
	csrr x13, 0x9bb	// Read CSR
	li x6, -1
	csrrw x15, 0x9bb, x6	// Write all 1s to CSR
	csrrw x15, 0x9bb, x0	// Write all 0s to CSR
	csrrs x15, 0x9bb, x6	// Set all CSR bits
	csrrc x15, 0x9bb, x6	// Clear all CSR bits
	csrrw x15, 0x9bb, x13	// Restore CSR

// Testing CSR 0x9bc
	csrr x2, 0x9bc	// Read CSR
	li x23, -1
	csrrw x15, 0x9bc, x23	// Write all 1s to CSR
	csrrw x15, 0x9bc, x0	// Write all 0s to CSR
	csrrs x15, 0x9bc, x23	// Set all CSR bits
	csrrc x15, 0x9bc, x23	// Clear all CSR bits
	csrrw x15, 0x9bc, x2	// Restore CSR

// Testing CSR 0x9bd
	csrr x8, 0x9bd	// Read CSR
	li x20, -1
	csrrw x28, 0x9bd, x20	// Write all 1s to CSR
	csrrw x28, 0x9bd, x0	// Write all 0s to CSR
	csrrs x28, 0x9bd, x20	// Set all CSR bits
	csrrc x28, 0x9bd, x20	// Clear all CSR bits
	csrrw x28, 0x9bd, x8	// Restore CSR

// Testing CSR 0x9be
	csrr x18, 0x9be	// Read CSR
	li x27, -1
	csrrw x23, 0x9be, x27	// Write all 1s to CSR
	csrrw x23, 0x9be, x0	// Write all 0s to CSR
	csrrs x23, 0x9be, x27	// Set all CSR bits
	csrrc x23, 0x9be, x27	// Clear all CSR bits
	csrrw x23, 0x9be, x18	// Restore CSR

// Testing CSR 0x9bf
	csrr x29, 0x9bf	// Read CSR
	li x21, -1
	csrrw x25, 0x9bf, x21	// Write all 1s to CSR
	csrrw x25, 0x9bf, x0	// Write all 0s to CSR
	csrrs x25, 0x9bf, x21	// Set all CSR bits
	csrrc x25, 0x9bf, x21	// Clear all CSR bits
	csrrw x25, 0x9bf, x29	// Restore CSR

// Testing CSR 0xa00
	csrr x8, 0xa00	// Read CSR
	li x23, -1
	csrrw x13, 0xa00, x23	// Write all 1s to CSR
	csrrw x13, 0xa00, x0	// Write all 0s to CSR
	csrrs x13, 0xa00, x23	// Set all CSR bits
	csrrc x13, 0xa00, x23	// Clear all CSR bits
	csrrw x13, 0xa00, x8	// Restore CSR

// Testing CSR 0xa01
	csrr x1, 0xa01	// Read CSR
	li x28, -1
	csrrw x21, 0xa01, x28	// Write all 1s to CSR
	csrrw x21, 0xa01, x0	// Write all 0s to CSR
	csrrs x21, 0xa01, x28	// Set all CSR bits
	csrrc x21, 0xa01, x28	// Clear all CSR bits
	csrrw x21, 0xa01, x1	// Restore CSR

// Testing CSR 0xa02
	csrr x8, 0xa02	// Read CSR
	li x16, -1
	csrrw x30, 0xa02, x16	// Write all 1s to CSR
	csrrw x30, 0xa02, x0	// Write all 0s to CSR
	csrrs x30, 0xa02, x16	// Set all CSR bits
	csrrc x30, 0xa02, x16	// Clear all CSR bits
	csrrw x30, 0xa02, x8	// Restore CSR

// Testing CSR 0xa03
	csrr x27, 0xa03	// Read CSR
	li x26, -1
	csrrw x7, 0xa03, x26	// Write all 1s to CSR
	csrrw x7, 0xa03, x0	// Write all 0s to CSR
	csrrs x7, 0xa03, x26	// Set all CSR bits
	csrrc x7, 0xa03, x26	// Clear all CSR bits
	csrrw x7, 0xa03, x27	// Restore CSR

// Testing CSR 0xa04
	csrr x17, 0xa04	// Read CSR
	li x25, -1
	csrrw x18, 0xa04, x25	// Write all 1s to CSR
	csrrw x18, 0xa04, x0	// Write all 0s to CSR
	csrrs x18, 0xa04, x25	// Set all CSR bits
	csrrc x18, 0xa04, x25	// Clear all CSR bits
	csrrw x18, 0xa04, x17	// Restore CSR

// Testing CSR 0xa05
	csrr x23, 0xa05	// Read CSR
	li x17, -1
	csrrw x13, 0xa05, x17	// Write all 1s to CSR
	csrrw x13, 0xa05, x0	// Write all 0s to CSR
	csrrs x13, 0xa05, x17	// Set all CSR bits
	csrrc x13, 0xa05, x17	// Clear all CSR bits
	csrrw x13, 0xa05, x23	// Restore CSR

// Testing CSR 0xa06
	csrr x21, 0xa06	// Read CSR
	li x24, -1
	csrrw x27, 0xa06, x24	// Write all 1s to CSR
	csrrw x27, 0xa06, x0	// Write all 0s to CSR
	csrrs x27, 0xa06, x24	// Set all CSR bits
	csrrc x27, 0xa06, x24	// Clear all CSR bits
	csrrw x27, 0xa06, x21	// Restore CSR

// Testing CSR 0xa07
	csrr x12, 0xa07	// Read CSR
	li x17, -1
	csrrw x16, 0xa07, x17	// Write all 1s to CSR
	csrrw x16, 0xa07, x0	// Write all 0s to CSR
	csrrs x16, 0xa07, x17	// Set all CSR bits
	csrrc x16, 0xa07, x17	// Clear all CSR bits
	csrrw x16, 0xa07, x12	// Restore CSR

// Testing CSR 0xa08
	csrr x29, 0xa08	// Read CSR
	li x27, -1
	csrrw x3, 0xa08, x27	// Write all 1s to CSR
	csrrw x3, 0xa08, x0	// Write all 0s to CSR
	csrrs x3, 0xa08, x27	// Set all CSR bits
	csrrc x3, 0xa08, x27	// Clear all CSR bits
	csrrw x3, 0xa08, x29	// Restore CSR

// Testing CSR 0xa09
	csrr x2, 0xa09	// Read CSR
	li x26, -1
	csrrw x16, 0xa09, x26	// Write all 1s to CSR
	csrrw x16, 0xa09, x0	// Write all 0s to CSR
	csrrs x16, 0xa09, x26	// Set all CSR bits
	csrrc x16, 0xa09, x26	// Clear all CSR bits
	csrrw x16, 0xa09, x2	// Restore CSR

// Testing CSR 0xa0a
	csrr x29, 0xa0a	// Read CSR
	li x8, -1
	csrrw x26, 0xa0a, x8	// Write all 1s to CSR
	csrrw x26, 0xa0a, x0	// Write all 0s to CSR
	csrrs x26, 0xa0a, x8	// Set all CSR bits
	csrrc x26, 0xa0a, x8	// Clear all CSR bits
	csrrw x26, 0xa0a, x29	// Restore CSR

// Testing CSR 0xa0b
	csrr x30, 0xa0b	// Read CSR
	li x4, -1
	csrrw x7, 0xa0b, x4	// Write all 1s to CSR
	csrrw x7, 0xa0b, x0	// Write all 0s to CSR
	csrrs x7, 0xa0b, x4	// Set all CSR bits
	csrrc x7, 0xa0b, x4	// Clear all CSR bits
	csrrw x7, 0xa0b, x30	// Restore CSR

// Testing CSR 0xa0c
	csrr x17, 0xa0c	// Read CSR
	li x15, -1
	csrrw x5, 0xa0c, x15	// Write all 1s to CSR
	csrrw x5, 0xa0c, x0	// Write all 0s to CSR
	csrrs x5, 0xa0c, x15	// Set all CSR bits
	csrrc x5, 0xa0c, x15	// Clear all CSR bits
	csrrw x5, 0xa0c, x17	// Restore CSR

// Testing CSR 0xa0d
	csrr x10, 0xa0d	// Read CSR
	li x22, -1
	csrrw x4, 0xa0d, x22	// Write all 1s to CSR
	csrrw x4, 0xa0d, x0	// Write all 0s to CSR
	csrrs x4, 0xa0d, x22	// Set all CSR bits
	csrrc x4, 0xa0d, x22	// Clear all CSR bits
	csrrw x4, 0xa0d, x10	// Restore CSR

// Testing CSR 0xa0e
	csrr x19, 0xa0e	// Read CSR
	li x24, -1
	csrrw x23, 0xa0e, x24	// Write all 1s to CSR
	csrrw x23, 0xa0e, x0	// Write all 0s to CSR
	csrrs x23, 0xa0e, x24	// Set all CSR bits
	csrrc x23, 0xa0e, x24	// Clear all CSR bits
	csrrw x23, 0xa0e, x19	// Restore CSR

// Testing CSR 0xa0f
	csrr x22, 0xa0f	// Read CSR
	li x18, -1
	csrrw x24, 0xa0f, x18	// Write all 1s to CSR
	csrrw x24, 0xa0f, x0	// Write all 0s to CSR
	csrrs x24, 0xa0f, x18	// Set all CSR bits
	csrrc x24, 0xa0f, x18	// Clear all CSR bits
	csrrw x24, 0xa0f, x22	// Restore CSR

// Testing CSR 0xa10
	csrr x2, 0xa10	// Read CSR
	li x31, -1
	csrrw x22, 0xa10, x31	// Write all 1s to CSR
	csrrw x22, 0xa10, x0	// Write all 0s to CSR
	csrrs x22, 0xa10, x31	// Set all CSR bits
	csrrc x22, 0xa10, x31	// Clear all CSR bits
	csrrw x22, 0xa10, x2	// Restore CSR

// Testing CSR 0xa11
	csrr x11, 0xa11	// Read CSR
	li x2, -1
	csrrw x9, 0xa11, x2	// Write all 1s to CSR
	csrrw x9, 0xa11, x0	// Write all 0s to CSR
	csrrs x9, 0xa11, x2	// Set all CSR bits
	csrrc x9, 0xa11, x2	// Clear all CSR bits
	csrrw x9, 0xa11, x11	// Restore CSR

// Testing CSR 0xa12
	csrr x5, 0xa12	// Read CSR
	li x30, -1
	csrrw x21, 0xa12, x30	// Write all 1s to CSR
	csrrw x21, 0xa12, x0	// Write all 0s to CSR
	csrrs x21, 0xa12, x30	// Set all CSR bits
	csrrc x21, 0xa12, x30	// Clear all CSR bits
	csrrw x21, 0xa12, x5	// Restore CSR

// Testing CSR 0xa13
	csrr x19, 0xa13	// Read CSR
	li x28, -1
	csrrw x3, 0xa13, x28	// Write all 1s to CSR
	csrrw x3, 0xa13, x0	// Write all 0s to CSR
	csrrs x3, 0xa13, x28	// Set all CSR bits
	csrrc x3, 0xa13, x28	// Clear all CSR bits
	csrrw x3, 0xa13, x19	// Restore CSR

// Testing CSR 0xa14
	csrr x17, 0xa14	// Read CSR
	li x11, -1
	csrrw x25, 0xa14, x11	// Write all 1s to CSR
	csrrw x25, 0xa14, x0	// Write all 0s to CSR
	csrrs x25, 0xa14, x11	// Set all CSR bits
	csrrc x25, 0xa14, x11	// Clear all CSR bits
	csrrw x25, 0xa14, x17	// Restore CSR

// Testing CSR 0xa15
	csrr x13, 0xa15	// Read CSR
	li x17, -1
	csrrw x15, 0xa15, x17	// Write all 1s to CSR
	csrrw x15, 0xa15, x0	// Write all 0s to CSR
	csrrs x15, 0xa15, x17	// Set all CSR bits
	csrrc x15, 0xa15, x17	// Clear all CSR bits
	csrrw x15, 0xa15, x13	// Restore CSR

// Testing CSR 0xa16
	csrr x19, 0xa16	// Read CSR
	li x20, -1
	csrrw x10, 0xa16, x20	// Write all 1s to CSR
	csrrw x10, 0xa16, x0	// Write all 0s to CSR
	csrrs x10, 0xa16, x20	// Set all CSR bits
	csrrc x10, 0xa16, x20	// Clear all CSR bits
	csrrw x10, 0xa16, x19	// Restore CSR

// Testing CSR 0xa17
	csrr x3, 0xa17	// Read CSR
	li x4, -1
	csrrw x31, 0xa17, x4	// Write all 1s to CSR
	csrrw x31, 0xa17, x0	// Write all 0s to CSR
	csrrs x31, 0xa17, x4	// Set all CSR bits
	csrrc x31, 0xa17, x4	// Clear all CSR bits
	csrrw x31, 0xa17, x3	// Restore CSR

// Testing CSR 0xa18
	csrr x16, 0xa18	// Read CSR
	li x12, -1
	csrrw x31, 0xa18, x12	// Write all 1s to CSR
	csrrw x31, 0xa18, x0	// Write all 0s to CSR
	csrrs x31, 0xa18, x12	// Set all CSR bits
	csrrc x31, 0xa18, x12	// Clear all CSR bits
	csrrw x31, 0xa18, x16	// Restore CSR

// Testing CSR 0xa19
	csrr x24, 0xa19	// Read CSR
	li x7, -1
	csrrw x26, 0xa19, x7	// Write all 1s to CSR
	csrrw x26, 0xa19, x0	// Write all 0s to CSR
	csrrs x26, 0xa19, x7	// Set all CSR bits
	csrrc x26, 0xa19, x7	// Clear all CSR bits
	csrrw x26, 0xa19, x24	// Restore CSR

// Testing CSR 0xa1a
	csrr x25, 0xa1a	// Read CSR
	li x1, -1
	csrrw x4, 0xa1a, x1	// Write all 1s to CSR
	csrrw x4, 0xa1a, x0	// Write all 0s to CSR
	csrrs x4, 0xa1a, x1	// Set all CSR bits
	csrrc x4, 0xa1a, x1	// Clear all CSR bits
	csrrw x4, 0xa1a, x25	// Restore CSR

// Testing CSR 0xa1b
	csrr x27, 0xa1b	// Read CSR
	li x17, -1
	csrrw x13, 0xa1b, x17	// Write all 1s to CSR
	csrrw x13, 0xa1b, x0	// Write all 0s to CSR
	csrrs x13, 0xa1b, x17	// Set all CSR bits
	csrrc x13, 0xa1b, x17	// Clear all CSR bits
	csrrw x13, 0xa1b, x27	// Restore CSR

// Testing CSR 0xa1c
	csrr x17, 0xa1c	// Read CSR
	li x19, -1
	csrrw x7, 0xa1c, x19	// Write all 1s to CSR
	csrrw x7, 0xa1c, x0	// Write all 0s to CSR
	csrrs x7, 0xa1c, x19	// Set all CSR bits
	csrrc x7, 0xa1c, x19	// Clear all CSR bits
	csrrw x7, 0xa1c, x17	// Restore CSR

// Testing CSR 0xa1d
	csrr x27, 0xa1d	// Read CSR
	li x19, -1
	csrrw x11, 0xa1d, x19	// Write all 1s to CSR
	csrrw x11, 0xa1d, x0	// Write all 0s to CSR
	csrrs x11, 0xa1d, x19	// Set all CSR bits
	csrrc x11, 0xa1d, x19	// Clear all CSR bits
	csrrw x11, 0xa1d, x27	// Restore CSR

// Testing CSR 0xa1e
	csrr x29, 0xa1e	// Read CSR
	li x14, -1
	csrrw x27, 0xa1e, x14	// Write all 1s to CSR
	csrrw x27, 0xa1e, x0	// Write all 0s to CSR
	csrrs x27, 0xa1e, x14	// Set all CSR bits
	csrrc x27, 0xa1e, x14	// Clear all CSR bits
	csrrw x27, 0xa1e, x29	// Restore CSR

// Testing CSR 0xa1f
	csrr x15, 0xa1f	// Read CSR
	li x30, -1
	csrrw x11, 0xa1f, x30	// Write all 1s to CSR
	csrrw x11, 0xa1f, x0	// Write all 0s to CSR
	csrrs x11, 0xa1f, x30	// Set all CSR bits
	csrrc x11, 0xa1f, x30	// Clear all CSR bits
	csrrw x11, 0xa1f, x15	// Restore CSR

// Testing CSR 0xa20
	csrr x9, 0xa20	// Read CSR
	li x13, -1
	csrrw x24, 0xa20, x13	// Write all 1s to CSR
	csrrw x24, 0xa20, x0	// Write all 0s to CSR
	csrrs x24, 0xa20, x13	// Set all CSR bits
	csrrc x24, 0xa20, x13	// Clear all CSR bits
	csrrw x24, 0xa20, x9	// Restore CSR

// Testing CSR 0xa21
	csrr x16, 0xa21	// Read CSR
	li x25, -1
	csrrw x24, 0xa21, x25	// Write all 1s to CSR
	csrrw x24, 0xa21, x0	// Write all 0s to CSR
	csrrs x24, 0xa21, x25	// Set all CSR bits
	csrrc x24, 0xa21, x25	// Clear all CSR bits
	csrrw x24, 0xa21, x16	// Restore CSR

// Testing CSR 0xa22
	csrr x3, 0xa22	// Read CSR
	li x14, -1
	csrrw x29, 0xa22, x14	// Write all 1s to CSR
	csrrw x29, 0xa22, x0	// Write all 0s to CSR
	csrrs x29, 0xa22, x14	// Set all CSR bits
	csrrc x29, 0xa22, x14	// Clear all CSR bits
	csrrw x29, 0xa22, x3	// Restore CSR

// Testing CSR 0xa23
	csrr x18, 0xa23	// Read CSR
	li x24, -1
	csrrw x9, 0xa23, x24	// Write all 1s to CSR
	csrrw x9, 0xa23, x0	// Write all 0s to CSR
	csrrs x9, 0xa23, x24	// Set all CSR bits
	csrrc x9, 0xa23, x24	// Clear all CSR bits
	csrrw x9, 0xa23, x18	// Restore CSR

// Testing CSR 0xa24
	csrr x24, 0xa24	// Read CSR
	li x7, -1
	csrrw x5, 0xa24, x7	// Write all 1s to CSR
	csrrw x5, 0xa24, x0	// Write all 0s to CSR
	csrrs x5, 0xa24, x7	// Set all CSR bits
	csrrc x5, 0xa24, x7	// Clear all CSR bits
	csrrw x5, 0xa24, x24	// Restore CSR

// Testing CSR 0xa25
	csrr x5, 0xa25	// Read CSR
	li x21, -1
	csrrw x12, 0xa25, x21	// Write all 1s to CSR
	csrrw x12, 0xa25, x0	// Write all 0s to CSR
	csrrs x12, 0xa25, x21	// Set all CSR bits
	csrrc x12, 0xa25, x21	// Clear all CSR bits
	csrrw x12, 0xa25, x5	// Restore CSR

// Testing CSR 0xa26
	csrr x21, 0xa26	// Read CSR
	li x16, -1
	csrrw x30, 0xa26, x16	// Write all 1s to CSR
	csrrw x30, 0xa26, x0	// Write all 0s to CSR
	csrrs x30, 0xa26, x16	// Set all CSR bits
	csrrc x30, 0xa26, x16	// Clear all CSR bits
	csrrw x30, 0xa26, x21	// Restore CSR

// Testing CSR 0xa27
	csrr x31, 0xa27	// Read CSR
	li x22, -1
	csrrw x12, 0xa27, x22	// Write all 1s to CSR
	csrrw x12, 0xa27, x0	// Write all 0s to CSR
	csrrs x12, 0xa27, x22	// Set all CSR bits
	csrrc x12, 0xa27, x22	// Clear all CSR bits
	csrrw x12, 0xa27, x31	// Restore CSR

// Testing CSR 0xa28
	csrr x25, 0xa28	// Read CSR
	li x15, -1
	csrrw x30, 0xa28, x15	// Write all 1s to CSR
	csrrw x30, 0xa28, x0	// Write all 0s to CSR
	csrrs x30, 0xa28, x15	// Set all CSR bits
	csrrc x30, 0xa28, x15	// Clear all CSR bits
	csrrw x30, 0xa28, x25	// Restore CSR

// Testing CSR 0xa29
	csrr x9, 0xa29	// Read CSR
	li x10, -1
	csrrw x25, 0xa29, x10	// Write all 1s to CSR
	csrrw x25, 0xa29, x0	// Write all 0s to CSR
	csrrs x25, 0xa29, x10	// Set all CSR bits
	csrrc x25, 0xa29, x10	// Clear all CSR bits
	csrrw x25, 0xa29, x9	// Restore CSR

// Testing CSR 0xa2a
	csrr x2, 0xa2a	// Read CSR
	li x15, -1
	csrrw x11, 0xa2a, x15	// Write all 1s to CSR
	csrrw x11, 0xa2a, x0	// Write all 0s to CSR
	csrrs x11, 0xa2a, x15	// Set all CSR bits
	csrrc x11, 0xa2a, x15	// Clear all CSR bits
	csrrw x11, 0xa2a, x2	// Restore CSR

// Testing CSR 0xa2b
	csrr x12, 0xa2b	// Read CSR
	li x29, -1
	csrrw x20, 0xa2b, x29	// Write all 1s to CSR
	csrrw x20, 0xa2b, x0	// Write all 0s to CSR
	csrrs x20, 0xa2b, x29	// Set all CSR bits
	csrrc x20, 0xa2b, x29	// Clear all CSR bits
	csrrw x20, 0xa2b, x12	// Restore CSR

// Testing CSR 0xa2c
	csrr x8, 0xa2c	// Read CSR
	li x12, -1
	csrrw x1, 0xa2c, x12	// Write all 1s to CSR
	csrrw x1, 0xa2c, x0	// Write all 0s to CSR
	csrrs x1, 0xa2c, x12	// Set all CSR bits
	csrrc x1, 0xa2c, x12	// Clear all CSR bits
	csrrw x1, 0xa2c, x8	// Restore CSR

// Testing CSR 0xa2d
	csrr x21, 0xa2d	// Read CSR
	li x5, -1
	csrrw x7, 0xa2d, x5	// Write all 1s to CSR
	csrrw x7, 0xa2d, x0	// Write all 0s to CSR
	csrrs x7, 0xa2d, x5	// Set all CSR bits
	csrrc x7, 0xa2d, x5	// Clear all CSR bits
	csrrw x7, 0xa2d, x21	// Restore CSR

// Testing CSR 0xa2e
	csrr x3, 0xa2e	// Read CSR
	li x12, -1
	csrrw x14, 0xa2e, x12	// Write all 1s to CSR
	csrrw x14, 0xa2e, x0	// Write all 0s to CSR
	csrrs x14, 0xa2e, x12	// Set all CSR bits
	csrrc x14, 0xa2e, x12	// Clear all CSR bits
	csrrw x14, 0xa2e, x3	// Restore CSR

// Testing CSR 0xa2f
	csrr x6, 0xa2f	// Read CSR
	li x24, -1
	csrrw x7, 0xa2f, x24	// Write all 1s to CSR
	csrrw x7, 0xa2f, x0	// Write all 0s to CSR
	csrrs x7, 0xa2f, x24	// Set all CSR bits
	csrrc x7, 0xa2f, x24	// Clear all CSR bits
	csrrw x7, 0xa2f, x6	// Restore CSR

// Testing CSR 0xa30
	csrr x3, 0xa30	// Read CSR
	li x13, -1
	csrrw x19, 0xa30, x13	// Write all 1s to CSR
	csrrw x19, 0xa30, x0	// Write all 0s to CSR
	csrrs x19, 0xa30, x13	// Set all CSR bits
	csrrc x19, 0xa30, x13	// Clear all CSR bits
	csrrw x19, 0xa30, x3	// Restore CSR

// Testing CSR 0xa31
	csrr x11, 0xa31	// Read CSR
	li x9, -1
	csrrw x19, 0xa31, x9	// Write all 1s to CSR
	csrrw x19, 0xa31, x0	// Write all 0s to CSR
	csrrs x19, 0xa31, x9	// Set all CSR bits
	csrrc x19, 0xa31, x9	// Clear all CSR bits
	csrrw x19, 0xa31, x11	// Restore CSR

// Testing CSR 0xa32
	csrr x12, 0xa32	// Read CSR
	li x28, -1
	csrrw x26, 0xa32, x28	// Write all 1s to CSR
	csrrw x26, 0xa32, x0	// Write all 0s to CSR
	csrrs x26, 0xa32, x28	// Set all CSR bits
	csrrc x26, 0xa32, x28	// Clear all CSR bits
	csrrw x26, 0xa32, x12	// Restore CSR

// Testing CSR 0xa33
	csrr x6, 0xa33	// Read CSR
	li x28, -1
	csrrw x13, 0xa33, x28	// Write all 1s to CSR
	csrrw x13, 0xa33, x0	// Write all 0s to CSR
	csrrs x13, 0xa33, x28	// Set all CSR bits
	csrrc x13, 0xa33, x28	// Clear all CSR bits
	csrrw x13, 0xa33, x6	// Restore CSR

// Testing CSR 0xa34
	csrr x22, 0xa34	// Read CSR
	li x29, -1
	csrrw x24, 0xa34, x29	// Write all 1s to CSR
	csrrw x24, 0xa34, x0	// Write all 0s to CSR
	csrrs x24, 0xa34, x29	// Set all CSR bits
	csrrc x24, 0xa34, x29	// Clear all CSR bits
	csrrw x24, 0xa34, x22	// Restore CSR

// Testing CSR 0xa35
	csrr x27, 0xa35	// Read CSR
	li x31, -1
	csrrw x1, 0xa35, x31	// Write all 1s to CSR
	csrrw x1, 0xa35, x0	// Write all 0s to CSR
	csrrs x1, 0xa35, x31	// Set all CSR bits
	csrrc x1, 0xa35, x31	// Clear all CSR bits
	csrrw x1, 0xa35, x27	// Restore CSR

// Testing CSR 0xa36
	csrr x19, 0xa36	// Read CSR
	li x23, -1
	csrrw x27, 0xa36, x23	// Write all 1s to CSR
	csrrw x27, 0xa36, x0	// Write all 0s to CSR
	csrrs x27, 0xa36, x23	// Set all CSR bits
	csrrc x27, 0xa36, x23	// Clear all CSR bits
	csrrw x27, 0xa36, x19	// Restore CSR

// Testing CSR 0xa37
	csrr x24, 0xa37	// Read CSR
	li x5, -1
	csrrw x26, 0xa37, x5	// Write all 1s to CSR
	csrrw x26, 0xa37, x0	// Write all 0s to CSR
	csrrs x26, 0xa37, x5	// Set all CSR bits
	csrrc x26, 0xa37, x5	// Clear all CSR bits
	csrrw x26, 0xa37, x24	// Restore CSR

// Testing CSR 0xa38
	csrr x28, 0xa38	// Read CSR
	li x4, -1
	csrrw x2, 0xa38, x4	// Write all 1s to CSR
	csrrw x2, 0xa38, x0	// Write all 0s to CSR
	csrrs x2, 0xa38, x4	// Set all CSR bits
	csrrc x2, 0xa38, x4	// Clear all CSR bits
	csrrw x2, 0xa38, x28	// Restore CSR

// Testing CSR 0xa39
	csrr x16, 0xa39	// Read CSR
	li x1, -1
	csrrw x31, 0xa39, x1	// Write all 1s to CSR
	csrrw x31, 0xa39, x0	// Write all 0s to CSR
	csrrs x31, 0xa39, x1	// Set all CSR bits
	csrrc x31, 0xa39, x1	// Clear all CSR bits
	csrrw x31, 0xa39, x16	// Restore CSR

// Testing CSR 0xa3a
	csrr x8, 0xa3a	// Read CSR
	li x17, -1
	csrrw x26, 0xa3a, x17	// Write all 1s to CSR
	csrrw x26, 0xa3a, x0	// Write all 0s to CSR
	csrrs x26, 0xa3a, x17	// Set all CSR bits
	csrrc x26, 0xa3a, x17	// Clear all CSR bits
	csrrw x26, 0xa3a, x8	// Restore CSR

// Testing CSR 0xa3b
	csrr x8, 0xa3b	// Read CSR
	li x23, -1
	csrrw x15, 0xa3b, x23	// Write all 1s to CSR
	csrrw x15, 0xa3b, x0	// Write all 0s to CSR
	csrrs x15, 0xa3b, x23	// Set all CSR bits
	csrrc x15, 0xa3b, x23	// Clear all CSR bits
	csrrw x15, 0xa3b, x8	// Restore CSR

// Testing CSR 0xa3c
	csrr x29, 0xa3c	// Read CSR
	li x24, -1
	csrrw x11, 0xa3c, x24	// Write all 1s to CSR
	csrrw x11, 0xa3c, x0	// Write all 0s to CSR
	csrrs x11, 0xa3c, x24	// Set all CSR bits
	csrrc x11, 0xa3c, x24	// Clear all CSR bits
	csrrw x11, 0xa3c, x29	// Restore CSR

// Testing CSR 0xa3d
	csrr x30, 0xa3d	// Read CSR
	li x29, -1
	csrrw x28, 0xa3d, x29	// Write all 1s to CSR
	csrrw x28, 0xa3d, x0	// Write all 0s to CSR
	csrrs x28, 0xa3d, x29	// Set all CSR bits
	csrrc x28, 0xa3d, x29	// Clear all CSR bits
	csrrw x28, 0xa3d, x30	// Restore CSR

// Testing CSR 0xa3e
	csrr x27, 0xa3e	// Read CSR
	li x12, -1
	csrrw x14, 0xa3e, x12	// Write all 1s to CSR
	csrrw x14, 0xa3e, x0	// Write all 0s to CSR
	csrrs x14, 0xa3e, x12	// Set all CSR bits
	csrrc x14, 0xa3e, x12	// Clear all CSR bits
	csrrw x14, 0xa3e, x27	// Restore CSR

// Testing CSR 0xa3f
	csrr x18, 0xa3f	// Read CSR
	li x28, -1
	csrrw x12, 0xa3f, x28	// Write all 1s to CSR
	csrrw x12, 0xa3f, x0	// Write all 0s to CSR
	csrrs x12, 0xa3f, x28	// Set all CSR bits
	csrrc x12, 0xa3f, x28	// Clear all CSR bits
	csrrw x12, 0xa3f, x18	// Restore CSR

// Testing CSR 0xa40
	csrr x11, 0xa40	// Read CSR
	li x26, -1
	csrrw x19, 0xa40, x26	// Write all 1s to CSR
	csrrw x19, 0xa40, x0	// Write all 0s to CSR
	csrrs x19, 0xa40, x26	// Set all CSR bits
	csrrc x19, 0xa40, x26	// Clear all CSR bits
	csrrw x19, 0xa40, x11	// Restore CSR

// Testing CSR 0xa41
	csrr x25, 0xa41	// Read CSR
	li x8, -1
	csrrw x3, 0xa41, x8	// Write all 1s to CSR
	csrrw x3, 0xa41, x0	// Write all 0s to CSR
	csrrs x3, 0xa41, x8	// Set all CSR bits
	csrrc x3, 0xa41, x8	// Clear all CSR bits
	csrrw x3, 0xa41, x25	// Restore CSR

// Testing CSR 0xa42
	csrr x9, 0xa42	// Read CSR
	li x10, -1
	csrrw x25, 0xa42, x10	// Write all 1s to CSR
	csrrw x25, 0xa42, x0	// Write all 0s to CSR
	csrrs x25, 0xa42, x10	// Set all CSR bits
	csrrc x25, 0xa42, x10	// Clear all CSR bits
	csrrw x25, 0xa42, x9	// Restore CSR

// Testing CSR 0xa43
	csrr x22, 0xa43	// Read CSR
	li x29, -1
	csrrw x5, 0xa43, x29	// Write all 1s to CSR
	csrrw x5, 0xa43, x0	// Write all 0s to CSR
	csrrs x5, 0xa43, x29	// Set all CSR bits
	csrrc x5, 0xa43, x29	// Clear all CSR bits
	csrrw x5, 0xa43, x22	// Restore CSR

// Testing CSR 0xa44
	csrr x1, 0xa44	// Read CSR
	li x7, -1
	csrrw x27, 0xa44, x7	// Write all 1s to CSR
	csrrw x27, 0xa44, x0	// Write all 0s to CSR
	csrrs x27, 0xa44, x7	// Set all CSR bits
	csrrc x27, 0xa44, x7	// Clear all CSR bits
	csrrw x27, 0xa44, x1	// Restore CSR

// Testing CSR 0xa45
	csrr x25, 0xa45	// Read CSR
	li x27, -1
	csrrw x11, 0xa45, x27	// Write all 1s to CSR
	csrrw x11, 0xa45, x0	// Write all 0s to CSR
	csrrs x11, 0xa45, x27	// Set all CSR bits
	csrrc x11, 0xa45, x27	// Clear all CSR bits
	csrrw x11, 0xa45, x25	// Restore CSR

// Testing CSR 0xa46
	csrr x10, 0xa46	// Read CSR
	li x22, -1
	csrrw x15, 0xa46, x22	// Write all 1s to CSR
	csrrw x15, 0xa46, x0	// Write all 0s to CSR
	csrrs x15, 0xa46, x22	// Set all CSR bits
	csrrc x15, 0xa46, x22	// Clear all CSR bits
	csrrw x15, 0xa46, x10	// Restore CSR

// Testing CSR 0xa47
	csrr x5, 0xa47	// Read CSR
	li x31, -1
	csrrw x6, 0xa47, x31	// Write all 1s to CSR
	csrrw x6, 0xa47, x0	// Write all 0s to CSR
	csrrs x6, 0xa47, x31	// Set all CSR bits
	csrrc x6, 0xa47, x31	// Clear all CSR bits
	csrrw x6, 0xa47, x5	// Restore CSR

// Testing CSR 0xa48
	csrr x29, 0xa48	// Read CSR
	li x4, -1
	csrrw x24, 0xa48, x4	// Write all 1s to CSR
	csrrw x24, 0xa48, x0	// Write all 0s to CSR
	csrrs x24, 0xa48, x4	// Set all CSR bits
	csrrc x24, 0xa48, x4	// Clear all CSR bits
	csrrw x24, 0xa48, x29	// Restore CSR

// Testing CSR 0xa49
	csrr x28, 0xa49	// Read CSR
	li x17, -1
	csrrw x23, 0xa49, x17	// Write all 1s to CSR
	csrrw x23, 0xa49, x0	// Write all 0s to CSR
	csrrs x23, 0xa49, x17	// Set all CSR bits
	csrrc x23, 0xa49, x17	// Clear all CSR bits
	csrrw x23, 0xa49, x28	// Restore CSR

// Testing CSR 0xa4a
	csrr x22, 0xa4a	// Read CSR
	li x27, -1
	csrrw x19, 0xa4a, x27	// Write all 1s to CSR
	csrrw x19, 0xa4a, x0	// Write all 0s to CSR
	csrrs x19, 0xa4a, x27	// Set all CSR bits
	csrrc x19, 0xa4a, x27	// Clear all CSR bits
	csrrw x19, 0xa4a, x22	// Restore CSR

// Testing CSR 0xa4b
	csrr x17, 0xa4b	// Read CSR
	li x25, -1
	csrrw x3, 0xa4b, x25	// Write all 1s to CSR
	csrrw x3, 0xa4b, x0	// Write all 0s to CSR
	csrrs x3, 0xa4b, x25	// Set all CSR bits
	csrrc x3, 0xa4b, x25	// Clear all CSR bits
	csrrw x3, 0xa4b, x17	// Restore CSR

// Testing CSR 0xa4c
	csrr x5, 0xa4c	// Read CSR
	li x13, -1
	csrrw x14, 0xa4c, x13	// Write all 1s to CSR
	csrrw x14, 0xa4c, x0	// Write all 0s to CSR
	csrrs x14, 0xa4c, x13	// Set all CSR bits
	csrrc x14, 0xa4c, x13	// Clear all CSR bits
	csrrw x14, 0xa4c, x5	// Restore CSR

// Testing CSR 0xa4d
	csrr x13, 0xa4d	// Read CSR
	li x2, -1
	csrrw x15, 0xa4d, x2	// Write all 1s to CSR
	csrrw x15, 0xa4d, x0	// Write all 0s to CSR
	csrrs x15, 0xa4d, x2	// Set all CSR bits
	csrrc x15, 0xa4d, x2	// Clear all CSR bits
	csrrw x15, 0xa4d, x13	// Restore CSR

// Testing CSR 0xa4e
	csrr x22, 0xa4e	// Read CSR
	li x27, -1
	csrrw x19, 0xa4e, x27	// Write all 1s to CSR
	csrrw x19, 0xa4e, x0	// Write all 0s to CSR
	csrrs x19, 0xa4e, x27	// Set all CSR bits
	csrrc x19, 0xa4e, x27	// Clear all CSR bits
	csrrw x19, 0xa4e, x22	// Restore CSR

// Testing CSR 0xa4f
	csrr x10, 0xa4f	// Read CSR
	li x13, -1
	csrrw x4, 0xa4f, x13	// Write all 1s to CSR
	csrrw x4, 0xa4f, x0	// Write all 0s to CSR
	csrrs x4, 0xa4f, x13	// Set all CSR bits
	csrrc x4, 0xa4f, x13	// Clear all CSR bits
	csrrw x4, 0xa4f, x10	// Restore CSR

// Testing CSR 0xa50
	csrr x6, 0xa50	// Read CSR
	li x7, -1
	csrrw x28, 0xa50, x7	// Write all 1s to CSR
	csrrw x28, 0xa50, x0	// Write all 0s to CSR
	csrrs x28, 0xa50, x7	// Set all CSR bits
	csrrc x28, 0xa50, x7	// Clear all CSR bits
	csrrw x28, 0xa50, x6	// Restore CSR

// Testing CSR 0xa51
	csrr x18, 0xa51	// Read CSR
	li x12, -1
	csrrw x13, 0xa51, x12	// Write all 1s to CSR
	csrrw x13, 0xa51, x0	// Write all 0s to CSR
	csrrs x13, 0xa51, x12	// Set all CSR bits
	csrrc x13, 0xa51, x12	// Clear all CSR bits
	csrrw x13, 0xa51, x18	// Restore CSR

// Testing CSR 0xa52
	csrr x20, 0xa52	// Read CSR
	li x21, -1
	csrrw x5, 0xa52, x21	// Write all 1s to CSR
	csrrw x5, 0xa52, x0	// Write all 0s to CSR
	csrrs x5, 0xa52, x21	// Set all CSR bits
	csrrc x5, 0xa52, x21	// Clear all CSR bits
	csrrw x5, 0xa52, x20	// Restore CSR

// Testing CSR 0xa53
	csrr x23, 0xa53	// Read CSR
	li x17, -1
	csrrw x29, 0xa53, x17	// Write all 1s to CSR
	csrrw x29, 0xa53, x0	// Write all 0s to CSR
	csrrs x29, 0xa53, x17	// Set all CSR bits
	csrrc x29, 0xa53, x17	// Clear all CSR bits
	csrrw x29, 0xa53, x23	// Restore CSR

// Testing CSR 0xa54
	csrr x26, 0xa54	// Read CSR
	li x25, -1
	csrrw x10, 0xa54, x25	// Write all 1s to CSR
	csrrw x10, 0xa54, x0	// Write all 0s to CSR
	csrrs x10, 0xa54, x25	// Set all CSR bits
	csrrc x10, 0xa54, x25	// Clear all CSR bits
	csrrw x10, 0xa54, x26	// Restore CSR

// Testing CSR 0xa55
	csrr x12, 0xa55	// Read CSR
	li x29, -1
	csrrw x20, 0xa55, x29	// Write all 1s to CSR
	csrrw x20, 0xa55, x0	// Write all 0s to CSR
	csrrs x20, 0xa55, x29	// Set all CSR bits
	csrrc x20, 0xa55, x29	// Clear all CSR bits
	csrrw x20, 0xa55, x12	// Restore CSR

// Testing CSR 0xa56
	csrr x27, 0xa56	// Read CSR
	li x28, -1
	csrrw x14, 0xa56, x28	// Write all 1s to CSR
	csrrw x14, 0xa56, x0	// Write all 0s to CSR
	csrrs x14, 0xa56, x28	// Set all CSR bits
	csrrc x14, 0xa56, x28	// Clear all CSR bits
	csrrw x14, 0xa56, x27	// Restore CSR

// Testing CSR 0xa57
	csrr x17, 0xa57	// Read CSR
	li x25, -1
	csrrw x27, 0xa57, x25	// Write all 1s to CSR
	csrrw x27, 0xa57, x0	// Write all 0s to CSR
	csrrs x27, 0xa57, x25	// Set all CSR bits
	csrrc x27, 0xa57, x25	// Clear all CSR bits
	csrrw x27, 0xa57, x17	// Restore CSR

// Testing CSR 0xa58
	csrr x14, 0xa58	// Read CSR
	li x9, -1
	csrrw x26, 0xa58, x9	// Write all 1s to CSR
	csrrw x26, 0xa58, x0	// Write all 0s to CSR
	csrrs x26, 0xa58, x9	// Set all CSR bits
	csrrc x26, 0xa58, x9	// Clear all CSR bits
	csrrw x26, 0xa58, x14	// Restore CSR

// Testing CSR 0xa59
	csrr x26, 0xa59	// Read CSR
	li x11, -1
	csrrw x21, 0xa59, x11	// Write all 1s to CSR
	csrrw x21, 0xa59, x0	// Write all 0s to CSR
	csrrs x21, 0xa59, x11	// Set all CSR bits
	csrrc x21, 0xa59, x11	// Clear all CSR bits
	csrrw x21, 0xa59, x26	// Restore CSR

// Testing CSR 0xa5a
	csrr x19, 0xa5a	// Read CSR
	li x1, -1
	csrrw x14, 0xa5a, x1	// Write all 1s to CSR
	csrrw x14, 0xa5a, x0	// Write all 0s to CSR
	csrrs x14, 0xa5a, x1	// Set all CSR bits
	csrrc x14, 0xa5a, x1	// Clear all CSR bits
	csrrw x14, 0xa5a, x19	// Restore CSR

// Testing CSR 0xa5b
	csrr x2, 0xa5b	// Read CSR
	li x10, -1
	csrrw x19, 0xa5b, x10	// Write all 1s to CSR
	csrrw x19, 0xa5b, x0	// Write all 0s to CSR
	csrrs x19, 0xa5b, x10	// Set all CSR bits
	csrrc x19, 0xa5b, x10	// Clear all CSR bits
	csrrw x19, 0xa5b, x2	// Restore CSR

// Testing CSR 0xa5c
	csrr x15, 0xa5c	// Read CSR
	li x23, -1
	csrrw x14, 0xa5c, x23	// Write all 1s to CSR
	csrrw x14, 0xa5c, x0	// Write all 0s to CSR
	csrrs x14, 0xa5c, x23	// Set all CSR bits
	csrrc x14, 0xa5c, x23	// Clear all CSR bits
	csrrw x14, 0xa5c, x15	// Restore CSR

// Testing CSR 0xa5d
	csrr x30, 0xa5d	// Read CSR
	li x23, -1
	csrrw x31, 0xa5d, x23	// Write all 1s to CSR
	csrrw x31, 0xa5d, x0	// Write all 0s to CSR
	csrrs x31, 0xa5d, x23	// Set all CSR bits
	csrrc x31, 0xa5d, x23	// Clear all CSR bits
	csrrw x31, 0xa5d, x30	// Restore CSR

// Testing CSR 0xa5e
	csrr x8, 0xa5e	// Read CSR
	li x5, -1
	csrrw x31, 0xa5e, x5	// Write all 1s to CSR
	csrrw x31, 0xa5e, x0	// Write all 0s to CSR
	csrrs x31, 0xa5e, x5	// Set all CSR bits
	csrrc x31, 0xa5e, x5	// Clear all CSR bits
	csrrw x31, 0xa5e, x8	// Restore CSR

// Testing CSR 0xa5f
	csrr x4, 0xa5f	// Read CSR
	li x24, -1
	csrrw x8, 0xa5f, x24	// Write all 1s to CSR
	csrrw x8, 0xa5f, x0	// Write all 0s to CSR
	csrrs x8, 0xa5f, x24	// Set all CSR bits
	csrrc x8, 0xa5f, x24	// Clear all CSR bits
	csrrw x8, 0xa5f, x4	// Restore CSR

// Testing CSR 0xa60
	csrr x25, 0xa60	// Read CSR
	li x26, -1
	csrrw x13, 0xa60, x26	// Write all 1s to CSR
	csrrw x13, 0xa60, x0	// Write all 0s to CSR
	csrrs x13, 0xa60, x26	// Set all CSR bits
	csrrc x13, 0xa60, x26	// Clear all CSR bits
	csrrw x13, 0xa60, x25	// Restore CSR

// Testing CSR 0xa61
	csrr x5, 0xa61	// Read CSR
	li x29, -1
	csrrw x9, 0xa61, x29	// Write all 1s to CSR
	csrrw x9, 0xa61, x0	// Write all 0s to CSR
	csrrs x9, 0xa61, x29	// Set all CSR bits
	csrrc x9, 0xa61, x29	// Clear all CSR bits
	csrrw x9, 0xa61, x5	// Restore CSR

// Testing CSR 0xa62
	csrr x19, 0xa62	// Read CSR
	li x17, -1
	csrrw x29, 0xa62, x17	// Write all 1s to CSR
	csrrw x29, 0xa62, x0	// Write all 0s to CSR
	csrrs x29, 0xa62, x17	// Set all CSR bits
	csrrc x29, 0xa62, x17	// Clear all CSR bits
	csrrw x29, 0xa62, x19	// Restore CSR

// Testing CSR 0xa63
	csrr x23, 0xa63	// Read CSR
	li x16, -1
	csrrw x24, 0xa63, x16	// Write all 1s to CSR
	csrrw x24, 0xa63, x0	// Write all 0s to CSR
	csrrs x24, 0xa63, x16	// Set all CSR bits
	csrrc x24, 0xa63, x16	// Clear all CSR bits
	csrrw x24, 0xa63, x23	// Restore CSR

// Testing CSR 0xa64
	csrr x31, 0xa64	// Read CSR
	li x7, -1
	csrrw x9, 0xa64, x7	// Write all 1s to CSR
	csrrw x9, 0xa64, x0	// Write all 0s to CSR
	csrrs x9, 0xa64, x7	// Set all CSR bits
	csrrc x9, 0xa64, x7	// Clear all CSR bits
	csrrw x9, 0xa64, x31	// Restore CSR

// Testing CSR 0xa65
	csrr x10, 0xa65	// Read CSR
	li x7, -1
	csrrw x30, 0xa65, x7	// Write all 1s to CSR
	csrrw x30, 0xa65, x0	// Write all 0s to CSR
	csrrs x30, 0xa65, x7	// Set all CSR bits
	csrrc x30, 0xa65, x7	// Clear all CSR bits
	csrrw x30, 0xa65, x10	// Restore CSR

// Testing CSR 0xa66
	csrr x8, 0xa66	// Read CSR
	li x17, -1
	csrrw x12, 0xa66, x17	// Write all 1s to CSR
	csrrw x12, 0xa66, x0	// Write all 0s to CSR
	csrrs x12, 0xa66, x17	// Set all CSR bits
	csrrc x12, 0xa66, x17	// Clear all CSR bits
	csrrw x12, 0xa66, x8	// Restore CSR

// Testing CSR 0xa67
	csrr x21, 0xa67	// Read CSR
	li x25, -1
	csrrw x8, 0xa67, x25	// Write all 1s to CSR
	csrrw x8, 0xa67, x0	// Write all 0s to CSR
	csrrs x8, 0xa67, x25	// Set all CSR bits
	csrrc x8, 0xa67, x25	// Clear all CSR bits
	csrrw x8, 0xa67, x21	// Restore CSR

// Testing CSR 0xa68
	csrr x2, 0xa68	// Read CSR
	li x24, -1
	csrrw x20, 0xa68, x24	// Write all 1s to CSR
	csrrw x20, 0xa68, x0	// Write all 0s to CSR
	csrrs x20, 0xa68, x24	// Set all CSR bits
	csrrc x20, 0xa68, x24	// Clear all CSR bits
	csrrw x20, 0xa68, x2	// Restore CSR

// Testing CSR 0xa69
	csrr x10, 0xa69	// Read CSR
	li x16, -1
	csrrw x20, 0xa69, x16	// Write all 1s to CSR
	csrrw x20, 0xa69, x0	// Write all 0s to CSR
	csrrs x20, 0xa69, x16	// Set all CSR bits
	csrrc x20, 0xa69, x16	// Clear all CSR bits
	csrrw x20, 0xa69, x10	// Restore CSR

// Testing CSR 0xa6a
	csrr x18, 0xa6a	// Read CSR
	li x10, -1
	csrrw x13, 0xa6a, x10	// Write all 1s to CSR
	csrrw x13, 0xa6a, x0	// Write all 0s to CSR
	csrrs x13, 0xa6a, x10	// Set all CSR bits
	csrrc x13, 0xa6a, x10	// Clear all CSR bits
	csrrw x13, 0xa6a, x18	// Restore CSR

// Testing CSR 0xa6b
	csrr x31, 0xa6b	// Read CSR
	li x14, -1
	csrrw x12, 0xa6b, x14	// Write all 1s to CSR
	csrrw x12, 0xa6b, x0	// Write all 0s to CSR
	csrrs x12, 0xa6b, x14	// Set all CSR bits
	csrrc x12, 0xa6b, x14	// Clear all CSR bits
	csrrw x12, 0xa6b, x31	// Restore CSR

// Testing CSR 0xa6c
	csrr x4, 0xa6c	// Read CSR
	li x1, -1
	csrrw x24, 0xa6c, x1	// Write all 1s to CSR
	csrrw x24, 0xa6c, x0	// Write all 0s to CSR
	csrrs x24, 0xa6c, x1	// Set all CSR bits
	csrrc x24, 0xa6c, x1	// Clear all CSR bits
	csrrw x24, 0xa6c, x4	// Restore CSR

// Testing CSR 0xa6d
	csrr x5, 0xa6d	// Read CSR
	li x12, -1
	csrrw x26, 0xa6d, x12	// Write all 1s to CSR
	csrrw x26, 0xa6d, x0	// Write all 0s to CSR
	csrrs x26, 0xa6d, x12	// Set all CSR bits
	csrrc x26, 0xa6d, x12	// Clear all CSR bits
	csrrw x26, 0xa6d, x5	// Restore CSR

// Testing CSR 0xa6e
	csrr x4, 0xa6e	// Read CSR
	li x22, -1
	csrrw x27, 0xa6e, x22	// Write all 1s to CSR
	csrrw x27, 0xa6e, x0	// Write all 0s to CSR
	csrrs x27, 0xa6e, x22	// Set all CSR bits
	csrrc x27, 0xa6e, x22	// Clear all CSR bits
	csrrw x27, 0xa6e, x4	// Restore CSR

// Testing CSR 0xa6f
	csrr x3, 0xa6f	// Read CSR
	li x7, -1
	csrrw x9, 0xa6f, x7	// Write all 1s to CSR
	csrrw x9, 0xa6f, x0	// Write all 0s to CSR
	csrrs x9, 0xa6f, x7	// Set all CSR bits
	csrrc x9, 0xa6f, x7	// Clear all CSR bits
	csrrw x9, 0xa6f, x3	// Restore CSR

// Testing CSR 0xa70
	csrr x24, 0xa70	// Read CSR
	li x14, -1
	csrrw x20, 0xa70, x14	// Write all 1s to CSR
	csrrw x20, 0xa70, x0	// Write all 0s to CSR
	csrrs x20, 0xa70, x14	// Set all CSR bits
	csrrc x20, 0xa70, x14	// Clear all CSR bits
	csrrw x20, 0xa70, x24	// Restore CSR

// Testing CSR 0xa71
	csrr x16, 0xa71	// Read CSR
	li x2, -1
	csrrw x21, 0xa71, x2	// Write all 1s to CSR
	csrrw x21, 0xa71, x0	// Write all 0s to CSR
	csrrs x21, 0xa71, x2	// Set all CSR bits
	csrrc x21, 0xa71, x2	// Clear all CSR bits
	csrrw x21, 0xa71, x16	// Restore CSR

// Testing CSR 0xa72
	csrr x31, 0xa72	// Read CSR
	li x14, -1
	csrrw x1, 0xa72, x14	// Write all 1s to CSR
	csrrw x1, 0xa72, x0	// Write all 0s to CSR
	csrrs x1, 0xa72, x14	// Set all CSR bits
	csrrc x1, 0xa72, x14	// Clear all CSR bits
	csrrw x1, 0xa72, x31	// Restore CSR

// Testing CSR 0xa73
	csrr x24, 0xa73	// Read CSR
	li x12, -1
	csrrw x3, 0xa73, x12	// Write all 1s to CSR
	csrrw x3, 0xa73, x0	// Write all 0s to CSR
	csrrs x3, 0xa73, x12	// Set all CSR bits
	csrrc x3, 0xa73, x12	// Clear all CSR bits
	csrrw x3, 0xa73, x24	// Restore CSR

// Testing CSR 0xa74
	csrr x15, 0xa74	// Read CSR
	li x23, -1
	csrrw x10, 0xa74, x23	// Write all 1s to CSR
	csrrw x10, 0xa74, x0	// Write all 0s to CSR
	csrrs x10, 0xa74, x23	// Set all CSR bits
	csrrc x10, 0xa74, x23	// Clear all CSR bits
	csrrw x10, 0xa74, x15	// Restore CSR

// Testing CSR 0xa75
	csrr x7, 0xa75	// Read CSR
	li x11, -1
	csrrw x15, 0xa75, x11	// Write all 1s to CSR
	csrrw x15, 0xa75, x0	// Write all 0s to CSR
	csrrs x15, 0xa75, x11	// Set all CSR bits
	csrrc x15, 0xa75, x11	// Clear all CSR bits
	csrrw x15, 0xa75, x7	// Restore CSR

// Testing CSR 0xa76
	csrr x13, 0xa76	// Read CSR
	li x16, -1
	csrrw x1, 0xa76, x16	// Write all 1s to CSR
	csrrw x1, 0xa76, x0	// Write all 0s to CSR
	csrrs x1, 0xa76, x16	// Set all CSR bits
	csrrc x1, 0xa76, x16	// Clear all CSR bits
	csrrw x1, 0xa76, x13	// Restore CSR

// Testing CSR 0xa77
	csrr x9, 0xa77	// Read CSR
	li x12, -1
	csrrw x27, 0xa77, x12	// Write all 1s to CSR
	csrrw x27, 0xa77, x0	// Write all 0s to CSR
	csrrs x27, 0xa77, x12	// Set all CSR bits
	csrrc x27, 0xa77, x12	// Clear all CSR bits
	csrrw x27, 0xa77, x9	// Restore CSR

// Testing CSR 0xa78
	csrr x30, 0xa78	// Read CSR
	li x4, -1
	csrrw x16, 0xa78, x4	// Write all 1s to CSR
	csrrw x16, 0xa78, x0	// Write all 0s to CSR
	csrrs x16, 0xa78, x4	// Set all CSR bits
	csrrc x16, 0xa78, x4	// Clear all CSR bits
	csrrw x16, 0xa78, x30	// Restore CSR

// Testing CSR 0xa79
	csrr x11, 0xa79	// Read CSR
	li x20, -1
	csrrw x10, 0xa79, x20	// Write all 1s to CSR
	csrrw x10, 0xa79, x0	// Write all 0s to CSR
	csrrs x10, 0xa79, x20	// Set all CSR bits
	csrrc x10, 0xa79, x20	// Clear all CSR bits
	csrrw x10, 0xa79, x11	// Restore CSR

// Testing CSR 0xa7a
	csrr x25, 0xa7a	// Read CSR
	li x20, -1
	csrrw x28, 0xa7a, x20	// Write all 1s to CSR
	csrrw x28, 0xa7a, x0	// Write all 0s to CSR
	csrrs x28, 0xa7a, x20	// Set all CSR bits
	csrrc x28, 0xa7a, x20	// Clear all CSR bits
	csrrw x28, 0xa7a, x25	// Restore CSR

// Testing CSR 0xa7b
	csrr x7, 0xa7b	// Read CSR
	li x19, -1
	csrrw x8, 0xa7b, x19	// Write all 1s to CSR
	csrrw x8, 0xa7b, x0	// Write all 0s to CSR
	csrrs x8, 0xa7b, x19	// Set all CSR bits
	csrrc x8, 0xa7b, x19	// Clear all CSR bits
	csrrw x8, 0xa7b, x7	// Restore CSR

// Testing CSR 0xa7c
	csrr x20, 0xa7c	// Read CSR
	li x3, -1
	csrrw x7, 0xa7c, x3	// Write all 1s to CSR
	csrrw x7, 0xa7c, x0	// Write all 0s to CSR
	csrrs x7, 0xa7c, x3	// Set all CSR bits
	csrrc x7, 0xa7c, x3	// Clear all CSR bits
	csrrw x7, 0xa7c, x20	// Restore CSR

// Testing CSR 0xa7d
	csrr x11, 0xa7d	// Read CSR
	li x9, -1
	csrrw x26, 0xa7d, x9	// Write all 1s to CSR
	csrrw x26, 0xa7d, x0	// Write all 0s to CSR
	csrrs x26, 0xa7d, x9	// Set all CSR bits
	csrrc x26, 0xa7d, x9	// Clear all CSR bits
	csrrw x26, 0xa7d, x11	// Restore CSR

// Testing CSR 0xa7e
	csrr x1, 0xa7e	// Read CSR
	li x8, -1
	csrrw x16, 0xa7e, x8	// Write all 1s to CSR
	csrrw x16, 0xa7e, x0	// Write all 0s to CSR
	csrrs x16, 0xa7e, x8	// Set all CSR bits
	csrrc x16, 0xa7e, x8	// Clear all CSR bits
	csrrw x16, 0xa7e, x1	// Restore CSR

// Testing CSR 0xa7f
	csrr x14, 0xa7f	// Read CSR
	li x28, -1
	csrrw x11, 0xa7f, x28	// Write all 1s to CSR
	csrrw x11, 0xa7f, x0	// Write all 0s to CSR
	csrrs x11, 0xa7f, x28	// Set all CSR bits
	csrrc x11, 0xa7f, x28	// Clear all CSR bits
	csrrw x11, 0xa7f, x14	// Restore CSR

// Testing CSR 0xa80
	csrr x17, 0xa80	// Read CSR
	li x24, -1
	csrrw x5, 0xa80, x24	// Write all 1s to CSR
	csrrw x5, 0xa80, x0	// Write all 0s to CSR
	csrrs x5, 0xa80, x24	// Set all CSR bits
	csrrc x5, 0xa80, x24	// Clear all CSR bits
	csrrw x5, 0xa80, x17	// Restore CSR

// Testing CSR 0xa81
	csrr x16, 0xa81	// Read CSR
	li x25, -1
	csrrw x5, 0xa81, x25	// Write all 1s to CSR
	csrrw x5, 0xa81, x0	// Write all 0s to CSR
	csrrs x5, 0xa81, x25	// Set all CSR bits
	csrrc x5, 0xa81, x25	// Clear all CSR bits
	csrrw x5, 0xa81, x16	// Restore CSR

// Testing CSR 0xa82
	csrr x3, 0xa82	// Read CSR
	li x21, -1
	csrrw x17, 0xa82, x21	// Write all 1s to CSR
	csrrw x17, 0xa82, x0	// Write all 0s to CSR
	csrrs x17, 0xa82, x21	// Set all CSR bits
	csrrc x17, 0xa82, x21	// Clear all CSR bits
	csrrw x17, 0xa82, x3	// Restore CSR

// Testing CSR 0xa83
	csrr x23, 0xa83	// Read CSR
	li x19, -1
	csrrw x9, 0xa83, x19	// Write all 1s to CSR
	csrrw x9, 0xa83, x0	// Write all 0s to CSR
	csrrs x9, 0xa83, x19	// Set all CSR bits
	csrrc x9, 0xa83, x19	// Clear all CSR bits
	csrrw x9, 0xa83, x23	// Restore CSR

// Testing CSR 0xa84
	csrr x23, 0xa84	// Read CSR
	li x7, -1
	csrrw x24, 0xa84, x7	// Write all 1s to CSR
	csrrw x24, 0xa84, x0	// Write all 0s to CSR
	csrrs x24, 0xa84, x7	// Set all CSR bits
	csrrc x24, 0xa84, x7	// Clear all CSR bits
	csrrw x24, 0xa84, x23	// Restore CSR

// Testing CSR 0xa85
	csrr x12, 0xa85	// Read CSR
	li x11, -1
	csrrw x10, 0xa85, x11	// Write all 1s to CSR
	csrrw x10, 0xa85, x0	// Write all 0s to CSR
	csrrs x10, 0xa85, x11	// Set all CSR bits
	csrrc x10, 0xa85, x11	// Clear all CSR bits
	csrrw x10, 0xa85, x12	// Restore CSR

// Testing CSR 0xa86
	csrr x3, 0xa86	// Read CSR
	li x14, -1
	csrrw x28, 0xa86, x14	// Write all 1s to CSR
	csrrw x28, 0xa86, x0	// Write all 0s to CSR
	csrrs x28, 0xa86, x14	// Set all CSR bits
	csrrc x28, 0xa86, x14	// Clear all CSR bits
	csrrw x28, 0xa86, x3	// Restore CSR

// Testing CSR 0xa87
	csrr x18, 0xa87	// Read CSR
	li x3, -1
	csrrw x17, 0xa87, x3	// Write all 1s to CSR
	csrrw x17, 0xa87, x0	// Write all 0s to CSR
	csrrs x17, 0xa87, x3	// Set all CSR bits
	csrrc x17, 0xa87, x3	// Clear all CSR bits
	csrrw x17, 0xa87, x18	// Restore CSR

// Testing CSR 0xa88
	csrr x27, 0xa88	// Read CSR
	li x21, -1
	csrrw x14, 0xa88, x21	// Write all 1s to CSR
	csrrw x14, 0xa88, x0	// Write all 0s to CSR
	csrrs x14, 0xa88, x21	// Set all CSR bits
	csrrc x14, 0xa88, x21	// Clear all CSR bits
	csrrw x14, 0xa88, x27	// Restore CSR

// Testing CSR 0xa89
	csrr x8, 0xa89	// Read CSR
	li x9, -1
	csrrw x6, 0xa89, x9	// Write all 1s to CSR
	csrrw x6, 0xa89, x0	// Write all 0s to CSR
	csrrs x6, 0xa89, x9	// Set all CSR bits
	csrrc x6, 0xa89, x9	// Clear all CSR bits
	csrrw x6, 0xa89, x8	// Restore CSR

// Testing CSR 0xa8a
	csrr x5, 0xa8a	// Read CSR
	li x8, -1
	csrrw x6, 0xa8a, x8	// Write all 1s to CSR
	csrrw x6, 0xa8a, x0	// Write all 0s to CSR
	csrrs x6, 0xa8a, x8	// Set all CSR bits
	csrrc x6, 0xa8a, x8	// Clear all CSR bits
	csrrw x6, 0xa8a, x5	// Restore CSR

// Testing CSR 0xa8b
	csrr x4, 0xa8b	// Read CSR
	li x8, -1
	csrrw x10, 0xa8b, x8	// Write all 1s to CSR
	csrrw x10, 0xa8b, x0	// Write all 0s to CSR
	csrrs x10, 0xa8b, x8	// Set all CSR bits
	csrrc x10, 0xa8b, x8	// Clear all CSR bits
	csrrw x10, 0xa8b, x4	// Restore CSR

// Testing CSR 0xa8c
	csrr x31, 0xa8c	// Read CSR
	li x9, -1
	csrrw x2, 0xa8c, x9	// Write all 1s to CSR
	csrrw x2, 0xa8c, x0	// Write all 0s to CSR
	csrrs x2, 0xa8c, x9	// Set all CSR bits
	csrrc x2, 0xa8c, x9	// Clear all CSR bits
	csrrw x2, 0xa8c, x31	// Restore CSR

// Testing CSR 0xa8d
	csrr x18, 0xa8d	// Read CSR
	li x4, -1
	csrrw x26, 0xa8d, x4	// Write all 1s to CSR
	csrrw x26, 0xa8d, x0	// Write all 0s to CSR
	csrrs x26, 0xa8d, x4	// Set all CSR bits
	csrrc x26, 0xa8d, x4	// Clear all CSR bits
	csrrw x26, 0xa8d, x18	// Restore CSR

// Testing CSR 0xa8e
	csrr x14, 0xa8e	// Read CSR
	li x10, -1
	csrrw x20, 0xa8e, x10	// Write all 1s to CSR
	csrrw x20, 0xa8e, x0	// Write all 0s to CSR
	csrrs x20, 0xa8e, x10	// Set all CSR bits
	csrrc x20, 0xa8e, x10	// Clear all CSR bits
	csrrw x20, 0xa8e, x14	// Restore CSR

// Testing CSR 0xa8f
	csrr x20, 0xa8f	// Read CSR
	li x26, -1
	csrrw x11, 0xa8f, x26	// Write all 1s to CSR
	csrrw x11, 0xa8f, x0	// Write all 0s to CSR
	csrrs x11, 0xa8f, x26	// Set all CSR bits
	csrrc x11, 0xa8f, x26	// Clear all CSR bits
	csrrw x11, 0xa8f, x20	// Restore CSR

// Testing CSR 0xa90
	csrr x25, 0xa90	// Read CSR
	li x4, -1
	csrrw x3, 0xa90, x4	// Write all 1s to CSR
	csrrw x3, 0xa90, x0	// Write all 0s to CSR
	csrrs x3, 0xa90, x4	// Set all CSR bits
	csrrc x3, 0xa90, x4	// Clear all CSR bits
	csrrw x3, 0xa90, x25	// Restore CSR

// Testing CSR 0xa91
	csrr x13, 0xa91	// Read CSR
	li x24, -1
	csrrw x3, 0xa91, x24	// Write all 1s to CSR
	csrrw x3, 0xa91, x0	// Write all 0s to CSR
	csrrs x3, 0xa91, x24	// Set all CSR bits
	csrrc x3, 0xa91, x24	// Clear all CSR bits
	csrrw x3, 0xa91, x13	// Restore CSR

// Testing CSR 0xa92
	csrr x29, 0xa92	// Read CSR
	li x18, -1
	csrrw x6, 0xa92, x18	// Write all 1s to CSR
	csrrw x6, 0xa92, x0	// Write all 0s to CSR
	csrrs x6, 0xa92, x18	// Set all CSR bits
	csrrc x6, 0xa92, x18	// Clear all CSR bits
	csrrw x6, 0xa92, x29	// Restore CSR

// Testing CSR 0xa93
	csrr x22, 0xa93	// Read CSR
	li x1, -1
	csrrw x16, 0xa93, x1	// Write all 1s to CSR
	csrrw x16, 0xa93, x0	// Write all 0s to CSR
	csrrs x16, 0xa93, x1	// Set all CSR bits
	csrrc x16, 0xa93, x1	// Clear all CSR bits
	csrrw x16, 0xa93, x22	// Restore CSR

// Testing CSR 0xa94
	csrr x20, 0xa94	// Read CSR
	li x8, -1
	csrrw x6, 0xa94, x8	// Write all 1s to CSR
	csrrw x6, 0xa94, x0	// Write all 0s to CSR
	csrrs x6, 0xa94, x8	// Set all CSR bits
	csrrc x6, 0xa94, x8	// Clear all CSR bits
	csrrw x6, 0xa94, x20	// Restore CSR

// Testing CSR 0xa95
	csrr x31, 0xa95	// Read CSR
	li x14, -1
	csrrw x10, 0xa95, x14	// Write all 1s to CSR
	csrrw x10, 0xa95, x0	// Write all 0s to CSR
	csrrs x10, 0xa95, x14	// Set all CSR bits
	csrrc x10, 0xa95, x14	// Clear all CSR bits
	csrrw x10, 0xa95, x31	// Restore CSR

// Testing CSR 0xa96
	csrr x20, 0xa96	// Read CSR
	li x26, -1
	csrrw x13, 0xa96, x26	// Write all 1s to CSR
	csrrw x13, 0xa96, x0	// Write all 0s to CSR
	csrrs x13, 0xa96, x26	// Set all CSR bits
	csrrc x13, 0xa96, x26	// Clear all CSR bits
	csrrw x13, 0xa96, x20	// Restore CSR

// Testing CSR 0xa97
	csrr x14, 0xa97	// Read CSR
	li x16, -1
	csrrw x3, 0xa97, x16	// Write all 1s to CSR
	csrrw x3, 0xa97, x0	// Write all 0s to CSR
	csrrs x3, 0xa97, x16	// Set all CSR bits
	csrrc x3, 0xa97, x16	// Clear all CSR bits
	csrrw x3, 0xa97, x14	// Restore CSR

// Testing CSR 0xa98
	csrr x5, 0xa98	// Read CSR
	li x10, -1
	csrrw x3, 0xa98, x10	// Write all 1s to CSR
	csrrw x3, 0xa98, x0	// Write all 0s to CSR
	csrrs x3, 0xa98, x10	// Set all CSR bits
	csrrc x3, 0xa98, x10	// Clear all CSR bits
	csrrw x3, 0xa98, x5	// Restore CSR

// Testing CSR 0xa99
	csrr x28, 0xa99	// Read CSR
	li x4, -1
	csrrw x15, 0xa99, x4	// Write all 1s to CSR
	csrrw x15, 0xa99, x0	// Write all 0s to CSR
	csrrs x15, 0xa99, x4	// Set all CSR bits
	csrrc x15, 0xa99, x4	// Clear all CSR bits
	csrrw x15, 0xa99, x28	// Restore CSR

// Testing CSR 0xa9a
	csrr x15, 0xa9a	// Read CSR
	li x23, -1
	csrrw x30, 0xa9a, x23	// Write all 1s to CSR
	csrrw x30, 0xa9a, x0	// Write all 0s to CSR
	csrrs x30, 0xa9a, x23	// Set all CSR bits
	csrrc x30, 0xa9a, x23	// Clear all CSR bits
	csrrw x30, 0xa9a, x15	// Restore CSR

// Testing CSR 0xa9b
	csrr x10, 0xa9b	// Read CSR
	li x15, -1
	csrrw x26, 0xa9b, x15	// Write all 1s to CSR
	csrrw x26, 0xa9b, x0	// Write all 0s to CSR
	csrrs x26, 0xa9b, x15	// Set all CSR bits
	csrrc x26, 0xa9b, x15	// Clear all CSR bits
	csrrw x26, 0xa9b, x10	// Restore CSR

// Testing CSR 0xa9c
	csrr x31, 0xa9c	// Read CSR
	li x21, -1
	csrrw x19, 0xa9c, x21	// Write all 1s to CSR
	csrrw x19, 0xa9c, x0	// Write all 0s to CSR
	csrrs x19, 0xa9c, x21	// Set all CSR bits
	csrrc x19, 0xa9c, x21	// Clear all CSR bits
	csrrw x19, 0xa9c, x31	// Restore CSR

// Testing CSR 0xa9d
	csrr x11, 0xa9d	// Read CSR
	li x18, -1
	csrrw x8, 0xa9d, x18	// Write all 1s to CSR
	csrrw x8, 0xa9d, x0	// Write all 0s to CSR
	csrrs x8, 0xa9d, x18	// Set all CSR bits
	csrrc x8, 0xa9d, x18	// Clear all CSR bits
	csrrw x8, 0xa9d, x11	// Restore CSR

// Testing CSR 0xa9e
	csrr x26, 0xa9e	// Read CSR
	li x9, -1
	csrrw x6, 0xa9e, x9	// Write all 1s to CSR
	csrrw x6, 0xa9e, x0	// Write all 0s to CSR
	csrrs x6, 0xa9e, x9	// Set all CSR bits
	csrrc x6, 0xa9e, x9	// Clear all CSR bits
	csrrw x6, 0xa9e, x26	// Restore CSR

// Testing CSR 0xa9f
	csrr x16, 0xa9f	// Read CSR
	li x27, -1
	csrrw x28, 0xa9f, x27	// Write all 1s to CSR
	csrrw x28, 0xa9f, x0	// Write all 0s to CSR
	csrrs x28, 0xa9f, x27	// Set all CSR bits
	csrrc x28, 0xa9f, x27	// Clear all CSR bits
	csrrw x28, 0xa9f, x16	// Restore CSR

// Testing CSR 0xaa0
	csrr x1, 0xaa0	// Read CSR
	li x27, -1
	csrrw x14, 0xaa0, x27	// Write all 1s to CSR
	csrrw x14, 0xaa0, x0	// Write all 0s to CSR
	csrrs x14, 0xaa0, x27	// Set all CSR bits
	csrrc x14, 0xaa0, x27	// Clear all CSR bits
	csrrw x14, 0xaa0, x1	// Restore CSR

// Testing CSR 0xaa1
	csrr x4, 0xaa1	// Read CSR
	li x29, -1
	csrrw x23, 0xaa1, x29	// Write all 1s to CSR
	csrrw x23, 0xaa1, x0	// Write all 0s to CSR
	csrrs x23, 0xaa1, x29	// Set all CSR bits
	csrrc x23, 0xaa1, x29	// Clear all CSR bits
	csrrw x23, 0xaa1, x4	// Restore CSR

// Testing CSR 0xaa2
	csrr x21, 0xaa2	// Read CSR
	li x6, -1
	csrrw x8, 0xaa2, x6	// Write all 1s to CSR
	csrrw x8, 0xaa2, x0	// Write all 0s to CSR
	csrrs x8, 0xaa2, x6	// Set all CSR bits
	csrrc x8, 0xaa2, x6	// Clear all CSR bits
	csrrw x8, 0xaa2, x21	// Restore CSR

// Testing CSR 0xaa3
	csrr x22, 0xaa3	// Read CSR
	li x1, -1
	csrrw x16, 0xaa3, x1	// Write all 1s to CSR
	csrrw x16, 0xaa3, x0	// Write all 0s to CSR
	csrrs x16, 0xaa3, x1	// Set all CSR bits
	csrrc x16, 0xaa3, x1	// Clear all CSR bits
	csrrw x16, 0xaa3, x22	// Restore CSR

// Testing CSR 0xaa4
	csrr x16, 0xaa4	// Read CSR
	li x18, -1
	csrrw x22, 0xaa4, x18	// Write all 1s to CSR
	csrrw x22, 0xaa4, x0	// Write all 0s to CSR
	csrrs x22, 0xaa4, x18	// Set all CSR bits
	csrrc x22, 0xaa4, x18	// Clear all CSR bits
	csrrw x22, 0xaa4, x16	// Restore CSR

// Testing CSR 0xaa5
	csrr x26, 0xaa5	// Read CSR
	li x21, -1
	csrrw x12, 0xaa5, x21	// Write all 1s to CSR
	csrrw x12, 0xaa5, x0	// Write all 0s to CSR
	csrrs x12, 0xaa5, x21	// Set all CSR bits
	csrrc x12, 0xaa5, x21	// Clear all CSR bits
	csrrw x12, 0xaa5, x26	// Restore CSR

// Testing CSR 0xaa6
	csrr x12, 0xaa6	// Read CSR
	li x17, -1
	csrrw x21, 0xaa6, x17	// Write all 1s to CSR
	csrrw x21, 0xaa6, x0	// Write all 0s to CSR
	csrrs x21, 0xaa6, x17	// Set all CSR bits
	csrrc x21, 0xaa6, x17	// Clear all CSR bits
	csrrw x21, 0xaa6, x12	// Restore CSR

// Testing CSR 0xaa7
	csrr x19, 0xaa7	// Read CSR
	li x24, -1
	csrrw x22, 0xaa7, x24	// Write all 1s to CSR
	csrrw x22, 0xaa7, x0	// Write all 0s to CSR
	csrrs x22, 0xaa7, x24	// Set all CSR bits
	csrrc x22, 0xaa7, x24	// Clear all CSR bits
	csrrw x22, 0xaa7, x19	// Restore CSR

// Testing CSR 0xaa8
	csrr x15, 0xaa8	// Read CSR
	li x25, -1
	csrrw x11, 0xaa8, x25	// Write all 1s to CSR
	csrrw x11, 0xaa8, x0	// Write all 0s to CSR
	csrrs x11, 0xaa8, x25	// Set all CSR bits
	csrrc x11, 0xaa8, x25	// Clear all CSR bits
	csrrw x11, 0xaa8, x15	// Restore CSR

// Testing CSR 0xaa9
	csrr x21, 0xaa9	// Read CSR
	li x9, -1
	csrrw x8, 0xaa9, x9	// Write all 1s to CSR
	csrrw x8, 0xaa9, x0	// Write all 0s to CSR
	csrrs x8, 0xaa9, x9	// Set all CSR bits
	csrrc x8, 0xaa9, x9	// Clear all CSR bits
	csrrw x8, 0xaa9, x21	// Restore CSR

// Testing CSR 0xaaa
	csrr x24, 0xaaa	// Read CSR
	li x2, -1
	csrrw x25, 0xaaa, x2	// Write all 1s to CSR
	csrrw x25, 0xaaa, x0	// Write all 0s to CSR
	csrrs x25, 0xaaa, x2	// Set all CSR bits
	csrrc x25, 0xaaa, x2	// Clear all CSR bits
	csrrw x25, 0xaaa, x24	// Restore CSR

// Testing CSR 0xaab
	csrr x18, 0xaab	// Read CSR
	li x27, -1
	csrrw x20, 0xaab, x27	// Write all 1s to CSR
	csrrw x20, 0xaab, x0	// Write all 0s to CSR
	csrrs x20, 0xaab, x27	// Set all CSR bits
	csrrc x20, 0xaab, x27	// Clear all CSR bits
	csrrw x20, 0xaab, x18	// Restore CSR

// Testing CSR 0xaac
	csrr x11, 0xaac	// Read CSR
	li x3, -1
	csrrw x28, 0xaac, x3	// Write all 1s to CSR
	csrrw x28, 0xaac, x0	// Write all 0s to CSR
	csrrs x28, 0xaac, x3	// Set all CSR bits
	csrrc x28, 0xaac, x3	// Clear all CSR bits
	csrrw x28, 0xaac, x11	// Restore CSR

// Testing CSR 0xaad
	csrr x30, 0xaad	// Read CSR
	li x6, -1
	csrrw x15, 0xaad, x6	// Write all 1s to CSR
	csrrw x15, 0xaad, x0	// Write all 0s to CSR
	csrrs x15, 0xaad, x6	// Set all CSR bits
	csrrc x15, 0xaad, x6	// Clear all CSR bits
	csrrw x15, 0xaad, x30	// Restore CSR

// Testing CSR 0xaae
	csrr x11, 0xaae	// Read CSR
	li x5, -1
	csrrw x20, 0xaae, x5	// Write all 1s to CSR
	csrrw x20, 0xaae, x0	// Write all 0s to CSR
	csrrs x20, 0xaae, x5	// Set all CSR bits
	csrrc x20, 0xaae, x5	// Clear all CSR bits
	csrrw x20, 0xaae, x11	// Restore CSR

// Testing CSR 0xaaf
	csrr x18, 0xaaf	// Read CSR
	li x14, -1
	csrrw x15, 0xaaf, x14	// Write all 1s to CSR
	csrrw x15, 0xaaf, x0	// Write all 0s to CSR
	csrrs x15, 0xaaf, x14	// Set all CSR bits
	csrrc x15, 0xaaf, x14	// Clear all CSR bits
	csrrw x15, 0xaaf, x18	// Restore CSR

// Testing CSR 0xab0
	csrr x24, 0xab0	// Read CSR
	li x26, -1
	csrrw x22, 0xab0, x26	// Write all 1s to CSR
	csrrw x22, 0xab0, x0	// Write all 0s to CSR
	csrrs x22, 0xab0, x26	// Set all CSR bits
	csrrc x22, 0xab0, x26	// Clear all CSR bits
	csrrw x22, 0xab0, x24	// Restore CSR

// Testing CSR 0xab1
	csrr x3, 0xab1	// Read CSR
	li x21, -1
	csrrw x5, 0xab1, x21	// Write all 1s to CSR
	csrrw x5, 0xab1, x0	// Write all 0s to CSR
	csrrs x5, 0xab1, x21	// Set all CSR bits
	csrrc x5, 0xab1, x21	// Clear all CSR bits
	csrrw x5, 0xab1, x3	// Restore CSR

// Testing CSR 0xab2
	csrr x16, 0xab2	// Read CSR
	li x5, -1
	csrrw x3, 0xab2, x5	// Write all 1s to CSR
	csrrw x3, 0xab2, x0	// Write all 0s to CSR
	csrrs x3, 0xab2, x5	// Set all CSR bits
	csrrc x3, 0xab2, x5	// Clear all CSR bits
	csrrw x3, 0xab2, x16	// Restore CSR

// Testing CSR 0xab3
	csrr x30, 0xab3	// Read CSR
	li x28, -1
	csrrw x14, 0xab3, x28	// Write all 1s to CSR
	csrrw x14, 0xab3, x0	// Write all 0s to CSR
	csrrs x14, 0xab3, x28	// Set all CSR bits
	csrrc x14, 0xab3, x28	// Clear all CSR bits
	csrrw x14, 0xab3, x30	// Restore CSR

// Testing CSR 0xab4
	csrr x9, 0xab4	// Read CSR
	li x15, -1
	csrrw x2, 0xab4, x15	// Write all 1s to CSR
	csrrw x2, 0xab4, x0	// Write all 0s to CSR
	csrrs x2, 0xab4, x15	// Set all CSR bits
	csrrc x2, 0xab4, x15	// Clear all CSR bits
	csrrw x2, 0xab4, x9	// Restore CSR

// Testing CSR 0xab5
	csrr x27, 0xab5	// Read CSR
	li x18, -1
	csrrw x11, 0xab5, x18	// Write all 1s to CSR
	csrrw x11, 0xab5, x0	// Write all 0s to CSR
	csrrs x11, 0xab5, x18	// Set all CSR bits
	csrrc x11, 0xab5, x18	// Clear all CSR bits
	csrrw x11, 0xab5, x27	// Restore CSR

// Testing CSR 0xab6
	csrr x17, 0xab6	// Read CSR
	li x14, -1
	csrrw x2, 0xab6, x14	// Write all 1s to CSR
	csrrw x2, 0xab6, x0	// Write all 0s to CSR
	csrrs x2, 0xab6, x14	// Set all CSR bits
	csrrc x2, 0xab6, x14	// Clear all CSR bits
	csrrw x2, 0xab6, x17	// Restore CSR

// Testing CSR 0xab7
	csrr x17, 0xab7	// Read CSR
	li x10, -1
	csrrw x25, 0xab7, x10	// Write all 1s to CSR
	csrrw x25, 0xab7, x0	// Write all 0s to CSR
	csrrs x25, 0xab7, x10	// Set all CSR bits
	csrrc x25, 0xab7, x10	// Clear all CSR bits
	csrrw x25, 0xab7, x17	// Restore CSR

// Testing CSR 0xab8
	csrr x23, 0xab8	// Read CSR
	li x19, -1
	csrrw x22, 0xab8, x19	// Write all 1s to CSR
	csrrw x22, 0xab8, x0	// Write all 0s to CSR
	csrrs x22, 0xab8, x19	// Set all CSR bits
	csrrc x22, 0xab8, x19	// Clear all CSR bits
	csrrw x22, 0xab8, x23	// Restore CSR

// Testing CSR 0xab9
	csrr x24, 0xab9	// Read CSR
	li x26, -1
	csrrw x9, 0xab9, x26	// Write all 1s to CSR
	csrrw x9, 0xab9, x0	// Write all 0s to CSR
	csrrs x9, 0xab9, x26	// Set all CSR bits
	csrrc x9, 0xab9, x26	// Clear all CSR bits
	csrrw x9, 0xab9, x24	// Restore CSR

// Testing CSR 0xaba
	csrr x27, 0xaba	// Read CSR
	li x19, -1
	csrrw x24, 0xaba, x19	// Write all 1s to CSR
	csrrw x24, 0xaba, x0	// Write all 0s to CSR
	csrrs x24, 0xaba, x19	// Set all CSR bits
	csrrc x24, 0xaba, x19	// Clear all CSR bits
	csrrw x24, 0xaba, x27	// Restore CSR

// Testing CSR 0xabb
	csrr x24, 0xabb	// Read CSR
	li x22, -1
	csrrw x1, 0xabb, x22	// Write all 1s to CSR
	csrrw x1, 0xabb, x0	// Write all 0s to CSR
	csrrs x1, 0xabb, x22	// Set all CSR bits
	csrrc x1, 0xabb, x22	// Clear all CSR bits
	csrrw x1, 0xabb, x24	// Restore CSR

// Testing CSR 0xabc
	csrr x19, 0xabc	// Read CSR
	li x5, -1
	csrrw x28, 0xabc, x5	// Write all 1s to CSR
	csrrw x28, 0xabc, x0	// Write all 0s to CSR
	csrrs x28, 0xabc, x5	// Set all CSR bits
	csrrc x28, 0xabc, x5	// Clear all CSR bits
	csrrw x28, 0xabc, x19	// Restore CSR

// Testing CSR 0xabd
	csrr x9, 0xabd	// Read CSR
	li x22, -1
	csrrw x5, 0xabd, x22	// Write all 1s to CSR
	csrrw x5, 0xabd, x0	// Write all 0s to CSR
	csrrs x5, 0xabd, x22	// Set all CSR bits
	csrrc x5, 0xabd, x22	// Clear all CSR bits
	csrrw x5, 0xabd, x9	// Restore CSR

// Testing CSR 0xabe
	csrr x24, 0xabe	// Read CSR
	li x29, -1
	csrrw x10, 0xabe, x29	// Write all 1s to CSR
	csrrw x10, 0xabe, x0	// Write all 0s to CSR
	csrrs x10, 0xabe, x29	// Set all CSR bits
	csrrc x10, 0xabe, x29	// Clear all CSR bits
	csrrw x10, 0xabe, x24	// Restore CSR

// Testing CSR 0xabf
	csrr x15, 0xabf	// Read CSR
	li x16, -1
	csrrw x20, 0xabf, x16	// Write all 1s to CSR
	csrrw x20, 0xabf, x0	// Write all 0s to CSR
	csrrs x20, 0xabf, x16	// Set all CSR bits
	csrrc x20, 0xabf, x16	// Clear all CSR bits
	csrrw x20, 0xabf, x15	// Restore CSR

// Testing CSR 0xb00
	csrr x10, 0xb00	// Read CSR
	li x1, -1
	csrrw x16, 0xb00, x1	// Write all 1s to CSR
	csrrw x16, 0xb00, x0	// Write all 0s to CSR
	csrrs x16, 0xb00, x1	// Set all CSR bits
	csrrc x16, 0xb00, x1	// Clear all CSR bits
	csrrw x16, 0xb00, x10	// Restore CSR

// Testing CSR 0xb01
	csrr x4, 0xb01	// Read CSR
	li x5, -1
	csrrw x6, 0xb01, x5	// Write all 1s to CSR
	csrrw x6, 0xb01, x0	// Write all 0s to CSR
	csrrs x6, 0xb01, x5	// Set all CSR bits
	csrrc x6, 0xb01, x5	// Clear all CSR bits
	csrrw x6, 0xb01, x4	// Restore CSR

// Testing CSR 0xb02
	csrr x4, 0xb02	// Read CSR
	li x2, -1
	csrrw x26, 0xb02, x2	// Write all 1s to CSR
	csrrw x26, 0xb02, x0	// Write all 0s to CSR
	csrrs x26, 0xb02, x2	// Set all CSR bits
	csrrc x26, 0xb02, x2	// Clear all CSR bits
	csrrw x26, 0xb02, x4	// Restore CSR

// Testing CSR 0xb03
	csrr x8, 0xb03	// Read CSR
	li x14, -1
	csrrw x2, 0xb03, x14	// Write all 1s to CSR
	csrrw x2, 0xb03, x0	// Write all 0s to CSR
	csrrs x2, 0xb03, x14	// Set all CSR bits
	csrrc x2, 0xb03, x14	// Clear all CSR bits
	csrrw x2, 0xb03, x8	// Restore CSR

// Testing CSR 0xb04
	csrr x7, 0xb04	// Read CSR
	li x13, -1
	csrrw x23, 0xb04, x13	// Write all 1s to CSR
	csrrw x23, 0xb04, x0	// Write all 0s to CSR
	csrrs x23, 0xb04, x13	// Set all CSR bits
	csrrc x23, 0xb04, x13	// Clear all CSR bits
	csrrw x23, 0xb04, x7	// Restore CSR

// Testing CSR 0xb05
	csrr x7, 0xb05	// Read CSR
	li x3, -1
	csrrw x17, 0xb05, x3	// Write all 1s to CSR
	csrrw x17, 0xb05, x0	// Write all 0s to CSR
	csrrs x17, 0xb05, x3	// Set all CSR bits
	csrrc x17, 0xb05, x3	// Clear all CSR bits
	csrrw x17, 0xb05, x7	// Restore CSR

// Testing CSR 0xb06
	csrr x7, 0xb06	// Read CSR
	li x10, -1
	csrrw x18, 0xb06, x10	// Write all 1s to CSR
	csrrw x18, 0xb06, x0	// Write all 0s to CSR
	csrrs x18, 0xb06, x10	// Set all CSR bits
	csrrc x18, 0xb06, x10	// Clear all CSR bits
	csrrw x18, 0xb06, x7	// Restore CSR

// Testing CSR 0xb07
	csrr x17, 0xb07	// Read CSR
	li x20, -1
	csrrw x18, 0xb07, x20	// Write all 1s to CSR
	csrrw x18, 0xb07, x0	// Write all 0s to CSR
	csrrs x18, 0xb07, x20	// Set all CSR bits
	csrrc x18, 0xb07, x20	// Clear all CSR bits
	csrrw x18, 0xb07, x17	// Restore CSR

// Testing CSR 0xb08
	csrr x26, 0xb08	// Read CSR
	li x7, -1
	csrrw x20, 0xb08, x7	// Write all 1s to CSR
	csrrw x20, 0xb08, x0	// Write all 0s to CSR
	csrrs x20, 0xb08, x7	// Set all CSR bits
	csrrc x20, 0xb08, x7	// Clear all CSR bits
	csrrw x20, 0xb08, x26	// Restore CSR

// Testing CSR 0xb09
	csrr x24, 0xb09	// Read CSR
	li x13, -1
	csrrw x26, 0xb09, x13	// Write all 1s to CSR
	csrrw x26, 0xb09, x0	// Write all 0s to CSR
	csrrs x26, 0xb09, x13	// Set all CSR bits
	csrrc x26, 0xb09, x13	// Clear all CSR bits
	csrrw x26, 0xb09, x24	// Restore CSR

// Testing CSR 0xb0a
	csrr x22, 0xb0a	// Read CSR
	li x5, -1
	csrrw x29, 0xb0a, x5	// Write all 1s to CSR
	csrrw x29, 0xb0a, x0	// Write all 0s to CSR
	csrrs x29, 0xb0a, x5	// Set all CSR bits
	csrrc x29, 0xb0a, x5	// Clear all CSR bits
	csrrw x29, 0xb0a, x22	// Restore CSR

// Testing CSR 0xb0b
	csrr x24, 0xb0b	// Read CSR
	li x29, -1
	csrrw x3, 0xb0b, x29	// Write all 1s to CSR
	csrrw x3, 0xb0b, x0	// Write all 0s to CSR
	csrrs x3, 0xb0b, x29	// Set all CSR bits
	csrrc x3, 0xb0b, x29	// Clear all CSR bits
	csrrw x3, 0xb0b, x24	// Restore CSR

// Testing CSR 0xb0c
	csrr x21, 0xb0c	// Read CSR
	li x4, -1
	csrrw x30, 0xb0c, x4	// Write all 1s to CSR
	csrrw x30, 0xb0c, x0	// Write all 0s to CSR
	csrrs x30, 0xb0c, x4	// Set all CSR bits
	csrrc x30, 0xb0c, x4	// Clear all CSR bits
	csrrw x30, 0xb0c, x21	// Restore CSR

// Testing CSR 0xb0d
	csrr x20, 0xb0d	// Read CSR
	li x14, -1
	csrrw x19, 0xb0d, x14	// Write all 1s to CSR
	csrrw x19, 0xb0d, x0	// Write all 0s to CSR
	csrrs x19, 0xb0d, x14	// Set all CSR bits
	csrrc x19, 0xb0d, x14	// Clear all CSR bits
	csrrw x19, 0xb0d, x20	// Restore CSR

// Testing CSR 0xb0e
	csrr x8, 0xb0e	// Read CSR
	li x26, -1
	csrrw x10, 0xb0e, x26	// Write all 1s to CSR
	csrrw x10, 0xb0e, x0	// Write all 0s to CSR
	csrrs x10, 0xb0e, x26	// Set all CSR bits
	csrrc x10, 0xb0e, x26	// Clear all CSR bits
	csrrw x10, 0xb0e, x8	// Restore CSR

// Testing CSR 0xb0f
	csrr x19, 0xb0f	// Read CSR
	li x1, -1
	csrrw x4, 0xb0f, x1	// Write all 1s to CSR
	csrrw x4, 0xb0f, x0	// Write all 0s to CSR
	csrrs x4, 0xb0f, x1	// Set all CSR bits
	csrrc x4, 0xb0f, x1	// Clear all CSR bits
	csrrw x4, 0xb0f, x19	// Restore CSR

// Testing CSR 0xb10
	csrr x26, 0xb10	// Read CSR
	li x30, -1
	csrrw x15, 0xb10, x30	// Write all 1s to CSR
	csrrw x15, 0xb10, x0	// Write all 0s to CSR
	csrrs x15, 0xb10, x30	// Set all CSR bits
	csrrc x15, 0xb10, x30	// Clear all CSR bits
	csrrw x15, 0xb10, x26	// Restore CSR

// Testing CSR 0xb11
	csrr x22, 0xb11	// Read CSR
	li x19, -1
	csrrw x16, 0xb11, x19	// Write all 1s to CSR
	csrrw x16, 0xb11, x0	// Write all 0s to CSR
	csrrs x16, 0xb11, x19	// Set all CSR bits
	csrrc x16, 0xb11, x19	// Clear all CSR bits
	csrrw x16, 0xb11, x22	// Restore CSR

// Testing CSR 0xb12
	csrr x12, 0xb12	// Read CSR
	li x20, -1
	csrrw x14, 0xb12, x20	// Write all 1s to CSR
	csrrw x14, 0xb12, x0	// Write all 0s to CSR
	csrrs x14, 0xb12, x20	// Set all CSR bits
	csrrc x14, 0xb12, x20	// Clear all CSR bits
	csrrw x14, 0xb12, x12	// Restore CSR

// Testing CSR 0xb13
	csrr x2, 0xb13	// Read CSR
	li x17, -1
	csrrw x7, 0xb13, x17	// Write all 1s to CSR
	csrrw x7, 0xb13, x0	// Write all 0s to CSR
	csrrs x7, 0xb13, x17	// Set all CSR bits
	csrrc x7, 0xb13, x17	// Clear all CSR bits
	csrrw x7, 0xb13, x2	// Restore CSR

// Testing CSR 0xb14
	csrr x4, 0xb14	// Read CSR
	li x18, -1
	csrrw x2, 0xb14, x18	// Write all 1s to CSR
	csrrw x2, 0xb14, x0	// Write all 0s to CSR
	csrrs x2, 0xb14, x18	// Set all CSR bits
	csrrc x2, 0xb14, x18	// Clear all CSR bits
	csrrw x2, 0xb14, x4	// Restore CSR

// Testing CSR 0xb15
	csrr x27, 0xb15	// Read CSR
	li x5, -1
	csrrw x12, 0xb15, x5	// Write all 1s to CSR
	csrrw x12, 0xb15, x0	// Write all 0s to CSR
	csrrs x12, 0xb15, x5	// Set all CSR bits
	csrrc x12, 0xb15, x5	// Clear all CSR bits
	csrrw x12, 0xb15, x27	// Restore CSR

// Testing CSR 0xb16
	csrr x11, 0xb16	// Read CSR
	li x7, -1
	csrrw x1, 0xb16, x7	// Write all 1s to CSR
	csrrw x1, 0xb16, x0	// Write all 0s to CSR
	csrrs x1, 0xb16, x7	// Set all CSR bits
	csrrc x1, 0xb16, x7	// Clear all CSR bits
	csrrw x1, 0xb16, x11	// Restore CSR

// Testing CSR 0xb17
	csrr x23, 0xb17	// Read CSR
	li x28, -1
	csrrw x7, 0xb17, x28	// Write all 1s to CSR
	csrrw x7, 0xb17, x0	// Write all 0s to CSR
	csrrs x7, 0xb17, x28	// Set all CSR bits
	csrrc x7, 0xb17, x28	// Clear all CSR bits
	csrrw x7, 0xb17, x23	// Restore CSR

// Testing CSR 0xb18
	csrr x9, 0xb18	// Read CSR
	li x5, -1
	csrrw x31, 0xb18, x5	// Write all 1s to CSR
	csrrw x31, 0xb18, x0	// Write all 0s to CSR
	csrrs x31, 0xb18, x5	// Set all CSR bits
	csrrc x31, 0xb18, x5	// Clear all CSR bits
	csrrw x31, 0xb18, x9	// Restore CSR

// Testing CSR 0xb19
	csrr x4, 0xb19	// Read CSR
	li x5, -1
	csrrw x12, 0xb19, x5	// Write all 1s to CSR
	csrrw x12, 0xb19, x0	// Write all 0s to CSR
	csrrs x12, 0xb19, x5	// Set all CSR bits
	csrrc x12, 0xb19, x5	// Clear all CSR bits
	csrrw x12, 0xb19, x4	// Restore CSR

// Testing CSR 0xb1a
	csrr x4, 0xb1a	// Read CSR
	li x29, -1
	csrrw x27, 0xb1a, x29	// Write all 1s to CSR
	csrrw x27, 0xb1a, x0	// Write all 0s to CSR
	csrrs x27, 0xb1a, x29	// Set all CSR bits
	csrrc x27, 0xb1a, x29	// Clear all CSR bits
	csrrw x27, 0xb1a, x4	// Restore CSR

// Testing CSR 0xb1b
	csrr x26, 0xb1b	// Read CSR
	li x1, -1
	csrrw x28, 0xb1b, x1	// Write all 1s to CSR
	csrrw x28, 0xb1b, x0	// Write all 0s to CSR
	csrrs x28, 0xb1b, x1	// Set all CSR bits
	csrrc x28, 0xb1b, x1	// Clear all CSR bits
	csrrw x28, 0xb1b, x26	// Restore CSR

// Testing CSR 0xb1c
	csrr x1, 0xb1c	// Read CSR
	li x21, -1
	csrrw x31, 0xb1c, x21	// Write all 1s to CSR
	csrrw x31, 0xb1c, x0	// Write all 0s to CSR
	csrrs x31, 0xb1c, x21	// Set all CSR bits
	csrrc x31, 0xb1c, x21	// Clear all CSR bits
	csrrw x31, 0xb1c, x1	// Restore CSR

// Testing CSR 0xb1d
	csrr x20, 0xb1d	// Read CSR
	li x3, -1
	csrrw x9, 0xb1d, x3	// Write all 1s to CSR
	csrrw x9, 0xb1d, x0	// Write all 0s to CSR
	csrrs x9, 0xb1d, x3	// Set all CSR bits
	csrrc x9, 0xb1d, x3	// Clear all CSR bits
	csrrw x9, 0xb1d, x20	// Restore CSR

// Testing CSR 0xb1e
	csrr x24, 0xb1e	// Read CSR
	li x27, -1
	csrrw x9, 0xb1e, x27	// Write all 1s to CSR
	csrrw x9, 0xb1e, x0	// Write all 0s to CSR
	csrrs x9, 0xb1e, x27	// Set all CSR bits
	csrrc x9, 0xb1e, x27	// Clear all CSR bits
	csrrw x9, 0xb1e, x24	// Restore CSR

// Testing CSR 0xb1f
	csrr x14, 0xb1f	// Read CSR
	li x19, -1
	csrrw x28, 0xb1f, x19	// Write all 1s to CSR
	csrrw x28, 0xb1f, x0	// Write all 0s to CSR
	csrrs x28, 0xb1f, x19	// Set all CSR bits
	csrrc x28, 0xb1f, x19	// Clear all CSR bits
	csrrw x28, 0xb1f, x14	// Restore CSR

// Testing CSR 0xb20
	csrr x16, 0xb20	// Read CSR
	li x11, -1
	csrrw x5, 0xb20, x11	// Write all 1s to CSR
	csrrw x5, 0xb20, x0	// Write all 0s to CSR
	csrrs x5, 0xb20, x11	// Set all CSR bits
	csrrc x5, 0xb20, x11	// Clear all CSR bits
	csrrw x5, 0xb20, x16	// Restore CSR

// Testing CSR 0xb21
	csrr x12, 0xb21	// Read CSR
	li x4, -1
	csrrw x31, 0xb21, x4	// Write all 1s to CSR
	csrrw x31, 0xb21, x0	// Write all 0s to CSR
	csrrs x31, 0xb21, x4	// Set all CSR bits
	csrrc x31, 0xb21, x4	// Clear all CSR bits
	csrrw x31, 0xb21, x12	// Restore CSR

// Testing CSR 0xb22
	csrr x20, 0xb22	// Read CSR
	li x17, -1
	csrrw x7, 0xb22, x17	// Write all 1s to CSR
	csrrw x7, 0xb22, x0	// Write all 0s to CSR
	csrrs x7, 0xb22, x17	// Set all CSR bits
	csrrc x7, 0xb22, x17	// Clear all CSR bits
	csrrw x7, 0xb22, x20	// Restore CSR

// Testing CSR 0xb23
	csrr x7, 0xb23	// Read CSR
	li x18, -1
	csrrw x21, 0xb23, x18	// Write all 1s to CSR
	csrrw x21, 0xb23, x0	// Write all 0s to CSR
	csrrs x21, 0xb23, x18	// Set all CSR bits
	csrrc x21, 0xb23, x18	// Clear all CSR bits
	csrrw x21, 0xb23, x7	// Restore CSR

// Testing CSR 0xb24
	csrr x6, 0xb24	// Read CSR
	li x5, -1
	csrrw x26, 0xb24, x5	// Write all 1s to CSR
	csrrw x26, 0xb24, x0	// Write all 0s to CSR
	csrrs x26, 0xb24, x5	// Set all CSR bits
	csrrc x26, 0xb24, x5	// Clear all CSR bits
	csrrw x26, 0xb24, x6	// Restore CSR

// Testing CSR 0xb25
	csrr x28, 0xb25	// Read CSR
	li x19, -1
	csrrw x22, 0xb25, x19	// Write all 1s to CSR
	csrrw x22, 0xb25, x0	// Write all 0s to CSR
	csrrs x22, 0xb25, x19	// Set all CSR bits
	csrrc x22, 0xb25, x19	// Clear all CSR bits
	csrrw x22, 0xb25, x28	// Restore CSR

// Testing CSR 0xb26
	csrr x29, 0xb26	// Read CSR
	li x27, -1
	csrrw x10, 0xb26, x27	// Write all 1s to CSR
	csrrw x10, 0xb26, x0	// Write all 0s to CSR
	csrrs x10, 0xb26, x27	// Set all CSR bits
	csrrc x10, 0xb26, x27	// Clear all CSR bits
	csrrw x10, 0xb26, x29	// Restore CSR

// Testing CSR 0xb27
	csrr x5, 0xb27	// Read CSR
	li x31, -1
	csrrw x10, 0xb27, x31	// Write all 1s to CSR
	csrrw x10, 0xb27, x0	// Write all 0s to CSR
	csrrs x10, 0xb27, x31	// Set all CSR bits
	csrrc x10, 0xb27, x31	// Clear all CSR bits
	csrrw x10, 0xb27, x5	// Restore CSR

// Testing CSR 0xb28
	csrr x24, 0xb28	// Read CSR
	li x20, -1
	csrrw x2, 0xb28, x20	// Write all 1s to CSR
	csrrw x2, 0xb28, x0	// Write all 0s to CSR
	csrrs x2, 0xb28, x20	// Set all CSR bits
	csrrc x2, 0xb28, x20	// Clear all CSR bits
	csrrw x2, 0xb28, x24	// Restore CSR

// Testing CSR 0xb29
	csrr x7, 0xb29	// Read CSR
	li x27, -1
	csrrw x23, 0xb29, x27	// Write all 1s to CSR
	csrrw x23, 0xb29, x0	// Write all 0s to CSR
	csrrs x23, 0xb29, x27	// Set all CSR bits
	csrrc x23, 0xb29, x27	// Clear all CSR bits
	csrrw x23, 0xb29, x7	// Restore CSR

// Testing CSR 0xb2a
	csrr x6, 0xb2a	// Read CSR
	li x13, -1
	csrrw x23, 0xb2a, x13	// Write all 1s to CSR
	csrrw x23, 0xb2a, x0	// Write all 0s to CSR
	csrrs x23, 0xb2a, x13	// Set all CSR bits
	csrrc x23, 0xb2a, x13	// Clear all CSR bits
	csrrw x23, 0xb2a, x6	// Restore CSR

// Testing CSR 0xb2b
	csrr x21, 0xb2b	// Read CSR
	li x25, -1
	csrrw x9, 0xb2b, x25	// Write all 1s to CSR
	csrrw x9, 0xb2b, x0	// Write all 0s to CSR
	csrrs x9, 0xb2b, x25	// Set all CSR bits
	csrrc x9, 0xb2b, x25	// Clear all CSR bits
	csrrw x9, 0xb2b, x21	// Restore CSR

// Testing CSR 0xb2c
	csrr x10, 0xb2c	// Read CSR
	li x18, -1
	csrrw x8, 0xb2c, x18	// Write all 1s to CSR
	csrrw x8, 0xb2c, x0	// Write all 0s to CSR
	csrrs x8, 0xb2c, x18	// Set all CSR bits
	csrrc x8, 0xb2c, x18	// Clear all CSR bits
	csrrw x8, 0xb2c, x10	// Restore CSR

// Testing CSR 0xb2d
	csrr x2, 0xb2d	// Read CSR
	li x5, -1
	csrrw x29, 0xb2d, x5	// Write all 1s to CSR
	csrrw x29, 0xb2d, x0	// Write all 0s to CSR
	csrrs x29, 0xb2d, x5	// Set all CSR bits
	csrrc x29, 0xb2d, x5	// Clear all CSR bits
	csrrw x29, 0xb2d, x2	// Restore CSR

// Testing CSR 0xb2e
	csrr x7, 0xb2e	// Read CSR
	li x22, -1
	csrrw x13, 0xb2e, x22	// Write all 1s to CSR
	csrrw x13, 0xb2e, x0	// Write all 0s to CSR
	csrrs x13, 0xb2e, x22	// Set all CSR bits
	csrrc x13, 0xb2e, x22	// Clear all CSR bits
	csrrw x13, 0xb2e, x7	// Restore CSR

// Testing CSR 0xb2f
	csrr x1, 0xb2f	// Read CSR
	li x19, -1
	csrrw x27, 0xb2f, x19	// Write all 1s to CSR
	csrrw x27, 0xb2f, x0	// Write all 0s to CSR
	csrrs x27, 0xb2f, x19	// Set all CSR bits
	csrrc x27, 0xb2f, x19	// Clear all CSR bits
	csrrw x27, 0xb2f, x1	// Restore CSR

// Testing CSR 0xb30
	csrr x15, 0xb30	// Read CSR
	li x3, -1
	csrrw x14, 0xb30, x3	// Write all 1s to CSR
	csrrw x14, 0xb30, x0	// Write all 0s to CSR
	csrrs x14, 0xb30, x3	// Set all CSR bits
	csrrc x14, 0xb30, x3	// Clear all CSR bits
	csrrw x14, 0xb30, x15	// Restore CSR

// Testing CSR 0xb31
	csrr x4, 0xb31	// Read CSR
	li x31, -1
	csrrw x23, 0xb31, x31	// Write all 1s to CSR
	csrrw x23, 0xb31, x0	// Write all 0s to CSR
	csrrs x23, 0xb31, x31	// Set all CSR bits
	csrrc x23, 0xb31, x31	// Clear all CSR bits
	csrrw x23, 0xb31, x4	// Restore CSR

// Testing CSR 0xb32
	csrr x29, 0xb32	// Read CSR
	li x18, -1
	csrrw x21, 0xb32, x18	// Write all 1s to CSR
	csrrw x21, 0xb32, x0	// Write all 0s to CSR
	csrrs x21, 0xb32, x18	// Set all CSR bits
	csrrc x21, 0xb32, x18	// Clear all CSR bits
	csrrw x21, 0xb32, x29	// Restore CSR

// Testing CSR 0xb33
	csrr x2, 0xb33	// Read CSR
	li x12, -1
	csrrw x14, 0xb33, x12	// Write all 1s to CSR
	csrrw x14, 0xb33, x0	// Write all 0s to CSR
	csrrs x14, 0xb33, x12	// Set all CSR bits
	csrrc x14, 0xb33, x12	// Clear all CSR bits
	csrrw x14, 0xb33, x2	// Restore CSR

// Testing CSR 0xb34
	csrr x31, 0xb34	// Read CSR
	li x8, -1
	csrrw x4, 0xb34, x8	// Write all 1s to CSR
	csrrw x4, 0xb34, x0	// Write all 0s to CSR
	csrrs x4, 0xb34, x8	// Set all CSR bits
	csrrc x4, 0xb34, x8	// Clear all CSR bits
	csrrw x4, 0xb34, x31	// Restore CSR

// Testing CSR 0xb35
	csrr x4, 0xb35	// Read CSR
	li x18, -1
	csrrw x15, 0xb35, x18	// Write all 1s to CSR
	csrrw x15, 0xb35, x0	// Write all 0s to CSR
	csrrs x15, 0xb35, x18	// Set all CSR bits
	csrrc x15, 0xb35, x18	// Clear all CSR bits
	csrrw x15, 0xb35, x4	// Restore CSR

// Testing CSR 0xb36
	csrr x5, 0xb36	// Read CSR
	li x14, -1
	csrrw x18, 0xb36, x14	// Write all 1s to CSR
	csrrw x18, 0xb36, x0	// Write all 0s to CSR
	csrrs x18, 0xb36, x14	// Set all CSR bits
	csrrc x18, 0xb36, x14	// Clear all CSR bits
	csrrw x18, 0xb36, x5	// Restore CSR

// Testing CSR 0xb37
	csrr x15, 0xb37	// Read CSR
	li x24, -1
	csrrw x9, 0xb37, x24	// Write all 1s to CSR
	csrrw x9, 0xb37, x0	// Write all 0s to CSR
	csrrs x9, 0xb37, x24	// Set all CSR bits
	csrrc x9, 0xb37, x24	// Clear all CSR bits
	csrrw x9, 0xb37, x15	// Restore CSR

// Testing CSR 0xb38
	csrr x18, 0xb38	// Read CSR
	li x23, -1
	csrrw x27, 0xb38, x23	// Write all 1s to CSR
	csrrw x27, 0xb38, x0	// Write all 0s to CSR
	csrrs x27, 0xb38, x23	// Set all CSR bits
	csrrc x27, 0xb38, x23	// Clear all CSR bits
	csrrw x27, 0xb38, x18	// Restore CSR

// Testing CSR 0xb39
	csrr x2, 0xb39	// Read CSR
	li x27, -1
	csrrw x20, 0xb39, x27	// Write all 1s to CSR
	csrrw x20, 0xb39, x0	// Write all 0s to CSR
	csrrs x20, 0xb39, x27	// Set all CSR bits
	csrrc x20, 0xb39, x27	// Clear all CSR bits
	csrrw x20, 0xb39, x2	// Restore CSR

// Testing CSR 0xb3a
	csrr x11, 0xb3a	// Read CSR
	li x13, -1
	csrrw x20, 0xb3a, x13	// Write all 1s to CSR
	csrrw x20, 0xb3a, x0	// Write all 0s to CSR
	csrrs x20, 0xb3a, x13	// Set all CSR bits
	csrrc x20, 0xb3a, x13	// Clear all CSR bits
	csrrw x20, 0xb3a, x11	// Restore CSR

// Testing CSR 0xb3b
	csrr x11, 0xb3b	// Read CSR
	li x7, -1
	csrrw x12, 0xb3b, x7	// Write all 1s to CSR
	csrrw x12, 0xb3b, x0	// Write all 0s to CSR
	csrrs x12, 0xb3b, x7	// Set all CSR bits
	csrrc x12, 0xb3b, x7	// Clear all CSR bits
	csrrw x12, 0xb3b, x11	// Restore CSR

// Testing CSR 0xb3c
	csrr x12, 0xb3c	// Read CSR
	li x18, -1
	csrrw x14, 0xb3c, x18	// Write all 1s to CSR
	csrrw x14, 0xb3c, x0	// Write all 0s to CSR
	csrrs x14, 0xb3c, x18	// Set all CSR bits
	csrrc x14, 0xb3c, x18	// Clear all CSR bits
	csrrw x14, 0xb3c, x12	// Restore CSR

// Testing CSR 0xb3d
	csrr x16, 0xb3d	// Read CSR
	li x7, -1
	csrrw x15, 0xb3d, x7	// Write all 1s to CSR
	csrrw x15, 0xb3d, x0	// Write all 0s to CSR
	csrrs x15, 0xb3d, x7	// Set all CSR bits
	csrrc x15, 0xb3d, x7	// Clear all CSR bits
	csrrw x15, 0xb3d, x16	// Restore CSR

// Testing CSR 0xb3e
	csrr x26, 0xb3e	// Read CSR
	li x30, -1
	csrrw x21, 0xb3e, x30	// Write all 1s to CSR
	csrrw x21, 0xb3e, x0	// Write all 0s to CSR
	csrrs x21, 0xb3e, x30	// Set all CSR bits
	csrrc x21, 0xb3e, x30	// Clear all CSR bits
	csrrw x21, 0xb3e, x26	// Restore CSR

// Testing CSR 0xb3f
	csrr x12, 0xb3f	// Read CSR
	li x20, -1
	csrrw x13, 0xb3f, x20	// Write all 1s to CSR
	csrrw x13, 0xb3f, x0	// Write all 0s to CSR
	csrrs x13, 0xb3f, x20	// Set all CSR bits
	csrrc x13, 0xb3f, x20	// Clear all CSR bits
	csrrw x13, 0xb3f, x12	// Restore CSR

// Testing CSR 0xb40
	csrr x13, 0xb40	// Read CSR
	li x7, -1
	csrrw x5, 0xb40, x7	// Write all 1s to CSR
	csrrw x5, 0xb40, x0	// Write all 0s to CSR
	csrrs x5, 0xb40, x7	// Set all CSR bits
	csrrc x5, 0xb40, x7	// Clear all CSR bits
	csrrw x5, 0xb40, x13	// Restore CSR

// Testing CSR 0xb41
	csrr x13, 0xb41	// Read CSR
	li x8, -1
	csrrw x7, 0xb41, x8	// Write all 1s to CSR
	csrrw x7, 0xb41, x0	// Write all 0s to CSR
	csrrs x7, 0xb41, x8	// Set all CSR bits
	csrrc x7, 0xb41, x8	// Clear all CSR bits
	csrrw x7, 0xb41, x13	// Restore CSR

// Testing CSR 0xb42
	csrr x10, 0xb42	// Read CSR
	li x26, -1
	csrrw x1, 0xb42, x26	// Write all 1s to CSR
	csrrw x1, 0xb42, x0	// Write all 0s to CSR
	csrrs x1, 0xb42, x26	// Set all CSR bits
	csrrc x1, 0xb42, x26	// Clear all CSR bits
	csrrw x1, 0xb42, x10	// Restore CSR

// Testing CSR 0xb43
	csrr x2, 0xb43	// Read CSR
	li x14, -1
	csrrw x26, 0xb43, x14	// Write all 1s to CSR
	csrrw x26, 0xb43, x0	// Write all 0s to CSR
	csrrs x26, 0xb43, x14	// Set all CSR bits
	csrrc x26, 0xb43, x14	// Clear all CSR bits
	csrrw x26, 0xb43, x2	// Restore CSR

// Testing CSR 0xb44
	csrr x18, 0xb44	// Read CSR
	li x15, -1
	csrrw x4, 0xb44, x15	// Write all 1s to CSR
	csrrw x4, 0xb44, x0	// Write all 0s to CSR
	csrrs x4, 0xb44, x15	// Set all CSR bits
	csrrc x4, 0xb44, x15	// Clear all CSR bits
	csrrw x4, 0xb44, x18	// Restore CSR

// Testing CSR 0xb45
	csrr x24, 0xb45	// Read CSR
	li x11, -1
	csrrw x27, 0xb45, x11	// Write all 1s to CSR
	csrrw x27, 0xb45, x0	// Write all 0s to CSR
	csrrs x27, 0xb45, x11	// Set all CSR bits
	csrrc x27, 0xb45, x11	// Clear all CSR bits
	csrrw x27, 0xb45, x24	// Restore CSR

// Testing CSR 0xb46
	csrr x2, 0xb46	// Read CSR
	li x21, -1
	csrrw x10, 0xb46, x21	// Write all 1s to CSR
	csrrw x10, 0xb46, x0	// Write all 0s to CSR
	csrrs x10, 0xb46, x21	// Set all CSR bits
	csrrc x10, 0xb46, x21	// Clear all CSR bits
	csrrw x10, 0xb46, x2	// Restore CSR

// Testing CSR 0xb47
	csrr x20, 0xb47	// Read CSR
	li x7, -1
	csrrw x28, 0xb47, x7	// Write all 1s to CSR
	csrrw x28, 0xb47, x0	// Write all 0s to CSR
	csrrs x28, 0xb47, x7	// Set all CSR bits
	csrrc x28, 0xb47, x7	// Clear all CSR bits
	csrrw x28, 0xb47, x20	// Restore CSR

// Testing CSR 0xb48
	csrr x8, 0xb48	// Read CSR
	li x3, -1
	csrrw x21, 0xb48, x3	// Write all 1s to CSR
	csrrw x21, 0xb48, x0	// Write all 0s to CSR
	csrrs x21, 0xb48, x3	// Set all CSR bits
	csrrc x21, 0xb48, x3	// Clear all CSR bits
	csrrw x21, 0xb48, x8	// Restore CSR

// Testing CSR 0xb49
	csrr x9, 0xb49	// Read CSR
	li x31, -1
	csrrw x21, 0xb49, x31	// Write all 1s to CSR
	csrrw x21, 0xb49, x0	// Write all 0s to CSR
	csrrs x21, 0xb49, x31	// Set all CSR bits
	csrrc x21, 0xb49, x31	// Clear all CSR bits
	csrrw x21, 0xb49, x9	// Restore CSR

// Testing CSR 0xb4a
	csrr x18, 0xb4a	// Read CSR
	li x29, -1
	csrrw x1, 0xb4a, x29	// Write all 1s to CSR
	csrrw x1, 0xb4a, x0	// Write all 0s to CSR
	csrrs x1, 0xb4a, x29	// Set all CSR bits
	csrrc x1, 0xb4a, x29	// Clear all CSR bits
	csrrw x1, 0xb4a, x18	// Restore CSR

// Testing CSR 0xb4b
	csrr x25, 0xb4b	// Read CSR
	li x28, -1
	csrrw x3, 0xb4b, x28	// Write all 1s to CSR
	csrrw x3, 0xb4b, x0	// Write all 0s to CSR
	csrrs x3, 0xb4b, x28	// Set all CSR bits
	csrrc x3, 0xb4b, x28	// Clear all CSR bits
	csrrw x3, 0xb4b, x25	// Restore CSR

// Testing CSR 0xb4c
	csrr x30, 0xb4c	// Read CSR
	li x2, -1
	csrrw x5, 0xb4c, x2	// Write all 1s to CSR
	csrrw x5, 0xb4c, x0	// Write all 0s to CSR
	csrrs x5, 0xb4c, x2	// Set all CSR bits
	csrrc x5, 0xb4c, x2	// Clear all CSR bits
	csrrw x5, 0xb4c, x30	// Restore CSR

// Testing CSR 0xb4d
	csrr x10, 0xb4d	// Read CSR
	li x13, -1
	csrrw x31, 0xb4d, x13	// Write all 1s to CSR
	csrrw x31, 0xb4d, x0	// Write all 0s to CSR
	csrrs x31, 0xb4d, x13	// Set all CSR bits
	csrrc x31, 0xb4d, x13	// Clear all CSR bits
	csrrw x31, 0xb4d, x10	// Restore CSR

// Testing CSR 0xb4e
	csrr x23, 0xb4e	// Read CSR
	li x4, -1
	csrrw x14, 0xb4e, x4	// Write all 1s to CSR
	csrrw x14, 0xb4e, x0	// Write all 0s to CSR
	csrrs x14, 0xb4e, x4	// Set all CSR bits
	csrrc x14, 0xb4e, x4	// Clear all CSR bits
	csrrw x14, 0xb4e, x23	// Restore CSR

// Testing CSR 0xb4f
	csrr x8, 0xb4f	// Read CSR
	li x15, -1
	csrrw x27, 0xb4f, x15	// Write all 1s to CSR
	csrrw x27, 0xb4f, x0	// Write all 0s to CSR
	csrrs x27, 0xb4f, x15	// Set all CSR bits
	csrrc x27, 0xb4f, x15	// Clear all CSR bits
	csrrw x27, 0xb4f, x8	// Restore CSR

// Testing CSR 0xb50
	csrr x26, 0xb50	// Read CSR
	li x2, -1
	csrrw x6, 0xb50, x2	// Write all 1s to CSR
	csrrw x6, 0xb50, x0	// Write all 0s to CSR
	csrrs x6, 0xb50, x2	// Set all CSR bits
	csrrc x6, 0xb50, x2	// Clear all CSR bits
	csrrw x6, 0xb50, x26	// Restore CSR

// Testing CSR 0xb51
	csrr x17, 0xb51	// Read CSR
	li x21, -1
	csrrw x22, 0xb51, x21	// Write all 1s to CSR
	csrrw x22, 0xb51, x0	// Write all 0s to CSR
	csrrs x22, 0xb51, x21	// Set all CSR bits
	csrrc x22, 0xb51, x21	// Clear all CSR bits
	csrrw x22, 0xb51, x17	// Restore CSR

// Testing CSR 0xb52
	csrr x25, 0xb52	// Read CSR
	li x10, -1
	csrrw x20, 0xb52, x10	// Write all 1s to CSR
	csrrw x20, 0xb52, x0	// Write all 0s to CSR
	csrrs x20, 0xb52, x10	// Set all CSR bits
	csrrc x20, 0xb52, x10	// Clear all CSR bits
	csrrw x20, 0xb52, x25	// Restore CSR

// Testing CSR 0xb53
	csrr x19, 0xb53	// Read CSR
	li x25, -1
	csrrw x21, 0xb53, x25	// Write all 1s to CSR
	csrrw x21, 0xb53, x0	// Write all 0s to CSR
	csrrs x21, 0xb53, x25	// Set all CSR bits
	csrrc x21, 0xb53, x25	// Clear all CSR bits
	csrrw x21, 0xb53, x19	// Restore CSR

// Testing CSR 0xb54
	csrr x6, 0xb54	// Read CSR
	li x9, -1
	csrrw x8, 0xb54, x9	// Write all 1s to CSR
	csrrw x8, 0xb54, x0	// Write all 0s to CSR
	csrrs x8, 0xb54, x9	// Set all CSR bits
	csrrc x8, 0xb54, x9	// Clear all CSR bits
	csrrw x8, 0xb54, x6	// Restore CSR

// Testing CSR 0xb55
	csrr x1, 0xb55	// Read CSR
	li x27, -1
	csrrw x18, 0xb55, x27	// Write all 1s to CSR
	csrrw x18, 0xb55, x0	// Write all 0s to CSR
	csrrs x18, 0xb55, x27	// Set all CSR bits
	csrrc x18, 0xb55, x27	// Clear all CSR bits
	csrrw x18, 0xb55, x1	// Restore CSR

// Testing CSR 0xb56
	csrr x12, 0xb56	// Read CSR
	li x15, -1
	csrrw x1, 0xb56, x15	// Write all 1s to CSR
	csrrw x1, 0xb56, x0	// Write all 0s to CSR
	csrrs x1, 0xb56, x15	// Set all CSR bits
	csrrc x1, 0xb56, x15	// Clear all CSR bits
	csrrw x1, 0xb56, x12	// Restore CSR

// Testing CSR 0xb57
	csrr x4, 0xb57	// Read CSR
	li x2, -1
	csrrw x19, 0xb57, x2	// Write all 1s to CSR
	csrrw x19, 0xb57, x0	// Write all 0s to CSR
	csrrs x19, 0xb57, x2	// Set all CSR bits
	csrrc x19, 0xb57, x2	// Clear all CSR bits
	csrrw x19, 0xb57, x4	// Restore CSR

// Testing CSR 0xb58
	csrr x21, 0xb58	// Read CSR
	li x11, -1
	csrrw x4, 0xb58, x11	// Write all 1s to CSR
	csrrw x4, 0xb58, x0	// Write all 0s to CSR
	csrrs x4, 0xb58, x11	// Set all CSR bits
	csrrc x4, 0xb58, x11	// Clear all CSR bits
	csrrw x4, 0xb58, x21	// Restore CSR

// Testing CSR 0xb59
	csrr x28, 0xb59	// Read CSR
	li x17, -1
	csrrw x12, 0xb59, x17	// Write all 1s to CSR
	csrrw x12, 0xb59, x0	// Write all 0s to CSR
	csrrs x12, 0xb59, x17	// Set all CSR bits
	csrrc x12, 0xb59, x17	// Clear all CSR bits
	csrrw x12, 0xb59, x28	// Restore CSR

// Testing CSR 0xb5a
	csrr x16, 0xb5a	// Read CSR
	li x13, -1
	csrrw x9, 0xb5a, x13	// Write all 1s to CSR
	csrrw x9, 0xb5a, x0	// Write all 0s to CSR
	csrrs x9, 0xb5a, x13	// Set all CSR bits
	csrrc x9, 0xb5a, x13	// Clear all CSR bits
	csrrw x9, 0xb5a, x16	// Restore CSR

// Testing CSR 0xb5b
	csrr x9, 0xb5b	// Read CSR
	li x27, -1
	csrrw x13, 0xb5b, x27	// Write all 1s to CSR
	csrrw x13, 0xb5b, x0	// Write all 0s to CSR
	csrrs x13, 0xb5b, x27	// Set all CSR bits
	csrrc x13, 0xb5b, x27	// Clear all CSR bits
	csrrw x13, 0xb5b, x9	// Restore CSR

// Testing CSR 0xb5c
	csrr x7, 0xb5c	// Read CSR
	li x31, -1
	csrrw x19, 0xb5c, x31	// Write all 1s to CSR
	csrrw x19, 0xb5c, x0	// Write all 0s to CSR
	csrrs x19, 0xb5c, x31	// Set all CSR bits
	csrrc x19, 0xb5c, x31	// Clear all CSR bits
	csrrw x19, 0xb5c, x7	// Restore CSR

// Testing CSR 0xb5d
	csrr x1, 0xb5d	// Read CSR
	li x16, -1
	csrrw x5, 0xb5d, x16	// Write all 1s to CSR
	csrrw x5, 0xb5d, x0	// Write all 0s to CSR
	csrrs x5, 0xb5d, x16	// Set all CSR bits
	csrrc x5, 0xb5d, x16	// Clear all CSR bits
	csrrw x5, 0xb5d, x1	// Restore CSR

// Testing CSR 0xb5e
	csrr x22, 0xb5e	// Read CSR
	li x13, -1
	csrrw x9, 0xb5e, x13	// Write all 1s to CSR
	csrrw x9, 0xb5e, x0	// Write all 0s to CSR
	csrrs x9, 0xb5e, x13	// Set all CSR bits
	csrrc x9, 0xb5e, x13	// Clear all CSR bits
	csrrw x9, 0xb5e, x22	// Restore CSR

// Testing CSR 0xb5f
	csrr x28, 0xb5f	// Read CSR
	li x21, -1
	csrrw x10, 0xb5f, x21	// Write all 1s to CSR
	csrrw x10, 0xb5f, x0	// Write all 0s to CSR
	csrrs x10, 0xb5f, x21	// Set all CSR bits
	csrrc x10, 0xb5f, x21	// Clear all CSR bits
	csrrw x10, 0xb5f, x28	// Restore CSR

// Testing CSR 0xb60
	csrr x17, 0xb60	// Read CSR
	li x28, -1
	csrrw x9, 0xb60, x28	// Write all 1s to CSR
	csrrw x9, 0xb60, x0	// Write all 0s to CSR
	csrrs x9, 0xb60, x28	// Set all CSR bits
	csrrc x9, 0xb60, x28	// Clear all CSR bits
	csrrw x9, 0xb60, x17	// Restore CSR

// Testing CSR 0xb61
	csrr x28, 0xb61	// Read CSR
	li x23, -1
	csrrw x20, 0xb61, x23	// Write all 1s to CSR
	csrrw x20, 0xb61, x0	// Write all 0s to CSR
	csrrs x20, 0xb61, x23	// Set all CSR bits
	csrrc x20, 0xb61, x23	// Clear all CSR bits
	csrrw x20, 0xb61, x28	// Restore CSR

// Testing CSR 0xb62
	csrr x5, 0xb62	// Read CSR
	li x13, -1
	csrrw x17, 0xb62, x13	// Write all 1s to CSR
	csrrw x17, 0xb62, x0	// Write all 0s to CSR
	csrrs x17, 0xb62, x13	// Set all CSR bits
	csrrc x17, 0xb62, x13	// Clear all CSR bits
	csrrw x17, 0xb62, x5	// Restore CSR

// Testing CSR 0xb63
	csrr x31, 0xb63	// Read CSR
	li x30, -1
	csrrw x24, 0xb63, x30	// Write all 1s to CSR
	csrrw x24, 0xb63, x0	// Write all 0s to CSR
	csrrs x24, 0xb63, x30	// Set all CSR bits
	csrrc x24, 0xb63, x30	// Clear all CSR bits
	csrrw x24, 0xb63, x31	// Restore CSR

// Testing CSR 0xb64
	csrr x3, 0xb64	// Read CSR
	li x30, -1
	csrrw x19, 0xb64, x30	// Write all 1s to CSR
	csrrw x19, 0xb64, x0	// Write all 0s to CSR
	csrrs x19, 0xb64, x30	// Set all CSR bits
	csrrc x19, 0xb64, x30	// Clear all CSR bits
	csrrw x19, 0xb64, x3	// Restore CSR

// Testing CSR 0xb65
	csrr x2, 0xb65	// Read CSR
	li x22, -1
	csrrw x27, 0xb65, x22	// Write all 1s to CSR
	csrrw x27, 0xb65, x0	// Write all 0s to CSR
	csrrs x27, 0xb65, x22	// Set all CSR bits
	csrrc x27, 0xb65, x22	// Clear all CSR bits
	csrrw x27, 0xb65, x2	// Restore CSR

// Testing CSR 0xb66
	csrr x12, 0xb66	// Read CSR
	li x16, -1
	csrrw x10, 0xb66, x16	// Write all 1s to CSR
	csrrw x10, 0xb66, x0	// Write all 0s to CSR
	csrrs x10, 0xb66, x16	// Set all CSR bits
	csrrc x10, 0xb66, x16	// Clear all CSR bits
	csrrw x10, 0xb66, x12	// Restore CSR

// Testing CSR 0xb67
	csrr x8, 0xb67	// Read CSR
	li x4, -1
	csrrw x15, 0xb67, x4	// Write all 1s to CSR
	csrrw x15, 0xb67, x0	// Write all 0s to CSR
	csrrs x15, 0xb67, x4	// Set all CSR bits
	csrrc x15, 0xb67, x4	// Clear all CSR bits
	csrrw x15, 0xb67, x8	// Restore CSR

// Testing CSR 0xb68
	csrr x18, 0xb68	// Read CSR
	li x6, -1
	csrrw x22, 0xb68, x6	// Write all 1s to CSR
	csrrw x22, 0xb68, x0	// Write all 0s to CSR
	csrrs x22, 0xb68, x6	// Set all CSR bits
	csrrc x22, 0xb68, x6	// Clear all CSR bits
	csrrw x22, 0xb68, x18	// Restore CSR

// Testing CSR 0xb69
	csrr x20, 0xb69	// Read CSR
	li x18, -1
	csrrw x5, 0xb69, x18	// Write all 1s to CSR
	csrrw x5, 0xb69, x0	// Write all 0s to CSR
	csrrs x5, 0xb69, x18	// Set all CSR bits
	csrrc x5, 0xb69, x18	// Clear all CSR bits
	csrrw x5, 0xb69, x20	// Restore CSR

// Testing CSR 0xb6a
	csrr x6, 0xb6a	// Read CSR
	li x26, -1
	csrrw x12, 0xb6a, x26	// Write all 1s to CSR
	csrrw x12, 0xb6a, x0	// Write all 0s to CSR
	csrrs x12, 0xb6a, x26	// Set all CSR bits
	csrrc x12, 0xb6a, x26	// Clear all CSR bits
	csrrw x12, 0xb6a, x6	// Restore CSR

// Testing CSR 0xb6b
	csrr x24, 0xb6b	// Read CSR
	li x11, -1
	csrrw x1, 0xb6b, x11	// Write all 1s to CSR
	csrrw x1, 0xb6b, x0	// Write all 0s to CSR
	csrrs x1, 0xb6b, x11	// Set all CSR bits
	csrrc x1, 0xb6b, x11	// Clear all CSR bits
	csrrw x1, 0xb6b, x24	// Restore CSR

// Testing CSR 0xb6c
	csrr x16, 0xb6c	// Read CSR
	li x25, -1
	csrrw x7, 0xb6c, x25	// Write all 1s to CSR
	csrrw x7, 0xb6c, x0	// Write all 0s to CSR
	csrrs x7, 0xb6c, x25	// Set all CSR bits
	csrrc x7, 0xb6c, x25	// Clear all CSR bits
	csrrw x7, 0xb6c, x16	// Restore CSR

// Testing CSR 0xb6d
	csrr x3, 0xb6d	// Read CSR
	li x21, -1
	csrrw x6, 0xb6d, x21	// Write all 1s to CSR
	csrrw x6, 0xb6d, x0	// Write all 0s to CSR
	csrrs x6, 0xb6d, x21	// Set all CSR bits
	csrrc x6, 0xb6d, x21	// Clear all CSR bits
	csrrw x6, 0xb6d, x3	// Restore CSR

// Testing CSR 0xb6e
	csrr x19, 0xb6e	// Read CSR
	li x8, -1
	csrrw x30, 0xb6e, x8	// Write all 1s to CSR
	csrrw x30, 0xb6e, x0	// Write all 0s to CSR
	csrrs x30, 0xb6e, x8	// Set all CSR bits
	csrrc x30, 0xb6e, x8	// Clear all CSR bits
	csrrw x30, 0xb6e, x19	// Restore CSR

// Testing CSR 0xb6f
	csrr x26, 0xb6f	// Read CSR
	li x14, -1
	csrrw x21, 0xb6f, x14	// Write all 1s to CSR
	csrrw x21, 0xb6f, x0	// Write all 0s to CSR
	csrrs x21, 0xb6f, x14	// Set all CSR bits
	csrrc x21, 0xb6f, x14	// Clear all CSR bits
	csrrw x21, 0xb6f, x26	// Restore CSR

// Testing CSR 0xb70
	csrr x23, 0xb70	// Read CSR
	li x5, -1
	csrrw x28, 0xb70, x5	// Write all 1s to CSR
	csrrw x28, 0xb70, x0	// Write all 0s to CSR
	csrrs x28, 0xb70, x5	// Set all CSR bits
	csrrc x28, 0xb70, x5	// Clear all CSR bits
	csrrw x28, 0xb70, x23	// Restore CSR

// Testing CSR 0xb71
	csrr x16, 0xb71	// Read CSR
	li x1, -1
	csrrw x21, 0xb71, x1	// Write all 1s to CSR
	csrrw x21, 0xb71, x0	// Write all 0s to CSR
	csrrs x21, 0xb71, x1	// Set all CSR bits
	csrrc x21, 0xb71, x1	// Clear all CSR bits
	csrrw x21, 0xb71, x16	// Restore CSR

// Testing CSR 0xb72
	csrr x13, 0xb72	// Read CSR
	li x31, -1
	csrrw x6, 0xb72, x31	// Write all 1s to CSR
	csrrw x6, 0xb72, x0	// Write all 0s to CSR
	csrrs x6, 0xb72, x31	// Set all CSR bits
	csrrc x6, 0xb72, x31	// Clear all CSR bits
	csrrw x6, 0xb72, x13	// Restore CSR

// Testing CSR 0xb73
	csrr x7, 0xb73	// Read CSR
	li x29, -1
	csrrw x20, 0xb73, x29	// Write all 1s to CSR
	csrrw x20, 0xb73, x0	// Write all 0s to CSR
	csrrs x20, 0xb73, x29	// Set all CSR bits
	csrrc x20, 0xb73, x29	// Clear all CSR bits
	csrrw x20, 0xb73, x7	// Restore CSR

// Testing CSR 0xb74
	csrr x17, 0xb74	// Read CSR
	li x3, -1
	csrrw x26, 0xb74, x3	// Write all 1s to CSR
	csrrw x26, 0xb74, x0	// Write all 0s to CSR
	csrrs x26, 0xb74, x3	// Set all CSR bits
	csrrc x26, 0xb74, x3	// Clear all CSR bits
	csrrw x26, 0xb74, x17	// Restore CSR

// Testing CSR 0xb75
	csrr x13, 0xb75	// Read CSR
	li x2, -1
	csrrw x18, 0xb75, x2	// Write all 1s to CSR
	csrrw x18, 0xb75, x0	// Write all 0s to CSR
	csrrs x18, 0xb75, x2	// Set all CSR bits
	csrrc x18, 0xb75, x2	// Clear all CSR bits
	csrrw x18, 0xb75, x13	// Restore CSR

// Testing CSR 0xb76
	csrr x19, 0xb76	// Read CSR
	li x1, -1
	csrrw x6, 0xb76, x1	// Write all 1s to CSR
	csrrw x6, 0xb76, x0	// Write all 0s to CSR
	csrrs x6, 0xb76, x1	// Set all CSR bits
	csrrc x6, 0xb76, x1	// Clear all CSR bits
	csrrw x6, 0xb76, x19	// Restore CSR

// Testing CSR 0xb77
	csrr x17, 0xb77	// Read CSR
	li x16, -1
	csrrw x10, 0xb77, x16	// Write all 1s to CSR
	csrrw x10, 0xb77, x0	// Write all 0s to CSR
	csrrs x10, 0xb77, x16	// Set all CSR bits
	csrrc x10, 0xb77, x16	// Clear all CSR bits
	csrrw x10, 0xb77, x17	// Restore CSR

// Testing CSR 0xb78
	csrr x10, 0xb78	// Read CSR
	li x18, -1
	csrrw x16, 0xb78, x18	// Write all 1s to CSR
	csrrw x16, 0xb78, x0	// Write all 0s to CSR
	csrrs x16, 0xb78, x18	// Set all CSR bits
	csrrc x16, 0xb78, x18	// Clear all CSR bits
	csrrw x16, 0xb78, x10	// Restore CSR

// Testing CSR 0xb79
	csrr x4, 0xb79	// Read CSR
	li x21, -1
	csrrw x19, 0xb79, x21	// Write all 1s to CSR
	csrrw x19, 0xb79, x0	// Write all 0s to CSR
	csrrs x19, 0xb79, x21	// Set all CSR bits
	csrrc x19, 0xb79, x21	// Clear all CSR bits
	csrrw x19, 0xb79, x4	// Restore CSR

// Testing CSR 0xb7a
	csrr x1, 0xb7a	// Read CSR
	li x20, -1
	csrrw x7, 0xb7a, x20	// Write all 1s to CSR
	csrrw x7, 0xb7a, x0	// Write all 0s to CSR
	csrrs x7, 0xb7a, x20	// Set all CSR bits
	csrrc x7, 0xb7a, x20	// Clear all CSR bits
	csrrw x7, 0xb7a, x1	// Restore CSR

// Testing CSR 0xb7b
	csrr x12, 0xb7b	// Read CSR
	li x31, -1
	csrrw x2, 0xb7b, x31	// Write all 1s to CSR
	csrrw x2, 0xb7b, x0	// Write all 0s to CSR
	csrrs x2, 0xb7b, x31	// Set all CSR bits
	csrrc x2, 0xb7b, x31	// Clear all CSR bits
	csrrw x2, 0xb7b, x12	// Restore CSR

// Testing CSR 0xb7c
	csrr x6, 0xb7c	// Read CSR
	li x31, -1
	csrrw x25, 0xb7c, x31	// Write all 1s to CSR
	csrrw x25, 0xb7c, x0	// Write all 0s to CSR
	csrrs x25, 0xb7c, x31	// Set all CSR bits
	csrrc x25, 0xb7c, x31	// Clear all CSR bits
	csrrw x25, 0xb7c, x6	// Restore CSR

// Testing CSR 0xb7d
	csrr x17, 0xb7d	// Read CSR
	li x26, -1
	csrrw x19, 0xb7d, x26	// Write all 1s to CSR
	csrrw x19, 0xb7d, x0	// Write all 0s to CSR
	csrrs x19, 0xb7d, x26	// Set all CSR bits
	csrrc x19, 0xb7d, x26	// Clear all CSR bits
	csrrw x19, 0xb7d, x17	// Restore CSR

// Testing CSR 0xb7e
	csrr x22, 0xb7e	// Read CSR
	li x28, -1
	csrrw x27, 0xb7e, x28	// Write all 1s to CSR
	csrrw x27, 0xb7e, x0	// Write all 0s to CSR
	csrrs x27, 0xb7e, x28	// Set all CSR bits
	csrrc x27, 0xb7e, x28	// Clear all CSR bits
	csrrw x27, 0xb7e, x22	// Restore CSR

// Testing CSR 0xb7f
	csrr x15, 0xb7f	// Read CSR
	li x20, -1
	csrrw x3, 0xb7f, x20	// Write all 1s to CSR
	csrrw x3, 0xb7f, x0	// Write all 0s to CSR
	csrrs x3, 0xb7f, x20	// Set all CSR bits
	csrrc x3, 0xb7f, x20	// Clear all CSR bits
	csrrw x3, 0xb7f, x15	// Restore CSR

// Testing CSR 0xb80
	csrr x23, 0xb80	// Read CSR
	li x17, -1
	csrrw x11, 0xb80, x17	// Write all 1s to CSR
	csrrw x11, 0xb80, x0	// Write all 0s to CSR
	csrrs x11, 0xb80, x17	// Set all CSR bits
	csrrc x11, 0xb80, x17	// Clear all CSR bits
	csrrw x11, 0xb80, x23	// Restore CSR

// Testing CSR 0xb81
	csrr x11, 0xb81	// Read CSR
	li x30, -1
	csrrw x17, 0xb81, x30	// Write all 1s to CSR
	csrrw x17, 0xb81, x0	// Write all 0s to CSR
	csrrs x17, 0xb81, x30	// Set all CSR bits
	csrrc x17, 0xb81, x30	// Clear all CSR bits
	csrrw x17, 0xb81, x11	// Restore CSR

// Testing CSR 0xb82
	csrr x23, 0xb82	// Read CSR
	li x31, -1
	csrrw x22, 0xb82, x31	// Write all 1s to CSR
	csrrw x22, 0xb82, x0	// Write all 0s to CSR
	csrrs x22, 0xb82, x31	// Set all CSR bits
	csrrc x22, 0xb82, x31	// Clear all CSR bits
	csrrw x22, 0xb82, x23	// Restore CSR

// Testing CSR 0xb83
	csrr x12, 0xb83	// Read CSR
	li x11, -1
	csrrw x27, 0xb83, x11	// Write all 1s to CSR
	csrrw x27, 0xb83, x0	// Write all 0s to CSR
	csrrs x27, 0xb83, x11	// Set all CSR bits
	csrrc x27, 0xb83, x11	// Clear all CSR bits
	csrrw x27, 0xb83, x12	// Restore CSR

// Testing CSR 0xb84
	csrr x22, 0xb84	// Read CSR
	li x9, -1
	csrrw x20, 0xb84, x9	// Write all 1s to CSR
	csrrw x20, 0xb84, x0	// Write all 0s to CSR
	csrrs x20, 0xb84, x9	// Set all CSR bits
	csrrc x20, 0xb84, x9	// Clear all CSR bits
	csrrw x20, 0xb84, x22	// Restore CSR

// Testing CSR 0xb85
	csrr x12, 0xb85	// Read CSR
	li x15, -1
	csrrw x31, 0xb85, x15	// Write all 1s to CSR
	csrrw x31, 0xb85, x0	// Write all 0s to CSR
	csrrs x31, 0xb85, x15	// Set all CSR bits
	csrrc x31, 0xb85, x15	// Clear all CSR bits
	csrrw x31, 0xb85, x12	// Restore CSR

// Testing CSR 0xb86
	csrr x18, 0xb86	// Read CSR
	li x7, -1
	csrrw x29, 0xb86, x7	// Write all 1s to CSR
	csrrw x29, 0xb86, x0	// Write all 0s to CSR
	csrrs x29, 0xb86, x7	// Set all CSR bits
	csrrc x29, 0xb86, x7	// Clear all CSR bits
	csrrw x29, 0xb86, x18	// Restore CSR

// Testing CSR 0xb87
	csrr x22, 0xb87	// Read CSR
	li x14, -1
	csrrw x2, 0xb87, x14	// Write all 1s to CSR
	csrrw x2, 0xb87, x0	// Write all 0s to CSR
	csrrs x2, 0xb87, x14	// Set all CSR bits
	csrrc x2, 0xb87, x14	// Clear all CSR bits
	csrrw x2, 0xb87, x22	// Restore CSR

// Testing CSR 0xb88
	csrr x11, 0xb88	// Read CSR
	li x12, -1
	csrrw x22, 0xb88, x12	// Write all 1s to CSR
	csrrw x22, 0xb88, x0	// Write all 0s to CSR
	csrrs x22, 0xb88, x12	// Set all CSR bits
	csrrc x22, 0xb88, x12	// Clear all CSR bits
	csrrw x22, 0xb88, x11	// Restore CSR

// Testing CSR 0xb89
	csrr x14, 0xb89	// Read CSR
	li x4, -1
	csrrw x21, 0xb89, x4	// Write all 1s to CSR
	csrrw x21, 0xb89, x0	// Write all 0s to CSR
	csrrs x21, 0xb89, x4	// Set all CSR bits
	csrrc x21, 0xb89, x4	// Clear all CSR bits
	csrrw x21, 0xb89, x14	// Restore CSR

// Testing CSR 0xb8a
	csrr x28, 0xb8a	// Read CSR
	li x21, -1
	csrrw x29, 0xb8a, x21	// Write all 1s to CSR
	csrrw x29, 0xb8a, x0	// Write all 0s to CSR
	csrrs x29, 0xb8a, x21	// Set all CSR bits
	csrrc x29, 0xb8a, x21	// Clear all CSR bits
	csrrw x29, 0xb8a, x28	// Restore CSR

// Testing CSR 0xb8b
	csrr x25, 0xb8b	// Read CSR
	li x23, -1
	csrrw x27, 0xb8b, x23	// Write all 1s to CSR
	csrrw x27, 0xb8b, x0	// Write all 0s to CSR
	csrrs x27, 0xb8b, x23	// Set all CSR bits
	csrrc x27, 0xb8b, x23	// Clear all CSR bits
	csrrw x27, 0xb8b, x25	// Restore CSR

// Testing CSR 0xb8c
	csrr x28, 0xb8c	// Read CSR
	li x25, -1
	csrrw x24, 0xb8c, x25	// Write all 1s to CSR
	csrrw x24, 0xb8c, x0	// Write all 0s to CSR
	csrrs x24, 0xb8c, x25	// Set all CSR bits
	csrrc x24, 0xb8c, x25	// Clear all CSR bits
	csrrw x24, 0xb8c, x28	// Restore CSR

// Testing CSR 0xb8d
	csrr x7, 0xb8d	// Read CSR
	li x5, -1
	csrrw x21, 0xb8d, x5	// Write all 1s to CSR
	csrrw x21, 0xb8d, x0	// Write all 0s to CSR
	csrrs x21, 0xb8d, x5	// Set all CSR bits
	csrrc x21, 0xb8d, x5	// Clear all CSR bits
	csrrw x21, 0xb8d, x7	// Restore CSR

// Testing CSR 0xb8e
	csrr x16, 0xb8e	// Read CSR
	li x18, -1
	csrrw x29, 0xb8e, x18	// Write all 1s to CSR
	csrrw x29, 0xb8e, x0	// Write all 0s to CSR
	csrrs x29, 0xb8e, x18	// Set all CSR bits
	csrrc x29, 0xb8e, x18	// Clear all CSR bits
	csrrw x29, 0xb8e, x16	// Restore CSR

// Testing CSR 0xb8f
	csrr x24, 0xb8f	// Read CSR
	li x30, -1
	csrrw x15, 0xb8f, x30	// Write all 1s to CSR
	csrrw x15, 0xb8f, x0	// Write all 0s to CSR
	csrrs x15, 0xb8f, x30	// Set all CSR bits
	csrrc x15, 0xb8f, x30	// Clear all CSR bits
	csrrw x15, 0xb8f, x24	// Restore CSR

// Testing CSR 0xb90
	csrr x10, 0xb90	// Read CSR
	li x25, -1
	csrrw x18, 0xb90, x25	// Write all 1s to CSR
	csrrw x18, 0xb90, x0	// Write all 0s to CSR
	csrrs x18, 0xb90, x25	// Set all CSR bits
	csrrc x18, 0xb90, x25	// Clear all CSR bits
	csrrw x18, 0xb90, x10	// Restore CSR

// Testing CSR 0xb91
	csrr x12, 0xb91	// Read CSR
	li x18, -1
	csrrw x6, 0xb91, x18	// Write all 1s to CSR
	csrrw x6, 0xb91, x0	// Write all 0s to CSR
	csrrs x6, 0xb91, x18	// Set all CSR bits
	csrrc x6, 0xb91, x18	// Clear all CSR bits
	csrrw x6, 0xb91, x12	// Restore CSR

// Testing CSR 0xb92
	csrr x26, 0xb92	// Read CSR
	li x2, -1
	csrrw x31, 0xb92, x2	// Write all 1s to CSR
	csrrw x31, 0xb92, x0	// Write all 0s to CSR
	csrrs x31, 0xb92, x2	// Set all CSR bits
	csrrc x31, 0xb92, x2	// Clear all CSR bits
	csrrw x31, 0xb92, x26	// Restore CSR

// Testing CSR 0xb93
	csrr x8, 0xb93	// Read CSR
	li x23, -1
	csrrw x25, 0xb93, x23	// Write all 1s to CSR
	csrrw x25, 0xb93, x0	// Write all 0s to CSR
	csrrs x25, 0xb93, x23	// Set all CSR bits
	csrrc x25, 0xb93, x23	// Clear all CSR bits
	csrrw x25, 0xb93, x8	// Restore CSR

// Testing CSR 0xb94
	csrr x26, 0xb94	// Read CSR
	li x28, -1
	csrrw x10, 0xb94, x28	// Write all 1s to CSR
	csrrw x10, 0xb94, x0	// Write all 0s to CSR
	csrrs x10, 0xb94, x28	// Set all CSR bits
	csrrc x10, 0xb94, x28	// Clear all CSR bits
	csrrw x10, 0xb94, x26	// Restore CSR

// Testing CSR 0xb95
	csrr x23, 0xb95	// Read CSR
	li x26, -1
	csrrw x11, 0xb95, x26	// Write all 1s to CSR
	csrrw x11, 0xb95, x0	// Write all 0s to CSR
	csrrs x11, 0xb95, x26	// Set all CSR bits
	csrrc x11, 0xb95, x26	// Clear all CSR bits
	csrrw x11, 0xb95, x23	// Restore CSR

// Testing CSR 0xb96
	csrr x3, 0xb96	// Read CSR
	li x28, -1
	csrrw x15, 0xb96, x28	// Write all 1s to CSR
	csrrw x15, 0xb96, x0	// Write all 0s to CSR
	csrrs x15, 0xb96, x28	// Set all CSR bits
	csrrc x15, 0xb96, x28	// Clear all CSR bits
	csrrw x15, 0xb96, x3	// Restore CSR

// Testing CSR 0xb97
	csrr x5, 0xb97	// Read CSR
	li x31, -1
	csrrw x14, 0xb97, x31	// Write all 1s to CSR
	csrrw x14, 0xb97, x0	// Write all 0s to CSR
	csrrs x14, 0xb97, x31	// Set all CSR bits
	csrrc x14, 0xb97, x31	// Clear all CSR bits
	csrrw x14, 0xb97, x5	// Restore CSR

// Testing CSR 0xb98
	csrr x25, 0xb98	// Read CSR
	li x17, -1
	csrrw x3, 0xb98, x17	// Write all 1s to CSR
	csrrw x3, 0xb98, x0	// Write all 0s to CSR
	csrrs x3, 0xb98, x17	// Set all CSR bits
	csrrc x3, 0xb98, x17	// Clear all CSR bits
	csrrw x3, 0xb98, x25	// Restore CSR

// Testing CSR 0xb99
	csrr x7, 0xb99	// Read CSR
	li x3, -1
	csrrw x31, 0xb99, x3	// Write all 1s to CSR
	csrrw x31, 0xb99, x0	// Write all 0s to CSR
	csrrs x31, 0xb99, x3	// Set all CSR bits
	csrrc x31, 0xb99, x3	// Clear all CSR bits
	csrrw x31, 0xb99, x7	// Restore CSR

// Testing CSR 0xb9a
	csrr x17, 0xb9a	// Read CSR
	li x6, -1
	csrrw x27, 0xb9a, x6	// Write all 1s to CSR
	csrrw x27, 0xb9a, x0	// Write all 0s to CSR
	csrrs x27, 0xb9a, x6	// Set all CSR bits
	csrrc x27, 0xb9a, x6	// Clear all CSR bits
	csrrw x27, 0xb9a, x17	// Restore CSR

// Testing CSR 0xb9b
	csrr x3, 0xb9b	// Read CSR
	li x9, -1
	csrrw x13, 0xb9b, x9	// Write all 1s to CSR
	csrrw x13, 0xb9b, x0	// Write all 0s to CSR
	csrrs x13, 0xb9b, x9	// Set all CSR bits
	csrrc x13, 0xb9b, x9	// Clear all CSR bits
	csrrw x13, 0xb9b, x3	// Restore CSR

// Testing CSR 0xb9c
	csrr x25, 0xb9c	// Read CSR
	li x24, -1
	csrrw x7, 0xb9c, x24	// Write all 1s to CSR
	csrrw x7, 0xb9c, x0	// Write all 0s to CSR
	csrrs x7, 0xb9c, x24	// Set all CSR bits
	csrrc x7, 0xb9c, x24	// Clear all CSR bits
	csrrw x7, 0xb9c, x25	// Restore CSR

// Testing CSR 0xb9d
	csrr x17, 0xb9d	// Read CSR
	li x11, -1
	csrrw x3, 0xb9d, x11	// Write all 1s to CSR
	csrrw x3, 0xb9d, x0	// Write all 0s to CSR
	csrrs x3, 0xb9d, x11	// Set all CSR bits
	csrrc x3, 0xb9d, x11	// Clear all CSR bits
	csrrw x3, 0xb9d, x17	// Restore CSR

// Testing CSR 0xb9e
	csrr x26, 0xb9e	// Read CSR
	li x4, -1
	csrrw x22, 0xb9e, x4	// Write all 1s to CSR
	csrrw x22, 0xb9e, x0	// Write all 0s to CSR
	csrrs x22, 0xb9e, x4	// Set all CSR bits
	csrrc x22, 0xb9e, x4	// Clear all CSR bits
	csrrw x22, 0xb9e, x26	// Restore CSR

// Testing CSR 0xb9f
	csrr x1, 0xb9f	// Read CSR
	li x19, -1
	csrrw x25, 0xb9f, x19	// Write all 1s to CSR
	csrrw x25, 0xb9f, x0	// Write all 0s to CSR
	csrrs x25, 0xb9f, x19	// Set all CSR bits
	csrrc x25, 0xb9f, x19	// Clear all CSR bits
	csrrw x25, 0xb9f, x1	// Restore CSR

// Testing CSR 0xba0
	csrr x6, 0xba0	// Read CSR
	li x5, -1
	csrrw x1, 0xba0, x5	// Write all 1s to CSR
	csrrw x1, 0xba0, x0	// Write all 0s to CSR
	csrrs x1, 0xba0, x5	// Set all CSR bits
	csrrc x1, 0xba0, x5	// Clear all CSR bits
	csrrw x1, 0xba0, x6	// Restore CSR

// Testing CSR 0xba1
	csrr x5, 0xba1	// Read CSR
	li x27, -1
	csrrw x6, 0xba1, x27	// Write all 1s to CSR
	csrrw x6, 0xba1, x0	// Write all 0s to CSR
	csrrs x6, 0xba1, x27	// Set all CSR bits
	csrrc x6, 0xba1, x27	// Clear all CSR bits
	csrrw x6, 0xba1, x5	// Restore CSR

// Testing CSR 0xba2
	csrr x10, 0xba2	// Read CSR
	li x6, -1
	csrrw x7, 0xba2, x6	// Write all 1s to CSR
	csrrw x7, 0xba2, x0	// Write all 0s to CSR
	csrrs x7, 0xba2, x6	// Set all CSR bits
	csrrc x7, 0xba2, x6	// Clear all CSR bits
	csrrw x7, 0xba2, x10	// Restore CSR

// Testing CSR 0xba3
	csrr x19, 0xba3	// Read CSR
	li x29, -1
	csrrw x20, 0xba3, x29	// Write all 1s to CSR
	csrrw x20, 0xba3, x0	// Write all 0s to CSR
	csrrs x20, 0xba3, x29	// Set all CSR bits
	csrrc x20, 0xba3, x29	// Clear all CSR bits
	csrrw x20, 0xba3, x19	// Restore CSR

// Testing CSR 0xba4
	csrr x25, 0xba4	// Read CSR
	li x2, -1
	csrrw x20, 0xba4, x2	// Write all 1s to CSR
	csrrw x20, 0xba4, x0	// Write all 0s to CSR
	csrrs x20, 0xba4, x2	// Set all CSR bits
	csrrc x20, 0xba4, x2	// Clear all CSR bits
	csrrw x20, 0xba4, x25	// Restore CSR

// Testing CSR 0xba5
	csrr x6, 0xba5	// Read CSR
	li x11, -1
	csrrw x30, 0xba5, x11	// Write all 1s to CSR
	csrrw x30, 0xba5, x0	// Write all 0s to CSR
	csrrs x30, 0xba5, x11	// Set all CSR bits
	csrrc x30, 0xba5, x11	// Clear all CSR bits
	csrrw x30, 0xba5, x6	// Restore CSR

// Testing CSR 0xba6
	csrr x11, 0xba6	// Read CSR
	li x14, -1
	csrrw x17, 0xba6, x14	// Write all 1s to CSR
	csrrw x17, 0xba6, x0	// Write all 0s to CSR
	csrrs x17, 0xba6, x14	// Set all CSR bits
	csrrc x17, 0xba6, x14	// Clear all CSR bits
	csrrw x17, 0xba6, x11	// Restore CSR

// Testing CSR 0xba7
	csrr x28, 0xba7	// Read CSR
	li x19, -1
	csrrw x23, 0xba7, x19	// Write all 1s to CSR
	csrrw x23, 0xba7, x0	// Write all 0s to CSR
	csrrs x23, 0xba7, x19	// Set all CSR bits
	csrrc x23, 0xba7, x19	// Clear all CSR bits
	csrrw x23, 0xba7, x28	// Restore CSR

// Testing CSR 0xba8
	csrr x24, 0xba8	// Read CSR
	li x25, -1
	csrrw x17, 0xba8, x25	// Write all 1s to CSR
	csrrw x17, 0xba8, x0	// Write all 0s to CSR
	csrrs x17, 0xba8, x25	// Set all CSR bits
	csrrc x17, 0xba8, x25	// Clear all CSR bits
	csrrw x17, 0xba8, x24	// Restore CSR

// Testing CSR 0xba9
	csrr x6, 0xba9	// Read CSR
	li x25, -1
	csrrw x21, 0xba9, x25	// Write all 1s to CSR
	csrrw x21, 0xba9, x0	// Write all 0s to CSR
	csrrs x21, 0xba9, x25	// Set all CSR bits
	csrrc x21, 0xba9, x25	// Clear all CSR bits
	csrrw x21, 0xba9, x6	// Restore CSR

// Testing CSR 0xbaa
	csrr x23, 0xbaa	// Read CSR
	li x19, -1
	csrrw x11, 0xbaa, x19	// Write all 1s to CSR
	csrrw x11, 0xbaa, x0	// Write all 0s to CSR
	csrrs x11, 0xbaa, x19	// Set all CSR bits
	csrrc x11, 0xbaa, x19	// Clear all CSR bits
	csrrw x11, 0xbaa, x23	// Restore CSR

// Testing CSR 0xbab
	csrr x17, 0xbab	// Read CSR
	li x27, -1
	csrrw x10, 0xbab, x27	// Write all 1s to CSR
	csrrw x10, 0xbab, x0	// Write all 0s to CSR
	csrrs x10, 0xbab, x27	// Set all CSR bits
	csrrc x10, 0xbab, x27	// Clear all CSR bits
	csrrw x10, 0xbab, x17	// Restore CSR

// Testing CSR 0xbac
	csrr x29, 0xbac	// Read CSR
	li x5, -1
	csrrw x13, 0xbac, x5	// Write all 1s to CSR
	csrrw x13, 0xbac, x0	// Write all 0s to CSR
	csrrs x13, 0xbac, x5	// Set all CSR bits
	csrrc x13, 0xbac, x5	// Clear all CSR bits
	csrrw x13, 0xbac, x29	// Restore CSR

// Testing CSR 0xbad
	csrr x22, 0xbad	// Read CSR
	li x15, -1
	csrrw x29, 0xbad, x15	// Write all 1s to CSR
	csrrw x29, 0xbad, x0	// Write all 0s to CSR
	csrrs x29, 0xbad, x15	// Set all CSR bits
	csrrc x29, 0xbad, x15	// Clear all CSR bits
	csrrw x29, 0xbad, x22	// Restore CSR

// Testing CSR 0xbae
	csrr x4, 0xbae	// Read CSR
	li x6, -1
	csrrw x9, 0xbae, x6	// Write all 1s to CSR
	csrrw x9, 0xbae, x0	// Write all 0s to CSR
	csrrs x9, 0xbae, x6	// Set all CSR bits
	csrrc x9, 0xbae, x6	// Clear all CSR bits
	csrrw x9, 0xbae, x4	// Restore CSR

// Testing CSR 0xbaf
	csrr x25, 0xbaf	// Read CSR
	li x24, -1
	csrrw x6, 0xbaf, x24	// Write all 1s to CSR
	csrrw x6, 0xbaf, x0	// Write all 0s to CSR
	csrrs x6, 0xbaf, x24	// Set all CSR bits
	csrrc x6, 0xbaf, x24	// Clear all CSR bits
	csrrw x6, 0xbaf, x25	// Restore CSR

// Testing CSR 0xbb0
	csrr x27, 0xbb0	// Read CSR
	li x21, -1
	csrrw x12, 0xbb0, x21	// Write all 1s to CSR
	csrrw x12, 0xbb0, x0	// Write all 0s to CSR
	csrrs x12, 0xbb0, x21	// Set all CSR bits
	csrrc x12, 0xbb0, x21	// Clear all CSR bits
	csrrw x12, 0xbb0, x27	// Restore CSR

// Testing CSR 0xbb1
	csrr x30, 0xbb1	// Read CSR
	li x15, -1
	csrrw x10, 0xbb1, x15	// Write all 1s to CSR
	csrrw x10, 0xbb1, x0	// Write all 0s to CSR
	csrrs x10, 0xbb1, x15	// Set all CSR bits
	csrrc x10, 0xbb1, x15	// Clear all CSR bits
	csrrw x10, 0xbb1, x30	// Restore CSR

// Testing CSR 0xbb2
	csrr x8, 0xbb2	// Read CSR
	li x2, -1
	csrrw x15, 0xbb2, x2	// Write all 1s to CSR
	csrrw x15, 0xbb2, x0	// Write all 0s to CSR
	csrrs x15, 0xbb2, x2	// Set all CSR bits
	csrrc x15, 0xbb2, x2	// Clear all CSR bits
	csrrw x15, 0xbb2, x8	// Restore CSR

// Testing CSR 0xbb3
	csrr x13, 0xbb3	// Read CSR
	li x24, -1
	csrrw x27, 0xbb3, x24	// Write all 1s to CSR
	csrrw x27, 0xbb3, x0	// Write all 0s to CSR
	csrrs x27, 0xbb3, x24	// Set all CSR bits
	csrrc x27, 0xbb3, x24	// Clear all CSR bits
	csrrw x27, 0xbb3, x13	// Restore CSR

// Testing CSR 0xbb4
	csrr x21, 0xbb4	// Read CSR
	li x1, -1
	csrrw x10, 0xbb4, x1	// Write all 1s to CSR
	csrrw x10, 0xbb4, x0	// Write all 0s to CSR
	csrrs x10, 0xbb4, x1	// Set all CSR bits
	csrrc x10, 0xbb4, x1	// Clear all CSR bits
	csrrw x10, 0xbb4, x21	// Restore CSR

// Testing CSR 0xbb5
	csrr x7, 0xbb5	// Read CSR
	li x17, -1
	csrrw x21, 0xbb5, x17	// Write all 1s to CSR
	csrrw x21, 0xbb5, x0	// Write all 0s to CSR
	csrrs x21, 0xbb5, x17	// Set all CSR bits
	csrrc x21, 0xbb5, x17	// Clear all CSR bits
	csrrw x21, 0xbb5, x7	// Restore CSR

// Testing CSR 0xbb6
	csrr x3, 0xbb6	// Read CSR
	li x20, -1
	csrrw x8, 0xbb6, x20	// Write all 1s to CSR
	csrrw x8, 0xbb6, x0	// Write all 0s to CSR
	csrrs x8, 0xbb6, x20	// Set all CSR bits
	csrrc x8, 0xbb6, x20	// Clear all CSR bits
	csrrw x8, 0xbb6, x3	// Restore CSR

// Testing CSR 0xbb7
	csrr x12, 0xbb7	// Read CSR
	li x8, -1
	csrrw x29, 0xbb7, x8	// Write all 1s to CSR
	csrrw x29, 0xbb7, x0	// Write all 0s to CSR
	csrrs x29, 0xbb7, x8	// Set all CSR bits
	csrrc x29, 0xbb7, x8	// Clear all CSR bits
	csrrw x29, 0xbb7, x12	// Restore CSR

// Testing CSR 0xbb8
	csrr x6, 0xbb8	// Read CSR
	li x9, -1
	csrrw x3, 0xbb8, x9	// Write all 1s to CSR
	csrrw x3, 0xbb8, x0	// Write all 0s to CSR
	csrrs x3, 0xbb8, x9	// Set all CSR bits
	csrrc x3, 0xbb8, x9	// Clear all CSR bits
	csrrw x3, 0xbb8, x6	// Restore CSR

// Testing CSR 0xbb9
	csrr x11, 0xbb9	// Read CSR
	li x6, -1
	csrrw x29, 0xbb9, x6	// Write all 1s to CSR
	csrrw x29, 0xbb9, x0	// Write all 0s to CSR
	csrrs x29, 0xbb9, x6	// Set all CSR bits
	csrrc x29, 0xbb9, x6	// Clear all CSR bits
	csrrw x29, 0xbb9, x11	// Restore CSR

// Testing CSR 0xbba
	csrr x27, 0xbba	// Read CSR
	li x30, -1
	csrrw x19, 0xbba, x30	// Write all 1s to CSR
	csrrw x19, 0xbba, x0	// Write all 0s to CSR
	csrrs x19, 0xbba, x30	// Set all CSR bits
	csrrc x19, 0xbba, x30	// Clear all CSR bits
	csrrw x19, 0xbba, x27	// Restore CSR

// Testing CSR 0xbbb
	csrr x21, 0xbbb	// Read CSR
	li x30, -1
	csrrw x19, 0xbbb, x30	// Write all 1s to CSR
	csrrw x19, 0xbbb, x0	// Write all 0s to CSR
	csrrs x19, 0xbbb, x30	// Set all CSR bits
	csrrc x19, 0xbbb, x30	// Clear all CSR bits
	csrrw x19, 0xbbb, x21	// Restore CSR

// Testing CSR 0xbbc
	csrr x3, 0xbbc	// Read CSR
	li x4, -1
	csrrw x23, 0xbbc, x4	// Write all 1s to CSR
	csrrw x23, 0xbbc, x0	// Write all 0s to CSR
	csrrs x23, 0xbbc, x4	// Set all CSR bits
	csrrc x23, 0xbbc, x4	// Clear all CSR bits
	csrrw x23, 0xbbc, x3	// Restore CSR

// Testing CSR 0xbbd
	csrr x21, 0xbbd	// Read CSR
	li x31, -1
	csrrw x26, 0xbbd, x31	// Write all 1s to CSR
	csrrw x26, 0xbbd, x0	// Write all 0s to CSR
	csrrs x26, 0xbbd, x31	// Set all CSR bits
	csrrc x26, 0xbbd, x31	// Clear all CSR bits
	csrrw x26, 0xbbd, x21	// Restore CSR

// Testing CSR 0xbbe
	csrr x18, 0xbbe	// Read CSR
	li x3, -1
	csrrw x31, 0xbbe, x3	// Write all 1s to CSR
	csrrw x31, 0xbbe, x0	// Write all 0s to CSR
	csrrs x31, 0xbbe, x3	// Set all CSR bits
	csrrc x31, 0xbbe, x3	// Clear all CSR bits
	csrrw x31, 0xbbe, x18	// Restore CSR

// Testing CSR 0xbbf
	csrr x19, 0xbbf	// Read CSR
	li x7, -1
	csrrw x13, 0xbbf, x7	// Write all 1s to CSR
	csrrw x13, 0xbbf, x0	// Write all 0s to CSR
	csrrs x13, 0xbbf, x7	// Set all CSR bits
	csrrc x13, 0xbbf, x7	// Clear all CSR bits
	csrrw x13, 0xbbf, x19	// Restore CSR

// Testing CSR 0xbc0
	csrr x8, 0xbc0	// Read CSR
	li x18, -1
	csrrw x12, 0xbc0, x18	// Write all 1s to CSR
	csrrw x12, 0xbc0, x0	// Write all 0s to CSR
	csrrs x12, 0xbc0, x18	// Set all CSR bits
	csrrc x12, 0xbc0, x18	// Clear all CSR bits
	csrrw x12, 0xbc0, x8	// Restore CSR

// Testing CSR 0xbc1
	csrr x22, 0xbc1	// Read CSR
	li x4, -1
	csrrw x3, 0xbc1, x4	// Write all 1s to CSR
	csrrw x3, 0xbc1, x0	// Write all 0s to CSR
	csrrs x3, 0xbc1, x4	// Set all CSR bits
	csrrc x3, 0xbc1, x4	// Clear all CSR bits
	csrrw x3, 0xbc1, x22	// Restore CSR

// Testing CSR 0xbc2
	csrr x20, 0xbc2	// Read CSR
	li x26, -1
	csrrw x17, 0xbc2, x26	// Write all 1s to CSR
	csrrw x17, 0xbc2, x0	// Write all 0s to CSR
	csrrs x17, 0xbc2, x26	// Set all CSR bits
	csrrc x17, 0xbc2, x26	// Clear all CSR bits
	csrrw x17, 0xbc2, x20	// Restore CSR

// Testing CSR 0xbc3
	csrr x24, 0xbc3	// Read CSR
	li x11, -1
	csrrw x18, 0xbc3, x11	// Write all 1s to CSR
	csrrw x18, 0xbc3, x0	// Write all 0s to CSR
	csrrs x18, 0xbc3, x11	// Set all CSR bits
	csrrc x18, 0xbc3, x11	// Clear all CSR bits
	csrrw x18, 0xbc3, x24	// Restore CSR

// Testing CSR 0xbc4
	csrr x11, 0xbc4	// Read CSR
	li x20, -1
	csrrw x14, 0xbc4, x20	// Write all 1s to CSR
	csrrw x14, 0xbc4, x0	// Write all 0s to CSR
	csrrs x14, 0xbc4, x20	// Set all CSR bits
	csrrc x14, 0xbc4, x20	// Clear all CSR bits
	csrrw x14, 0xbc4, x11	// Restore CSR

// Testing CSR 0xbc5
	csrr x19, 0xbc5	// Read CSR
	li x13, -1
	csrrw x8, 0xbc5, x13	// Write all 1s to CSR
	csrrw x8, 0xbc5, x0	// Write all 0s to CSR
	csrrs x8, 0xbc5, x13	// Set all CSR bits
	csrrc x8, 0xbc5, x13	// Clear all CSR bits
	csrrw x8, 0xbc5, x19	// Restore CSR

// Testing CSR 0xbc6
	csrr x15, 0xbc6	// Read CSR
	li x2, -1
	csrrw x3, 0xbc6, x2	// Write all 1s to CSR
	csrrw x3, 0xbc6, x0	// Write all 0s to CSR
	csrrs x3, 0xbc6, x2	// Set all CSR bits
	csrrc x3, 0xbc6, x2	// Clear all CSR bits
	csrrw x3, 0xbc6, x15	// Restore CSR

// Testing CSR 0xbc7
	csrr x28, 0xbc7	// Read CSR
	li x24, -1
	csrrw x3, 0xbc7, x24	// Write all 1s to CSR
	csrrw x3, 0xbc7, x0	// Write all 0s to CSR
	csrrs x3, 0xbc7, x24	// Set all CSR bits
	csrrc x3, 0xbc7, x24	// Clear all CSR bits
	csrrw x3, 0xbc7, x28	// Restore CSR

// Testing CSR 0xbc8
	csrr x1, 0xbc8	// Read CSR
	li x15, -1
	csrrw x28, 0xbc8, x15	// Write all 1s to CSR
	csrrw x28, 0xbc8, x0	// Write all 0s to CSR
	csrrs x28, 0xbc8, x15	// Set all CSR bits
	csrrc x28, 0xbc8, x15	// Clear all CSR bits
	csrrw x28, 0xbc8, x1	// Restore CSR

// Testing CSR 0xbc9
	csrr x20, 0xbc9	// Read CSR
	li x22, -1
	csrrw x12, 0xbc9, x22	// Write all 1s to CSR
	csrrw x12, 0xbc9, x0	// Write all 0s to CSR
	csrrs x12, 0xbc9, x22	// Set all CSR bits
	csrrc x12, 0xbc9, x22	// Clear all CSR bits
	csrrw x12, 0xbc9, x20	// Restore CSR

// Testing CSR 0xbca
	csrr x22, 0xbca	// Read CSR
	li x26, -1
	csrrw x4, 0xbca, x26	// Write all 1s to CSR
	csrrw x4, 0xbca, x0	// Write all 0s to CSR
	csrrs x4, 0xbca, x26	// Set all CSR bits
	csrrc x4, 0xbca, x26	// Clear all CSR bits
	csrrw x4, 0xbca, x22	// Restore CSR

// Testing CSR 0xbcb
	csrr x22, 0xbcb	// Read CSR
	li x10, -1
	csrrw x4, 0xbcb, x10	// Write all 1s to CSR
	csrrw x4, 0xbcb, x0	// Write all 0s to CSR
	csrrs x4, 0xbcb, x10	// Set all CSR bits
	csrrc x4, 0xbcb, x10	// Clear all CSR bits
	csrrw x4, 0xbcb, x22	// Restore CSR

// Testing CSR 0xbcc
	csrr x22, 0xbcc	// Read CSR
	li x26, -1
	csrrw x31, 0xbcc, x26	// Write all 1s to CSR
	csrrw x31, 0xbcc, x0	// Write all 0s to CSR
	csrrs x31, 0xbcc, x26	// Set all CSR bits
	csrrc x31, 0xbcc, x26	// Clear all CSR bits
	csrrw x31, 0xbcc, x22	// Restore CSR

// Testing CSR 0xbcd
	csrr x3, 0xbcd	// Read CSR
	li x5, -1
	csrrw x22, 0xbcd, x5	// Write all 1s to CSR
	csrrw x22, 0xbcd, x0	// Write all 0s to CSR
	csrrs x22, 0xbcd, x5	// Set all CSR bits
	csrrc x22, 0xbcd, x5	// Clear all CSR bits
	csrrw x22, 0xbcd, x3	// Restore CSR

// Testing CSR 0xbce
	csrr x7, 0xbce	// Read CSR
	li x8, -1
	csrrw x18, 0xbce, x8	// Write all 1s to CSR
	csrrw x18, 0xbce, x0	// Write all 0s to CSR
	csrrs x18, 0xbce, x8	// Set all CSR bits
	csrrc x18, 0xbce, x8	// Clear all CSR bits
	csrrw x18, 0xbce, x7	// Restore CSR

// Testing CSR 0xbcf
	csrr x2, 0xbcf	// Read CSR
	li x21, -1
	csrrw x25, 0xbcf, x21	// Write all 1s to CSR
	csrrw x25, 0xbcf, x0	// Write all 0s to CSR
	csrrs x25, 0xbcf, x21	// Set all CSR bits
	csrrc x25, 0xbcf, x21	// Clear all CSR bits
	csrrw x25, 0xbcf, x2	// Restore CSR

// Testing CSR 0xbd0
	csrr x16, 0xbd0	// Read CSR
	li x25, -1
	csrrw x4, 0xbd0, x25	// Write all 1s to CSR
	csrrw x4, 0xbd0, x0	// Write all 0s to CSR
	csrrs x4, 0xbd0, x25	// Set all CSR bits
	csrrc x4, 0xbd0, x25	// Clear all CSR bits
	csrrw x4, 0xbd0, x16	// Restore CSR

// Testing CSR 0xbd1
	csrr x26, 0xbd1	// Read CSR
	li x7, -1
	csrrw x15, 0xbd1, x7	// Write all 1s to CSR
	csrrw x15, 0xbd1, x0	// Write all 0s to CSR
	csrrs x15, 0xbd1, x7	// Set all CSR bits
	csrrc x15, 0xbd1, x7	// Clear all CSR bits
	csrrw x15, 0xbd1, x26	// Restore CSR

// Testing CSR 0xbd2
	csrr x8, 0xbd2	// Read CSR
	li x19, -1
	csrrw x5, 0xbd2, x19	// Write all 1s to CSR
	csrrw x5, 0xbd2, x0	// Write all 0s to CSR
	csrrs x5, 0xbd2, x19	// Set all CSR bits
	csrrc x5, 0xbd2, x19	// Clear all CSR bits
	csrrw x5, 0xbd2, x8	// Restore CSR

// Testing CSR 0xbd3
	csrr x28, 0xbd3	// Read CSR
	li x24, -1
	csrrw x7, 0xbd3, x24	// Write all 1s to CSR
	csrrw x7, 0xbd3, x0	// Write all 0s to CSR
	csrrs x7, 0xbd3, x24	// Set all CSR bits
	csrrc x7, 0xbd3, x24	// Clear all CSR bits
	csrrw x7, 0xbd3, x28	// Restore CSR

// Testing CSR 0xbd4
	csrr x23, 0xbd4	// Read CSR
	li x8, -1
	csrrw x7, 0xbd4, x8	// Write all 1s to CSR
	csrrw x7, 0xbd4, x0	// Write all 0s to CSR
	csrrs x7, 0xbd4, x8	// Set all CSR bits
	csrrc x7, 0xbd4, x8	// Clear all CSR bits
	csrrw x7, 0xbd4, x23	// Restore CSR

// Testing CSR 0xbd5
	csrr x22, 0xbd5	// Read CSR
	li x26, -1
	csrrw x6, 0xbd5, x26	// Write all 1s to CSR
	csrrw x6, 0xbd5, x0	// Write all 0s to CSR
	csrrs x6, 0xbd5, x26	// Set all CSR bits
	csrrc x6, 0xbd5, x26	// Clear all CSR bits
	csrrw x6, 0xbd5, x22	// Restore CSR

// Testing CSR 0xbd6
	csrr x7, 0xbd6	// Read CSR
	li x3, -1
	csrrw x8, 0xbd6, x3	// Write all 1s to CSR
	csrrw x8, 0xbd6, x0	// Write all 0s to CSR
	csrrs x8, 0xbd6, x3	// Set all CSR bits
	csrrc x8, 0xbd6, x3	// Clear all CSR bits
	csrrw x8, 0xbd6, x7	// Restore CSR

// Testing CSR 0xbd7
	csrr x6, 0xbd7	// Read CSR
	li x15, -1
	csrrw x4, 0xbd7, x15	// Write all 1s to CSR
	csrrw x4, 0xbd7, x0	// Write all 0s to CSR
	csrrs x4, 0xbd7, x15	// Set all CSR bits
	csrrc x4, 0xbd7, x15	// Clear all CSR bits
	csrrw x4, 0xbd7, x6	// Restore CSR

// Testing CSR 0xbd8
	csrr x22, 0xbd8	// Read CSR
	li x24, -1
	csrrw x18, 0xbd8, x24	// Write all 1s to CSR
	csrrw x18, 0xbd8, x0	// Write all 0s to CSR
	csrrs x18, 0xbd8, x24	// Set all CSR bits
	csrrc x18, 0xbd8, x24	// Clear all CSR bits
	csrrw x18, 0xbd8, x22	// Restore CSR

// Testing CSR 0xbd9
	csrr x26, 0xbd9	// Read CSR
	li x10, -1
	csrrw x15, 0xbd9, x10	// Write all 1s to CSR
	csrrw x15, 0xbd9, x0	// Write all 0s to CSR
	csrrs x15, 0xbd9, x10	// Set all CSR bits
	csrrc x15, 0xbd9, x10	// Clear all CSR bits
	csrrw x15, 0xbd9, x26	// Restore CSR

// Testing CSR 0xbda
	csrr x12, 0xbda	// Read CSR
	li x28, -1
	csrrw x5, 0xbda, x28	// Write all 1s to CSR
	csrrw x5, 0xbda, x0	// Write all 0s to CSR
	csrrs x5, 0xbda, x28	// Set all CSR bits
	csrrc x5, 0xbda, x28	// Clear all CSR bits
	csrrw x5, 0xbda, x12	// Restore CSR

// Testing CSR 0xbdb
	csrr x26, 0xbdb	// Read CSR
	li x6, -1
	csrrw x9, 0xbdb, x6	// Write all 1s to CSR
	csrrw x9, 0xbdb, x0	// Write all 0s to CSR
	csrrs x9, 0xbdb, x6	// Set all CSR bits
	csrrc x9, 0xbdb, x6	// Clear all CSR bits
	csrrw x9, 0xbdb, x26	// Restore CSR

// Testing CSR 0xbdc
	csrr x9, 0xbdc	// Read CSR
	li x21, -1
	csrrw x20, 0xbdc, x21	// Write all 1s to CSR
	csrrw x20, 0xbdc, x0	// Write all 0s to CSR
	csrrs x20, 0xbdc, x21	// Set all CSR bits
	csrrc x20, 0xbdc, x21	// Clear all CSR bits
	csrrw x20, 0xbdc, x9	// Restore CSR

// Testing CSR 0xbdd
	csrr x10, 0xbdd	// Read CSR
	li x18, -1
	csrrw x28, 0xbdd, x18	// Write all 1s to CSR
	csrrw x28, 0xbdd, x0	// Write all 0s to CSR
	csrrs x28, 0xbdd, x18	// Set all CSR bits
	csrrc x28, 0xbdd, x18	// Clear all CSR bits
	csrrw x28, 0xbdd, x10	// Restore CSR

// Testing CSR 0xbde
	csrr x8, 0xbde	// Read CSR
	li x31, -1
	csrrw x5, 0xbde, x31	// Write all 1s to CSR
	csrrw x5, 0xbde, x0	// Write all 0s to CSR
	csrrs x5, 0xbde, x31	// Set all CSR bits
	csrrc x5, 0xbde, x31	// Clear all CSR bits
	csrrw x5, 0xbde, x8	// Restore CSR

// Testing CSR 0xbdf
	csrr x6, 0xbdf	// Read CSR
	li x1, -1
	csrrw x2, 0xbdf, x1	// Write all 1s to CSR
	csrrw x2, 0xbdf, x0	// Write all 0s to CSR
	csrrs x2, 0xbdf, x1	// Set all CSR bits
	csrrc x2, 0xbdf, x1	// Clear all CSR bits
	csrrw x2, 0xbdf, x6	// Restore CSR

// Testing CSR 0xbe0
	csrr x15, 0xbe0	// Read CSR
	li x6, -1
	csrrw x16, 0xbe0, x6	// Write all 1s to CSR
	csrrw x16, 0xbe0, x0	// Write all 0s to CSR
	csrrs x16, 0xbe0, x6	// Set all CSR bits
	csrrc x16, 0xbe0, x6	// Clear all CSR bits
	csrrw x16, 0xbe0, x15	// Restore CSR

// Testing CSR 0xbe1
	csrr x22, 0xbe1	// Read CSR
	li x21, -1
	csrrw x5, 0xbe1, x21	// Write all 1s to CSR
	csrrw x5, 0xbe1, x0	// Write all 0s to CSR
	csrrs x5, 0xbe1, x21	// Set all CSR bits
	csrrc x5, 0xbe1, x21	// Clear all CSR bits
	csrrw x5, 0xbe1, x22	// Restore CSR

// Testing CSR 0xbe2
	csrr x4, 0xbe2	// Read CSR
	li x11, -1
	csrrw x12, 0xbe2, x11	// Write all 1s to CSR
	csrrw x12, 0xbe2, x0	// Write all 0s to CSR
	csrrs x12, 0xbe2, x11	// Set all CSR bits
	csrrc x12, 0xbe2, x11	// Clear all CSR bits
	csrrw x12, 0xbe2, x4	// Restore CSR

// Testing CSR 0xbe3
	csrr x14, 0xbe3	// Read CSR
	li x7, -1
	csrrw x3, 0xbe3, x7	// Write all 1s to CSR
	csrrw x3, 0xbe3, x0	// Write all 0s to CSR
	csrrs x3, 0xbe3, x7	// Set all CSR bits
	csrrc x3, 0xbe3, x7	// Clear all CSR bits
	csrrw x3, 0xbe3, x14	// Restore CSR

// Testing CSR 0xbe4
	csrr x9, 0xbe4	// Read CSR
	li x7, -1
	csrrw x6, 0xbe4, x7	// Write all 1s to CSR
	csrrw x6, 0xbe4, x0	// Write all 0s to CSR
	csrrs x6, 0xbe4, x7	// Set all CSR bits
	csrrc x6, 0xbe4, x7	// Clear all CSR bits
	csrrw x6, 0xbe4, x9	// Restore CSR

// Testing CSR 0xbe5
	csrr x18, 0xbe5	// Read CSR
	li x26, -1
	csrrw x16, 0xbe5, x26	// Write all 1s to CSR
	csrrw x16, 0xbe5, x0	// Write all 0s to CSR
	csrrs x16, 0xbe5, x26	// Set all CSR bits
	csrrc x16, 0xbe5, x26	// Clear all CSR bits
	csrrw x16, 0xbe5, x18	// Restore CSR

// Testing CSR 0xbe6
	csrr x3, 0xbe6	// Read CSR
	li x15, -1
	csrrw x19, 0xbe6, x15	// Write all 1s to CSR
	csrrw x19, 0xbe6, x0	// Write all 0s to CSR
	csrrs x19, 0xbe6, x15	// Set all CSR bits
	csrrc x19, 0xbe6, x15	// Clear all CSR bits
	csrrw x19, 0xbe6, x3	// Restore CSR

// Testing CSR 0xbe7
	csrr x15, 0xbe7	// Read CSR
	li x22, -1
	csrrw x10, 0xbe7, x22	// Write all 1s to CSR
	csrrw x10, 0xbe7, x0	// Write all 0s to CSR
	csrrs x10, 0xbe7, x22	// Set all CSR bits
	csrrc x10, 0xbe7, x22	// Clear all CSR bits
	csrrw x10, 0xbe7, x15	// Restore CSR

// Testing CSR 0xbe8
	csrr x2, 0xbe8	// Read CSR
	li x13, -1
	csrrw x12, 0xbe8, x13	// Write all 1s to CSR
	csrrw x12, 0xbe8, x0	// Write all 0s to CSR
	csrrs x12, 0xbe8, x13	// Set all CSR bits
	csrrc x12, 0xbe8, x13	// Clear all CSR bits
	csrrw x12, 0xbe8, x2	// Restore CSR

// Testing CSR 0xbe9
	csrr x1, 0xbe9	// Read CSR
	li x9, -1
	csrrw x30, 0xbe9, x9	// Write all 1s to CSR
	csrrw x30, 0xbe9, x0	// Write all 0s to CSR
	csrrs x30, 0xbe9, x9	// Set all CSR bits
	csrrc x30, 0xbe9, x9	// Clear all CSR bits
	csrrw x30, 0xbe9, x1	// Restore CSR

// Testing CSR 0xbea
	csrr x8, 0xbea	// Read CSR
	li x7, -1
	csrrw x24, 0xbea, x7	// Write all 1s to CSR
	csrrw x24, 0xbea, x0	// Write all 0s to CSR
	csrrs x24, 0xbea, x7	// Set all CSR bits
	csrrc x24, 0xbea, x7	// Clear all CSR bits
	csrrw x24, 0xbea, x8	// Restore CSR

// Testing CSR 0xbeb
	csrr x22, 0xbeb	// Read CSR
	li x3, -1
	csrrw x30, 0xbeb, x3	// Write all 1s to CSR
	csrrw x30, 0xbeb, x0	// Write all 0s to CSR
	csrrs x30, 0xbeb, x3	// Set all CSR bits
	csrrc x30, 0xbeb, x3	// Clear all CSR bits
	csrrw x30, 0xbeb, x22	// Restore CSR

// Testing CSR 0xbec
	csrr x8, 0xbec	// Read CSR
	li x5, -1
	csrrw x13, 0xbec, x5	// Write all 1s to CSR
	csrrw x13, 0xbec, x0	// Write all 0s to CSR
	csrrs x13, 0xbec, x5	// Set all CSR bits
	csrrc x13, 0xbec, x5	// Clear all CSR bits
	csrrw x13, 0xbec, x8	// Restore CSR

// Testing CSR 0xbed
	csrr x26, 0xbed	// Read CSR
	li x28, -1
	csrrw x21, 0xbed, x28	// Write all 1s to CSR
	csrrw x21, 0xbed, x0	// Write all 0s to CSR
	csrrs x21, 0xbed, x28	// Set all CSR bits
	csrrc x21, 0xbed, x28	// Clear all CSR bits
	csrrw x21, 0xbed, x26	// Restore CSR

// Testing CSR 0xbee
	csrr x15, 0xbee	// Read CSR
	li x4, -1
	csrrw x3, 0xbee, x4	// Write all 1s to CSR
	csrrw x3, 0xbee, x0	// Write all 0s to CSR
	csrrs x3, 0xbee, x4	// Set all CSR bits
	csrrc x3, 0xbee, x4	// Clear all CSR bits
	csrrw x3, 0xbee, x15	// Restore CSR

// Testing CSR 0xbef
	csrr x20, 0xbef	// Read CSR
	li x26, -1
	csrrw x30, 0xbef, x26	// Write all 1s to CSR
	csrrw x30, 0xbef, x0	// Write all 0s to CSR
	csrrs x30, 0xbef, x26	// Set all CSR bits
	csrrc x30, 0xbef, x26	// Clear all CSR bits
	csrrw x30, 0xbef, x20	// Restore CSR

// Testing CSR 0xbf0
	csrr x27, 0xbf0	// Read CSR
	li x13, -1
	csrrw x10, 0xbf0, x13	// Write all 1s to CSR
	csrrw x10, 0xbf0, x0	// Write all 0s to CSR
	csrrs x10, 0xbf0, x13	// Set all CSR bits
	csrrc x10, 0xbf0, x13	// Clear all CSR bits
	csrrw x10, 0xbf0, x27	// Restore CSR

// Testing CSR 0xbf1
	csrr x19, 0xbf1	// Read CSR
	li x18, -1
	csrrw x9, 0xbf1, x18	// Write all 1s to CSR
	csrrw x9, 0xbf1, x0	// Write all 0s to CSR
	csrrs x9, 0xbf1, x18	// Set all CSR bits
	csrrc x9, 0xbf1, x18	// Clear all CSR bits
	csrrw x9, 0xbf1, x19	// Restore CSR

// Testing CSR 0xbf2
	csrr x21, 0xbf2	// Read CSR
	li x26, -1
	csrrw x27, 0xbf2, x26	// Write all 1s to CSR
	csrrw x27, 0xbf2, x0	// Write all 0s to CSR
	csrrs x27, 0xbf2, x26	// Set all CSR bits
	csrrc x27, 0xbf2, x26	// Clear all CSR bits
	csrrw x27, 0xbf2, x21	// Restore CSR

// Testing CSR 0xbf3
	csrr x19, 0xbf3	// Read CSR
	li x24, -1
	csrrw x21, 0xbf3, x24	// Write all 1s to CSR
	csrrw x21, 0xbf3, x0	// Write all 0s to CSR
	csrrs x21, 0xbf3, x24	// Set all CSR bits
	csrrc x21, 0xbf3, x24	// Clear all CSR bits
	csrrw x21, 0xbf3, x19	// Restore CSR

// Testing CSR 0xbf4
	csrr x20, 0xbf4	// Read CSR
	li x18, -1
	csrrw x16, 0xbf4, x18	// Write all 1s to CSR
	csrrw x16, 0xbf4, x0	// Write all 0s to CSR
	csrrs x16, 0xbf4, x18	// Set all CSR bits
	csrrc x16, 0xbf4, x18	// Clear all CSR bits
	csrrw x16, 0xbf4, x20	// Restore CSR

// Testing CSR 0xbf5
	csrr x14, 0xbf5	// Read CSR
	li x24, -1
	csrrw x16, 0xbf5, x24	// Write all 1s to CSR
	csrrw x16, 0xbf5, x0	// Write all 0s to CSR
	csrrs x16, 0xbf5, x24	// Set all CSR bits
	csrrc x16, 0xbf5, x24	// Clear all CSR bits
	csrrw x16, 0xbf5, x14	// Restore CSR

// Testing CSR 0xbf6
	csrr x24, 0xbf6	// Read CSR
	li x19, -1
	csrrw x25, 0xbf6, x19	// Write all 1s to CSR
	csrrw x25, 0xbf6, x0	// Write all 0s to CSR
	csrrs x25, 0xbf6, x19	// Set all CSR bits
	csrrc x25, 0xbf6, x19	// Clear all CSR bits
	csrrw x25, 0xbf6, x24	// Restore CSR

// Testing CSR 0xbf7
	csrr x25, 0xbf7	// Read CSR
	li x21, -1
	csrrw x29, 0xbf7, x21	// Write all 1s to CSR
	csrrw x29, 0xbf7, x0	// Write all 0s to CSR
	csrrs x29, 0xbf7, x21	// Set all CSR bits
	csrrc x29, 0xbf7, x21	// Clear all CSR bits
	csrrw x29, 0xbf7, x25	// Restore CSR

// Testing CSR 0xbf8
	csrr x6, 0xbf8	// Read CSR
	li x23, -1
	csrrw x8, 0xbf8, x23	// Write all 1s to CSR
	csrrw x8, 0xbf8, x0	// Write all 0s to CSR
	csrrs x8, 0xbf8, x23	// Set all CSR bits
	csrrc x8, 0xbf8, x23	// Clear all CSR bits
	csrrw x8, 0xbf8, x6	// Restore CSR

// Testing CSR 0xbf9
	csrr x16, 0xbf9	// Read CSR
	li x29, -1
	csrrw x2, 0xbf9, x29	// Write all 1s to CSR
	csrrw x2, 0xbf9, x0	// Write all 0s to CSR
	csrrs x2, 0xbf9, x29	// Set all CSR bits
	csrrc x2, 0xbf9, x29	// Clear all CSR bits
	csrrw x2, 0xbf9, x16	// Restore CSR

// Testing CSR 0xbfa
	csrr x4, 0xbfa	// Read CSR
	li x23, -1
	csrrw x26, 0xbfa, x23	// Write all 1s to CSR
	csrrw x26, 0xbfa, x0	// Write all 0s to CSR
	csrrs x26, 0xbfa, x23	// Set all CSR bits
	csrrc x26, 0xbfa, x23	// Clear all CSR bits
	csrrw x26, 0xbfa, x4	// Restore CSR

// Testing CSR 0xbfb
	csrr x20, 0xbfb	// Read CSR
	li x11, -1
	csrrw x24, 0xbfb, x11	// Write all 1s to CSR
	csrrw x24, 0xbfb, x0	// Write all 0s to CSR
	csrrs x24, 0xbfb, x11	// Set all CSR bits
	csrrc x24, 0xbfb, x11	// Clear all CSR bits
	csrrw x24, 0xbfb, x20	// Restore CSR

// Testing CSR 0xbfc
	csrr x6, 0xbfc	// Read CSR
	li x4, -1
	csrrw x31, 0xbfc, x4	// Write all 1s to CSR
	csrrw x31, 0xbfc, x0	// Write all 0s to CSR
	csrrs x31, 0xbfc, x4	// Set all CSR bits
	csrrc x31, 0xbfc, x4	// Clear all CSR bits
	csrrw x31, 0xbfc, x6	// Restore CSR

// Testing CSR 0xbfd
	csrr x28, 0xbfd	// Read CSR
	li x14, -1
	csrrw x3, 0xbfd, x14	// Write all 1s to CSR
	csrrw x3, 0xbfd, x0	// Write all 0s to CSR
	csrrs x3, 0xbfd, x14	// Set all CSR bits
	csrrc x3, 0xbfd, x14	// Clear all CSR bits
	csrrw x3, 0xbfd, x28	// Restore CSR

// Testing CSR 0xbfe
	csrr x27, 0xbfe	// Read CSR
	li x16, -1
	csrrw x5, 0xbfe, x16	// Write all 1s to CSR
	csrrw x5, 0xbfe, x0	// Write all 0s to CSR
	csrrs x5, 0xbfe, x16	// Set all CSR bits
	csrrc x5, 0xbfe, x16	// Clear all CSR bits
	csrrw x5, 0xbfe, x27	// Restore CSR

// Testing CSR 0xbff
	csrr x27, 0xbff	// Read CSR
	li x13, -1
	csrrw x6, 0xbff, x13	// Write all 1s to CSR
	csrrw x6, 0xbff, x0	// Write all 0s to CSR
	csrrs x6, 0xbff, x13	// Set all CSR bits
	csrrc x6, 0xbff, x13	// Clear all CSR bits
	csrrw x6, 0xbff, x27	// Restore CSR

// Testing CSR 0xc00
	csrr x28, 0xc00	// Read CSR
	li x21, -1
	csrrw x2, 0xc00, x21	// Write all 1s to CSR
	csrrw x2, 0xc00, x0	// Write all 0s to CSR
	csrrs x2, 0xc00, x21	// Set all CSR bits
	csrrc x2, 0xc00, x21	// Clear all CSR bits
	csrrw x2, 0xc00, x28	// Restore CSR

// Testing CSR 0xc01
	csrr x24, 0xc01	// Read CSR
	li x17, -1
	csrrw x8, 0xc01, x17	// Write all 1s to CSR
	csrrw x8, 0xc01, x0	// Write all 0s to CSR
	csrrs x8, 0xc01, x17	// Set all CSR bits
	csrrc x8, 0xc01, x17	// Clear all CSR bits
	csrrw x8, 0xc01, x24	// Restore CSR

// Testing CSR 0xc02
	csrr x17, 0xc02	// Read CSR
	li x6, -1
	csrrw x3, 0xc02, x6	// Write all 1s to CSR
	csrrw x3, 0xc02, x0	// Write all 0s to CSR
	csrrs x3, 0xc02, x6	// Set all CSR bits
	csrrc x3, 0xc02, x6	// Clear all CSR bits
	csrrw x3, 0xc02, x17	// Restore CSR

// Testing CSR 0xc03
	csrr x20, 0xc03	// Read CSR
	li x14, -1
	csrrw x23, 0xc03, x14	// Write all 1s to CSR
	csrrw x23, 0xc03, x0	// Write all 0s to CSR
	csrrs x23, 0xc03, x14	// Set all CSR bits
	csrrc x23, 0xc03, x14	// Clear all CSR bits
	csrrw x23, 0xc03, x20	// Restore CSR

// Testing CSR 0xc04
	csrr x24, 0xc04	// Read CSR
	li x22, -1
	csrrw x6, 0xc04, x22	// Write all 1s to CSR
	csrrw x6, 0xc04, x0	// Write all 0s to CSR
	csrrs x6, 0xc04, x22	// Set all CSR bits
	csrrc x6, 0xc04, x22	// Clear all CSR bits
	csrrw x6, 0xc04, x24	// Restore CSR

// Testing CSR 0xc05
	csrr x6, 0xc05	// Read CSR
	li x11, -1
	csrrw x9, 0xc05, x11	// Write all 1s to CSR
	csrrw x9, 0xc05, x0	// Write all 0s to CSR
	csrrs x9, 0xc05, x11	// Set all CSR bits
	csrrc x9, 0xc05, x11	// Clear all CSR bits
	csrrw x9, 0xc05, x6	// Restore CSR

// Testing CSR 0xc06
	csrr x12, 0xc06	// Read CSR
	li x14, -1
	csrrw x8, 0xc06, x14	// Write all 1s to CSR
	csrrw x8, 0xc06, x0	// Write all 0s to CSR
	csrrs x8, 0xc06, x14	// Set all CSR bits
	csrrc x8, 0xc06, x14	// Clear all CSR bits
	csrrw x8, 0xc06, x12	// Restore CSR

// Testing CSR 0xc07
	csrr x10, 0xc07	// Read CSR
	li x6, -1
	csrrw x25, 0xc07, x6	// Write all 1s to CSR
	csrrw x25, 0xc07, x0	// Write all 0s to CSR
	csrrs x25, 0xc07, x6	// Set all CSR bits
	csrrc x25, 0xc07, x6	// Clear all CSR bits
	csrrw x25, 0xc07, x10	// Restore CSR

// Testing CSR 0xc08
	csrr x30, 0xc08	// Read CSR
	li x17, -1
	csrrw x27, 0xc08, x17	// Write all 1s to CSR
	csrrw x27, 0xc08, x0	// Write all 0s to CSR
	csrrs x27, 0xc08, x17	// Set all CSR bits
	csrrc x27, 0xc08, x17	// Clear all CSR bits
	csrrw x27, 0xc08, x30	// Restore CSR

// Testing CSR 0xc09
	csrr x19, 0xc09	// Read CSR
	li x20, -1
	csrrw x14, 0xc09, x20	// Write all 1s to CSR
	csrrw x14, 0xc09, x0	// Write all 0s to CSR
	csrrs x14, 0xc09, x20	// Set all CSR bits
	csrrc x14, 0xc09, x20	// Clear all CSR bits
	csrrw x14, 0xc09, x19	// Restore CSR

// Testing CSR 0xc0a
	csrr x3, 0xc0a	// Read CSR
	li x23, -1
	csrrw x8, 0xc0a, x23	// Write all 1s to CSR
	csrrw x8, 0xc0a, x0	// Write all 0s to CSR
	csrrs x8, 0xc0a, x23	// Set all CSR bits
	csrrc x8, 0xc0a, x23	// Clear all CSR bits
	csrrw x8, 0xc0a, x3	// Restore CSR

// Testing CSR 0xc0b
	csrr x6, 0xc0b	// Read CSR
	li x7, -1
	csrrw x27, 0xc0b, x7	// Write all 1s to CSR
	csrrw x27, 0xc0b, x0	// Write all 0s to CSR
	csrrs x27, 0xc0b, x7	// Set all CSR bits
	csrrc x27, 0xc0b, x7	// Clear all CSR bits
	csrrw x27, 0xc0b, x6	// Restore CSR

// Testing CSR 0xc0c
	csrr x17, 0xc0c	// Read CSR
	li x11, -1
	csrrw x10, 0xc0c, x11	// Write all 1s to CSR
	csrrw x10, 0xc0c, x0	// Write all 0s to CSR
	csrrs x10, 0xc0c, x11	// Set all CSR bits
	csrrc x10, 0xc0c, x11	// Clear all CSR bits
	csrrw x10, 0xc0c, x17	// Restore CSR

// Testing CSR 0xc0d
	csrr x1, 0xc0d	// Read CSR
	li x22, -1
	csrrw x20, 0xc0d, x22	// Write all 1s to CSR
	csrrw x20, 0xc0d, x0	// Write all 0s to CSR
	csrrs x20, 0xc0d, x22	// Set all CSR bits
	csrrc x20, 0xc0d, x22	// Clear all CSR bits
	csrrw x20, 0xc0d, x1	// Restore CSR

// Testing CSR 0xc0e
	csrr x14, 0xc0e	// Read CSR
	li x26, -1
	csrrw x7, 0xc0e, x26	// Write all 1s to CSR
	csrrw x7, 0xc0e, x0	// Write all 0s to CSR
	csrrs x7, 0xc0e, x26	// Set all CSR bits
	csrrc x7, 0xc0e, x26	// Clear all CSR bits
	csrrw x7, 0xc0e, x14	// Restore CSR

// Testing CSR 0xc0f
	csrr x31, 0xc0f	// Read CSR
	li x10, -1
	csrrw x11, 0xc0f, x10	// Write all 1s to CSR
	csrrw x11, 0xc0f, x0	// Write all 0s to CSR
	csrrs x11, 0xc0f, x10	// Set all CSR bits
	csrrc x11, 0xc0f, x10	// Clear all CSR bits
	csrrw x11, 0xc0f, x31	// Restore CSR

// Testing CSR 0xc10
	csrr x24, 0xc10	// Read CSR
	li x20, -1
	csrrw x16, 0xc10, x20	// Write all 1s to CSR
	csrrw x16, 0xc10, x0	// Write all 0s to CSR
	csrrs x16, 0xc10, x20	// Set all CSR bits
	csrrc x16, 0xc10, x20	// Clear all CSR bits
	csrrw x16, 0xc10, x24	// Restore CSR

// Testing CSR 0xc11
	csrr x31, 0xc11	// Read CSR
	li x6, -1
	csrrw x20, 0xc11, x6	// Write all 1s to CSR
	csrrw x20, 0xc11, x0	// Write all 0s to CSR
	csrrs x20, 0xc11, x6	// Set all CSR bits
	csrrc x20, 0xc11, x6	// Clear all CSR bits
	csrrw x20, 0xc11, x31	// Restore CSR

// Testing CSR 0xc12
	csrr x8, 0xc12	// Read CSR
	li x17, -1
	csrrw x1, 0xc12, x17	// Write all 1s to CSR
	csrrw x1, 0xc12, x0	// Write all 0s to CSR
	csrrs x1, 0xc12, x17	// Set all CSR bits
	csrrc x1, 0xc12, x17	// Clear all CSR bits
	csrrw x1, 0xc12, x8	// Restore CSR

// Testing CSR 0xc13
	csrr x3, 0xc13	// Read CSR
	li x21, -1
	csrrw x29, 0xc13, x21	// Write all 1s to CSR
	csrrw x29, 0xc13, x0	// Write all 0s to CSR
	csrrs x29, 0xc13, x21	// Set all CSR bits
	csrrc x29, 0xc13, x21	// Clear all CSR bits
	csrrw x29, 0xc13, x3	// Restore CSR

// Testing CSR 0xc14
	csrr x18, 0xc14	// Read CSR
	li x20, -1
	csrrw x23, 0xc14, x20	// Write all 1s to CSR
	csrrw x23, 0xc14, x0	// Write all 0s to CSR
	csrrs x23, 0xc14, x20	// Set all CSR bits
	csrrc x23, 0xc14, x20	// Clear all CSR bits
	csrrw x23, 0xc14, x18	// Restore CSR

// Testing CSR 0xc15
	csrr x14, 0xc15	// Read CSR
	li x2, -1
	csrrw x9, 0xc15, x2	// Write all 1s to CSR
	csrrw x9, 0xc15, x0	// Write all 0s to CSR
	csrrs x9, 0xc15, x2	// Set all CSR bits
	csrrc x9, 0xc15, x2	// Clear all CSR bits
	csrrw x9, 0xc15, x14	// Restore CSR

// Testing CSR 0xc16
	csrr x23, 0xc16	// Read CSR
	li x24, -1
	csrrw x11, 0xc16, x24	// Write all 1s to CSR
	csrrw x11, 0xc16, x0	// Write all 0s to CSR
	csrrs x11, 0xc16, x24	// Set all CSR bits
	csrrc x11, 0xc16, x24	// Clear all CSR bits
	csrrw x11, 0xc16, x23	// Restore CSR

// Testing CSR 0xc17
	csrr x2, 0xc17	// Read CSR
	li x31, -1
	csrrw x1, 0xc17, x31	// Write all 1s to CSR
	csrrw x1, 0xc17, x0	// Write all 0s to CSR
	csrrs x1, 0xc17, x31	// Set all CSR bits
	csrrc x1, 0xc17, x31	// Clear all CSR bits
	csrrw x1, 0xc17, x2	// Restore CSR

// Testing CSR 0xc18
	csrr x30, 0xc18	// Read CSR
	li x26, -1
	csrrw x27, 0xc18, x26	// Write all 1s to CSR
	csrrw x27, 0xc18, x0	// Write all 0s to CSR
	csrrs x27, 0xc18, x26	// Set all CSR bits
	csrrc x27, 0xc18, x26	// Clear all CSR bits
	csrrw x27, 0xc18, x30	// Restore CSR

// Testing CSR 0xc19
	csrr x16, 0xc19	// Read CSR
	li x23, -1
	csrrw x22, 0xc19, x23	// Write all 1s to CSR
	csrrw x22, 0xc19, x0	// Write all 0s to CSR
	csrrs x22, 0xc19, x23	// Set all CSR bits
	csrrc x22, 0xc19, x23	// Clear all CSR bits
	csrrw x22, 0xc19, x16	// Restore CSR

// Testing CSR 0xc1a
	csrr x13, 0xc1a	// Read CSR
	li x31, -1
	csrrw x21, 0xc1a, x31	// Write all 1s to CSR
	csrrw x21, 0xc1a, x0	// Write all 0s to CSR
	csrrs x21, 0xc1a, x31	// Set all CSR bits
	csrrc x21, 0xc1a, x31	// Clear all CSR bits
	csrrw x21, 0xc1a, x13	// Restore CSR

// Testing CSR 0xc1b
	csrr x24, 0xc1b	// Read CSR
	li x13, -1
	csrrw x8, 0xc1b, x13	// Write all 1s to CSR
	csrrw x8, 0xc1b, x0	// Write all 0s to CSR
	csrrs x8, 0xc1b, x13	// Set all CSR bits
	csrrc x8, 0xc1b, x13	// Clear all CSR bits
	csrrw x8, 0xc1b, x24	// Restore CSR

// Testing CSR 0xc1c
	csrr x14, 0xc1c	// Read CSR
	li x23, -1
	csrrw x20, 0xc1c, x23	// Write all 1s to CSR
	csrrw x20, 0xc1c, x0	// Write all 0s to CSR
	csrrs x20, 0xc1c, x23	// Set all CSR bits
	csrrc x20, 0xc1c, x23	// Clear all CSR bits
	csrrw x20, 0xc1c, x14	// Restore CSR

// Testing CSR 0xc1d
	csrr x12, 0xc1d	// Read CSR
	li x5, -1
	csrrw x14, 0xc1d, x5	// Write all 1s to CSR
	csrrw x14, 0xc1d, x0	// Write all 0s to CSR
	csrrs x14, 0xc1d, x5	// Set all CSR bits
	csrrc x14, 0xc1d, x5	// Clear all CSR bits
	csrrw x14, 0xc1d, x12	// Restore CSR

// Testing CSR 0xc1e
	csrr x25, 0xc1e	// Read CSR
	li x10, -1
	csrrw x12, 0xc1e, x10	// Write all 1s to CSR
	csrrw x12, 0xc1e, x0	// Write all 0s to CSR
	csrrs x12, 0xc1e, x10	// Set all CSR bits
	csrrc x12, 0xc1e, x10	// Clear all CSR bits
	csrrw x12, 0xc1e, x25	// Restore CSR

// Testing CSR 0xc1f
	csrr x12, 0xc1f	// Read CSR
	li x3, -1
	csrrw x6, 0xc1f, x3	// Write all 1s to CSR
	csrrw x6, 0xc1f, x0	// Write all 0s to CSR
	csrrs x6, 0xc1f, x3	// Set all CSR bits
	csrrc x6, 0xc1f, x3	// Clear all CSR bits
	csrrw x6, 0xc1f, x12	// Restore CSR

// Testing CSR 0xc20
	csrr x24, 0xc20	// Read CSR
	li x27, -1
	csrrw x3, 0xc20, x27	// Write all 1s to CSR
	csrrw x3, 0xc20, x0	// Write all 0s to CSR
	csrrs x3, 0xc20, x27	// Set all CSR bits
	csrrc x3, 0xc20, x27	// Clear all CSR bits
	csrrw x3, 0xc20, x24	// Restore CSR

// Testing CSR 0xc21
	csrr x21, 0xc21	// Read CSR
	li x28, -1
	csrrw x12, 0xc21, x28	// Write all 1s to CSR
	csrrw x12, 0xc21, x0	// Write all 0s to CSR
	csrrs x12, 0xc21, x28	// Set all CSR bits
	csrrc x12, 0xc21, x28	// Clear all CSR bits
	csrrw x12, 0xc21, x21	// Restore CSR

// Testing CSR 0xc22
	csrr x20, 0xc22	// Read CSR
	li x17, -1
	csrrw x8, 0xc22, x17	// Write all 1s to CSR
	csrrw x8, 0xc22, x0	// Write all 0s to CSR
	csrrs x8, 0xc22, x17	// Set all CSR bits
	csrrc x8, 0xc22, x17	// Clear all CSR bits
	csrrw x8, 0xc22, x20	// Restore CSR

// Testing CSR 0xc23
	csrr x31, 0xc23	// Read CSR
	li x22, -1
	csrrw x13, 0xc23, x22	// Write all 1s to CSR
	csrrw x13, 0xc23, x0	// Write all 0s to CSR
	csrrs x13, 0xc23, x22	// Set all CSR bits
	csrrc x13, 0xc23, x22	// Clear all CSR bits
	csrrw x13, 0xc23, x31	// Restore CSR

// Testing CSR 0xc24
	csrr x2, 0xc24	// Read CSR
	li x4, -1
	csrrw x29, 0xc24, x4	// Write all 1s to CSR
	csrrw x29, 0xc24, x0	// Write all 0s to CSR
	csrrs x29, 0xc24, x4	// Set all CSR bits
	csrrc x29, 0xc24, x4	// Clear all CSR bits
	csrrw x29, 0xc24, x2	// Restore CSR

// Testing CSR 0xc25
	csrr x23, 0xc25	// Read CSR
	li x7, -1
	csrrw x26, 0xc25, x7	// Write all 1s to CSR
	csrrw x26, 0xc25, x0	// Write all 0s to CSR
	csrrs x26, 0xc25, x7	// Set all CSR bits
	csrrc x26, 0xc25, x7	// Clear all CSR bits
	csrrw x26, 0xc25, x23	// Restore CSR

// Testing CSR 0xc26
	csrr x5, 0xc26	// Read CSR
	li x13, -1
	csrrw x6, 0xc26, x13	// Write all 1s to CSR
	csrrw x6, 0xc26, x0	// Write all 0s to CSR
	csrrs x6, 0xc26, x13	// Set all CSR bits
	csrrc x6, 0xc26, x13	// Clear all CSR bits
	csrrw x6, 0xc26, x5	// Restore CSR

// Testing CSR 0xc27
	csrr x7, 0xc27	// Read CSR
	li x4, -1
	csrrw x31, 0xc27, x4	// Write all 1s to CSR
	csrrw x31, 0xc27, x0	// Write all 0s to CSR
	csrrs x31, 0xc27, x4	// Set all CSR bits
	csrrc x31, 0xc27, x4	// Clear all CSR bits
	csrrw x31, 0xc27, x7	// Restore CSR

// Testing CSR 0xc28
	csrr x16, 0xc28	// Read CSR
	li x23, -1
	csrrw x24, 0xc28, x23	// Write all 1s to CSR
	csrrw x24, 0xc28, x0	// Write all 0s to CSR
	csrrs x24, 0xc28, x23	// Set all CSR bits
	csrrc x24, 0xc28, x23	// Clear all CSR bits
	csrrw x24, 0xc28, x16	// Restore CSR

// Testing CSR 0xc29
	csrr x8, 0xc29	// Read CSR
	li x7, -1
	csrrw x13, 0xc29, x7	// Write all 1s to CSR
	csrrw x13, 0xc29, x0	// Write all 0s to CSR
	csrrs x13, 0xc29, x7	// Set all CSR bits
	csrrc x13, 0xc29, x7	// Clear all CSR bits
	csrrw x13, 0xc29, x8	// Restore CSR

// Testing CSR 0xc2a
	csrr x6, 0xc2a	// Read CSR
	li x1, -1
	csrrw x13, 0xc2a, x1	// Write all 1s to CSR
	csrrw x13, 0xc2a, x0	// Write all 0s to CSR
	csrrs x13, 0xc2a, x1	// Set all CSR bits
	csrrc x13, 0xc2a, x1	// Clear all CSR bits
	csrrw x13, 0xc2a, x6	// Restore CSR

// Testing CSR 0xc2b
	csrr x17, 0xc2b	// Read CSR
	li x2, -1
	csrrw x20, 0xc2b, x2	// Write all 1s to CSR
	csrrw x20, 0xc2b, x0	// Write all 0s to CSR
	csrrs x20, 0xc2b, x2	// Set all CSR bits
	csrrc x20, 0xc2b, x2	// Clear all CSR bits
	csrrw x20, 0xc2b, x17	// Restore CSR

// Testing CSR 0xc2c
	csrr x21, 0xc2c	// Read CSR
	li x1, -1
	csrrw x27, 0xc2c, x1	// Write all 1s to CSR
	csrrw x27, 0xc2c, x0	// Write all 0s to CSR
	csrrs x27, 0xc2c, x1	// Set all CSR bits
	csrrc x27, 0xc2c, x1	// Clear all CSR bits
	csrrw x27, 0xc2c, x21	// Restore CSR

// Testing CSR 0xc2d
	csrr x31, 0xc2d	// Read CSR
	li x4, -1
	csrrw x16, 0xc2d, x4	// Write all 1s to CSR
	csrrw x16, 0xc2d, x0	// Write all 0s to CSR
	csrrs x16, 0xc2d, x4	// Set all CSR bits
	csrrc x16, 0xc2d, x4	// Clear all CSR bits
	csrrw x16, 0xc2d, x31	// Restore CSR

// Testing CSR 0xc2e
	csrr x24, 0xc2e	// Read CSR
	li x6, -1
	csrrw x19, 0xc2e, x6	// Write all 1s to CSR
	csrrw x19, 0xc2e, x0	// Write all 0s to CSR
	csrrs x19, 0xc2e, x6	// Set all CSR bits
	csrrc x19, 0xc2e, x6	// Clear all CSR bits
	csrrw x19, 0xc2e, x24	// Restore CSR

// Testing CSR 0xc2f
	csrr x19, 0xc2f	// Read CSR
	li x27, -1
	csrrw x23, 0xc2f, x27	// Write all 1s to CSR
	csrrw x23, 0xc2f, x0	// Write all 0s to CSR
	csrrs x23, 0xc2f, x27	// Set all CSR bits
	csrrc x23, 0xc2f, x27	// Clear all CSR bits
	csrrw x23, 0xc2f, x19	// Restore CSR

// Testing CSR 0xc30
	csrr x31, 0xc30	// Read CSR
	li x25, -1
	csrrw x15, 0xc30, x25	// Write all 1s to CSR
	csrrw x15, 0xc30, x0	// Write all 0s to CSR
	csrrs x15, 0xc30, x25	// Set all CSR bits
	csrrc x15, 0xc30, x25	// Clear all CSR bits
	csrrw x15, 0xc30, x31	// Restore CSR

// Testing CSR 0xc31
	csrr x1, 0xc31	// Read CSR
	li x29, -1
	csrrw x6, 0xc31, x29	// Write all 1s to CSR
	csrrw x6, 0xc31, x0	// Write all 0s to CSR
	csrrs x6, 0xc31, x29	// Set all CSR bits
	csrrc x6, 0xc31, x29	// Clear all CSR bits
	csrrw x6, 0xc31, x1	// Restore CSR

// Testing CSR 0xc32
	csrr x9, 0xc32	// Read CSR
	li x29, -1
	csrrw x16, 0xc32, x29	// Write all 1s to CSR
	csrrw x16, 0xc32, x0	// Write all 0s to CSR
	csrrs x16, 0xc32, x29	// Set all CSR bits
	csrrc x16, 0xc32, x29	// Clear all CSR bits
	csrrw x16, 0xc32, x9	// Restore CSR

// Testing CSR 0xc33
	csrr x25, 0xc33	// Read CSR
	li x17, -1
	csrrw x9, 0xc33, x17	// Write all 1s to CSR
	csrrw x9, 0xc33, x0	// Write all 0s to CSR
	csrrs x9, 0xc33, x17	// Set all CSR bits
	csrrc x9, 0xc33, x17	// Clear all CSR bits
	csrrw x9, 0xc33, x25	// Restore CSR

// Testing CSR 0xc34
	csrr x17, 0xc34	// Read CSR
	li x24, -1
	csrrw x7, 0xc34, x24	// Write all 1s to CSR
	csrrw x7, 0xc34, x0	// Write all 0s to CSR
	csrrs x7, 0xc34, x24	// Set all CSR bits
	csrrc x7, 0xc34, x24	// Clear all CSR bits
	csrrw x7, 0xc34, x17	// Restore CSR

// Testing CSR 0xc35
	csrr x12, 0xc35	// Read CSR
	li x20, -1
	csrrw x28, 0xc35, x20	// Write all 1s to CSR
	csrrw x28, 0xc35, x0	// Write all 0s to CSR
	csrrs x28, 0xc35, x20	// Set all CSR bits
	csrrc x28, 0xc35, x20	// Clear all CSR bits
	csrrw x28, 0xc35, x12	// Restore CSR

// Testing CSR 0xc36
	csrr x14, 0xc36	// Read CSR
	li x17, -1
	csrrw x26, 0xc36, x17	// Write all 1s to CSR
	csrrw x26, 0xc36, x0	// Write all 0s to CSR
	csrrs x26, 0xc36, x17	// Set all CSR bits
	csrrc x26, 0xc36, x17	// Clear all CSR bits
	csrrw x26, 0xc36, x14	// Restore CSR

// Testing CSR 0xc37
	csrr x3, 0xc37	// Read CSR
	li x19, -1
	csrrw x24, 0xc37, x19	// Write all 1s to CSR
	csrrw x24, 0xc37, x0	// Write all 0s to CSR
	csrrs x24, 0xc37, x19	// Set all CSR bits
	csrrc x24, 0xc37, x19	// Clear all CSR bits
	csrrw x24, 0xc37, x3	// Restore CSR

// Testing CSR 0xc38
	csrr x17, 0xc38	// Read CSR
	li x3, -1
	csrrw x14, 0xc38, x3	// Write all 1s to CSR
	csrrw x14, 0xc38, x0	// Write all 0s to CSR
	csrrs x14, 0xc38, x3	// Set all CSR bits
	csrrc x14, 0xc38, x3	// Clear all CSR bits
	csrrw x14, 0xc38, x17	// Restore CSR

// Testing CSR 0xc39
	csrr x21, 0xc39	// Read CSR
	li x12, -1
	csrrw x17, 0xc39, x12	// Write all 1s to CSR
	csrrw x17, 0xc39, x0	// Write all 0s to CSR
	csrrs x17, 0xc39, x12	// Set all CSR bits
	csrrc x17, 0xc39, x12	// Clear all CSR bits
	csrrw x17, 0xc39, x21	// Restore CSR

// Testing CSR 0xc3a
	csrr x17, 0xc3a	// Read CSR
	li x8, -1
	csrrw x2, 0xc3a, x8	// Write all 1s to CSR
	csrrw x2, 0xc3a, x0	// Write all 0s to CSR
	csrrs x2, 0xc3a, x8	// Set all CSR bits
	csrrc x2, 0xc3a, x8	// Clear all CSR bits
	csrrw x2, 0xc3a, x17	// Restore CSR

// Testing CSR 0xc3b
	csrr x3, 0xc3b	// Read CSR
	li x15, -1
	csrrw x13, 0xc3b, x15	// Write all 1s to CSR
	csrrw x13, 0xc3b, x0	// Write all 0s to CSR
	csrrs x13, 0xc3b, x15	// Set all CSR bits
	csrrc x13, 0xc3b, x15	// Clear all CSR bits
	csrrw x13, 0xc3b, x3	// Restore CSR

// Testing CSR 0xc3c
	csrr x25, 0xc3c	// Read CSR
	li x31, -1
	csrrw x16, 0xc3c, x31	// Write all 1s to CSR
	csrrw x16, 0xc3c, x0	// Write all 0s to CSR
	csrrs x16, 0xc3c, x31	// Set all CSR bits
	csrrc x16, 0xc3c, x31	// Clear all CSR bits
	csrrw x16, 0xc3c, x25	// Restore CSR

// Testing CSR 0xc3d
	csrr x27, 0xc3d	// Read CSR
	li x17, -1
	csrrw x10, 0xc3d, x17	// Write all 1s to CSR
	csrrw x10, 0xc3d, x0	// Write all 0s to CSR
	csrrs x10, 0xc3d, x17	// Set all CSR bits
	csrrc x10, 0xc3d, x17	// Clear all CSR bits
	csrrw x10, 0xc3d, x27	// Restore CSR

// Testing CSR 0xc3e
	csrr x28, 0xc3e	// Read CSR
	li x10, -1
	csrrw x20, 0xc3e, x10	// Write all 1s to CSR
	csrrw x20, 0xc3e, x0	// Write all 0s to CSR
	csrrs x20, 0xc3e, x10	// Set all CSR bits
	csrrc x20, 0xc3e, x10	// Clear all CSR bits
	csrrw x20, 0xc3e, x28	// Restore CSR

// Testing CSR 0xc3f
	csrr x21, 0xc3f	// Read CSR
	li x6, -1
	csrrw x25, 0xc3f, x6	// Write all 1s to CSR
	csrrw x25, 0xc3f, x0	// Write all 0s to CSR
	csrrs x25, 0xc3f, x6	// Set all CSR bits
	csrrc x25, 0xc3f, x6	// Clear all CSR bits
	csrrw x25, 0xc3f, x21	// Restore CSR

// Testing CSR 0xc40
	csrr x5, 0xc40	// Read CSR
	li x22, -1
	csrrw x24, 0xc40, x22	// Write all 1s to CSR
	csrrw x24, 0xc40, x0	// Write all 0s to CSR
	csrrs x24, 0xc40, x22	// Set all CSR bits
	csrrc x24, 0xc40, x22	// Clear all CSR bits
	csrrw x24, 0xc40, x5	// Restore CSR

// Testing CSR 0xc41
	csrr x2, 0xc41	// Read CSR
	li x24, -1
	csrrw x5, 0xc41, x24	// Write all 1s to CSR
	csrrw x5, 0xc41, x0	// Write all 0s to CSR
	csrrs x5, 0xc41, x24	// Set all CSR bits
	csrrc x5, 0xc41, x24	// Clear all CSR bits
	csrrw x5, 0xc41, x2	// Restore CSR

// Testing CSR 0xc42
	csrr x25, 0xc42	// Read CSR
	li x23, -1
	csrrw x6, 0xc42, x23	// Write all 1s to CSR
	csrrw x6, 0xc42, x0	// Write all 0s to CSR
	csrrs x6, 0xc42, x23	// Set all CSR bits
	csrrc x6, 0xc42, x23	// Clear all CSR bits
	csrrw x6, 0xc42, x25	// Restore CSR

// Testing CSR 0xc43
	csrr x10, 0xc43	// Read CSR
	li x2, -1
	csrrw x11, 0xc43, x2	// Write all 1s to CSR
	csrrw x11, 0xc43, x0	// Write all 0s to CSR
	csrrs x11, 0xc43, x2	// Set all CSR bits
	csrrc x11, 0xc43, x2	// Clear all CSR bits
	csrrw x11, 0xc43, x10	// Restore CSR

// Testing CSR 0xc44
	csrr x19, 0xc44	// Read CSR
	li x13, -1
	csrrw x26, 0xc44, x13	// Write all 1s to CSR
	csrrw x26, 0xc44, x0	// Write all 0s to CSR
	csrrs x26, 0xc44, x13	// Set all CSR bits
	csrrc x26, 0xc44, x13	// Clear all CSR bits
	csrrw x26, 0xc44, x19	// Restore CSR

// Testing CSR 0xc45
	csrr x14, 0xc45	// Read CSR
	li x6, -1
	csrrw x2, 0xc45, x6	// Write all 1s to CSR
	csrrw x2, 0xc45, x0	// Write all 0s to CSR
	csrrs x2, 0xc45, x6	// Set all CSR bits
	csrrc x2, 0xc45, x6	// Clear all CSR bits
	csrrw x2, 0xc45, x14	// Restore CSR

// Testing CSR 0xc46
	csrr x6, 0xc46	// Read CSR
	li x14, -1
	csrrw x3, 0xc46, x14	// Write all 1s to CSR
	csrrw x3, 0xc46, x0	// Write all 0s to CSR
	csrrs x3, 0xc46, x14	// Set all CSR bits
	csrrc x3, 0xc46, x14	// Clear all CSR bits
	csrrw x3, 0xc46, x6	// Restore CSR

// Testing CSR 0xc47
	csrr x20, 0xc47	// Read CSR
	li x11, -1
	csrrw x30, 0xc47, x11	// Write all 1s to CSR
	csrrw x30, 0xc47, x0	// Write all 0s to CSR
	csrrs x30, 0xc47, x11	// Set all CSR bits
	csrrc x30, 0xc47, x11	// Clear all CSR bits
	csrrw x30, 0xc47, x20	// Restore CSR

// Testing CSR 0xc48
	csrr x18, 0xc48	// Read CSR
	li x16, -1
	csrrw x19, 0xc48, x16	// Write all 1s to CSR
	csrrw x19, 0xc48, x0	// Write all 0s to CSR
	csrrs x19, 0xc48, x16	// Set all CSR bits
	csrrc x19, 0xc48, x16	// Clear all CSR bits
	csrrw x19, 0xc48, x18	// Restore CSR

// Testing CSR 0xc49
	csrr x21, 0xc49	// Read CSR
	li x24, -1
	csrrw x31, 0xc49, x24	// Write all 1s to CSR
	csrrw x31, 0xc49, x0	// Write all 0s to CSR
	csrrs x31, 0xc49, x24	// Set all CSR bits
	csrrc x31, 0xc49, x24	// Clear all CSR bits
	csrrw x31, 0xc49, x21	// Restore CSR

// Testing CSR 0xc4a
	csrr x29, 0xc4a	// Read CSR
	li x11, -1
	csrrw x17, 0xc4a, x11	// Write all 1s to CSR
	csrrw x17, 0xc4a, x0	// Write all 0s to CSR
	csrrs x17, 0xc4a, x11	// Set all CSR bits
	csrrc x17, 0xc4a, x11	// Clear all CSR bits
	csrrw x17, 0xc4a, x29	// Restore CSR

// Testing CSR 0xc4b
	csrr x23, 0xc4b	// Read CSR
	li x28, -1
	csrrw x6, 0xc4b, x28	// Write all 1s to CSR
	csrrw x6, 0xc4b, x0	// Write all 0s to CSR
	csrrs x6, 0xc4b, x28	// Set all CSR bits
	csrrc x6, 0xc4b, x28	// Clear all CSR bits
	csrrw x6, 0xc4b, x23	// Restore CSR

// Testing CSR 0xc4c
	csrr x5, 0xc4c	// Read CSR
	li x1, -1
	csrrw x27, 0xc4c, x1	// Write all 1s to CSR
	csrrw x27, 0xc4c, x0	// Write all 0s to CSR
	csrrs x27, 0xc4c, x1	// Set all CSR bits
	csrrc x27, 0xc4c, x1	// Clear all CSR bits
	csrrw x27, 0xc4c, x5	// Restore CSR

// Testing CSR 0xc4d
	csrr x16, 0xc4d	// Read CSR
	li x6, -1
	csrrw x8, 0xc4d, x6	// Write all 1s to CSR
	csrrw x8, 0xc4d, x0	// Write all 0s to CSR
	csrrs x8, 0xc4d, x6	// Set all CSR bits
	csrrc x8, 0xc4d, x6	// Clear all CSR bits
	csrrw x8, 0xc4d, x16	// Restore CSR

// Testing CSR 0xc4e
	csrr x26, 0xc4e	// Read CSR
	li x1, -1
	csrrw x23, 0xc4e, x1	// Write all 1s to CSR
	csrrw x23, 0xc4e, x0	// Write all 0s to CSR
	csrrs x23, 0xc4e, x1	// Set all CSR bits
	csrrc x23, 0xc4e, x1	// Clear all CSR bits
	csrrw x23, 0xc4e, x26	// Restore CSR

// Testing CSR 0xc4f
	csrr x24, 0xc4f	// Read CSR
	li x11, -1
	csrrw x7, 0xc4f, x11	// Write all 1s to CSR
	csrrw x7, 0xc4f, x0	// Write all 0s to CSR
	csrrs x7, 0xc4f, x11	// Set all CSR bits
	csrrc x7, 0xc4f, x11	// Clear all CSR bits
	csrrw x7, 0xc4f, x24	// Restore CSR

// Testing CSR 0xc50
	csrr x16, 0xc50	// Read CSR
	li x26, -1
	csrrw x18, 0xc50, x26	// Write all 1s to CSR
	csrrw x18, 0xc50, x0	// Write all 0s to CSR
	csrrs x18, 0xc50, x26	// Set all CSR bits
	csrrc x18, 0xc50, x26	// Clear all CSR bits
	csrrw x18, 0xc50, x16	// Restore CSR

// Testing CSR 0xc51
	csrr x30, 0xc51	// Read CSR
	li x31, -1
	csrrw x19, 0xc51, x31	// Write all 1s to CSR
	csrrw x19, 0xc51, x0	// Write all 0s to CSR
	csrrs x19, 0xc51, x31	// Set all CSR bits
	csrrc x19, 0xc51, x31	// Clear all CSR bits
	csrrw x19, 0xc51, x30	// Restore CSR

// Testing CSR 0xc52
	csrr x17, 0xc52	// Read CSR
	li x10, -1
	csrrw x23, 0xc52, x10	// Write all 1s to CSR
	csrrw x23, 0xc52, x0	// Write all 0s to CSR
	csrrs x23, 0xc52, x10	// Set all CSR bits
	csrrc x23, 0xc52, x10	// Clear all CSR bits
	csrrw x23, 0xc52, x17	// Restore CSR

// Testing CSR 0xc53
	csrr x20, 0xc53	// Read CSR
	li x7, -1
	csrrw x3, 0xc53, x7	// Write all 1s to CSR
	csrrw x3, 0xc53, x0	// Write all 0s to CSR
	csrrs x3, 0xc53, x7	// Set all CSR bits
	csrrc x3, 0xc53, x7	// Clear all CSR bits
	csrrw x3, 0xc53, x20	// Restore CSR

// Testing CSR 0xc54
	csrr x7, 0xc54	// Read CSR
	li x9, -1
	csrrw x5, 0xc54, x9	// Write all 1s to CSR
	csrrw x5, 0xc54, x0	// Write all 0s to CSR
	csrrs x5, 0xc54, x9	// Set all CSR bits
	csrrc x5, 0xc54, x9	// Clear all CSR bits
	csrrw x5, 0xc54, x7	// Restore CSR

// Testing CSR 0xc55
	csrr x28, 0xc55	// Read CSR
	li x26, -1
	csrrw x30, 0xc55, x26	// Write all 1s to CSR
	csrrw x30, 0xc55, x0	// Write all 0s to CSR
	csrrs x30, 0xc55, x26	// Set all CSR bits
	csrrc x30, 0xc55, x26	// Clear all CSR bits
	csrrw x30, 0xc55, x28	// Restore CSR

// Testing CSR 0xc56
	csrr x18, 0xc56	// Read CSR
	li x1, -1
	csrrw x9, 0xc56, x1	// Write all 1s to CSR
	csrrw x9, 0xc56, x0	// Write all 0s to CSR
	csrrs x9, 0xc56, x1	// Set all CSR bits
	csrrc x9, 0xc56, x1	// Clear all CSR bits
	csrrw x9, 0xc56, x18	// Restore CSR

// Testing CSR 0xc57
	csrr x4, 0xc57	// Read CSR
	li x16, -1
	csrrw x14, 0xc57, x16	// Write all 1s to CSR
	csrrw x14, 0xc57, x0	// Write all 0s to CSR
	csrrs x14, 0xc57, x16	// Set all CSR bits
	csrrc x14, 0xc57, x16	// Clear all CSR bits
	csrrw x14, 0xc57, x4	// Restore CSR

// Testing CSR 0xc58
	csrr x20, 0xc58	// Read CSR
	li x19, -1
	csrrw x11, 0xc58, x19	// Write all 1s to CSR
	csrrw x11, 0xc58, x0	// Write all 0s to CSR
	csrrs x11, 0xc58, x19	// Set all CSR bits
	csrrc x11, 0xc58, x19	// Clear all CSR bits
	csrrw x11, 0xc58, x20	// Restore CSR

// Testing CSR 0xc59
	csrr x17, 0xc59	// Read CSR
	li x20, -1
	csrrw x22, 0xc59, x20	// Write all 1s to CSR
	csrrw x22, 0xc59, x0	// Write all 0s to CSR
	csrrs x22, 0xc59, x20	// Set all CSR bits
	csrrc x22, 0xc59, x20	// Clear all CSR bits
	csrrw x22, 0xc59, x17	// Restore CSR

// Testing CSR 0xc5a
	csrr x7, 0xc5a	// Read CSR
	li x26, -1
	csrrw x1, 0xc5a, x26	// Write all 1s to CSR
	csrrw x1, 0xc5a, x0	// Write all 0s to CSR
	csrrs x1, 0xc5a, x26	// Set all CSR bits
	csrrc x1, 0xc5a, x26	// Clear all CSR bits
	csrrw x1, 0xc5a, x7	// Restore CSR

// Testing CSR 0xc5b
	csrr x17, 0xc5b	// Read CSR
	li x25, -1
	csrrw x29, 0xc5b, x25	// Write all 1s to CSR
	csrrw x29, 0xc5b, x0	// Write all 0s to CSR
	csrrs x29, 0xc5b, x25	// Set all CSR bits
	csrrc x29, 0xc5b, x25	// Clear all CSR bits
	csrrw x29, 0xc5b, x17	// Restore CSR

// Testing CSR 0xc5c
	csrr x25, 0xc5c	// Read CSR
	li x31, -1
	csrrw x23, 0xc5c, x31	// Write all 1s to CSR
	csrrw x23, 0xc5c, x0	// Write all 0s to CSR
	csrrs x23, 0xc5c, x31	// Set all CSR bits
	csrrc x23, 0xc5c, x31	// Clear all CSR bits
	csrrw x23, 0xc5c, x25	// Restore CSR

// Testing CSR 0xc5d
	csrr x30, 0xc5d	// Read CSR
	li x9, -1
	csrrw x4, 0xc5d, x9	// Write all 1s to CSR
	csrrw x4, 0xc5d, x0	// Write all 0s to CSR
	csrrs x4, 0xc5d, x9	// Set all CSR bits
	csrrc x4, 0xc5d, x9	// Clear all CSR bits
	csrrw x4, 0xc5d, x30	// Restore CSR

// Testing CSR 0xc5e
	csrr x10, 0xc5e	// Read CSR
	li x23, -1
	csrrw x13, 0xc5e, x23	// Write all 1s to CSR
	csrrw x13, 0xc5e, x0	// Write all 0s to CSR
	csrrs x13, 0xc5e, x23	// Set all CSR bits
	csrrc x13, 0xc5e, x23	// Clear all CSR bits
	csrrw x13, 0xc5e, x10	// Restore CSR

// Testing CSR 0xc5f
	csrr x1, 0xc5f	// Read CSR
	li x17, -1
	csrrw x25, 0xc5f, x17	// Write all 1s to CSR
	csrrw x25, 0xc5f, x0	// Write all 0s to CSR
	csrrs x25, 0xc5f, x17	// Set all CSR bits
	csrrc x25, 0xc5f, x17	// Clear all CSR bits
	csrrw x25, 0xc5f, x1	// Restore CSR

// Testing CSR 0xc60
	csrr x13, 0xc60	// Read CSR
	li x28, -1
	csrrw x3, 0xc60, x28	// Write all 1s to CSR
	csrrw x3, 0xc60, x0	// Write all 0s to CSR
	csrrs x3, 0xc60, x28	// Set all CSR bits
	csrrc x3, 0xc60, x28	// Clear all CSR bits
	csrrw x3, 0xc60, x13	// Restore CSR

// Testing CSR 0xc61
	csrr x6, 0xc61	// Read CSR
	li x8, -1
	csrrw x5, 0xc61, x8	// Write all 1s to CSR
	csrrw x5, 0xc61, x0	// Write all 0s to CSR
	csrrs x5, 0xc61, x8	// Set all CSR bits
	csrrc x5, 0xc61, x8	// Clear all CSR bits
	csrrw x5, 0xc61, x6	// Restore CSR

// Testing CSR 0xc62
	csrr x11, 0xc62	// Read CSR
	li x17, -1
	csrrw x13, 0xc62, x17	// Write all 1s to CSR
	csrrw x13, 0xc62, x0	// Write all 0s to CSR
	csrrs x13, 0xc62, x17	// Set all CSR bits
	csrrc x13, 0xc62, x17	// Clear all CSR bits
	csrrw x13, 0xc62, x11	// Restore CSR

// Testing CSR 0xc63
	csrr x8, 0xc63	// Read CSR
	li x13, -1
	csrrw x25, 0xc63, x13	// Write all 1s to CSR
	csrrw x25, 0xc63, x0	// Write all 0s to CSR
	csrrs x25, 0xc63, x13	// Set all CSR bits
	csrrc x25, 0xc63, x13	// Clear all CSR bits
	csrrw x25, 0xc63, x8	// Restore CSR

// Testing CSR 0xc64
	csrr x14, 0xc64	// Read CSR
	li x11, -1
	csrrw x12, 0xc64, x11	// Write all 1s to CSR
	csrrw x12, 0xc64, x0	// Write all 0s to CSR
	csrrs x12, 0xc64, x11	// Set all CSR bits
	csrrc x12, 0xc64, x11	// Clear all CSR bits
	csrrw x12, 0xc64, x14	// Restore CSR

// Testing CSR 0xc65
	csrr x8, 0xc65	// Read CSR
	li x21, -1
	csrrw x10, 0xc65, x21	// Write all 1s to CSR
	csrrw x10, 0xc65, x0	// Write all 0s to CSR
	csrrs x10, 0xc65, x21	// Set all CSR bits
	csrrc x10, 0xc65, x21	// Clear all CSR bits
	csrrw x10, 0xc65, x8	// Restore CSR

// Testing CSR 0xc66
	csrr x10, 0xc66	// Read CSR
	li x12, -1
	csrrw x6, 0xc66, x12	// Write all 1s to CSR
	csrrw x6, 0xc66, x0	// Write all 0s to CSR
	csrrs x6, 0xc66, x12	// Set all CSR bits
	csrrc x6, 0xc66, x12	// Clear all CSR bits
	csrrw x6, 0xc66, x10	// Restore CSR

// Testing CSR 0xc67
	csrr x1, 0xc67	// Read CSR
	li x28, -1
	csrrw x26, 0xc67, x28	// Write all 1s to CSR
	csrrw x26, 0xc67, x0	// Write all 0s to CSR
	csrrs x26, 0xc67, x28	// Set all CSR bits
	csrrc x26, 0xc67, x28	// Clear all CSR bits
	csrrw x26, 0xc67, x1	// Restore CSR

// Testing CSR 0xc68
	csrr x3, 0xc68	// Read CSR
	li x13, -1
	csrrw x15, 0xc68, x13	// Write all 1s to CSR
	csrrw x15, 0xc68, x0	// Write all 0s to CSR
	csrrs x15, 0xc68, x13	// Set all CSR bits
	csrrc x15, 0xc68, x13	// Clear all CSR bits
	csrrw x15, 0xc68, x3	// Restore CSR

// Testing CSR 0xc69
	csrr x8, 0xc69	// Read CSR
	li x19, -1
	csrrw x11, 0xc69, x19	// Write all 1s to CSR
	csrrw x11, 0xc69, x0	// Write all 0s to CSR
	csrrs x11, 0xc69, x19	// Set all CSR bits
	csrrc x11, 0xc69, x19	// Clear all CSR bits
	csrrw x11, 0xc69, x8	// Restore CSR

// Testing CSR 0xc6a
	csrr x4, 0xc6a	// Read CSR
	li x5, -1
	csrrw x12, 0xc6a, x5	// Write all 1s to CSR
	csrrw x12, 0xc6a, x0	// Write all 0s to CSR
	csrrs x12, 0xc6a, x5	// Set all CSR bits
	csrrc x12, 0xc6a, x5	// Clear all CSR bits
	csrrw x12, 0xc6a, x4	// Restore CSR

// Testing CSR 0xc6b
	csrr x6, 0xc6b	// Read CSR
	li x12, -1
	csrrw x26, 0xc6b, x12	// Write all 1s to CSR
	csrrw x26, 0xc6b, x0	// Write all 0s to CSR
	csrrs x26, 0xc6b, x12	// Set all CSR bits
	csrrc x26, 0xc6b, x12	// Clear all CSR bits
	csrrw x26, 0xc6b, x6	// Restore CSR

// Testing CSR 0xc6c
	csrr x30, 0xc6c	// Read CSR
	li x21, -1
	csrrw x19, 0xc6c, x21	// Write all 1s to CSR
	csrrw x19, 0xc6c, x0	// Write all 0s to CSR
	csrrs x19, 0xc6c, x21	// Set all CSR bits
	csrrc x19, 0xc6c, x21	// Clear all CSR bits
	csrrw x19, 0xc6c, x30	// Restore CSR

// Testing CSR 0xc6d
	csrr x8, 0xc6d	// Read CSR
	li x13, -1
	csrrw x22, 0xc6d, x13	// Write all 1s to CSR
	csrrw x22, 0xc6d, x0	// Write all 0s to CSR
	csrrs x22, 0xc6d, x13	// Set all CSR bits
	csrrc x22, 0xc6d, x13	// Clear all CSR bits
	csrrw x22, 0xc6d, x8	// Restore CSR

// Testing CSR 0xc6e
	csrr x8, 0xc6e	// Read CSR
	li x28, -1
	csrrw x16, 0xc6e, x28	// Write all 1s to CSR
	csrrw x16, 0xc6e, x0	// Write all 0s to CSR
	csrrs x16, 0xc6e, x28	// Set all CSR bits
	csrrc x16, 0xc6e, x28	// Clear all CSR bits
	csrrw x16, 0xc6e, x8	// Restore CSR

// Testing CSR 0xc6f
	csrr x2, 0xc6f	// Read CSR
	li x14, -1
	csrrw x22, 0xc6f, x14	// Write all 1s to CSR
	csrrw x22, 0xc6f, x0	// Write all 0s to CSR
	csrrs x22, 0xc6f, x14	// Set all CSR bits
	csrrc x22, 0xc6f, x14	// Clear all CSR bits
	csrrw x22, 0xc6f, x2	// Restore CSR

// Testing CSR 0xc70
	csrr x2, 0xc70	// Read CSR
	li x11, -1
	csrrw x23, 0xc70, x11	// Write all 1s to CSR
	csrrw x23, 0xc70, x0	// Write all 0s to CSR
	csrrs x23, 0xc70, x11	// Set all CSR bits
	csrrc x23, 0xc70, x11	// Clear all CSR bits
	csrrw x23, 0xc70, x2	// Restore CSR

// Testing CSR 0xc71
	csrr x29, 0xc71	// Read CSR
	li x17, -1
	csrrw x30, 0xc71, x17	// Write all 1s to CSR
	csrrw x30, 0xc71, x0	// Write all 0s to CSR
	csrrs x30, 0xc71, x17	// Set all CSR bits
	csrrc x30, 0xc71, x17	// Clear all CSR bits
	csrrw x30, 0xc71, x29	// Restore CSR

// Testing CSR 0xc72
	csrr x31, 0xc72	// Read CSR
	li x2, -1
	csrrw x25, 0xc72, x2	// Write all 1s to CSR
	csrrw x25, 0xc72, x0	// Write all 0s to CSR
	csrrs x25, 0xc72, x2	// Set all CSR bits
	csrrc x25, 0xc72, x2	// Clear all CSR bits
	csrrw x25, 0xc72, x31	// Restore CSR

// Testing CSR 0xc73
	csrr x12, 0xc73	// Read CSR
	li x22, -1
	csrrw x4, 0xc73, x22	// Write all 1s to CSR
	csrrw x4, 0xc73, x0	// Write all 0s to CSR
	csrrs x4, 0xc73, x22	// Set all CSR bits
	csrrc x4, 0xc73, x22	// Clear all CSR bits
	csrrw x4, 0xc73, x12	// Restore CSR

// Testing CSR 0xc74
	csrr x9, 0xc74	// Read CSR
	li x24, -1
	csrrw x21, 0xc74, x24	// Write all 1s to CSR
	csrrw x21, 0xc74, x0	// Write all 0s to CSR
	csrrs x21, 0xc74, x24	// Set all CSR bits
	csrrc x21, 0xc74, x24	// Clear all CSR bits
	csrrw x21, 0xc74, x9	// Restore CSR

// Testing CSR 0xc75
	csrr x27, 0xc75	// Read CSR
	li x1, -1
	csrrw x25, 0xc75, x1	// Write all 1s to CSR
	csrrw x25, 0xc75, x0	// Write all 0s to CSR
	csrrs x25, 0xc75, x1	// Set all CSR bits
	csrrc x25, 0xc75, x1	// Clear all CSR bits
	csrrw x25, 0xc75, x27	// Restore CSR

// Testing CSR 0xc76
	csrr x20, 0xc76	// Read CSR
	li x23, -1
	csrrw x1, 0xc76, x23	// Write all 1s to CSR
	csrrw x1, 0xc76, x0	// Write all 0s to CSR
	csrrs x1, 0xc76, x23	// Set all CSR bits
	csrrc x1, 0xc76, x23	// Clear all CSR bits
	csrrw x1, 0xc76, x20	// Restore CSR

// Testing CSR 0xc77
	csrr x10, 0xc77	// Read CSR
	li x15, -1
	csrrw x25, 0xc77, x15	// Write all 1s to CSR
	csrrw x25, 0xc77, x0	// Write all 0s to CSR
	csrrs x25, 0xc77, x15	// Set all CSR bits
	csrrc x25, 0xc77, x15	// Clear all CSR bits
	csrrw x25, 0xc77, x10	// Restore CSR

// Testing CSR 0xc78
	csrr x15, 0xc78	// Read CSR
	li x7, -1
	csrrw x2, 0xc78, x7	// Write all 1s to CSR
	csrrw x2, 0xc78, x0	// Write all 0s to CSR
	csrrs x2, 0xc78, x7	// Set all CSR bits
	csrrc x2, 0xc78, x7	// Clear all CSR bits
	csrrw x2, 0xc78, x15	// Restore CSR

// Testing CSR 0xc79
	csrr x12, 0xc79	// Read CSR
	li x13, -1
	csrrw x27, 0xc79, x13	// Write all 1s to CSR
	csrrw x27, 0xc79, x0	// Write all 0s to CSR
	csrrs x27, 0xc79, x13	// Set all CSR bits
	csrrc x27, 0xc79, x13	// Clear all CSR bits
	csrrw x27, 0xc79, x12	// Restore CSR

// Testing CSR 0xc7a
	csrr x28, 0xc7a	// Read CSR
	li x18, -1
	csrrw x26, 0xc7a, x18	// Write all 1s to CSR
	csrrw x26, 0xc7a, x0	// Write all 0s to CSR
	csrrs x26, 0xc7a, x18	// Set all CSR bits
	csrrc x26, 0xc7a, x18	// Clear all CSR bits
	csrrw x26, 0xc7a, x28	// Restore CSR

// Testing CSR 0xc7b
	csrr x13, 0xc7b	// Read CSR
	li x4, -1
	csrrw x14, 0xc7b, x4	// Write all 1s to CSR
	csrrw x14, 0xc7b, x0	// Write all 0s to CSR
	csrrs x14, 0xc7b, x4	// Set all CSR bits
	csrrc x14, 0xc7b, x4	// Clear all CSR bits
	csrrw x14, 0xc7b, x13	// Restore CSR

// Testing CSR 0xc7c
	csrr x26, 0xc7c	// Read CSR
	li x22, -1
	csrrw x3, 0xc7c, x22	// Write all 1s to CSR
	csrrw x3, 0xc7c, x0	// Write all 0s to CSR
	csrrs x3, 0xc7c, x22	// Set all CSR bits
	csrrc x3, 0xc7c, x22	// Clear all CSR bits
	csrrw x3, 0xc7c, x26	// Restore CSR

// Testing CSR 0xc7d
	csrr x27, 0xc7d	// Read CSR
	li x8, -1
	csrrw x5, 0xc7d, x8	// Write all 1s to CSR
	csrrw x5, 0xc7d, x0	// Write all 0s to CSR
	csrrs x5, 0xc7d, x8	// Set all CSR bits
	csrrc x5, 0xc7d, x8	// Clear all CSR bits
	csrrw x5, 0xc7d, x27	// Restore CSR

// Testing CSR 0xc7e
	csrr x18, 0xc7e	// Read CSR
	li x26, -1
	csrrw x13, 0xc7e, x26	// Write all 1s to CSR
	csrrw x13, 0xc7e, x0	// Write all 0s to CSR
	csrrs x13, 0xc7e, x26	// Set all CSR bits
	csrrc x13, 0xc7e, x26	// Clear all CSR bits
	csrrw x13, 0xc7e, x18	// Restore CSR

// Testing CSR 0xc7f
	csrr x31, 0xc7f	// Read CSR
	li x29, -1
	csrrw x21, 0xc7f, x29	// Write all 1s to CSR
	csrrw x21, 0xc7f, x0	// Write all 0s to CSR
	csrrs x21, 0xc7f, x29	// Set all CSR bits
	csrrc x21, 0xc7f, x29	// Clear all CSR bits
	csrrw x21, 0xc7f, x31	// Restore CSR

// Testing CSR 0xc80
	csrr x7, 0xc80	// Read CSR
	li x1, -1
	csrrw x24, 0xc80, x1	// Write all 1s to CSR
	csrrw x24, 0xc80, x0	// Write all 0s to CSR
	csrrs x24, 0xc80, x1	// Set all CSR bits
	csrrc x24, 0xc80, x1	// Clear all CSR bits
	csrrw x24, 0xc80, x7	// Restore CSR

// Testing CSR 0xc81
	csrr x25, 0xc81	// Read CSR
	li x20, -1
	csrrw x9, 0xc81, x20	// Write all 1s to CSR
	csrrw x9, 0xc81, x0	// Write all 0s to CSR
	csrrs x9, 0xc81, x20	// Set all CSR bits
	csrrc x9, 0xc81, x20	// Clear all CSR bits
	csrrw x9, 0xc81, x25	// Restore CSR

// Testing CSR 0xc82
	csrr x3, 0xc82	// Read CSR
	li x19, -1
	csrrw x5, 0xc82, x19	// Write all 1s to CSR
	csrrw x5, 0xc82, x0	// Write all 0s to CSR
	csrrs x5, 0xc82, x19	// Set all CSR bits
	csrrc x5, 0xc82, x19	// Clear all CSR bits
	csrrw x5, 0xc82, x3	// Restore CSR

// Testing CSR 0xc83
	csrr x10, 0xc83	// Read CSR
	li x9, -1
	csrrw x24, 0xc83, x9	// Write all 1s to CSR
	csrrw x24, 0xc83, x0	// Write all 0s to CSR
	csrrs x24, 0xc83, x9	// Set all CSR bits
	csrrc x24, 0xc83, x9	// Clear all CSR bits
	csrrw x24, 0xc83, x10	// Restore CSR

// Testing CSR 0xc84
	csrr x6, 0xc84	// Read CSR
	li x30, -1
	csrrw x2, 0xc84, x30	// Write all 1s to CSR
	csrrw x2, 0xc84, x0	// Write all 0s to CSR
	csrrs x2, 0xc84, x30	// Set all CSR bits
	csrrc x2, 0xc84, x30	// Clear all CSR bits
	csrrw x2, 0xc84, x6	// Restore CSR

// Testing CSR 0xc85
	csrr x3, 0xc85	// Read CSR
	li x13, -1
	csrrw x8, 0xc85, x13	// Write all 1s to CSR
	csrrw x8, 0xc85, x0	// Write all 0s to CSR
	csrrs x8, 0xc85, x13	// Set all CSR bits
	csrrc x8, 0xc85, x13	// Clear all CSR bits
	csrrw x8, 0xc85, x3	// Restore CSR

// Testing CSR 0xc86
	csrr x3, 0xc86	// Read CSR
	li x7, -1
	csrrw x13, 0xc86, x7	// Write all 1s to CSR
	csrrw x13, 0xc86, x0	// Write all 0s to CSR
	csrrs x13, 0xc86, x7	// Set all CSR bits
	csrrc x13, 0xc86, x7	// Clear all CSR bits
	csrrw x13, 0xc86, x3	// Restore CSR

// Testing CSR 0xc87
	csrr x26, 0xc87	// Read CSR
	li x25, -1
	csrrw x15, 0xc87, x25	// Write all 1s to CSR
	csrrw x15, 0xc87, x0	// Write all 0s to CSR
	csrrs x15, 0xc87, x25	// Set all CSR bits
	csrrc x15, 0xc87, x25	// Clear all CSR bits
	csrrw x15, 0xc87, x26	// Restore CSR

// Testing CSR 0xc88
	csrr x1, 0xc88	// Read CSR
	li x13, -1
	csrrw x24, 0xc88, x13	// Write all 1s to CSR
	csrrw x24, 0xc88, x0	// Write all 0s to CSR
	csrrs x24, 0xc88, x13	// Set all CSR bits
	csrrc x24, 0xc88, x13	// Clear all CSR bits
	csrrw x24, 0xc88, x1	// Restore CSR

// Testing CSR 0xc89
	csrr x9, 0xc89	// Read CSR
	li x7, -1
	csrrw x28, 0xc89, x7	// Write all 1s to CSR
	csrrw x28, 0xc89, x0	// Write all 0s to CSR
	csrrs x28, 0xc89, x7	// Set all CSR bits
	csrrc x28, 0xc89, x7	// Clear all CSR bits
	csrrw x28, 0xc89, x9	// Restore CSR

// Testing CSR 0xc8a
	csrr x3, 0xc8a	// Read CSR
	li x19, -1
	csrrw x4, 0xc8a, x19	// Write all 1s to CSR
	csrrw x4, 0xc8a, x0	// Write all 0s to CSR
	csrrs x4, 0xc8a, x19	// Set all CSR bits
	csrrc x4, 0xc8a, x19	// Clear all CSR bits
	csrrw x4, 0xc8a, x3	// Restore CSR

// Testing CSR 0xc8b
	csrr x19, 0xc8b	// Read CSR
	li x18, -1
	csrrw x30, 0xc8b, x18	// Write all 1s to CSR
	csrrw x30, 0xc8b, x0	// Write all 0s to CSR
	csrrs x30, 0xc8b, x18	// Set all CSR bits
	csrrc x30, 0xc8b, x18	// Clear all CSR bits
	csrrw x30, 0xc8b, x19	// Restore CSR

// Testing CSR 0xc8c
	csrr x9, 0xc8c	// Read CSR
	li x4, -1
	csrrw x15, 0xc8c, x4	// Write all 1s to CSR
	csrrw x15, 0xc8c, x0	// Write all 0s to CSR
	csrrs x15, 0xc8c, x4	// Set all CSR bits
	csrrc x15, 0xc8c, x4	// Clear all CSR bits
	csrrw x15, 0xc8c, x9	// Restore CSR

// Testing CSR 0xc8d
	csrr x14, 0xc8d	// Read CSR
	li x11, -1
	csrrw x7, 0xc8d, x11	// Write all 1s to CSR
	csrrw x7, 0xc8d, x0	// Write all 0s to CSR
	csrrs x7, 0xc8d, x11	// Set all CSR bits
	csrrc x7, 0xc8d, x11	// Clear all CSR bits
	csrrw x7, 0xc8d, x14	// Restore CSR

// Testing CSR 0xc8e
	csrr x18, 0xc8e	// Read CSR
	li x13, -1
	csrrw x11, 0xc8e, x13	// Write all 1s to CSR
	csrrw x11, 0xc8e, x0	// Write all 0s to CSR
	csrrs x11, 0xc8e, x13	// Set all CSR bits
	csrrc x11, 0xc8e, x13	// Clear all CSR bits
	csrrw x11, 0xc8e, x18	// Restore CSR

// Testing CSR 0xc8f
	csrr x2, 0xc8f	// Read CSR
	li x14, -1
	csrrw x28, 0xc8f, x14	// Write all 1s to CSR
	csrrw x28, 0xc8f, x0	// Write all 0s to CSR
	csrrs x28, 0xc8f, x14	// Set all CSR bits
	csrrc x28, 0xc8f, x14	// Clear all CSR bits
	csrrw x28, 0xc8f, x2	// Restore CSR

// Testing CSR 0xc90
	csrr x31, 0xc90	// Read CSR
	li x1, -1
	csrrw x14, 0xc90, x1	// Write all 1s to CSR
	csrrw x14, 0xc90, x0	// Write all 0s to CSR
	csrrs x14, 0xc90, x1	// Set all CSR bits
	csrrc x14, 0xc90, x1	// Clear all CSR bits
	csrrw x14, 0xc90, x31	// Restore CSR

// Testing CSR 0xc91
	csrr x24, 0xc91	// Read CSR
	li x17, -1
	csrrw x20, 0xc91, x17	// Write all 1s to CSR
	csrrw x20, 0xc91, x0	// Write all 0s to CSR
	csrrs x20, 0xc91, x17	// Set all CSR bits
	csrrc x20, 0xc91, x17	// Clear all CSR bits
	csrrw x20, 0xc91, x24	// Restore CSR

// Testing CSR 0xc92
	csrr x20, 0xc92	// Read CSR
	li x25, -1
	csrrw x1, 0xc92, x25	// Write all 1s to CSR
	csrrw x1, 0xc92, x0	// Write all 0s to CSR
	csrrs x1, 0xc92, x25	// Set all CSR bits
	csrrc x1, 0xc92, x25	// Clear all CSR bits
	csrrw x1, 0xc92, x20	// Restore CSR

// Testing CSR 0xc93
	csrr x2, 0xc93	// Read CSR
	li x1, -1
	csrrw x8, 0xc93, x1	// Write all 1s to CSR
	csrrw x8, 0xc93, x0	// Write all 0s to CSR
	csrrs x8, 0xc93, x1	// Set all CSR bits
	csrrc x8, 0xc93, x1	// Clear all CSR bits
	csrrw x8, 0xc93, x2	// Restore CSR

// Testing CSR 0xc94
	csrr x10, 0xc94	// Read CSR
	li x21, -1
	csrrw x27, 0xc94, x21	// Write all 1s to CSR
	csrrw x27, 0xc94, x0	// Write all 0s to CSR
	csrrs x27, 0xc94, x21	// Set all CSR bits
	csrrc x27, 0xc94, x21	// Clear all CSR bits
	csrrw x27, 0xc94, x10	// Restore CSR

// Testing CSR 0xc95
	csrr x7, 0xc95	// Read CSR
	li x31, -1
	csrrw x1, 0xc95, x31	// Write all 1s to CSR
	csrrw x1, 0xc95, x0	// Write all 0s to CSR
	csrrs x1, 0xc95, x31	// Set all CSR bits
	csrrc x1, 0xc95, x31	// Clear all CSR bits
	csrrw x1, 0xc95, x7	// Restore CSR

// Testing CSR 0xc96
	csrr x10, 0xc96	// Read CSR
	li x4, -1
	csrrw x31, 0xc96, x4	// Write all 1s to CSR
	csrrw x31, 0xc96, x0	// Write all 0s to CSR
	csrrs x31, 0xc96, x4	// Set all CSR bits
	csrrc x31, 0xc96, x4	// Clear all CSR bits
	csrrw x31, 0xc96, x10	// Restore CSR

// Testing CSR 0xc97
	csrr x22, 0xc97	// Read CSR
	li x8, -1
	csrrw x14, 0xc97, x8	// Write all 1s to CSR
	csrrw x14, 0xc97, x0	// Write all 0s to CSR
	csrrs x14, 0xc97, x8	// Set all CSR bits
	csrrc x14, 0xc97, x8	// Clear all CSR bits
	csrrw x14, 0xc97, x22	// Restore CSR

// Testing CSR 0xc98
	csrr x20, 0xc98	// Read CSR
	li x25, -1
	csrrw x8, 0xc98, x25	// Write all 1s to CSR
	csrrw x8, 0xc98, x0	// Write all 0s to CSR
	csrrs x8, 0xc98, x25	// Set all CSR bits
	csrrc x8, 0xc98, x25	// Clear all CSR bits
	csrrw x8, 0xc98, x20	// Restore CSR

// Testing CSR 0xc99
	csrr x10, 0xc99	// Read CSR
	li x18, -1
	csrrw x12, 0xc99, x18	// Write all 1s to CSR
	csrrw x12, 0xc99, x0	// Write all 0s to CSR
	csrrs x12, 0xc99, x18	// Set all CSR bits
	csrrc x12, 0xc99, x18	// Clear all CSR bits
	csrrw x12, 0xc99, x10	// Restore CSR

// Testing CSR 0xc9a
	csrr x16, 0xc9a	// Read CSR
	li x27, -1
	csrrw x13, 0xc9a, x27	// Write all 1s to CSR
	csrrw x13, 0xc9a, x0	// Write all 0s to CSR
	csrrs x13, 0xc9a, x27	// Set all CSR bits
	csrrc x13, 0xc9a, x27	// Clear all CSR bits
	csrrw x13, 0xc9a, x16	// Restore CSR

// Testing CSR 0xc9b
	csrr x19, 0xc9b	// Read CSR
	li x22, -1
	csrrw x21, 0xc9b, x22	// Write all 1s to CSR
	csrrw x21, 0xc9b, x0	// Write all 0s to CSR
	csrrs x21, 0xc9b, x22	// Set all CSR bits
	csrrc x21, 0xc9b, x22	// Clear all CSR bits
	csrrw x21, 0xc9b, x19	// Restore CSR

// Testing CSR 0xc9c
	csrr x12, 0xc9c	// Read CSR
	li x23, -1
	csrrw x1, 0xc9c, x23	// Write all 1s to CSR
	csrrw x1, 0xc9c, x0	// Write all 0s to CSR
	csrrs x1, 0xc9c, x23	// Set all CSR bits
	csrrc x1, 0xc9c, x23	// Clear all CSR bits
	csrrw x1, 0xc9c, x12	// Restore CSR

// Testing CSR 0xc9d
	csrr x24, 0xc9d	// Read CSR
	li x1, -1
	csrrw x3, 0xc9d, x1	// Write all 1s to CSR
	csrrw x3, 0xc9d, x0	// Write all 0s to CSR
	csrrs x3, 0xc9d, x1	// Set all CSR bits
	csrrc x3, 0xc9d, x1	// Clear all CSR bits
	csrrw x3, 0xc9d, x24	// Restore CSR

// Testing CSR 0xc9e
	csrr x20, 0xc9e	// Read CSR
	li x25, -1
	csrrw x9, 0xc9e, x25	// Write all 1s to CSR
	csrrw x9, 0xc9e, x0	// Write all 0s to CSR
	csrrs x9, 0xc9e, x25	// Set all CSR bits
	csrrc x9, 0xc9e, x25	// Clear all CSR bits
	csrrw x9, 0xc9e, x20	// Restore CSR

// Testing CSR 0xc9f
	csrr x19, 0xc9f	// Read CSR
	li x10, -1
	csrrw x14, 0xc9f, x10	// Write all 1s to CSR
	csrrw x14, 0xc9f, x0	// Write all 0s to CSR
	csrrs x14, 0xc9f, x10	// Set all CSR bits
	csrrc x14, 0xc9f, x10	// Clear all CSR bits
	csrrw x14, 0xc9f, x19	// Restore CSR

// Testing CSR 0xca0
	csrr x27, 0xca0	// Read CSR
	li x17, -1
	csrrw x21, 0xca0, x17	// Write all 1s to CSR
	csrrw x21, 0xca0, x0	// Write all 0s to CSR
	csrrs x21, 0xca0, x17	// Set all CSR bits
	csrrc x21, 0xca0, x17	// Clear all CSR bits
	csrrw x21, 0xca0, x27	// Restore CSR

// Testing CSR 0xca1
	csrr x6, 0xca1	// Read CSR
	li x15, -1
	csrrw x14, 0xca1, x15	// Write all 1s to CSR
	csrrw x14, 0xca1, x0	// Write all 0s to CSR
	csrrs x14, 0xca1, x15	// Set all CSR bits
	csrrc x14, 0xca1, x15	// Clear all CSR bits
	csrrw x14, 0xca1, x6	// Restore CSR

// Testing CSR 0xca2
	csrr x13, 0xca2	// Read CSR
	li x30, -1
	csrrw x10, 0xca2, x30	// Write all 1s to CSR
	csrrw x10, 0xca2, x0	// Write all 0s to CSR
	csrrs x10, 0xca2, x30	// Set all CSR bits
	csrrc x10, 0xca2, x30	// Clear all CSR bits
	csrrw x10, 0xca2, x13	// Restore CSR

// Testing CSR 0xca3
	csrr x20, 0xca3	// Read CSR
	li x29, -1
	csrrw x9, 0xca3, x29	// Write all 1s to CSR
	csrrw x9, 0xca3, x0	// Write all 0s to CSR
	csrrs x9, 0xca3, x29	// Set all CSR bits
	csrrc x9, 0xca3, x29	// Clear all CSR bits
	csrrw x9, 0xca3, x20	// Restore CSR

// Testing CSR 0xca4
	csrr x1, 0xca4	// Read CSR
	li x9, -1
	csrrw x26, 0xca4, x9	// Write all 1s to CSR
	csrrw x26, 0xca4, x0	// Write all 0s to CSR
	csrrs x26, 0xca4, x9	// Set all CSR bits
	csrrc x26, 0xca4, x9	// Clear all CSR bits
	csrrw x26, 0xca4, x1	// Restore CSR

// Testing CSR 0xca5
	csrr x23, 0xca5	// Read CSR
	li x12, -1
	csrrw x25, 0xca5, x12	// Write all 1s to CSR
	csrrw x25, 0xca5, x0	// Write all 0s to CSR
	csrrs x25, 0xca5, x12	// Set all CSR bits
	csrrc x25, 0xca5, x12	// Clear all CSR bits
	csrrw x25, 0xca5, x23	// Restore CSR

// Testing CSR 0xca6
	csrr x6, 0xca6	// Read CSR
	li x11, -1
	csrrw x15, 0xca6, x11	// Write all 1s to CSR
	csrrw x15, 0xca6, x0	// Write all 0s to CSR
	csrrs x15, 0xca6, x11	// Set all CSR bits
	csrrc x15, 0xca6, x11	// Clear all CSR bits
	csrrw x15, 0xca6, x6	// Restore CSR

// Testing CSR 0xca7
	csrr x12, 0xca7	// Read CSR
	li x15, -1
	csrrw x18, 0xca7, x15	// Write all 1s to CSR
	csrrw x18, 0xca7, x0	// Write all 0s to CSR
	csrrs x18, 0xca7, x15	// Set all CSR bits
	csrrc x18, 0xca7, x15	// Clear all CSR bits
	csrrw x18, 0xca7, x12	// Restore CSR

// Testing CSR 0xca8
	csrr x22, 0xca8	// Read CSR
	li x14, -1
	csrrw x6, 0xca8, x14	// Write all 1s to CSR
	csrrw x6, 0xca8, x0	// Write all 0s to CSR
	csrrs x6, 0xca8, x14	// Set all CSR bits
	csrrc x6, 0xca8, x14	// Clear all CSR bits
	csrrw x6, 0xca8, x22	// Restore CSR

// Testing CSR 0xca9
	csrr x25, 0xca9	// Read CSR
	li x23, -1
	csrrw x16, 0xca9, x23	// Write all 1s to CSR
	csrrw x16, 0xca9, x0	// Write all 0s to CSR
	csrrs x16, 0xca9, x23	// Set all CSR bits
	csrrc x16, 0xca9, x23	// Clear all CSR bits
	csrrw x16, 0xca9, x25	// Restore CSR

// Testing CSR 0xcaa
	csrr x30, 0xcaa	// Read CSR
	li x12, -1
	csrrw x25, 0xcaa, x12	// Write all 1s to CSR
	csrrw x25, 0xcaa, x0	// Write all 0s to CSR
	csrrs x25, 0xcaa, x12	// Set all CSR bits
	csrrc x25, 0xcaa, x12	// Clear all CSR bits
	csrrw x25, 0xcaa, x30	// Restore CSR

// Testing CSR 0xcab
	csrr x10, 0xcab	// Read CSR
	li x6, -1
	csrrw x7, 0xcab, x6	// Write all 1s to CSR
	csrrw x7, 0xcab, x0	// Write all 0s to CSR
	csrrs x7, 0xcab, x6	// Set all CSR bits
	csrrc x7, 0xcab, x6	// Clear all CSR bits
	csrrw x7, 0xcab, x10	// Restore CSR

// Testing CSR 0xcac
	csrr x19, 0xcac	// Read CSR
	li x6, -1
	csrrw x16, 0xcac, x6	// Write all 1s to CSR
	csrrw x16, 0xcac, x0	// Write all 0s to CSR
	csrrs x16, 0xcac, x6	// Set all CSR bits
	csrrc x16, 0xcac, x6	// Clear all CSR bits
	csrrw x16, 0xcac, x19	// Restore CSR

// Testing CSR 0xcad
	csrr x30, 0xcad	// Read CSR
	li x14, -1
	csrrw x28, 0xcad, x14	// Write all 1s to CSR
	csrrw x28, 0xcad, x0	// Write all 0s to CSR
	csrrs x28, 0xcad, x14	// Set all CSR bits
	csrrc x28, 0xcad, x14	// Clear all CSR bits
	csrrw x28, 0xcad, x30	// Restore CSR

// Testing CSR 0xcae
	csrr x1, 0xcae	// Read CSR
	li x25, -1
	csrrw x21, 0xcae, x25	// Write all 1s to CSR
	csrrw x21, 0xcae, x0	// Write all 0s to CSR
	csrrs x21, 0xcae, x25	// Set all CSR bits
	csrrc x21, 0xcae, x25	// Clear all CSR bits
	csrrw x21, 0xcae, x1	// Restore CSR

// Testing CSR 0xcaf
	csrr x1, 0xcaf	// Read CSR
	li x16, -1
	csrrw x6, 0xcaf, x16	// Write all 1s to CSR
	csrrw x6, 0xcaf, x0	// Write all 0s to CSR
	csrrs x6, 0xcaf, x16	// Set all CSR bits
	csrrc x6, 0xcaf, x16	// Clear all CSR bits
	csrrw x6, 0xcaf, x1	// Restore CSR

// Testing CSR 0xcb0
	csrr x8, 0xcb0	// Read CSR
	li x18, -1
	csrrw x15, 0xcb0, x18	// Write all 1s to CSR
	csrrw x15, 0xcb0, x0	// Write all 0s to CSR
	csrrs x15, 0xcb0, x18	// Set all CSR bits
	csrrc x15, 0xcb0, x18	// Clear all CSR bits
	csrrw x15, 0xcb0, x8	// Restore CSR

// Testing CSR 0xcb1
	csrr x16, 0xcb1	// Read CSR
	li x24, -1
	csrrw x20, 0xcb1, x24	// Write all 1s to CSR
	csrrw x20, 0xcb1, x0	// Write all 0s to CSR
	csrrs x20, 0xcb1, x24	// Set all CSR bits
	csrrc x20, 0xcb1, x24	// Clear all CSR bits
	csrrw x20, 0xcb1, x16	// Restore CSR

// Testing CSR 0xcb2
	csrr x13, 0xcb2	// Read CSR
	li x5, -1
	csrrw x23, 0xcb2, x5	// Write all 1s to CSR
	csrrw x23, 0xcb2, x0	// Write all 0s to CSR
	csrrs x23, 0xcb2, x5	// Set all CSR bits
	csrrc x23, 0xcb2, x5	// Clear all CSR bits
	csrrw x23, 0xcb2, x13	// Restore CSR

// Testing CSR 0xcb3
	csrr x14, 0xcb3	// Read CSR
	li x25, -1
	csrrw x30, 0xcb3, x25	// Write all 1s to CSR
	csrrw x30, 0xcb3, x0	// Write all 0s to CSR
	csrrs x30, 0xcb3, x25	// Set all CSR bits
	csrrc x30, 0xcb3, x25	// Clear all CSR bits
	csrrw x30, 0xcb3, x14	// Restore CSR

// Testing CSR 0xcb4
	csrr x3, 0xcb4	// Read CSR
	li x17, -1
	csrrw x1, 0xcb4, x17	// Write all 1s to CSR
	csrrw x1, 0xcb4, x0	// Write all 0s to CSR
	csrrs x1, 0xcb4, x17	// Set all CSR bits
	csrrc x1, 0xcb4, x17	// Clear all CSR bits
	csrrw x1, 0xcb4, x3	// Restore CSR

// Testing CSR 0xcb5
	csrr x18, 0xcb5	// Read CSR
	li x12, -1
	csrrw x9, 0xcb5, x12	// Write all 1s to CSR
	csrrw x9, 0xcb5, x0	// Write all 0s to CSR
	csrrs x9, 0xcb5, x12	// Set all CSR bits
	csrrc x9, 0xcb5, x12	// Clear all CSR bits
	csrrw x9, 0xcb5, x18	// Restore CSR

// Testing CSR 0xcb6
	csrr x17, 0xcb6	// Read CSR
	li x6, -1
	csrrw x11, 0xcb6, x6	// Write all 1s to CSR
	csrrw x11, 0xcb6, x0	// Write all 0s to CSR
	csrrs x11, 0xcb6, x6	// Set all CSR bits
	csrrc x11, 0xcb6, x6	// Clear all CSR bits
	csrrw x11, 0xcb6, x17	// Restore CSR

// Testing CSR 0xcb7
	csrr x14, 0xcb7	// Read CSR
	li x11, -1
	csrrw x8, 0xcb7, x11	// Write all 1s to CSR
	csrrw x8, 0xcb7, x0	// Write all 0s to CSR
	csrrs x8, 0xcb7, x11	// Set all CSR bits
	csrrc x8, 0xcb7, x11	// Clear all CSR bits
	csrrw x8, 0xcb7, x14	// Restore CSR

// Testing CSR 0xcb8
	csrr x24, 0xcb8	// Read CSR
	li x3, -1
	csrrw x15, 0xcb8, x3	// Write all 1s to CSR
	csrrw x15, 0xcb8, x0	// Write all 0s to CSR
	csrrs x15, 0xcb8, x3	// Set all CSR bits
	csrrc x15, 0xcb8, x3	// Clear all CSR bits
	csrrw x15, 0xcb8, x24	// Restore CSR

// Testing CSR 0xcb9
	csrr x1, 0xcb9	// Read CSR
	li x21, -1
	csrrw x29, 0xcb9, x21	// Write all 1s to CSR
	csrrw x29, 0xcb9, x0	// Write all 0s to CSR
	csrrs x29, 0xcb9, x21	// Set all CSR bits
	csrrc x29, 0xcb9, x21	// Clear all CSR bits
	csrrw x29, 0xcb9, x1	// Restore CSR

// Testing CSR 0xcba
	csrr x4, 0xcba	// Read CSR
	li x21, -1
	csrrw x12, 0xcba, x21	// Write all 1s to CSR
	csrrw x12, 0xcba, x0	// Write all 0s to CSR
	csrrs x12, 0xcba, x21	// Set all CSR bits
	csrrc x12, 0xcba, x21	// Clear all CSR bits
	csrrw x12, 0xcba, x4	// Restore CSR

// Testing CSR 0xcbb
	csrr x27, 0xcbb	// Read CSR
	li x2, -1
	csrrw x11, 0xcbb, x2	// Write all 1s to CSR
	csrrw x11, 0xcbb, x0	// Write all 0s to CSR
	csrrs x11, 0xcbb, x2	// Set all CSR bits
	csrrc x11, 0xcbb, x2	// Clear all CSR bits
	csrrw x11, 0xcbb, x27	// Restore CSR

// Testing CSR 0xcbc
	csrr x13, 0xcbc	// Read CSR
	li x24, -1
	csrrw x4, 0xcbc, x24	// Write all 1s to CSR
	csrrw x4, 0xcbc, x0	// Write all 0s to CSR
	csrrs x4, 0xcbc, x24	// Set all CSR bits
	csrrc x4, 0xcbc, x24	// Clear all CSR bits
	csrrw x4, 0xcbc, x13	// Restore CSR

// Testing CSR 0xcbd
	csrr x19, 0xcbd	// Read CSR
	li x6, -1
	csrrw x21, 0xcbd, x6	// Write all 1s to CSR
	csrrw x21, 0xcbd, x0	// Write all 0s to CSR
	csrrs x21, 0xcbd, x6	// Set all CSR bits
	csrrc x21, 0xcbd, x6	// Clear all CSR bits
	csrrw x21, 0xcbd, x19	// Restore CSR

// Testing CSR 0xcbe
	csrr x23, 0xcbe	// Read CSR
	li x3, -1
	csrrw x14, 0xcbe, x3	// Write all 1s to CSR
	csrrw x14, 0xcbe, x0	// Write all 0s to CSR
	csrrs x14, 0xcbe, x3	// Set all CSR bits
	csrrc x14, 0xcbe, x3	// Clear all CSR bits
	csrrw x14, 0xcbe, x23	// Restore CSR

// Testing CSR 0xcbf
	csrr x18, 0xcbf	// Read CSR
	li x14, -1
	csrrw x4, 0xcbf, x14	// Write all 1s to CSR
	csrrw x4, 0xcbf, x0	// Write all 0s to CSR
	csrrs x4, 0xcbf, x14	// Set all CSR bits
	csrrc x4, 0xcbf, x14	// Clear all CSR bits
	csrrw x4, 0xcbf, x18	// Restore CSR

// Testing CSR 0xd00
	csrr x14, 0xd00	// Read CSR
	li x13, -1
	csrrw x6, 0xd00, x13	// Write all 1s to CSR
	csrrw x6, 0xd00, x0	// Write all 0s to CSR
	csrrs x6, 0xd00, x13	// Set all CSR bits
	csrrc x6, 0xd00, x13	// Clear all CSR bits
	csrrw x6, 0xd00, x14	// Restore CSR

// Testing CSR 0xd01
	csrr x13, 0xd01	// Read CSR
	li x3, -1
	csrrw x14, 0xd01, x3	// Write all 1s to CSR
	csrrw x14, 0xd01, x0	// Write all 0s to CSR
	csrrs x14, 0xd01, x3	// Set all CSR bits
	csrrc x14, 0xd01, x3	// Clear all CSR bits
	csrrw x14, 0xd01, x13	// Restore CSR

// Testing CSR 0xd02
	csrr x11, 0xd02	// Read CSR
	li x19, -1
	csrrw x14, 0xd02, x19	// Write all 1s to CSR
	csrrw x14, 0xd02, x0	// Write all 0s to CSR
	csrrs x14, 0xd02, x19	// Set all CSR bits
	csrrc x14, 0xd02, x19	// Clear all CSR bits
	csrrw x14, 0xd02, x11	// Restore CSR

// Testing CSR 0xd03
	csrr x5, 0xd03	// Read CSR
	li x11, -1
	csrrw x8, 0xd03, x11	// Write all 1s to CSR
	csrrw x8, 0xd03, x0	// Write all 0s to CSR
	csrrs x8, 0xd03, x11	// Set all CSR bits
	csrrc x8, 0xd03, x11	// Clear all CSR bits
	csrrw x8, 0xd03, x5	// Restore CSR

// Testing CSR 0xd04
	csrr x13, 0xd04	// Read CSR
	li x17, -1
	csrrw x7, 0xd04, x17	// Write all 1s to CSR
	csrrw x7, 0xd04, x0	// Write all 0s to CSR
	csrrs x7, 0xd04, x17	// Set all CSR bits
	csrrc x7, 0xd04, x17	// Clear all CSR bits
	csrrw x7, 0xd04, x13	// Restore CSR

// Testing CSR 0xd05
	csrr x4, 0xd05	// Read CSR
	li x29, -1
	csrrw x27, 0xd05, x29	// Write all 1s to CSR
	csrrw x27, 0xd05, x0	// Write all 0s to CSR
	csrrs x27, 0xd05, x29	// Set all CSR bits
	csrrc x27, 0xd05, x29	// Clear all CSR bits
	csrrw x27, 0xd05, x4	// Restore CSR

// Testing CSR 0xd06
	csrr x7, 0xd06	// Read CSR
	li x11, -1
	csrrw x1, 0xd06, x11	// Write all 1s to CSR
	csrrw x1, 0xd06, x0	// Write all 0s to CSR
	csrrs x1, 0xd06, x11	// Set all CSR bits
	csrrc x1, 0xd06, x11	// Clear all CSR bits
	csrrw x1, 0xd06, x7	// Restore CSR

// Testing CSR 0xd07
	csrr x16, 0xd07	// Read CSR
	li x23, -1
	csrrw x13, 0xd07, x23	// Write all 1s to CSR
	csrrw x13, 0xd07, x0	// Write all 0s to CSR
	csrrs x13, 0xd07, x23	// Set all CSR bits
	csrrc x13, 0xd07, x23	// Clear all CSR bits
	csrrw x13, 0xd07, x16	// Restore CSR

// Testing CSR 0xd08
	csrr x14, 0xd08	// Read CSR
	li x22, -1
	csrrw x13, 0xd08, x22	// Write all 1s to CSR
	csrrw x13, 0xd08, x0	// Write all 0s to CSR
	csrrs x13, 0xd08, x22	// Set all CSR bits
	csrrc x13, 0xd08, x22	// Clear all CSR bits
	csrrw x13, 0xd08, x14	// Restore CSR

// Testing CSR 0xd09
	csrr x29, 0xd09	// Read CSR
	li x17, -1
	csrrw x16, 0xd09, x17	// Write all 1s to CSR
	csrrw x16, 0xd09, x0	// Write all 0s to CSR
	csrrs x16, 0xd09, x17	// Set all CSR bits
	csrrc x16, 0xd09, x17	// Clear all CSR bits
	csrrw x16, 0xd09, x29	// Restore CSR

// Testing CSR 0xd0a
	csrr x14, 0xd0a	// Read CSR
	li x5, -1
	csrrw x15, 0xd0a, x5	// Write all 1s to CSR
	csrrw x15, 0xd0a, x0	// Write all 0s to CSR
	csrrs x15, 0xd0a, x5	// Set all CSR bits
	csrrc x15, 0xd0a, x5	// Clear all CSR bits
	csrrw x15, 0xd0a, x14	// Restore CSR

// Testing CSR 0xd0b
	csrr x30, 0xd0b	// Read CSR
	li x11, -1
	csrrw x9, 0xd0b, x11	// Write all 1s to CSR
	csrrw x9, 0xd0b, x0	// Write all 0s to CSR
	csrrs x9, 0xd0b, x11	// Set all CSR bits
	csrrc x9, 0xd0b, x11	// Clear all CSR bits
	csrrw x9, 0xd0b, x30	// Restore CSR

// Testing CSR 0xd0c
	csrr x29, 0xd0c	// Read CSR
	li x6, -1
	csrrw x22, 0xd0c, x6	// Write all 1s to CSR
	csrrw x22, 0xd0c, x0	// Write all 0s to CSR
	csrrs x22, 0xd0c, x6	// Set all CSR bits
	csrrc x22, 0xd0c, x6	// Clear all CSR bits
	csrrw x22, 0xd0c, x29	// Restore CSR

// Testing CSR 0xd0d
	csrr x19, 0xd0d	// Read CSR
	li x18, -1
	csrrw x24, 0xd0d, x18	// Write all 1s to CSR
	csrrw x24, 0xd0d, x0	// Write all 0s to CSR
	csrrs x24, 0xd0d, x18	// Set all CSR bits
	csrrc x24, 0xd0d, x18	// Clear all CSR bits
	csrrw x24, 0xd0d, x19	// Restore CSR

// Testing CSR 0xd0e
	csrr x8, 0xd0e	// Read CSR
	li x27, -1
	csrrw x21, 0xd0e, x27	// Write all 1s to CSR
	csrrw x21, 0xd0e, x0	// Write all 0s to CSR
	csrrs x21, 0xd0e, x27	// Set all CSR bits
	csrrc x21, 0xd0e, x27	// Clear all CSR bits
	csrrw x21, 0xd0e, x8	// Restore CSR

// Testing CSR 0xd0f
	csrr x25, 0xd0f	// Read CSR
	li x6, -1
	csrrw x3, 0xd0f, x6	// Write all 1s to CSR
	csrrw x3, 0xd0f, x0	// Write all 0s to CSR
	csrrs x3, 0xd0f, x6	// Set all CSR bits
	csrrc x3, 0xd0f, x6	// Clear all CSR bits
	csrrw x3, 0xd0f, x25	// Restore CSR

// Testing CSR 0xd10
	csrr x13, 0xd10	// Read CSR
	li x6, -1
	csrrw x16, 0xd10, x6	// Write all 1s to CSR
	csrrw x16, 0xd10, x0	// Write all 0s to CSR
	csrrs x16, 0xd10, x6	// Set all CSR bits
	csrrc x16, 0xd10, x6	// Clear all CSR bits
	csrrw x16, 0xd10, x13	// Restore CSR

// Testing CSR 0xd11
	csrr x30, 0xd11	// Read CSR
	li x6, -1
	csrrw x7, 0xd11, x6	// Write all 1s to CSR
	csrrw x7, 0xd11, x0	// Write all 0s to CSR
	csrrs x7, 0xd11, x6	// Set all CSR bits
	csrrc x7, 0xd11, x6	// Clear all CSR bits
	csrrw x7, 0xd11, x30	// Restore CSR

// Testing CSR 0xd12
	csrr x29, 0xd12	// Read CSR
	li x10, -1
	csrrw x24, 0xd12, x10	// Write all 1s to CSR
	csrrw x24, 0xd12, x0	// Write all 0s to CSR
	csrrs x24, 0xd12, x10	// Set all CSR bits
	csrrc x24, 0xd12, x10	// Clear all CSR bits
	csrrw x24, 0xd12, x29	// Restore CSR

// Testing CSR 0xd13
	csrr x22, 0xd13	// Read CSR
	li x13, -1
	csrrw x27, 0xd13, x13	// Write all 1s to CSR
	csrrw x27, 0xd13, x0	// Write all 0s to CSR
	csrrs x27, 0xd13, x13	// Set all CSR bits
	csrrc x27, 0xd13, x13	// Clear all CSR bits
	csrrw x27, 0xd13, x22	// Restore CSR

// Testing CSR 0xd14
	csrr x28, 0xd14	// Read CSR
	li x6, -1
	csrrw x5, 0xd14, x6	// Write all 1s to CSR
	csrrw x5, 0xd14, x0	// Write all 0s to CSR
	csrrs x5, 0xd14, x6	// Set all CSR bits
	csrrc x5, 0xd14, x6	// Clear all CSR bits
	csrrw x5, 0xd14, x28	// Restore CSR

// Testing CSR 0xd15
	csrr x21, 0xd15	// Read CSR
	li x26, -1
	csrrw x2, 0xd15, x26	// Write all 1s to CSR
	csrrw x2, 0xd15, x0	// Write all 0s to CSR
	csrrs x2, 0xd15, x26	// Set all CSR bits
	csrrc x2, 0xd15, x26	// Clear all CSR bits
	csrrw x2, 0xd15, x21	// Restore CSR

// Testing CSR 0xd16
	csrr x6, 0xd16	// Read CSR
	li x7, -1
	csrrw x4, 0xd16, x7	// Write all 1s to CSR
	csrrw x4, 0xd16, x0	// Write all 0s to CSR
	csrrs x4, 0xd16, x7	// Set all CSR bits
	csrrc x4, 0xd16, x7	// Clear all CSR bits
	csrrw x4, 0xd16, x6	// Restore CSR

// Testing CSR 0xd17
	csrr x3, 0xd17	// Read CSR
	li x30, -1
	csrrw x10, 0xd17, x30	// Write all 1s to CSR
	csrrw x10, 0xd17, x0	// Write all 0s to CSR
	csrrs x10, 0xd17, x30	// Set all CSR bits
	csrrc x10, 0xd17, x30	// Clear all CSR bits
	csrrw x10, 0xd17, x3	// Restore CSR

// Testing CSR 0xd18
	csrr x12, 0xd18	// Read CSR
	li x15, -1
	csrrw x6, 0xd18, x15	// Write all 1s to CSR
	csrrw x6, 0xd18, x0	// Write all 0s to CSR
	csrrs x6, 0xd18, x15	// Set all CSR bits
	csrrc x6, 0xd18, x15	// Clear all CSR bits
	csrrw x6, 0xd18, x12	// Restore CSR

// Testing CSR 0xd19
	csrr x17, 0xd19	// Read CSR
	li x3, -1
	csrrw x15, 0xd19, x3	// Write all 1s to CSR
	csrrw x15, 0xd19, x0	// Write all 0s to CSR
	csrrs x15, 0xd19, x3	// Set all CSR bits
	csrrc x15, 0xd19, x3	// Clear all CSR bits
	csrrw x15, 0xd19, x17	// Restore CSR

// Testing CSR 0xd1a
	csrr x19, 0xd1a	// Read CSR
	li x7, -1
	csrrw x14, 0xd1a, x7	// Write all 1s to CSR
	csrrw x14, 0xd1a, x0	// Write all 0s to CSR
	csrrs x14, 0xd1a, x7	// Set all CSR bits
	csrrc x14, 0xd1a, x7	// Clear all CSR bits
	csrrw x14, 0xd1a, x19	// Restore CSR

// Testing CSR 0xd1b
	csrr x13, 0xd1b	// Read CSR
	li x29, -1
	csrrw x5, 0xd1b, x29	// Write all 1s to CSR
	csrrw x5, 0xd1b, x0	// Write all 0s to CSR
	csrrs x5, 0xd1b, x29	// Set all CSR bits
	csrrc x5, 0xd1b, x29	// Clear all CSR bits
	csrrw x5, 0xd1b, x13	// Restore CSR

// Testing CSR 0xd1c
	csrr x20, 0xd1c	// Read CSR
	li x17, -1
	csrrw x13, 0xd1c, x17	// Write all 1s to CSR
	csrrw x13, 0xd1c, x0	// Write all 0s to CSR
	csrrs x13, 0xd1c, x17	// Set all CSR bits
	csrrc x13, 0xd1c, x17	// Clear all CSR bits
	csrrw x13, 0xd1c, x20	// Restore CSR

// Testing CSR 0xd1d
	csrr x4, 0xd1d	// Read CSR
	li x6, -1
	csrrw x8, 0xd1d, x6	// Write all 1s to CSR
	csrrw x8, 0xd1d, x0	// Write all 0s to CSR
	csrrs x8, 0xd1d, x6	// Set all CSR bits
	csrrc x8, 0xd1d, x6	// Clear all CSR bits
	csrrw x8, 0xd1d, x4	// Restore CSR

// Testing CSR 0xd1e
	csrr x16, 0xd1e	// Read CSR
	li x14, -1
	csrrw x13, 0xd1e, x14	// Write all 1s to CSR
	csrrw x13, 0xd1e, x0	// Write all 0s to CSR
	csrrs x13, 0xd1e, x14	// Set all CSR bits
	csrrc x13, 0xd1e, x14	// Clear all CSR bits
	csrrw x13, 0xd1e, x16	// Restore CSR

// Testing CSR 0xd1f
	csrr x1, 0xd1f	// Read CSR
	li x9, -1
	csrrw x6, 0xd1f, x9	// Write all 1s to CSR
	csrrw x6, 0xd1f, x0	// Write all 0s to CSR
	csrrs x6, 0xd1f, x9	// Set all CSR bits
	csrrc x6, 0xd1f, x9	// Clear all CSR bits
	csrrw x6, 0xd1f, x1	// Restore CSR

// Testing CSR 0xd20
	csrr x14, 0xd20	// Read CSR
	li x23, -1
	csrrw x18, 0xd20, x23	// Write all 1s to CSR
	csrrw x18, 0xd20, x0	// Write all 0s to CSR
	csrrs x18, 0xd20, x23	// Set all CSR bits
	csrrc x18, 0xd20, x23	// Clear all CSR bits
	csrrw x18, 0xd20, x14	// Restore CSR

// Testing CSR 0xd21
	csrr x29, 0xd21	// Read CSR
	li x16, -1
	csrrw x27, 0xd21, x16	// Write all 1s to CSR
	csrrw x27, 0xd21, x0	// Write all 0s to CSR
	csrrs x27, 0xd21, x16	// Set all CSR bits
	csrrc x27, 0xd21, x16	// Clear all CSR bits
	csrrw x27, 0xd21, x29	// Restore CSR

// Testing CSR 0xd22
	csrr x6, 0xd22	// Read CSR
	li x4, -1
	csrrw x28, 0xd22, x4	// Write all 1s to CSR
	csrrw x28, 0xd22, x0	// Write all 0s to CSR
	csrrs x28, 0xd22, x4	// Set all CSR bits
	csrrc x28, 0xd22, x4	// Clear all CSR bits
	csrrw x28, 0xd22, x6	// Restore CSR

// Testing CSR 0xd23
	csrr x18, 0xd23	// Read CSR
	li x17, -1
	csrrw x26, 0xd23, x17	// Write all 1s to CSR
	csrrw x26, 0xd23, x0	// Write all 0s to CSR
	csrrs x26, 0xd23, x17	// Set all CSR bits
	csrrc x26, 0xd23, x17	// Clear all CSR bits
	csrrw x26, 0xd23, x18	// Restore CSR

// Testing CSR 0xd24
	csrr x22, 0xd24	// Read CSR
	li x9, -1
	csrrw x15, 0xd24, x9	// Write all 1s to CSR
	csrrw x15, 0xd24, x0	// Write all 0s to CSR
	csrrs x15, 0xd24, x9	// Set all CSR bits
	csrrc x15, 0xd24, x9	// Clear all CSR bits
	csrrw x15, 0xd24, x22	// Restore CSR

// Testing CSR 0xd25
	csrr x17, 0xd25	// Read CSR
	li x14, -1
	csrrw x20, 0xd25, x14	// Write all 1s to CSR
	csrrw x20, 0xd25, x0	// Write all 0s to CSR
	csrrs x20, 0xd25, x14	// Set all CSR bits
	csrrc x20, 0xd25, x14	// Clear all CSR bits
	csrrw x20, 0xd25, x17	// Restore CSR

// Testing CSR 0xd26
	csrr x10, 0xd26	// Read CSR
	li x23, -1
	csrrw x5, 0xd26, x23	// Write all 1s to CSR
	csrrw x5, 0xd26, x0	// Write all 0s to CSR
	csrrs x5, 0xd26, x23	// Set all CSR bits
	csrrc x5, 0xd26, x23	// Clear all CSR bits
	csrrw x5, 0xd26, x10	// Restore CSR

// Testing CSR 0xd27
	csrr x10, 0xd27	// Read CSR
	li x18, -1
	csrrw x13, 0xd27, x18	// Write all 1s to CSR
	csrrw x13, 0xd27, x0	// Write all 0s to CSR
	csrrs x13, 0xd27, x18	// Set all CSR bits
	csrrc x13, 0xd27, x18	// Clear all CSR bits
	csrrw x13, 0xd27, x10	// Restore CSR

// Testing CSR 0xd28
	csrr x13, 0xd28	// Read CSR
	li x1, -1
	csrrw x10, 0xd28, x1	// Write all 1s to CSR
	csrrw x10, 0xd28, x0	// Write all 0s to CSR
	csrrs x10, 0xd28, x1	// Set all CSR bits
	csrrc x10, 0xd28, x1	// Clear all CSR bits
	csrrw x10, 0xd28, x13	// Restore CSR

// Testing CSR 0xd29
	csrr x25, 0xd29	// Read CSR
	li x28, -1
	csrrw x17, 0xd29, x28	// Write all 1s to CSR
	csrrw x17, 0xd29, x0	// Write all 0s to CSR
	csrrs x17, 0xd29, x28	// Set all CSR bits
	csrrc x17, 0xd29, x28	// Clear all CSR bits
	csrrw x17, 0xd29, x25	// Restore CSR

// Testing CSR 0xd2a
	csrr x2, 0xd2a	// Read CSR
	li x19, -1
	csrrw x28, 0xd2a, x19	// Write all 1s to CSR
	csrrw x28, 0xd2a, x0	// Write all 0s to CSR
	csrrs x28, 0xd2a, x19	// Set all CSR bits
	csrrc x28, 0xd2a, x19	// Clear all CSR bits
	csrrw x28, 0xd2a, x2	// Restore CSR

// Testing CSR 0xd2b
	csrr x17, 0xd2b	// Read CSR
	li x9, -1
	csrrw x8, 0xd2b, x9	// Write all 1s to CSR
	csrrw x8, 0xd2b, x0	// Write all 0s to CSR
	csrrs x8, 0xd2b, x9	// Set all CSR bits
	csrrc x8, 0xd2b, x9	// Clear all CSR bits
	csrrw x8, 0xd2b, x17	// Restore CSR

// Testing CSR 0xd2c
	csrr x2, 0xd2c	// Read CSR
	li x23, -1
	csrrw x28, 0xd2c, x23	// Write all 1s to CSR
	csrrw x28, 0xd2c, x0	// Write all 0s to CSR
	csrrs x28, 0xd2c, x23	// Set all CSR bits
	csrrc x28, 0xd2c, x23	// Clear all CSR bits
	csrrw x28, 0xd2c, x2	// Restore CSR

// Testing CSR 0xd2d
	csrr x15, 0xd2d	// Read CSR
	li x25, -1
	csrrw x18, 0xd2d, x25	// Write all 1s to CSR
	csrrw x18, 0xd2d, x0	// Write all 0s to CSR
	csrrs x18, 0xd2d, x25	// Set all CSR bits
	csrrc x18, 0xd2d, x25	// Clear all CSR bits
	csrrw x18, 0xd2d, x15	// Restore CSR

// Testing CSR 0xd2e
	csrr x3, 0xd2e	// Read CSR
	li x19, -1
	csrrw x12, 0xd2e, x19	// Write all 1s to CSR
	csrrw x12, 0xd2e, x0	// Write all 0s to CSR
	csrrs x12, 0xd2e, x19	// Set all CSR bits
	csrrc x12, 0xd2e, x19	// Clear all CSR bits
	csrrw x12, 0xd2e, x3	// Restore CSR

// Testing CSR 0xd2f
	csrr x2, 0xd2f	// Read CSR
	li x31, -1
	csrrw x25, 0xd2f, x31	// Write all 1s to CSR
	csrrw x25, 0xd2f, x0	// Write all 0s to CSR
	csrrs x25, 0xd2f, x31	// Set all CSR bits
	csrrc x25, 0xd2f, x31	// Clear all CSR bits
	csrrw x25, 0xd2f, x2	// Restore CSR

// Testing CSR 0xd30
	csrr x17, 0xd30	// Read CSR
	li x23, -1
	csrrw x19, 0xd30, x23	// Write all 1s to CSR
	csrrw x19, 0xd30, x0	// Write all 0s to CSR
	csrrs x19, 0xd30, x23	// Set all CSR bits
	csrrc x19, 0xd30, x23	// Clear all CSR bits
	csrrw x19, 0xd30, x17	// Restore CSR

// Testing CSR 0xd31
	csrr x6, 0xd31	// Read CSR
	li x29, -1
	csrrw x8, 0xd31, x29	// Write all 1s to CSR
	csrrw x8, 0xd31, x0	// Write all 0s to CSR
	csrrs x8, 0xd31, x29	// Set all CSR bits
	csrrc x8, 0xd31, x29	// Clear all CSR bits
	csrrw x8, 0xd31, x6	// Restore CSR

// Testing CSR 0xd32
	csrr x8, 0xd32	// Read CSR
	li x22, -1
	csrrw x14, 0xd32, x22	// Write all 1s to CSR
	csrrw x14, 0xd32, x0	// Write all 0s to CSR
	csrrs x14, 0xd32, x22	// Set all CSR bits
	csrrc x14, 0xd32, x22	// Clear all CSR bits
	csrrw x14, 0xd32, x8	// Restore CSR

// Testing CSR 0xd33
	csrr x11, 0xd33	// Read CSR
	li x9, -1
	csrrw x2, 0xd33, x9	// Write all 1s to CSR
	csrrw x2, 0xd33, x0	// Write all 0s to CSR
	csrrs x2, 0xd33, x9	// Set all CSR bits
	csrrc x2, 0xd33, x9	// Clear all CSR bits
	csrrw x2, 0xd33, x11	// Restore CSR

// Testing CSR 0xd34
	csrr x8, 0xd34	// Read CSR
	li x20, -1
	csrrw x30, 0xd34, x20	// Write all 1s to CSR
	csrrw x30, 0xd34, x0	// Write all 0s to CSR
	csrrs x30, 0xd34, x20	// Set all CSR bits
	csrrc x30, 0xd34, x20	// Clear all CSR bits
	csrrw x30, 0xd34, x8	// Restore CSR

// Testing CSR 0xd35
	csrr x26, 0xd35	// Read CSR
	li x17, -1
	csrrw x10, 0xd35, x17	// Write all 1s to CSR
	csrrw x10, 0xd35, x0	// Write all 0s to CSR
	csrrs x10, 0xd35, x17	// Set all CSR bits
	csrrc x10, 0xd35, x17	// Clear all CSR bits
	csrrw x10, 0xd35, x26	// Restore CSR

// Testing CSR 0xd36
	csrr x3, 0xd36	// Read CSR
	li x31, -1
	csrrw x25, 0xd36, x31	// Write all 1s to CSR
	csrrw x25, 0xd36, x0	// Write all 0s to CSR
	csrrs x25, 0xd36, x31	// Set all CSR bits
	csrrc x25, 0xd36, x31	// Clear all CSR bits
	csrrw x25, 0xd36, x3	// Restore CSR

// Testing CSR 0xd37
	csrr x8, 0xd37	// Read CSR
	li x20, -1
	csrrw x11, 0xd37, x20	// Write all 1s to CSR
	csrrw x11, 0xd37, x0	// Write all 0s to CSR
	csrrs x11, 0xd37, x20	// Set all CSR bits
	csrrc x11, 0xd37, x20	// Clear all CSR bits
	csrrw x11, 0xd37, x8	// Restore CSR

// Testing CSR 0xd38
	csrr x6, 0xd38	// Read CSR
	li x13, -1
	csrrw x11, 0xd38, x13	// Write all 1s to CSR
	csrrw x11, 0xd38, x0	// Write all 0s to CSR
	csrrs x11, 0xd38, x13	// Set all CSR bits
	csrrc x11, 0xd38, x13	// Clear all CSR bits
	csrrw x11, 0xd38, x6	// Restore CSR

// Testing CSR 0xd39
	csrr x3, 0xd39	// Read CSR
	li x9, -1
	csrrw x21, 0xd39, x9	// Write all 1s to CSR
	csrrw x21, 0xd39, x0	// Write all 0s to CSR
	csrrs x21, 0xd39, x9	// Set all CSR bits
	csrrc x21, 0xd39, x9	// Clear all CSR bits
	csrrw x21, 0xd39, x3	// Restore CSR

// Testing CSR 0xd3a
	csrr x10, 0xd3a	// Read CSR
	li x23, -1
	csrrw x11, 0xd3a, x23	// Write all 1s to CSR
	csrrw x11, 0xd3a, x0	// Write all 0s to CSR
	csrrs x11, 0xd3a, x23	// Set all CSR bits
	csrrc x11, 0xd3a, x23	// Clear all CSR bits
	csrrw x11, 0xd3a, x10	// Restore CSR

// Testing CSR 0xd3b
	csrr x26, 0xd3b	// Read CSR
	li x24, -1
	csrrw x3, 0xd3b, x24	// Write all 1s to CSR
	csrrw x3, 0xd3b, x0	// Write all 0s to CSR
	csrrs x3, 0xd3b, x24	// Set all CSR bits
	csrrc x3, 0xd3b, x24	// Clear all CSR bits
	csrrw x3, 0xd3b, x26	// Restore CSR

// Testing CSR 0xd3c
	csrr x18, 0xd3c	// Read CSR
	li x11, -1
	csrrw x1, 0xd3c, x11	// Write all 1s to CSR
	csrrw x1, 0xd3c, x0	// Write all 0s to CSR
	csrrs x1, 0xd3c, x11	// Set all CSR bits
	csrrc x1, 0xd3c, x11	// Clear all CSR bits
	csrrw x1, 0xd3c, x18	// Restore CSR

// Testing CSR 0xd3d
	csrr x19, 0xd3d	// Read CSR
	li x30, -1
	csrrw x18, 0xd3d, x30	// Write all 1s to CSR
	csrrw x18, 0xd3d, x0	// Write all 0s to CSR
	csrrs x18, 0xd3d, x30	// Set all CSR bits
	csrrc x18, 0xd3d, x30	// Clear all CSR bits
	csrrw x18, 0xd3d, x19	// Restore CSR

// Testing CSR 0xd3e
	csrr x10, 0xd3e	// Read CSR
	li x21, -1
	csrrw x15, 0xd3e, x21	// Write all 1s to CSR
	csrrw x15, 0xd3e, x0	// Write all 0s to CSR
	csrrs x15, 0xd3e, x21	// Set all CSR bits
	csrrc x15, 0xd3e, x21	// Clear all CSR bits
	csrrw x15, 0xd3e, x10	// Restore CSR

// Testing CSR 0xd3f
	csrr x15, 0xd3f	// Read CSR
	li x4, -1
	csrrw x28, 0xd3f, x4	// Write all 1s to CSR
	csrrw x28, 0xd3f, x0	// Write all 0s to CSR
	csrrs x28, 0xd3f, x4	// Set all CSR bits
	csrrc x28, 0xd3f, x4	// Clear all CSR bits
	csrrw x28, 0xd3f, x15	// Restore CSR

// Testing CSR 0xd40
	csrr x30, 0xd40	// Read CSR
	li x15, -1
	csrrw x25, 0xd40, x15	// Write all 1s to CSR
	csrrw x25, 0xd40, x0	// Write all 0s to CSR
	csrrs x25, 0xd40, x15	// Set all CSR bits
	csrrc x25, 0xd40, x15	// Clear all CSR bits
	csrrw x25, 0xd40, x30	// Restore CSR

// Testing CSR 0xd41
	csrr x16, 0xd41	// Read CSR
	li x2, -1
	csrrw x1, 0xd41, x2	// Write all 1s to CSR
	csrrw x1, 0xd41, x0	// Write all 0s to CSR
	csrrs x1, 0xd41, x2	// Set all CSR bits
	csrrc x1, 0xd41, x2	// Clear all CSR bits
	csrrw x1, 0xd41, x16	// Restore CSR

// Testing CSR 0xd42
	csrr x5, 0xd42	// Read CSR
	li x14, -1
	csrrw x6, 0xd42, x14	// Write all 1s to CSR
	csrrw x6, 0xd42, x0	// Write all 0s to CSR
	csrrs x6, 0xd42, x14	// Set all CSR bits
	csrrc x6, 0xd42, x14	// Clear all CSR bits
	csrrw x6, 0xd42, x5	// Restore CSR

// Testing CSR 0xd43
	csrr x27, 0xd43	// Read CSR
	li x29, -1
	csrrw x4, 0xd43, x29	// Write all 1s to CSR
	csrrw x4, 0xd43, x0	// Write all 0s to CSR
	csrrs x4, 0xd43, x29	// Set all CSR bits
	csrrc x4, 0xd43, x29	// Clear all CSR bits
	csrrw x4, 0xd43, x27	// Restore CSR

// Testing CSR 0xd44
	csrr x1, 0xd44	// Read CSR
	li x8, -1
	csrrw x13, 0xd44, x8	// Write all 1s to CSR
	csrrw x13, 0xd44, x0	// Write all 0s to CSR
	csrrs x13, 0xd44, x8	// Set all CSR bits
	csrrc x13, 0xd44, x8	// Clear all CSR bits
	csrrw x13, 0xd44, x1	// Restore CSR

// Testing CSR 0xd45
	csrr x25, 0xd45	// Read CSR
	li x31, -1
	csrrw x14, 0xd45, x31	// Write all 1s to CSR
	csrrw x14, 0xd45, x0	// Write all 0s to CSR
	csrrs x14, 0xd45, x31	// Set all CSR bits
	csrrc x14, 0xd45, x31	// Clear all CSR bits
	csrrw x14, 0xd45, x25	// Restore CSR

// Testing CSR 0xd46
	csrr x31, 0xd46	// Read CSR
	li x21, -1
	csrrw x27, 0xd46, x21	// Write all 1s to CSR
	csrrw x27, 0xd46, x0	// Write all 0s to CSR
	csrrs x27, 0xd46, x21	// Set all CSR bits
	csrrc x27, 0xd46, x21	// Clear all CSR bits
	csrrw x27, 0xd46, x31	// Restore CSR

// Testing CSR 0xd47
	csrr x24, 0xd47	// Read CSR
	li x18, -1
	csrrw x1, 0xd47, x18	// Write all 1s to CSR
	csrrw x1, 0xd47, x0	// Write all 0s to CSR
	csrrs x1, 0xd47, x18	// Set all CSR bits
	csrrc x1, 0xd47, x18	// Clear all CSR bits
	csrrw x1, 0xd47, x24	// Restore CSR

// Testing CSR 0xd48
	csrr x12, 0xd48	// Read CSR
	li x25, -1
	csrrw x24, 0xd48, x25	// Write all 1s to CSR
	csrrw x24, 0xd48, x0	// Write all 0s to CSR
	csrrs x24, 0xd48, x25	// Set all CSR bits
	csrrc x24, 0xd48, x25	// Clear all CSR bits
	csrrw x24, 0xd48, x12	// Restore CSR

// Testing CSR 0xd49
	csrr x26, 0xd49	// Read CSR
	li x20, -1
	csrrw x17, 0xd49, x20	// Write all 1s to CSR
	csrrw x17, 0xd49, x0	// Write all 0s to CSR
	csrrs x17, 0xd49, x20	// Set all CSR bits
	csrrc x17, 0xd49, x20	// Clear all CSR bits
	csrrw x17, 0xd49, x26	// Restore CSR

// Testing CSR 0xd4a
	csrr x23, 0xd4a	// Read CSR
	li x18, -1
	csrrw x19, 0xd4a, x18	// Write all 1s to CSR
	csrrw x19, 0xd4a, x0	// Write all 0s to CSR
	csrrs x19, 0xd4a, x18	// Set all CSR bits
	csrrc x19, 0xd4a, x18	// Clear all CSR bits
	csrrw x19, 0xd4a, x23	// Restore CSR

// Testing CSR 0xd4b
	csrr x27, 0xd4b	// Read CSR
	li x17, -1
	csrrw x26, 0xd4b, x17	// Write all 1s to CSR
	csrrw x26, 0xd4b, x0	// Write all 0s to CSR
	csrrs x26, 0xd4b, x17	// Set all CSR bits
	csrrc x26, 0xd4b, x17	// Clear all CSR bits
	csrrw x26, 0xd4b, x27	// Restore CSR

// Testing CSR 0xd4c
	csrr x13, 0xd4c	// Read CSR
	li x5, -1
	csrrw x28, 0xd4c, x5	// Write all 1s to CSR
	csrrw x28, 0xd4c, x0	// Write all 0s to CSR
	csrrs x28, 0xd4c, x5	// Set all CSR bits
	csrrc x28, 0xd4c, x5	// Clear all CSR bits
	csrrw x28, 0xd4c, x13	// Restore CSR

// Testing CSR 0xd4d
	csrr x16, 0xd4d	// Read CSR
	li x2, -1
	csrrw x26, 0xd4d, x2	// Write all 1s to CSR
	csrrw x26, 0xd4d, x0	// Write all 0s to CSR
	csrrs x26, 0xd4d, x2	// Set all CSR bits
	csrrc x26, 0xd4d, x2	// Clear all CSR bits
	csrrw x26, 0xd4d, x16	// Restore CSR

// Testing CSR 0xd4e
	csrr x20, 0xd4e	// Read CSR
	li x7, -1
	csrrw x21, 0xd4e, x7	// Write all 1s to CSR
	csrrw x21, 0xd4e, x0	// Write all 0s to CSR
	csrrs x21, 0xd4e, x7	// Set all CSR bits
	csrrc x21, 0xd4e, x7	// Clear all CSR bits
	csrrw x21, 0xd4e, x20	// Restore CSR

// Testing CSR 0xd4f
	csrr x13, 0xd4f	// Read CSR
	li x19, -1
	csrrw x9, 0xd4f, x19	// Write all 1s to CSR
	csrrw x9, 0xd4f, x0	// Write all 0s to CSR
	csrrs x9, 0xd4f, x19	// Set all CSR bits
	csrrc x9, 0xd4f, x19	// Clear all CSR bits
	csrrw x9, 0xd4f, x13	// Restore CSR

// Testing CSR 0xd50
	csrr x6, 0xd50	// Read CSR
	li x14, -1
	csrrw x24, 0xd50, x14	// Write all 1s to CSR
	csrrw x24, 0xd50, x0	// Write all 0s to CSR
	csrrs x24, 0xd50, x14	// Set all CSR bits
	csrrc x24, 0xd50, x14	// Clear all CSR bits
	csrrw x24, 0xd50, x6	// Restore CSR

// Testing CSR 0xd51
	csrr x16, 0xd51	// Read CSR
	li x2, -1
	csrrw x21, 0xd51, x2	// Write all 1s to CSR
	csrrw x21, 0xd51, x0	// Write all 0s to CSR
	csrrs x21, 0xd51, x2	// Set all CSR bits
	csrrc x21, 0xd51, x2	// Clear all CSR bits
	csrrw x21, 0xd51, x16	// Restore CSR

// Testing CSR 0xd52
	csrr x15, 0xd52	// Read CSR
	li x16, -1
	csrrw x31, 0xd52, x16	// Write all 1s to CSR
	csrrw x31, 0xd52, x0	// Write all 0s to CSR
	csrrs x31, 0xd52, x16	// Set all CSR bits
	csrrc x31, 0xd52, x16	// Clear all CSR bits
	csrrw x31, 0xd52, x15	// Restore CSR

// Testing CSR 0xd53
	csrr x3, 0xd53	// Read CSR
	li x21, -1
	csrrw x1, 0xd53, x21	// Write all 1s to CSR
	csrrw x1, 0xd53, x0	// Write all 0s to CSR
	csrrs x1, 0xd53, x21	// Set all CSR bits
	csrrc x1, 0xd53, x21	// Clear all CSR bits
	csrrw x1, 0xd53, x3	// Restore CSR

// Testing CSR 0xd54
	csrr x17, 0xd54	// Read CSR
	li x19, -1
	csrrw x12, 0xd54, x19	// Write all 1s to CSR
	csrrw x12, 0xd54, x0	// Write all 0s to CSR
	csrrs x12, 0xd54, x19	// Set all CSR bits
	csrrc x12, 0xd54, x19	// Clear all CSR bits
	csrrw x12, 0xd54, x17	// Restore CSR

// Testing CSR 0xd55
	csrr x24, 0xd55	// Read CSR
	li x23, -1
	csrrw x6, 0xd55, x23	// Write all 1s to CSR
	csrrw x6, 0xd55, x0	// Write all 0s to CSR
	csrrs x6, 0xd55, x23	// Set all CSR bits
	csrrc x6, 0xd55, x23	// Clear all CSR bits
	csrrw x6, 0xd55, x24	// Restore CSR

// Testing CSR 0xd56
	csrr x26, 0xd56	// Read CSR
	li x11, -1
	csrrw x25, 0xd56, x11	// Write all 1s to CSR
	csrrw x25, 0xd56, x0	// Write all 0s to CSR
	csrrs x25, 0xd56, x11	// Set all CSR bits
	csrrc x25, 0xd56, x11	// Clear all CSR bits
	csrrw x25, 0xd56, x26	// Restore CSR

// Testing CSR 0xd57
	csrr x28, 0xd57	// Read CSR
	li x15, -1
	csrrw x12, 0xd57, x15	// Write all 1s to CSR
	csrrw x12, 0xd57, x0	// Write all 0s to CSR
	csrrs x12, 0xd57, x15	// Set all CSR bits
	csrrc x12, 0xd57, x15	// Clear all CSR bits
	csrrw x12, 0xd57, x28	// Restore CSR

// Testing CSR 0xd58
	csrr x5, 0xd58	// Read CSR
	li x26, -1
	csrrw x13, 0xd58, x26	// Write all 1s to CSR
	csrrw x13, 0xd58, x0	// Write all 0s to CSR
	csrrs x13, 0xd58, x26	// Set all CSR bits
	csrrc x13, 0xd58, x26	// Clear all CSR bits
	csrrw x13, 0xd58, x5	// Restore CSR

// Testing CSR 0xd59
	csrr x14, 0xd59	// Read CSR
	li x29, -1
	csrrw x5, 0xd59, x29	// Write all 1s to CSR
	csrrw x5, 0xd59, x0	// Write all 0s to CSR
	csrrs x5, 0xd59, x29	// Set all CSR bits
	csrrc x5, 0xd59, x29	// Clear all CSR bits
	csrrw x5, 0xd59, x14	// Restore CSR

// Testing CSR 0xd5a
	csrr x2, 0xd5a	// Read CSR
	li x25, -1
	csrrw x29, 0xd5a, x25	// Write all 1s to CSR
	csrrw x29, 0xd5a, x0	// Write all 0s to CSR
	csrrs x29, 0xd5a, x25	// Set all CSR bits
	csrrc x29, 0xd5a, x25	// Clear all CSR bits
	csrrw x29, 0xd5a, x2	// Restore CSR

// Testing CSR 0xd5b
	csrr x14, 0xd5b	// Read CSR
	li x11, -1
	csrrw x2, 0xd5b, x11	// Write all 1s to CSR
	csrrw x2, 0xd5b, x0	// Write all 0s to CSR
	csrrs x2, 0xd5b, x11	// Set all CSR bits
	csrrc x2, 0xd5b, x11	// Clear all CSR bits
	csrrw x2, 0xd5b, x14	// Restore CSR

// Testing CSR 0xd5c
	csrr x24, 0xd5c	// Read CSR
	li x23, -1
	csrrw x22, 0xd5c, x23	// Write all 1s to CSR
	csrrw x22, 0xd5c, x0	// Write all 0s to CSR
	csrrs x22, 0xd5c, x23	// Set all CSR bits
	csrrc x22, 0xd5c, x23	// Clear all CSR bits
	csrrw x22, 0xd5c, x24	// Restore CSR

// Testing CSR 0xd5d
	csrr x19, 0xd5d	// Read CSR
	li x17, -1
	csrrw x21, 0xd5d, x17	// Write all 1s to CSR
	csrrw x21, 0xd5d, x0	// Write all 0s to CSR
	csrrs x21, 0xd5d, x17	// Set all CSR bits
	csrrc x21, 0xd5d, x17	// Clear all CSR bits
	csrrw x21, 0xd5d, x19	// Restore CSR

// Testing CSR 0xd5e
	csrr x22, 0xd5e	// Read CSR
	li x21, -1
	csrrw x16, 0xd5e, x21	// Write all 1s to CSR
	csrrw x16, 0xd5e, x0	// Write all 0s to CSR
	csrrs x16, 0xd5e, x21	// Set all CSR bits
	csrrc x16, 0xd5e, x21	// Clear all CSR bits
	csrrw x16, 0xd5e, x22	// Restore CSR

// Testing CSR 0xd5f
	csrr x18, 0xd5f	// Read CSR
	li x15, -1
	csrrw x5, 0xd5f, x15	// Write all 1s to CSR
	csrrw x5, 0xd5f, x0	// Write all 0s to CSR
	csrrs x5, 0xd5f, x15	// Set all CSR bits
	csrrc x5, 0xd5f, x15	// Clear all CSR bits
	csrrw x5, 0xd5f, x18	// Restore CSR

// Testing CSR 0xd60
	csrr x27, 0xd60	// Read CSR
	li x4, -1
	csrrw x5, 0xd60, x4	// Write all 1s to CSR
	csrrw x5, 0xd60, x0	// Write all 0s to CSR
	csrrs x5, 0xd60, x4	// Set all CSR bits
	csrrc x5, 0xd60, x4	// Clear all CSR bits
	csrrw x5, 0xd60, x27	// Restore CSR

// Testing CSR 0xd61
	csrr x26, 0xd61	// Read CSR
	li x13, -1
	csrrw x4, 0xd61, x13	// Write all 1s to CSR
	csrrw x4, 0xd61, x0	// Write all 0s to CSR
	csrrs x4, 0xd61, x13	// Set all CSR bits
	csrrc x4, 0xd61, x13	// Clear all CSR bits
	csrrw x4, 0xd61, x26	// Restore CSR

// Testing CSR 0xd62
	csrr x26, 0xd62	// Read CSR
	li x12, -1
	csrrw x19, 0xd62, x12	// Write all 1s to CSR
	csrrw x19, 0xd62, x0	// Write all 0s to CSR
	csrrs x19, 0xd62, x12	// Set all CSR bits
	csrrc x19, 0xd62, x12	// Clear all CSR bits
	csrrw x19, 0xd62, x26	// Restore CSR

// Testing CSR 0xd63
	csrr x8, 0xd63	// Read CSR
	li x1, -1
	csrrw x12, 0xd63, x1	// Write all 1s to CSR
	csrrw x12, 0xd63, x0	// Write all 0s to CSR
	csrrs x12, 0xd63, x1	// Set all CSR bits
	csrrc x12, 0xd63, x1	// Clear all CSR bits
	csrrw x12, 0xd63, x8	// Restore CSR

// Testing CSR 0xd64
	csrr x1, 0xd64	// Read CSR
	li x4, -1
	csrrw x17, 0xd64, x4	// Write all 1s to CSR
	csrrw x17, 0xd64, x0	// Write all 0s to CSR
	csrrs x17, 0xd64, x4	// Set all CSR bits
	csrrc x17, 0xd64, x4	// Clear all CSR bits
	csrrw x17, 0xd64, x1	// Restore CSR

// Testing CSR 0xd65
	csrr x23, 0xd65	// Read CSR
	li x18, -1
	csrrw x12, 0xd65, x18	// Write all 1s to CSR
	csrrw x12, 0xd65, x0	// Write all 0s to CSR
	csrrs x12, 0xd65, x18	// Set all CSR bits
	csrrc x12, 0xd65, x18	// Clear all CSR bits
	csrrw x12, 0xd65, x23	// Restore CSR

// Testing CSR 0xd66
	csrr x25, 0xd66	// Read CSR
	li x31, -1
	csrrw x17, 0xd66, x31	// Write all 1s to CSR
	csrrw x17, 0xd66, x0	// Write all 0s to CSR
	csrrs x17, 0xd66, x31	// Set all CSR bits
	csrrc x17, 0xd66, x31	// Clear all CSR bits
	csrrw x17, 0xd66, x25	// Restore CSR

// Testing CSR 0xd67
	csrr x12, 0xd67	// Read CSR
	li x2, -1
	csrrw x29, 0xd67, x2	// Write all 1s to CSR
	csrrw x29, 0xd67, x0	// Write all 0s to CSR
	csrrs x29, 0xd67, x2	// Set all CSR bits
	csrrc x29, 0xd67, x2	// Clear all CSR bits
	csrrw x29, 0xd67, x12	// Restore CSR

// Testing CSR 0xd68
	csrr x26, 0xd68	// Read CSR
	li x18, -1
	csrrw x30, 0xd68, x18	// Write all 1s to CSR
	csrrw x30, 0xd68, x0	// Write all 0s to CSR
	csrrs x30, 0xd68, x18	// Set all CSR bits
	csrrc x30, 0xd68, x18	// Clear all CSR bits
	csrrw x30, 0xd68, x26	// Restore CSR

// Testing CSR 0xd69
	csrr x28, 0xd69	// Read CSR
	li x9, -1
	csrrw x14, 0xd69, x9	// Write all 1s to CSR
	csrrw x14, 0xd69, x0	// Write all 0s to CSR
	csrrs x14, 0xd69, x9	// Set all CSR bits
	csrrc x14, 0xd69, x9	// Clear all CSR bits
	csrrw x14, 0xd69, x28	// Restore CSR

// Testing CSR 0xd6a
	csrr x12, 0xd6a	// Read CSR
	li x20, -1
	csrrw x30, 0xd6a, x20	// Write all 1s to CSR
	csrrw x30, 0xd6a, x0	// Write all 0s to CSR
	csrrs x30, 0xd6a, x20	// Set all CSR bits
	csrrc x30, 0xd6a, x20	// Clear all CSR bits
	csrrw x30, 0xd6a, x12	// Restore CSR

// Testing CSR 0xd6b
	csrr x29, 0xd6b	// Read CSR
	li x28, -1
	csrrw x14, 0xd6b, x28	// Write all 1s to CSR
	csrrw x14, 0xd6b, x0	// Write all 0s to CSR
	csrrs x14, 0xd6b, x28	// Set all CSR bits
	csrrc x14, 0xd6b, x28	// Clear all CSR bits
	csrrw x14, 0xd6b, x29	// Restore CSR

// Testing CSR 0xd6c
	csrr x29, 0xd6c	// Read CSR
	li x4, -1
	csrrw x24, 0xd6c, x4	// Write all 1s to CSR
	csrrw x24, 0xd6c, x0	// Write all 0s to CSR
	csrrs x24, 0xd6c, x4	// Set all CSR bits
	csrrc x24, 0xd6c, x4	// Clear all CSR bits
	csrrw x24, 0xd6c, x29	// Restore CSR

// Testing CSR 0xd6d
	csrr x4, 0xd6d	// Read CSR
	li x30, -1
	csrrw x6, 0xd6d, x30	// Write all 1s to CSR
	csrrw x6, 0xd6d, x0	// Write all 0s to CSR
	csrrs x6, 0xd6d, x30	// Set all CSR bits
	csrrc x6, 0xd6d, x30	// Clear all CSR bits
	csrrw x6, 0xd6d, x4	// Restore CSR

// Testing CSR 0xd6e
	csrr x30, 0xd6e	// Read CSR
	li x12, -1
	csrrw x28, 0xd6e, x12	// Write all 1s to CSR
	csrrw x28, 0xd6e, x0	// Write all 0s to CSR
	csrrs x28, 0xd6e, x12	// Set all CSR bits
	csrrc x28, 0xd6e, x12	// Clear all CSR bits
	csrrw x28, 0xd6e, x30	// Restore CSR

// Testing CSR 0xd6f
	csrr x20, 0xd6f	// Read CSR
	li x12, -1
	csrrw x14, 0xd6f, x12	// Write all 1s to CSR
	csrrw x14, 0xd6f, x0	// Write all 0s to CSR
	csrrs x14, 0xd6f, x12	// Set all CSR bits
	csrrc x14, 0xd6f, x12	// Clear all CSR bits
	csrrw x14, 0xd6f, x20	// Restore CSR

// Testing CSR 0xd70
	csrr x4, 0xd70	// Read CSR
	li x14, -1
	csrrw x18, 0xd70, x14	// Write all 1s to CSR
	csrrw x18, 0xd70, x0	// Write all 0s to CSR
	csrrs x18, 0xd70, x14	// Set all CSR bits
	csrrc x18, 0xd70, x14	// Clear all CSR bits
	csrrw x18, 0xd70, x4	// Restore CSR

// Testing CSR 0xd71
	csrr x21, 0xd71	// Read CSR
	li x22, -1
	csrrw x3, 0xd71, x22	// Write all 1s to CSR
	csrrw x3, 0xd71, x0	// Write all 0s to CSR
	csrrs x3, 0xd71, x22	// Set all CSR bits
	csrrc x3, 0xd71, x22	// Clear all CSR bits
	csrrw x3, 0xd71, x21	// Restore CSR

// Testing CSR 0xd72
	csrr x29, 0xd72	// Read CSR
	li x26, -1
	csrrw x10, 0xd72, x26	// Write all 1s to CSR
	csrrw x10, 0xd72, x0	// Write all 0s to CSR
	csrrs x10, 0xd72, x26	// Set all CSR bits
	csrrc x10, 0xd72, x26	// Clear all CSR bits
	csrrw x10, 0xd72, x29	// Restore CSR

// Testing CSR 0xd73
	csrr x26, 0xd73	// Read CSR
	li x22, -1
	csrrw x21, 0xd73, x22	// Write all 1s to CSR
	csrrw x21, 0xd73, x0	// Write all 0s to CSR
	csrrs x21, 0xd73, x22	// Set all CSR bits
	csrrc x21, 0xd73, x22	// Clear all CSR bits
	csrrw x21, 0xd73, x26	// Restore CSR

// Testing CSR 0xd74
	csrr x30, 0xd74	// Read CSR
	li x6, -1
	csrrw x26, 0xd74, x6	// Write all 1s to CSR
	csrrw x26, 0xd74, x0	// Write all 0s to CSR
	csrrs x26, 0xd74, x6	// Set all CSR bits
	csrrc x26, 0xd74, x6	// Clear all CSR bits
	csrrw x26, 0xd74, x30	// Restore CSR

// Testing CSR 0xd75
	csrr x17, 0xd75	// Read CSR
	li x27, -1
	csrrw x13, 0xd75, x27	// Write all 1s to CSR
	csrrw x13, 0xd75, x0	// Write all 0s to CSR
	csrrs x13, 0xd75, x27	// Set all CSR bits
	csrrc x13, 0xd75, x27	// Clear all CSR bits
	csrrw x13, 0xd75, x17	// Restore CSR

// Testing CSR 0xd76
	csrr x5, 0xd76	// Read CSR
	li x14, -1
	csrrw x8, 0xd76, x14	// Write all 1s to CSR
	csrrw x8, 0xd76, x0	// Write all 0s to CSR
	csrrs x8, 0xd76, x14	// Set all CSR bits
	csrrc x8, 0xd76, x14	// Clear all CSR bits
	csrrw x8, 0xd76, x5	// Restore CSR

// Testing CSR 0xd77
	csrr x10, 0xd77	// Read CSR
	li x6, -1
	csrrw x4, 0xd77, x6	// Write all 1s to CSR
	csrrw x4, 0xd77, x0	// Write all 0s to CSR
	csrrs x4, 0xd77, x6	// Set all CSR bits
	csrrc x4, 0xd77, x6	// Clear all CSR bits
	csrrw x4, 0xd77, x10	// Restore CSR

// Testing CSR 0xd78
	csrr x17, 0xd78	// Read CSR
	li x23, -1
	csrrw x10, 0xd78, x23	// Write all 1s to CSR
	csrrw x10, 0xd78, x0	// Write all 0s to CSR
	csrrs x10, 0xd78, x23	// Set all CSR bits
	csrrc x10, 0xd78, x23	// Clear all CSR bits
	csrrw x10, 0xd78, x17	// Restore CSR

// Testing CSR 0xd79
	csrr x20, 0xd79	// Read CSR
	li x17, -1
	csrrw x22, 0xd79, x17	// Write all 1s to CSR
	csrrw x22, 0xd79, x0	// Write all 0s to CSR
	csrrs x22, 0xd79, x17	// Set all CSR bits
	csrrc x22, 0xd79, x17	// Clear all CSR bits
	csrrw x22, 0xd79, x20	// Restore CSR

// Testing CSR 0xd7a
	csrr x2, 0xd7a	// Read CSR
	li x25, -1
	csrrw x13, 0xd7a, x25	// Write all 1s to CSR
	csrrw x13, 0xd7a, x0	// Write all 0s to CSR
	csrrs x13, 0xd7a, x25	// Set all CSR bits
	csrrc x13, 0xd7a, x25	// Clear all CSR bits
	csrrw x13, 0xd7a, x2	// Restore CSR

// Testing CSR 0xd7b
	csrr x29, 0xd7b	// Read CSR
	li x14, -1
	csrrw x4, 0xd7b, x14	// Write all 1s to CSR
	csrrw x4, 0xd7b, x0	// Write all 0s to CSR
	csrrs x4, 0xd7b, x14	// Set all CSR bits
	csrrc x4, 0xd7b, x14	// Clear all CSR bits
	csrrw x4, 0xd7b, x29	// Restore CSR

// Testing CSR 0xd7c
	csrr x30, 0xd7c	// Read CSR
	li x28, -1
	csrrw x26, 0xd7c, x28	// Write all 1s to CSR
	csrrw x26, 0xd7c, x0	// Write all 0s to CSR
	csrrs x26, 0xd7c, x28	// Set all CSR bits
	csrrc x26, 0xd7c, x28	// Clear all CSR bits
	csrrw x26, 0xd7c, x30	// Restore CSR

// Testing CSR 0xd7d
	csrr x26, 0xd7d	// Read CSR
	li x8, -1
	csrrw x6, 0xd7d, x8	// Write all 1s to CSR
	csrrw x6, 0xd7d, x0	// Write all 0s to CSR
	csrrs x6, 0xd7d, x8	// Set all CSR bits
	csrrc x6, 0xd7d, x8	// Clear all CSR bits
	csrrw x6, 0xd7d, x26	// Restore CSR

// Testing CSR 0xd7e
	csrr x12, 0xd7e	// Read CSR
	li x3, -1
	csrrw x30, 0xd7e, x3	// Write all 1s to CSR
	csrrw x30, 0xd7e, x0	// Write all 0s to CSR
	csrrs x30, 0xd7e, x3	// Set all CSR bits
	csrrc x30, 0xd7e, x3	// Clear all CSR bits
	csrrw x30, 0xd7e, x12	// Restore CSR

// Testing CSR 0xd7f
	csrr x5, 0xd7f	// Read CSR
	li x8, -1
	csrrw x29, 0xd7f, x8	// Write all 1s to CSR
	csrrw x29, 0xd7f, x0	// Write all 0s to CSR
	csrrs x29, 0xd7f, x8	// Set all CSR bits
	csrrc x29, 0xd7f, x8	// Clear all CSR bits
	csrrw x29, 0xd7f, x5	// Restore CSR

// Testing CSR 0xd80
	csrr x16, 0xd80	// Read CSR
	li x29, -1
	csrrw x11, 0xd80, x29	// Write all 1s to CSR
	csrrw x11, 0xd80, x0	// Write all 0s to CSR
	csrrs x11, 0xd80, x29	// Set all CSR bits
	csrrc x11, 0xd80, x29	// Clear all CSR bits
	csrrw x11, 0xd80, x16	// Restore CSR

// Testing CSR 0xd81
	csrr x25, 0xd81	// Read CSR
	li x18, -1
	csrrw x15, 0xd81, x18	// Write all 1s to CSR
	csrrw x15, 0xd81, x0	// Write all 0s to CSR
	csrrs x15, 0xd81, x18	// Set all CSR bits
	csrrc x15, 0xd81, x18	// Clear all CSR bits
	csrrw x15, 0xd81, x25	// Restore CSR

// Testing CSR 0xd82
	csrr x10, 0xd82	// Read CSR
	li x15, -1
	csrrw x1, 0xd82, x15	// Write all 1s to CSR
	csrrw x1, 0xd82, x0	// Write all 0s to CSR
	csrrs x1, 0xd82, x15	// Set all CSR bits
	csrrc x1, 0xd82, x15	// Clear all CSR bits
	csrrw x1, 0xd82, x10	// Restore CSR

// Testing CSR 0xd83
	csrr x1, 0xd83	// Read CSR
	li x3, -1
	csrrw x16, 0xd83, x3	// Write all 1s to CSR
	csrrw x16, 0xd83, x0	// Write all 0s to CSR
	csrrs x16, 0xd83, x3	// Set all CSR bits
	csrrc x16, 0xd83, x3	// Clear all CSR bits
	csrrw x16, 0xd83, x1	// Restore CSR

// Testing CSR 0xd84
	csrr x9, 0xd84	// Read CSR
	li x22, -1
	csrrw x29, 0xd84, x22	// Write all 1s to CSR
	csrrw x29, 0xd84, x0	// Write all 0s to CSR
	csrrs x29, 0xd84, x22	// Set all CSR bits
	csrrc x29, 0xd84, x22	// Clear all CSR bits
	csrrw x29, 0xd84, x9	// Restore CSR

// Testing CSR 0xd85
	csrr x19, 0xd85	// Read CSR
	li x10, -1
	csrrw x14, 0xd85, x10	// Write all 1s to CSR
	csrrw x14, 0xd85, x0	// Write all 0s to CSR
	csrrs x14, 0xd85, x10	// Set all CSR bits
	csrrc x14, 0xd85, x10	// Clear all CSR bits
	csrrw x14, 0xd85, x19	// Restore CSR

// Testing CSR 0xd86
	csrr x20, 0xd86	// Read CSR
	li x3, -1
	csrrw x22, 0xd86, x3	// Write all 1s to CSR
	csrrw x22, 0xd86, x0	// Write all 0s to CSR
	csrrs x22, 0xd86, x3	// Set all CSR bits
	csrrc x22, 0xd86, x3	// Clear all CSR bits
	csrrw x22, 0xd86, x20	// Restore CSR

// Testing CSR 0xd87
	csrr x12, 0xd87	// Read CSR
	li x31, -1
	csrrw x8, 0xd87, x31	// Write all 1s to CSR
	csrrw x8, 0xd87, x0	// Write all 0s to CSR
	csrrs x8, 0xd87, x31	// Set all CSR bits
	csrrc x8, 0xd87, x31	// Clear all CSR bits
	csrrw x8, 0xd87, x12	// Restore CSR

// Testing CSR 0xd88
	csrr x21, 0xd88	// Read CSR
	li x8, -1
	csrrw x13, 0xd88, x8	// Write all 1s to CSR
	csrrw x13, 0xd88, x0	// Write all 0s to CSR
	csrrs x13, 0xd88, x8	// Set all CSR bits
	csrrc x13, 0xd88, x8	// Clear all CSR bits
	csrrw x13, 0xd88, x21	// Restore CSR

// Testing CSR 0xd89
	csrr x10, 0xd89	// Read CSR
	li x14, -1
	csrrw x12, 0xd89, x14	// Write all 1s to CSR
	csrrw x12, 0xd89, x0	// Write all 0s to CSR
	csrrs x12, 0xd89, x14	// Set all CSR bits
	csrrc x12, 0xd89, x14	// Clear all CSR bits
	csrrw x12, 0xd89, x10	// Restore CSR

// Testing CSR 0xd8a
	csrr x20, 0xd8a	// Read CSR
	li x11, -1
	csrrw x2, 0xd8a, x11	// Write all 1s to CSR
	csrrw x2, 0xd8a, x0	// Write all 0s to CSR
	csrrs x2, 0xd8a, x11	// Set all CSR bits
	csrrc x2, 0xd8a, x11	// Clear all CSR bits
	csrrw x2, 0xd8a, x20	// Restore CSR

// Testing CSR 0xd8b
	csrr x15, 0xd8b	// Read CSR
	li x6, -1
	csrrw x21, 0xd8b, x6	// Write all 1s to CSR
	csrrw x21, 0xd8b, x0	// Write all 0s to CSR
	csrrs x21, 0xd8b, x6	// Set all CSR bits
	csrrc x21, 0xd8b, x6	// Clear all CSR bits
	csrrw x21, 0xd8b, x15	// Restore CSR

// Testing CSR 0xd8c
	csrr x11, 0xd8c	// Read CSR
	li x8, -1
	csrrw x24, 0xd8c, x8	// Write all 1s to CSR
	csrrw x24, 0xd8c, x0	// Write all 0s to CSR
	csrrs x24, 0xd8c, x8	// Set all CSR bits
	csrrc x24, 0xd8c, x8	// Clear all CSR bits
	csrrw x24, 0xd8c, x11	// Restore CSR

// Testing CSR 0xd8d
	csrr x9, 0xd8d	// Read CSR
	li x27, -1
	csrrw x26, 0xd8d, x27	// Write all 1s to CSR
	csrrw x26, 0xd8d, x0	// Write all 0s to CSR
	csrrs x26, 0xd8d, x27	// Set all CSR bits
	csrrc x26, 0xd8d, x27	// Clear all CSR bits
	csrrw x26, 0xd8d, x9	// Restore CSR

// Testing CSR 0xd8e
	csrr x11, 0xd8e	// Read CSR
	li x22, -1
	csrrw x13, 0xd8e, x22	// Write all 1s to CSR
	csrrw x13, 0xd8e, x0	// Write all 0s to CSR
	csrrs x13, 0xd8e, x22	// Set all CSR bits
	csrrc x13, 0xd8e, x22	// Clear all CSR bits
	csrrw x13, 0xd8e, x11	// Restore CSR

// Testing CSR 0xd8f
	csrr x21, 0xd8f	// Read CSR
	li x12, -1
	csrrw x30, 0xd8f, x12	// Write all 1s to CSR
	csrrw x30, 0xd8f, x0	// Write all 0s to CSR
	csrrs x30, 0xd8f, x12	// Set all CSR bits
	csrrc x30, 0xd8f, x12	// Clear all CSR bits
	csrrw x30, 0xd8f, x21	// Restore CSR

// Testing CSR 0xd90
	csrr x30, 0xd90	// Read CSR
	li x9, -1
	csrrw x27, 0xd90, x9	// Write all 1s to CSR
	csrrw x27, 0xd90, x0	// Write all 0s to CSR
	csrrs x27, 0xd90, x9	// Set all CSR bits
	csrrc x27, 0xd90, x9	// Clear all CSR bits
	csrrw x27, 0xd90, x30	// Restore CSR

// Testing CSR 0xd91
	csrr x9, 0xd91	// Read CSR
	li x16, -1
	csrrw x17, 0xd91, x16	// Write all 1s to CSR
	csrrw x17, 0xd91, x0	// Write all 0s to CSR
	csrrs x17, 0xd91, x16	// Set all CSR bits
	csrrc x17, 0xd91, x16	// Clear all CSR bits
	csrrw x17, 0xd91, x9	// Restore CSR

// Testing CSR 0xd92
	csrr x31, 0xd92	// Read CSR
	li x30, -1
	csrrw x22, 0xd92, x30	// Write all 1s to CSR
	csrrw x22, 0xd92, x0	// Write all 0s to CSR
	csrrs x22, 0xd92, x30	// Set all CSR bits
	csrrc x22, 0xd92, x30	// Clear all CSR bits
	csrrw x22, 0xd92, x31	// Restore CSR

// Testing CSR 0xd93
	csrr x16, 0xd93	// Read CSR
	li x20, -1
	csrrw x23, 0xd93, x20	// Write all 1s to CSR
	csrrw x23, 0xd93, x0	// Write all 0s to CSR
	csrrs x23, 0xd93, x20	// Set all CSR bits
	csrrc x23, 0xd93, x20	// Clear all CSR bits
	csrrw x23, 0xd93, x16	// Restore CSR

// Testing CSR 0xd94
	csrr x25, 0xd94	// Read CSR
	li x30, -1
	csrrw x11, 0xd94, x30	// Write all 1s to CSR
	csrrw x11, 0xd94, x0	// Write all 0s to CSR
	csrrs x11, 0xd94, x30	// Set all CSR bits
	csrrc x11, 0xd94, x30	// Clear all CSR bits
	csrrw x11, 0xd94, x25	// Restore CSR

// Testing CSR 0xd95
	csrr x14, 0xd95	// Read CSR
	li x29, -1
	csrrw x4, 0xd95, x29	// Write all 1s to CSR
	csrrw x4, 0xd95, x0	// Write all 0s to CSR
	csrrs x4, 0xd95, x29	// Set all CSR bits
	csrrc x4, 0xd95, x29	// Clear all CSR bits
	csrrw x4, 0xd95, x14	// Restore CSR

// Testing CSR 0xd96
	csrr x28, 0xd96	// Read CSR
	li x24, -1
	csrrw x26, 0xd96, x24	// Write all 1s to CSR
	csrrw x26, 0xd96, x0	// Write all 0s to CSR
	csrrs x26, 0xd96, x24	// Set all CSR bits
	csrrc x26, 0xd96, x24	// Clear all CSR bits
	csrrw x26, 0xd96, x28	// Restore CSR

// Testing CSR 0xd97
	csrr x29, 0xd97	// Read CSR
	li x23, -1
	csrrw x28, 0xd97, x23	// Write all 1s to CSR
	csrrw x28, 0xd97, x0	// Write all 0s to CSR
	csrrs x28, 0xd97, x23	// Set all CSR bits
	csrrc x28, 0xd97, x23	// Clear all CSR bits
	csrrw x28, 0xd97, x29	// Restore CSR

// Testing CSR 0xd98
	csrr x1, 0xd98	// Read CSR
	li x27, -1
	csrrw x10, 0xd98, x27	// Write all 1s to CSR
	csrrw x10, 0xd98, x0	// Write all 0s to CSR
	csrrs x10, 0xd98, x27	// Set all CSR bits
	csrrc x10, 0xd98, x27	// Clear all CSR bits
	csrrw x10, 0xd98, x1	// Restore CSR

// Testing CSR 0xd99
	csrr x31, 0xd99	// Read CSR
	li x8, -1
	csrrw x7, 0xd99, x8	// Write all 1s to CSR
	csrrw x7, 0xd99, x0	// Write all 0s to CSR
	csrrs x7, 0xd99, x8	// Set all CSR bits
	csrrc x7, 0xd99, x8	// Clear all CSR bits
	csrrw x7, 0xd99, x31	// Restore CSR

// Testing CSR 0xd9a
	csrr x20, 0xd9a	// Read CSR
	li x18, -1
	csrrw x5, 0xd9a, x18	// Write all 1s to CSR
	csrrw x5, 0xd9a, x0	// Write all 0s to CSR
	csrrs x5, 0xd9a, x18	// Set all CSR bits
	csrrc x5, 0xd9a, x18	// Clear all CSR bits
	csrrw x5, 0xd9a, x20	// Restore CSR

// Testing CSR 0xd9b
	csrr x28, 0xd9b	// Read CSR
	li x6, -1
	csrrw x4, 0xd9b, x6	// Write all 1s to CSR
	csrrw x4, 0xd9b, x0	// Write all 0s to CSR
	csrrs x4, 0xd9b, x6	// Set all CSR bits
	csrrc x4, 0xd9b, x6	// Clear all CSR bits
	csrrw x4, 0xd9b, x28	// Restore CSR

// Testing CSR 0xd9c
	csrr x16, 0xd9c	// Read CSR
	li x17, -1
	csrrw x11, 0xd9c, x17	// Write all 1s to CSR
	csrrw x11, 0xd9c, x0	// Write all 0s to CSR
	csrrs x11, 0xd9c, x17	// Set all CSR bits
	csrrc x11, 0xd9c, x17	// Clear all CSR bits
	csrrw x11, 0xd9c, x16	// Restore CSR

// Testing CSR 0xd9d
	csrr x14, 0xd9d	// Read CSR
	li x20, -1
	csrrw x12, 0xd9d, x20	// Write all 1s to CSR
	csrrw x12, 0xd9d, x0	// Write all 0s to CSR
	csrrs x12, 0xd9d, x20	// Set all CSR bits
	csrrc x12, 0xd9d, x20	// Clear all CSR bits
	csrrw x12, 0xd9d, x14	// Restore CSR

// Testing CSR 0xd9e
	csrr x12, 0xd9e	// Read CSR
	li x15, -1
	csrrw x16, 0xd9e, x15	// Write all 1s to CSR
	csrrw x16, 0xd9e, x0	// Write all 0s to CSR
	csrrs x16, 0xd9e, x15	// Set all CSR bits
	csrrc x16, 0xd9e, x15	// Clear all CSR bits
	csrrw x16, 0xd9e, x12	// Restore CSR

// Testing CSR 0xd9f
	csrr x10, 0xd9f	// Read CSR
	li x31, -1
	csrrw x24, 0xd9f, x31	// Write all 1s to CSR
	csrrw x24, 0xd9f, x0	// Write all 0s to CSR
	csrrs x24, 0xd9f, x31	// Set all CSR bits
	csrrc x24, 0xd9f, x31	// Clear all CSR bits
	csrrw x24, 0xd9f, x10	// Restore CSR

// Testing CSR 0xda0
	csrr x12, 0xda0	// Read CSR
	li x2, -1
	csrrw x14, 0xda0, x2	// Write all 1s to CSR
	csrrw x14, 0xda0, x0	// Write all 0s to CSR
	csrrs x14, 0xda0, x2	// Set all CSR bits
	csrrc x14, 0xda0, x2	// Clear all CSR bits
	csrrw x14, 0xda0, x12	// Restore CSR

// Testing CSR 0xda1
	csrr x1, 0xda1	// Read CSR
	li x2, -1
	csrrw x17, 0xda1, x2	// Write all 1s to CSR
	csrrw x17, 0xda1, x0	// Write all 0s to CSR
	csrrs x17, 0xda1, x2	// Set all CSR bits
	csrrc x17, 0xda1, x2	// Clear all CSR bits
	csrrw x17, 0xda1, x1	// Restore CSR

// Testing CSR 0xda2
	csrr x11, 0xda2	// Read CSR
	li x7, -1
	csrrw x18, 0xda2, x7	// Write all 1s to CSR
	csrrw x18, 0xda2, x0	// Write all 0s to CSR
	csrrs x18, 0xda2, x7	// Set all CSR bits
	csrrc x18, 0xda2, x7	// Clear all CSR bits
	csrrw x18, 0xda2, x11	// Restore CSR

// Testing CSR 0xda3
	csrr x22, 0xda3	// Read CSR
	li x31, -1
	csrrw x17, 0xda3, x31	// Write all 1s to CSR
	csrrw x17, 0xda3, x0	// Write all 0s to CSR
	csrrs x17, 0xda3, x31	// Set all CSR bits
	csrrc x17, 0xda3, x31	// Clear all CSR bits
	csrrw x17, 0xda3, x22	// Restore CSR

// Testing CSR 0xda4
	csrr x22, 0xda4	// Read CSR
	li x5, -1
	csrrw x31, 0xda4, x5	// Write all 1s to CSR
	csrrw x31, 0xda4, x0	// Write all 0s to CSR
	csrrs x31, 0xda4, x5	// Set all CSR bits
	csrrc x31, 0xda4, x5	// Clear all CSR bits
	csrrw x31, 0xda4, x22	// Restore CSR

// Testing CSR 0xda5
	csrr x14, 0xda5	// Read CSR
	li x13, -1
	csrrw x27, 0xda5, x13	// Write all 1s to CSR
	csrrw x27, 0xda5, x0	// Write all 0s to CSR
	csrrs x27, 0xda5, x13	// Set all CSR bits
	csrrc x27, 0xda5, x13	// Clear all CSR bits
	csrrw x27, 0xda5, x14	// Restore CSR

// Testing CSR 0xda6
	csrr x5, 0xda6	// Read CSR
	li x13, -1
	csrrw x22, 0xda6, x13	// Write all 1s to CSR
	csrrw x22, 0xda6, x0	// Write all 0s to CSR
	csrrs x22, 0xda6, x13	// Set all CSR bits
	csrrc x22, 0xda6, x13	// Clear all CSR bits
	csrrw x22, 0xda6, x5	// Restore CSR

// Testing CSR 0xda7
	csrr x22, 0xda7	// Read CSR
	li x10, -1
	csrrw x5, 0xda7, x10	// Write all 1s to CSR
	csrrw x5, 0xda7, x0	// Write all 0s to CSR
	csrrs x5, 0xda7, x10	// Set all CSR bits
	csrrc x5, 0xda7, x10	// Clear all CSR bits
	csrrw x5, 0xda7, x22	// Restore CSR

// Testing CSR 0xda8
	csrr x5, 0xda8	// Read CSR
	li x7, -1
	csrrw x20, 0xda8, x7	// Write all 1s to CSR
	csrrw x20, 0xda8, x0	// Write all 0s to CSR
	csrrs x20, 0xda8, x7	// Set all CSR bits
	csrrc x20, 0xda8, x7	// Clear all CSR bits
	csrrw x20, 0xda8, x5	// Restore CSR

// Testing CSR 0xda9
	csrr x27, 0xda9	// Read CSR
	li x7, -1
	csrrw x13, 0xda9, x7	// Write all 1s to CSR
	csrrw x13, 0xda9, x0	// Write all 0s to CSR
	csrrs x13, 0xda9, x7	// Set all CSR bits
	csrrc x13, 0xda9, x7	// Clear all CSR bits
	csrrw x13, 0xda9, x27	// Restore CSR

// Testing CSR 0xdaa
	csrr x20, 0xdaa	// Read CSR
	li x31, -1
	csrrw x28, 0xdaa, x31	// Write all 1s to CSR
	csrrw x28, 0xdaa, x0	// Write all 0s to CSR
	csrrs x28, 0xdaa, x31	// Set all CSR bits
	csrrc x28, 0xdaa, x31	// Clear all CSR bits
	csrrw x28, 0xdaa, x20	// Restore CSR

// Testing CSR 0xdab
	csrr x24, 0xdab	// Read CSR
	li x18, -1
	csrrw x17, 0xdab, x18	// Write all 1s to CSR
	csrrw x17, 0xdab, x0	// Write all 0s to CSR
	csrrs x17, 0xdab, x18	// Set all CSR bits
	csrrc x17, 0xdab, x18	// Clear all CSR bits
	csrrw x17, 0xdab, x24	// Restore CSR

// Testing CSR 0xdac
	csrr x1, 0xdac	// Read CSR
	li x27, -1
	csrrw x25, 0xdac, x27	// Write all 1s to CSR
	csrrw x25, 0xdac, x0	// Write all 0s to CSR
	csrrs x25, 0xdac, x27	// Set all CSR bits
	csrrc x25, 0xdac, x27	// Clear all CSR bits
	csrrw x25, 0xdac, x1	// Restore CSR

// Testing CSR 0xdad
	csrr x4, 0xdad	// Read CSR
	li x9, -1
	csrrw x16, 0xdad, x9	// Write all 1s to CSR
	csrrw x16, 0xdad, x0	// Write all 0s to CSR
	csrrs x16, 0xdad, x9	// Set all CSR bits
	csrrc x16, 0xdad, x9	// Clear all CSR bits
	csrrw x16, 0xdad, x4	// Restore CSR

// Testing CSR 0xdae
	csrr x14, 0xdae	// Read CSR
	li x21, -1
	csrrw x10, 0xdae, x21	// Write all 1s to CSR
	csrrw x10, 0xdae, x0	// Write all 0s to CSR
	csrrs x10, 0xdae, x21	// Set all CSR bits
	csrrc x10, 0xdae, x21	// Clear all CSR bits
	csrrw x10, 0xdae, x14	// Restore CSR

// Testing CSR 0xdaf
	csrr x8, 0xdaf	// Read CSR
	li x6, -1
	csrrw x5, 0xdaf, x6	// Write all 1s to CSR
	csrrw x5, 0xdaf, x0	// Write all 0s to CSR
	csrrs x5, 0xdaf, x6	// Set all CSR bits
	csrrc x5, 0xdaf, x6	// Clear all CSR bits
	csrrw x5, 0xdaf, x8	// Restore CSR

// Testing CSR 0xdb0
	csrr x21, 0xdb0	// Read CSR
	li x22, -1
	csrrw x24, 0xdb0, x22	// Write all 1s to CSR
	csrrw x24, 0xdb0, x0	// Write all 0s to CSR
	csrrs x24, 0xdb0, x22	// Set all CSR bits
	csrrc x24, 0xdb0, x22	// Clear all CSR bits
	csrrw x24, 0xdb0, x21	// Restore CSR

// Testing CSR 0xdb1
	csrr x27, 0xdb1	// Read CSR
	li x2, -1
	csrrw x12, 0xdb1, x2	// Write all 1s to CSR
	csrrw x12, 0xdb1, x0	// Write all 0s to CSR
	csrrs x12, 0xdb1, x2	// Set all CSR bits
	csrrc x12, 0xdb1, x2	// Clear all CSR bits
	csrrw x12, 0xdb1, x27	// Restore CSR

// Testing CSR 0xdb2
	csrr x12, 0xdb2	// Read CSR
	li x10, -1
	csrrw x24, 0xdb2, x10	// Write all 1s to CSR
	csrrw x24, 0xdb2, x0	// Write all 0s to CSR
	csrrs x24, 0xdb2, x10	// Set all CSR bits
	csrrc x24, 0xdb2, x10	// Clear all CSR bits
	csrrw x24, 0xdb2, x12	// Restore CSR

// Testing CSR 0xdb3
	csrr x9, 0xdb3	// Read CSR
	li x27, -1
	csrrw x26, 0xdb3, x27	// Write all 1s to CSR
	csrrw x26, 0xdb3, x0	// Write all 0s to CSR
	csrrs x26, 0xdb3, x27	// Set all CSR bits
	csrrc x26, 0xdb3, x27	// Clear all CSR bits
	csrrw x26, 0xdb3, x9	// Restore CSR

// Testing CSR 0xdb4
	csrr x3, 0xdb4	// Read CSR
	li x1, -1
	csrrw x11, 0xdb4, x1	// Write all 1s to CSR
	csrrw x11, 0xdb4, x0	// Write all 0s to CSR
	csrrs x11, 0xdb4, x1	// Set all CSR bits
	csrrc x11, 0xdb4, x1	// Clear all CSR bits
	csrrw x11, 0xdb4, x3	// Restore CSR

// Testing CSR 0xdb5
	csrr x4, 0xdb5	// Read CSR
	li x2, -1
	csrrw x22, 0xdb5, x2	// Write all 1s to CSR
	csrrw x22, 0xdb5, x0	// Write all 0s to CSR
	csrrs x22, 0xdb5, x2	// Set all CSR bits
	csrrc x22, 0xdb5, x2	// Clear all CSR bits
	csrrw x22, 0xdb5, x4	// Restore CSR

// Testing CSR 0xdb6
	csrr x2, 0xdb6	// Read CSR
	li x7, -1
	csrrw x31, 0xdb6, x7	// Write all 1s to CSR
	csrrw x31, 0xdb6, x0	// Write all 0s to CSR
	csrrs x31, 0xdb6, x7	// Set all CSR bits
	csrrc x31, 0xdb6, x7	// Clear all CSR bits
	csrrw x31, 0xdb6, x2	// Restore CSR

// Testing CSR 0xdb7
	csrr x5, 0xdb7	// Read CSR
	li x8, -1
	csrrw x13, 0xdb7, x8	// Write all 1s to CSR
	csrrw x13, 0xdb7, x0	// Write all 0s to CSR
	csrrs x13, 0xdb7, x8	// Set all CSR bits
	csrrc x13, 0xdb7, x8	// Clear all CSR bits
	csrrw x13, 0xdb7, x5	// Restore CSR

// Testing CSR 0xdb8
	csrr x3, 0xdb8	// Read CSR
	li x9, -1
	csrrw x30, 0xdb8, x9	// Write all 1s to CSR
	csrrw x30, 0xdb8, x0	// Write all 0s to CSR
	csrrs x30, 0xdb8, x9	// Set all CSR bits
	csrrc x30, 0xdb8, x9	// Clear all CSR bits
	csrrw x30, 0xdb8, x3	// Restore CSR

// Testing CSR 0xdb9
	csrr x20, 0xdb9	// Read CSR
	li x18, -1
	csrrw x30, 0xdb9, x18	// Write all 1s to CSR
	csrrw x30, 0xdb9, x0	// Write all 0s to CSR
	csrrs x30, 0xdb9, x18	// Set all CSR bits
	csrrc x30, 0xdb9, x18	// Clear all CSR bits
	csrrw x30, 0xdb9, x20	// Restore CSR

// Testing CSR 0xdba
	csrr x5, 0xdba	// Read CSR
	li x29, -1
	csrrw x28, 0xdba, x29	// Write all 1s to CSR
	csrrw x28, 0xdba, x0	// Write all 0s to CSR
	csrrs x28, 0xdba, x29	// Set all CSR bits
	csrrc x28, 0xdba, x29	// Clear all CSR bits
	csrrw x28, 0xdba, x5	// Restore CSR

// Testing CSR 0xdbb
	csrr x29, 0xdbb	// Read CSR
	li x14, -1
	csrrw x25, 0xdbb, x14	// Write all 1s to CSR
	csrrw x25, 0xdbb, x0	// Write all 0s to CSR
	csrrs x25, 0xdbb, x14	// Set all CSR bits
	csrrc x25, 0xdbb, x14	// Clear all CSR bits
	csrrw x25, 0xdbb, x29	// Restore CSR

// Testing CSR 0xdbc
	csrr x2, 0xdbc	// Read CSR
	li x26, -1
	csrrw x17, 0xdbc, x26	// Write all 1s to CSR
	csrrw x17, 0xdbc, x0	// Write all 0s to CSR
	csrrs x17, 0xdbc, x26	// Set all CSR bits
	csrrc x17, 0xdbc, x26	// Clear all CSR bits
	csrrw x17, 0xdbc, x2	// Restore CSR

// Testing CSR 0xdbd
	csrr x7, 0xdbd	// Read CSR
	li x6, -1
	csrrw x16, 0xdbd, x6	// Write all 1s to CSR
	csrrw x16, 0xdbd, x0	// Write all 0s to CSR
	csrrs x16, 0xdbd, x6	// Set all CSR bits
	csrrc x16, 0xdbd, x6	// Clear all CSR bits
	csrrw x16, 0xdbd, x7	// Restore CSR

// Testing CSR 0xdbe
	csrr x1, 0xdbe	// Read CSR
	li x5, -1
	csrrw x11, 0xdbe, x5	// Write all 1s to CSR
	csrrw x11, 0xdbe, x0	// Write all 0s to CSR
	csrrs x11, 0xdbe, x5	// Set all CSR bits
	csrrc x11, 0xdbe, x5	// Clear all CSR bits
	csrrw x11, 0xdbe, x1	// Restore CSR

// Testing CSR 0xdbf
	csrr x11, 0xdbf	// Read CSR
	li x22, -1
	csrrw x14, 0xdbf, x22	// Write all 1s to CSR
	csrrw x14, 0xdbf, x0	// Write all 0s to CSR
	csrrs x14, 0xdbf, x22	// Set all CSR bits
	csrrc x14, 0xdbf, x22	// Clear all CSR bits
	csrrw x14, 0xdbf, x11	// Restore CSR

// Testing CSR 0xe00
	csrr x11, 0xe00	// Read CSR
	li x22, -1
	csrrw x23, 0xe00, x22	// Write all 1s to CSR
	csrrw x23, 0xe00, x0	// Write all 0s to CSR
	csrrs x23, 0xe00, x22	// Set all CSR bits
	csrrc x23, 0xe00, x22	// Clear all CSR bits
	csrrw x23, 0xe00, x11	// Restore CSR

// Testing CSR 0xe01
	csrr x21, 0xe01	// Read CSR
	li x26, -1
	csrrw x15, 0xe01, x26	// Write all 1s to CSR
	csrrw x15, 0xe01, x0	// Write all 0s to CSR
	csrrs x15, 0xe01, x26	// Set all CSR bits
	csrrc x15, 0xe01, x26	// Clear all CSR bits
	csrrw x15, 0xe01, x21	// Restore CSR

// Testing CSR 0xe02
	csrr x24, 0xe02	// Read CSR
	li x11, -1
	csrrw x21, 0xe02, x11	// Write all 1s to CSR
	csrrw x21, 0xe02, x0	// Write all 0s to CSR
	csrrs x21, 0xe02, x11	// Set all CSR bits
	csrrc x21, 0xe02, x11	// Clear all CSR bits
	csrrw x21, 0xe02, x24	// Restore CSR

// Testing CSR 0xe03
	csrr x23, 0xe03	// Read CSR
	li x11, -1
	csrrw x27, 0xe03, x11	// Write all 1s to CSR
	csrrw x27, 0xe03, x0	// Write all 0s to CSR
	csrrs x27, 0xe03, x11	// Set all CSR bits
	csrrc x27, 0xe03, x11	// Clear all CSR bits
	csrrw x27, 0xe03, x23	// Restore CSR

// Testing CSR 0xe04
	csrr x17, 0xe04	// Read CSR
	li x1, -1
	csrrw x30, 0xe04, x1	// Write all 1s to CSR
	csrrw x30, 0xe04, x0	// Write all 0s to CSR
	csrrs x30, 0xe04, x1	// Set all CSR bits
	csrrc x30, 0xe04, x1	// Clear all CSR bits
	csrrw x30, 0xe04, x17	// Restore CSR

// Testing CSR 0xe05
	csrr x29, 0xe05	// Read CSR
	li x18, -1
	csrrw x19, 0xe05, x18	// Write all 1s to CSR
	csrrw x19, 0xe05, x0	// Write all 0s to CSR
	csrrs x19, 0xe05, x18	// Set all CSR bits
	csrrc x19, 0xe05, x18	// Clear all CSR bits
	csrrw x19, 0xe05, x29	// Restore CSR

// Testing CSR 0xe06
	csrr x17, 0xe06	// Read CSR
	li x7, -1
	csrrw x8, 0xe06, x7	// Write all 1s to CSR
	csrrw x8, 0xe06, x0	// Write all 0s to CSR
	csrrs x8, 0xe06, x7	// Set all CSR bits
	csrrc x8, 0xe06, x7	// Clear all CSR bits
	csrrw x8, 0xe06, x17	// Restore CSR

// Testing CSR 0xe07
	csrr x13, 0xe07	// Read CSR
	li x6, -1
	csrrw x5, 0xe07, x6	// Write all 1s to CSR
	csrrw x5, 0xe07, x0	// Write all 0s to CSR
	csrrs x5, 0xe07, x6	// Set all CSR bits
	csrrc x5, 0xe07, x6	// Clear all CSR bits
	csrrw x5, 0xe07, x13	// Restore CSR

// Testing CSR 0xe08
	csrr x13, 0xe08	// Read CSR
	li x2, -1
	csrrw x25, 0xe08, x2	// Write all 1s to CSR
	csrrw x25, 0xe08, x0	// Write all 0s to CSR
	csrrs x25, 0xe08, x2	// Set all CSR bits
	csrrc x25, 0xe08, x2	// Clear all CSR bits
	csrrw x25, 0xe08, x13	// Restore CSR

// Testing CSR 0xe09
	csrr x19, 0xe09	// Read CSR
	li x13, -1
	csrrw x9, 0xe09, x13	// Write all 1s to CSR
	csrrw x9, 0xe09, x0	// Write all 0s to CSR
	csrrs x9, 0xe09, x13	// Set all CSR bits
	csrrc x9, 0xe09, x13	// Clear all CSR bits
	csrrw x9, 0xe09, x19	// Restore CSR

// Testing CSR 0xe0a
	csrr x15, 0xe0a	// Read CSR
	li x8, -1
	csrrw x22, 0xe0a, x8	// Write all 1s to CSR
	csrrw x22, 0xe0a, x0	// Write all 0s to CSR
	csrrs x22, 0xe0a, x8	// Set all CSR bits
	csrrc x22, 0xe0a, x8	// Clear all CSR bits
	csrrw x22, 0xe0a, x15	// Restore CSR

// Testing CSR 0xe0b
	csrr x2, 0xe0b	// Read CSR
	li x14, -1
	csrrw x15, 0xe0b, x14	// Write all 1s to CSR
	csrrw x15, 0xe0b, x0	// Write all 0s to CSR
	csrrs x15, 0xe0b, x14	// Set all CSR bits
	csrrc x15, 0xe0b, x14	// Clear all CSR bits
	csrrw x15, 0xe0b, x2	// Restore CSR

// Testing CSR 0xe0c
	csrr x2, 0xe0c	// Read CSR
	li x13, -1
	csrrw x7, 0xe0c, x13	// Write all 1s to CSR
	csrrw x7, 0xe0c, x0	// Write all 0s to CSR
	csrrs x7, 0xe0c, x13	// Set all CSR bits
	csrrc x7, 0xe0c, x13	// Clear all CSR bits
	csrrw x7, 0xe0c, x2	// Restore CSR

// Testing CSR 0xe0d
	csrr x14, 0xe0d	// Read CSR
	li x1, -1
	csrrw x24, 0xe0d, x1	// Write all 1s to CSR
	csrrw x24, 0xe0d, x0	// Write all 0s to CSR
	csrrs x24, 0xe0d, x1	// Set all CSR bits
	csrrc x24, 0xe0d, x1	// Clear all CSR bits
	csrrw x24, 0xe0d, x14	// Restore CSR

// Testing CSR 0xe0e
	csrr x16, 0xe0e	// Read CSR
	li x8, -1
	csrrw x5, 0xe0e, x8	// Write all 1s to CSR
	csrrw x5, 0xe0e, x0	// Write all 0s to CSR
	csrrs x5, 0xe0e, x8	// Set all CSR bits
	csrrc x5, 0xe0e, x8	// Clear all CSR bits
	csrrw x5, 0xe0e, x16	// Restore CSR

// Testing CSR 0xe0f
	csrr x21, 0xe0f	// Read CSR
	li x29, -1
	csrrw x3, 0xe0f, x29	// Write all 1s to CSR
	csrrw x3, 0xe0f, x0	// Write all 0s to CSR
	csrrs x3, 0xe0f, x29	// Set all CSR bits
	csrrc x3, 0xe0f, x29	// Clear all CSR bits
	csrrw x3, 0xe0f, x21	// Restore CSR

// Testing CSR 0xe10
	csrr x28, 0xe10	// Read CSR
	li x25, -1
	csrrw x3, 0xe10, x25	// Write all 1s to CSR
	csrrw x3, 0xe10, x0	// Write all 0s to CSR
	csrrs x3, 0xe10, x25	// Set all CSR bits
	csrrc x3, 0xe10, x25	// Clear all CSR bits
	csrrw x3, 0xe10, x28	// Restore CSR

// Testing CSR 0xe11
	csrr x24, 0xe11	// Read CSR
	li x3, -1
	csrrw x12, 0xe11, x3	// Write all 1s to CSR
	csrrw x12, 0xe11, x0	// Write all 0s to CSR
	csrrs x12, 0xe11, x3	// Set all CSR bits
	csrrc x12, 0xe11, x3	// Clear all CSR bits
	csrrw x12, 0xe11, x24	// Restore CSR

// Testing CSR 0xe12
	csrr x3, 0xe12	// Read CSR
	li x24, -1
	csrrw x31, 0xe12, x24	// Write all 1s to CSR
	csrrw x31, 0xe12, x0	// Write all 0s to CSR
	csrrs x31, 0xe12, x24	// Set all CSR bits
	csrrc x31, 0xe12, x24	// Clear all CSR bits
	csrrw x31, 0xe12, x3	// Restore CSR

// Testing CSR 0xe13
	csrr x2, 0xe13	// Read CSR
	li x3, -1
	csrrw x18, 0xe13, x3	// Write all 1s to CSR
	csrrw x18, 0xe13, x0	// Write all 0s to CSR
	csrrs x18, 0xe13, x3	// Set all CSR bits
	csrrc x18, 0xe13, x3	// Clear all CSR bits
	csrrw x18, 0xe13, x2	// Restore CSR

// Testing CSR 0xe14
	csrr x6, 0xe14	// Read CSR
	li x10, -1
	csrrw x5, 0xe14, x10	// Write all 1s to CSR
	csrrw x5, 0xe14, x0	// Write all 0s to CSR
	csrrs x5, 0xe14, x10	// Set all CSR bits
	csrrc x5, 0xe14, x10	// Clear all CSR bits
	csrrw x5, 0xe14, x6	// Restore CSR

// Testing CSR 0xe15
	csrr x16, 0xe15	// Read CSR
	li x8, -1
	csrrw x7, 0xe15, x8	// Write all 1s to CSR
	csrrw x7, 0xe15, x0	// Write all 0s to CSR
	csrrs x7, 0xe15, x8	// Set all CSR bits
	csrrc x7, 0xe15, x8	// Clear all CSR bits
	csrrw x7, 0xe15, x16	// Restore CSR

// Testing CSR 0xe16
	csrr x22, 0xe16	// Read CSR
	li x8, -1
	csrrw x11, 0xe16, x8	// Write all 1s to CSR
	csrrw x11, 0xe16, x0	// Write all 0s to CSR
	csrrs x11, 0xe16, x8	// Set all CSR bits
	csrrc x11, 0xe16, x8	// Clear all CSR bits
	csrrw x11, 0xe16, x22	// Restore CSR

// Testing CSR 0xe17
	csrr x20, 0xe17	// Read CSR
	li x22, -1
	csrrw x12, 0xe17, x22	// Write all 1s to CSR
	csrrw x12, 0xe17, x0	// Write all 0s to CSR
	csrrs x12, 0xe17, x22	// Set all CSR bits
	csrrc x12, 0xe17, x22	// Clear all CSR bits
	csrrw x12, 0xe17, x20	// Restore CSR

// Testing CSR 0xe18
	csrr x23, 0xe18	// Read CSR
	li x3, -1
	csrrw x30, 0xe18, x3	// Write all 1s to CSR
	csrrw x30, 0xe18, x0	// Write all 0s to CSR
	csrrs x30, 0xe18, x3	// Set all CSR bits
	csrrc x30, 0xe18, x3	// Clear all CSR bits
	csrrw x30, 0xe18, x23	// Restore CSR

// Testing CSR 0xe19
	csrr x9, 0xe19	// Read CSR
	li x25, -1
	csrrw x21, 0xe19, x25	// Write all 1s to CSR
	csrrw x21, 0xe19, x0	// Write all 0s to CSR
	csrrs x21, 0xe19, x25	// Set all CSR bits
	csrrc x21, 0xe19, x25	// Clear all CSR bits
	csrrw x21, 0xe19, x9	// Restore CSR

// Testing CSR 0xe1a
	csrr x19, 0xe1a	// Read CSR
	li x17, -1
	csrrw x16, 0xe1a, x17	// Write all 1s to CSR
	csrrw x16, 0xe1a, x0	// Write all 0s to CSR
	csrrs x16, 0xe1a, x17	// Set all CSR bits
	csrrc x16, 0xe1a, x17	// Clear all CSR bits
	csrrw x16, 0xe1a, x19	// Restore CSR

// Testing CSR 0xe1b
	csrr x4, 0xe1b	// Read CSR
	li x13, -1
	csrrw x8, 0xe1b, x13	// Write all 1s to CSR
	csrrw x8, 0xe1b, x0	// Write all 0s to CSR
	csrrs x8, 0xe1b, x13	// Set all CSR bits
	csrrc x8, 0xe1b, x13	// Clear all CSR bits
	csrrw x8, 0xe1b, x4	// Restore CSR

// Testing CSR 0xe1c
	csrr x27, 0xe1c	// Read CSR
	li x10, -1
	csrrw x17, 0xe1c, x10	// Write all 1s to CSR
	csrrw x17, 0xe1c, x0	// Write all 0s to CSR
	csrrs x17, 0xe1c, x10	// Set all CSR bits
	csrrc x17, 0xe1c, x10	// Clear all CSR bits
	csrrw x17, 0xe1c, x27	// Restore CSR

// Testing CSR 0xe1d
	csrr x6, 0xe1d	// Read CSR
	li x9, -1
	csrrw x16, 0xe1d, x9	// Write all 1s to CSR
	csrrw x16, 0xe1d, x0	// Write all 0s to CSR
	csrrs x16, 0xe1d, x9	// Set all CSR bits
	csrrc x16, 0xe1d, x9	// Clear all CSR bits
	csrrw x16, 0xe1d, x6	// Restore CSR

// Testing CSR 0xe1e
	csrr x14, 0xe1e	// Read CSR
	li x7, -1
	csrrw x23, 0xe1e, x7	// Write all 1s to CSR
	csrrw x23, 0xe1e, x0	// Write all 0s to CSR
	csrrs x23, 0xe1e, x7	// Set all CSR bits
	csrrc x23, 0xe1e, x7	// Clear all CSR bits
	csrrw x23, 0xe1e, x14	// Restore CSR

// Testing CSR 0xe1f
	csrr x16, 0xe1f	// Read CSR
	li x19, -1
	csrrw x22, 0xe1f, x19	// Write all 1s to CSR
	csrrw x22, 0xe1f, x0	// Write all 0s to CSR
	csrrs x22, 0xe1f, x19	// Set all CSR bits
	csrrc x22, 0xe1f, x19	// Clear all CSR bits
	csrrw x22, 0xe1f, x16	// Restore CSR

// Testing CSR 0xe20
	csrr x30, 0xe20	// Read CSR
	li x26, -1
	csrrw x15, 0xe20, x26	// Write all 1s to CSR
	csrrw x15, 0xe20, x0	// Write all 0s to CSR
	csrrs x15, 0xe20, x26	// Set all CSR bits
	csrrc x15, 0xe20, x26	// Clear all CSR bits
	csrrw x15, 0xe20, x30	// Restore CSR

// Testing CSR 0xe21
	csrr x13, 0xe21	// Read CSR
	li x30, -1
	csrrw x1, 0xe21, x30	// Write all 1s to CSR
	csrrw x1, 0xe21, x0	// Write all 0s to CSR
	csrrs x1, 0xe21, x30	// Set all CSR bits
	csrrc x1, 0xe21, x30	// Clear all CSR bits
	csrrw x1, 0xe21, x13	// Restore CSR

// Testing CSR 0xe22
	csrr x26, 0xe22	// Read CSR
	li x5, -1
	csrrw x12, 0xe22, x5	// Write all 1s to CSR
	csrrw x12, 0xe22, x0	// Write all 0s to CSR
	csrrs x12, 0xe22, x5	// Set all CSR bits
	csrrc x12, 0xe22, x5	// Clear all CSR bits
	csrrw x12, 0xe22, x26	// Restore CSR

// Testing CSR 0xe23
	csrr x18, 0xe23	// Read CSR
	li x31, -1
	csrrw x20, 0xe23, x31	// Write all 1s to CSR
	csrrw x20, 0xe23, x0	// Write all 0s to CSR
	csrrs x20, 0xe23, x31	// Set all CSR bits
	csrrc x20, 0xe23, x31	// Clear all CSR bits
	csrrw x20, 0xe23, x18	// Restore CSR

// Testing CSR 0xe24
	csrr x9, 0xe24	// Read CSR
	li x28, -1
	csrrw x27, 0xe24, x28	// Write all 1s to CSR
	csrrw x27, 0xe24, x0	// Write all 0s to CSR
	csrrs x27, 0xe24, x28	// Set all CSR bits
	csrrc x27, 0xe24, x28	// Clear all CSR bits
	csrrw x27, 0xe24, x9	// Restore CSR

// Testing CSR 0xe25
	csrr x25, 0xe25	// Read CSR
	li x4, -1
	csrrw x8, 0xe25, x4	// Write all 1s to CSR
	csrrw x8, 0xe25, x0	// Write all 0s to CSR
	csrrs x8, 0xe25, x4	// Set all CSR bits
	csrrc x8, 0xe25, x4	// Clear all CSR bits
	csrrw x8, 0xe25, x25	// Restore CSR

// Testing CSR 0xe26
	csrr x1, 0xe26	// Read CSR
	li x9, -1
	csrrw x6, 0xe26, x9	// Write all 1s to CSR
	csrrw x6, 0xe26, x0	// Write all 0s to CSR
	csrrs x6, 0xe26, x9	// Set all CSR bits
	csrrc x6, 0xe26, x9	// Clear all CSR bits
	csrrw x6, 0xe26, x1	// Restore CSR

// Testing CSR 0xe27
	csrr x20, 0xe27	// Read CSR
	li x19, -1
	csrrw x10, 0xe27, x19	// Write all 1s to CSR
	csrrw x10, 0xe27, x0	// Write all 0s to CSR
	csrrs x10, 0xe27, x19	// Set all CSR bits
	csrrc x10, 0xe27, x19	// Clear all CSR bits
	csrrw x10, 0xe27, x20	// Restore CSR

// Testing CSR 0xe28
	csrr x6, 0xe28	// Read CSR
	li x7, -1
	csrrw x12, 0xe28, x7	// Write all 1s to CSR
	csrrw x12, 0xe28, x0	// Write all 0s to CSR
	csrrs x12, 0xe28, x7	// Set all CSR bits
	csrrc x12, 0xe28, x7	// Clear all CSR bits
	csrrw x12, 0xe28, x6	// Restore CSR

// Testing CSR 0xe29
	csrr x30, 0xe29	// Read CSR
	li x10, -1
	csrrw x29, 0xe29, x10	// Write all 1s to CSR
	csrrw x29, 0xe29, x0	// Write all 0s to CSR
	csrrs x29, 0xe29, x10	// Set all CSR bits
	csrrc x29, 0xe29, x10	// Clear all CSR bits
	csrrw x29, 0xe29, x30	// Restore CSR

// Testing CSR 0xe2a
	csrr x2, 0xe2a	// Read CSR
	li x3, -1
	csrrw x27, 0xe2a, x3	// Write all 1s to CSR
	csrrw x27, 0xe2a, x0	// Write all 0s to CSR
	csrrs x27, 0xe2a, x3	// Set all CSR bits
	csrrc x27, 0xe2a, x3	// Clear all CSR bits
	csrrw x27, 0xe2a, x2	// Restore CSR

// Testing CSR 0xe2b
	csrr x23, 0xe2b	// Read CSR
	li x24, -1
	csrrw x27, 0xe2b, x24	// Write all 1s to CSR
	csrrw x27, 0xe2b, x0	// Write all 0s to CSR
	csrrs x27, 0xe2b, x24	// Set all CSR bits
	csrrc x27, 0xe2b, x24	// Clear all CSR bits
	csrrw x27, 0xe2b, x23	// Restore CSR

// Testing CSR 0xe2c
	csrr x30, 0xe2c	// Read CSR
	li x26, -1
	csrrw x15, 0xe2c, x26	// Write all 1s to CSR
	csrrw x15, 0xe2c, x0	// Write all 0s to CSR
	csrrs x15, 0xe2c, x26	// Set all CSR bits
	csrrc x15, 0xe2c, x26	// Clear all CSR bits
	csrrw x15, 0xe2c, x30	// Restore CSR

// Testing CSR 0xe2d
	csrr x17, 0xe2d	// Read CSR
	li x24, -1
	csrrw x2, 0xe2d, x24	// Write all 1s to CSR
	csrrw x2, 0xe2d, x0	// Write all 0s to CSR
	csrrs x2, 0xe2d, x24	// Set all CSR bits
	csrrc x2, 0xe2d, x24	// Clear all CSR bits
	csrrw x2, 0xe2d, x17	// Restore CSR

// Testing CSR 0xe2e
	csrr x1, 0xe2e	// Read CSR
	li x3, -1
	csrrw x25, 0xe2e, x3	// Write all 1s to CSR
	csrrw x25, 0xe2e, x0	// Write all 0s to CSR
	csrrs x25, 0xe2e, x3	// Set all CSR bits
	csrrc x25, 0xe2e, x3	// Clear all CSR bits
	csrrw x25, 0xe2e, x1	// Restore CSR

// Testing CSR 0xe2f
	csrr x18, 0xe2f	// Read CSR
	li x1, -1
	csrrw x8, 0xe2f, x1	// Write all 1s to CSR
	csrrw x8, 0xe2f, x0	// Write all 0s to CSR
	csrrs x8, 0xe2f, x1	// Set all CSR bits
	csrrc x8, 0xe2f, x1	// Clear all CSR bits
	csrrw x8, 0xe2f, x18	// Restore CSR

// Testing CSR 0xe30
	csrr x30, 0xe30	// Read CSR
	li x5, -1
	csrrw x19, 0xe30, x5	// Write all 1s to CSR
	csrrw x19, 0xe30, x0	// Write all 0s to CSR
	csrrs x19, 0xe30, x5	// Set all CSR bits
	csrrc x19, 0xe30, x5	// Clear all CSR bits
	csrrw x19, 0xe30, x30	// Restore CSR

// Testing CSR 0xe31
	csrr x31, 0xe31	// Read CSR
	li x1, -1
	csrrw x12, 0xe31, x1	// Write all 1s to CSR
	csrrw x12, 0xe31, x0	// Write all 0s to CSR
	csrrs x12, 0xe31, x1	// Set all CSR bits
	csrrc x12, 0xe31, x1	// Clear all CSR bits
	csrrw x12, 0xe31, x31	// Restore CSR

// Testing CSR 0xe32
	csrr x22, 0xe32	// Read CSR
	li x31, -1
	csrrw x6, 0xe32, x31	// Write all 1s to CSR
	csrrw x6, 0xe32, x0	// Write all 0s to CSR
	csrrs x6, 0xe32, x31	// Set all CSR bits
	csrrc x6, 0xe32, x31	// Clear all CSR bits
	csrrw x6, 0xe32, x22	// Restore CSR

// Testing CSR 0xe33
	csrr x1, 0xe33	// Read CSR
	li x4, -1
	csrrw x19, 0xe33, x4	// Write all 1s to CSR
	csrrw x19, 0xe33, x0	// Write all 0s to CSR
	csrrs x19, 0xe33, x4	// Set all CSR bits
	csrrc x19, 0xe33, x4	// Clear all CSR bits
	csrrw x19, 0xe33, x1	// Restore CSR

// Testing CSR 0xe34
	csrr x12, 0xe34	// Read CSR
	li x4, -1
	csrrw x27, 0xe34, x4	// Write all 1s to CSR
	csrrw x27, 0xe34, x0	// Write all 0s to CSR
	csrrs x27, 0xe34, x4	// Set all CSR bits
	csrrc x27, 0xe34, x4	// Clear all CSR bits
	csrrw x27, 0xe34, x12	// Restore CSR

// Testing CSR 0xe35
	csrr x18, 0xe35	// Read CSR
	li x26, -1
	csrrw x5, 0xe35, x26	// Write all 1s to CSR
	csrrw x5, 0xe35, x0	// Write all 0s to CSR
	csrrs x5, 0xe35, x26	// Set all CSR bits
	csrrc x5, 0xe35, x26	// Clear all CSR bits
	csrrw x5, 0xe35, x18	// Restore CSR

// Testing CSR 0xe36
	csrr x21, 0xe36	// Read CSR
	li x17, -1
	csrrw x18, 0xe36, x17	// Write all 1s to CSR
	csrrw x18, 0xe36, x0	// Write all 0s to CSR
	csrrs x18, 0xe36, x17	// Set all CSR bits
	csrrc x18, 0xe36, x17	// Clear all CSR bits
	csrrw x18, 0xe36, x21	// Restore CSR

// Testing CSR 0xe37
	csrr x23, 0xe37	// Read CSR
	li x11, -1
	csrrw x22, 0xe37, x11	// Write all 1s to CSR
	csrrw x22, 0xe37, x0	// Write all 0s to CSR
	csrrs x22, 0xe37, x11	// Set all CSR bits
	csrrc x22, 0xe37, x11	// Clear all CSR bits
	csrrw x22, 0xe37, x23	// Restore CSR

// Testing CSR 0xe38
	csrr x8, 0xe38	// Read CSR
	li x29, -1
	csrrw x2, 0xe38, x29	// Write all 1s to CSR
	csrrw x2, 0xe38, x0	// Write all 0s to CSR
	csrrs x2, 0xe38, x29	// Set all CSR bits
	csrrc x2, 0xe38, x29	// Clear all CSR bits
	csrrw x2, 0xe38, x8	// Restore CSR

// Testing CSR 0xe39
	csrr x25, 0xe39	// Read CSR
	li x29, -1
	csrrw x30, 0xe39, x29	// Write all 1s to CSR
	csrrw x30, 0xe39, x0	// Write all 0s to CSR
	csrrs x30, 0xe39, x29	// Set all CSR bits
	csrrc x30, 0xe39, x29	// Clear all CSR bits
	csrrw x30, 0xe39, x25	// Restore CSR

// Testing CSR 0xe3a
	csrr x27, 0xe3a	// Read CSR
	li x21, -1
	csrrw x24, 0xe3a, x21	// Write all 1s to CSR
	csrrw x24, 0xe3a, x0	// Write all 0s to CSR
	csrrs x24, 0xe3a, x21	// Set all CSR bits
	csrrc x24, 0xe3a, x21	// Clear all CSR bits
	csrrw x24, 0xe3a, x27	// Restore CSR

// Testing CSR 0xe3b
	csrr x1, 0xe3b	// Read CSR
	li x10, -1
	csrrw x16, 0xe3b, x10	// Write all 1s to CSR
	csrrw x16, 0xe3b, x0	// Write all 0s to CSR
	csrrs x16, 0xe3b, x10	// Set all CSR bits
	csrrc x16, 0xe3b, x10	// Clear all CSR bits
	csrrw x16, 0xe3b, x1	// Restore CSR

// Testing CSR 0xe3c
	csrr x16, 0xe3c	// Read CSR
	li x2, -1
	csrrw x25, 0xe3c, x2	// Write all 1s to CSR
	csrrw x25, 0xe3c, x0	// Write all 0s to CSR
	csrrs x25, 0xe3c, x2	// Set all CSR bits
	csrrc x25, 0xe3c, x2	// Clear all CSR bits
	csrrw x25, 0xe3c, x16	// Restore CSR

// Testing CSR 0xe3d
	csrr x2, 0xe3d	// Read CSR
	li x29, -1
	csrrw x14, 0xe3d, x29	// Write all 1s to CSR
	csrrw x14, 0xe3d, x0	// Write all 0s to CSR
	csrrs x14, 0xe3d, x29	// Set all CSR bits
	csrrc x14, 0xe3d, x29	// Clear all CSR bits
	csrrw x14, 0xe3d, x2	// Restore CSR

// Testing CSR 0xe3e
	csrr x31, 0xe3e	// Read CSR
	li x18, -1
	csrrw x12, 0xe3e, x18	// Write all 1s to CSR
	csrrw x12, 0xe3e, x0	// Write all 0s to CSR
	csrrs x12, 0xe3e, x18	// Set all CSR bits
	csrrc x12, 0xe3e, x18	// Clear all CSR bits
	csrrw x12, 0xe3e, x31	// Restore CSR

// Testing CSR 0xe3f
	csrr x24, 0xe3f	// Read CSR
	li x14, -1
	csrrw x31, 0xe3f, x14	// Write all 1s to CSR
	csrrw x31, 0xe3f, x0	// Write all 0s to CSR
	csrrs x31, 0xe3f, x14	// Set all CSR bits
	csrrc x31, 0xe3f, x14	// Clear all CSR bits
	csrrw x31, 0xe3f, x24	// Restore CSR

// Testing CSR 0xe40
	csrr x25, 0xe40	// Read CSR
	li x21, -1
	csrrw x6, 0xe40, x21	// Write all 1s to CSR
	csrrw x6, 0xe40, x0	// Write all 0s to CSR
	csrrs x6, 0xe40, x21	// Set all CSR bits
	csrrc x6, 0xe40, x21	// Clear all CSR bits
	csrrw x6, 0xe40, x25	// Restore CSR

// Testing CSR 0xe41
	csrr x3, 0xe41	// Read CSR
	li x7, -1
	csrrw x17, 0xe41, x7	// Write all 1s to CSR
	csrrw x17, 0xe41, x0	// Write all 0s to CSR
	csrrs x17, 0xe41, x7	// Set all CSR bits
	csrrc x17, 0xe41, x7	// Clear all CSR bits
	csrrw x17, 0xe41, x3	// Restore CSR

// Testing CSR 0xe42
	csrr x7, 0xe42	// Read CSR
	li x16, -1
	csrrw x30, 0xe42, x16	// Write all 1s to CSR
	csrrw x30, 0xe42, x0	// Write all 0s to CSR
	csrrs x30, 0xe42, x16	// Set all CSR bits
	csrrc x30, 0xe42, x16	// Clear all CSR bits
	csrrw x30, 0xe42, x7	// Restore CSR

// Testing CSR 0xe43
	csrr x6, 0xe43	// Read CSR
	li x28, -1
	csrrw x18, 0xe43, x28	// Write all 1s to CSR
	csrrw x18, 0xe43, x0	// Write all 0s to CSR
	csrrs x18, 0xe43, x28	// Set all CSR bits
	csrrc x18, 0xe43, x28	// Clear all CSR bits
	csrrw x18, 0xe43, x6	// Restore CSR

// Testing CSR 0xe44
	csrr x27, 0xe44	// Read CSR
	li x4, -1
	csrrw x29, 0xe44, x4	// Write all 1s to CSR
	csrrw x29, 0xe44, x0	// Write all 0s to CSR
	csrrs x29, 0xe44, x4	// Set all CSR bits
	csrrc x29, 0xe44, x4	// Clear all CSR bits
	csrrw x29, 0xe44, x27	// Restore CSR

// Testing CSR 0xe45
	csrr x29, 0xe45	// Read CSR
	li x15, -1
	csrrw x31, 0xe45, x15	// Write all 1s to CSR
	csrrw x31, 0xe45, x0	// Write all 0s to CSR
	csrrs x31, 0xe45, x15	// Set all CSR bits
	csrrc x31, 0xe45, x15	// Clear all CSR bits
	csrrw x31, 0xe45, x29	// Restore CSR

// Testing CSR 0xe46
	csrr x5, 0xe46	// Read CSR
	li x1, -1
	csrrw x19, 0xe46, x1	// Write all 1s to CSR
	csrrw x19, 0xe46, x0	// Write all 0s to CSR
	csrrs x19, 0xe46, x1	// Set all CSR bits
	csrrc x19, 0xe46, x1	// Clear all CSR bits
	csrrw x19, 0xe46, x5	// Restore CSR

// Testing CSR 0xe47
	csrr x5, 0xe47	// Read CSR
	li x7, -1
	csrrw x28, 0xe47, x7	// Write all 1s to CSR
	csrrw x28, 0xe47, x0	// Write all 0s to CSR
	csrrs x28, 0xe47, x7	// Set all CSR bits
	csrrc x28, 0xe47, x7	// Clear all CSR bits
	csrrw x28, 0xe47, x5	// Restore CSR

// Testing CSR 0xe48
	csrr x9, 0xe48	// Read CSR
	li x23, -1
	csrrw x10, 0xe48, x23	// Write all 1s to CSR
	csrrw x10, 0xe48, x0	// Write all 0s to CSR
	csrrs x10, 0xe48, x23	// Set all CSR bits
	csrrc x10, 0xe48, x23	// Clear all CSR bits
	csrrw x10, 0xe48, x9	// Restore CSR

// Testing CSR 0xe49
	csrr x8, 0xe49	// Read CSR
	li x16, -1
	csrrw x19, 0xe49, x16	// Write all 1s to CSR
	csrrw x19, 0xe49, x0	// Write all 0s to CSR
	csrrs x19, 0xe49, x16	// Set all CSR bits
	csrrc x19, 0xe49, x16	// Clear all CSR bits
	csrrw x19, 0xe49, x8	// Restore CSR

// Testing CSR 0xe4a
	csrr x24, 0xe4a	// Read CSR
	li x11, -1
	csrrw x10, 0xe4a, x11	// Write all 1s to CSR
	csrrw x10, 0xe4a, x0	// Write all 0s to CSR
	csrrs x10, 0xe4a, x11	// Set all CSR bits
	csrrc x10, 0xe4a, x11	// Clear all CSR bits
	csrrw x10, 0xe4a, x24	// Restore CSR

// Testing CSR 0xe4b
	csrr x5, 0xe4b	// Read CSR
	li x27, -1
	csrrw x3, 0xe4b, x27	// Write all 1s to CSR
	csrrw x3, 0xe4b, x0	// Write all 0s to CSR
	csrrs x3, 0xe4b, x27	// Set all CSR bits
	csrrc x3, 0xe4b, x27	// Clear all CSR bits
	csrrw x3, 0xe4b, x5	// Restore CSR

// Testing CSR 0xe4c
	csrr x13, 0xe4c	// Read CSR
	li x25, -1
	csrrw x1, 0xe4c, x25	// Write all 1s to CSR
	csrrw x1, 0xe4c, x0	// Write all 0s to CSR
	csrrs x1, 0xe4c, x25	// Set all CSR bits
	csrrc x1, 0xe4c, x25	// Clear all CSR bits
	csrrw x1, 0xe4c, x13	// Restore CSR

// Testing CSR 0xe4d
	csrr x17, 0xe4d	// Read CSR
	li x25, -1
	csrrw x28, 0xe4d, x25	// Write all 1s to CSR
	csrrw x28, 0xe4d, x0	// Write all 0s to CSR
	csrrs x28, 0xe4d, x25	// Set all CSR bits
	csrrc x28, 0xe4d, x25	// Clear all CSR bits
	csrrw x28, 0xe4d, x17	// Restore CSR

// Testing CSR 0xe4e
	csrr x16, 0xe4e	// Read CSR
	li x8, -1
	csrrw x25, 0xe4e, x8	// Write all 1s to CSR
	csrrw x25, 0xe4e, x0	// Write all 0s to CSR
	csrrs x25, 0xe4e, x8	// Set all CSR bits
	csrrc x25, 0xe4e, x8	// Clear all CSR bits
	csrrw x25, 0xe4e, x16	// Restore CSR

// Testing CSR 0xe4f
	csrr x2, 0xe4f	// Read CSR
	li x13, -1
	csrrw x22, 0xe4f, x13	// Write all 1s to CSR
	csrrw x22, 0xe4f, x0	// Write all 0s to CSR
	csrrs x22, 0xe4f, x13	// Set all CSR bits
	csrrc x22, 0xe4f, x13	// Clear all CSR bits
	csrrw x22, 0xe4f, x2	// Restore CSR

// Testing CSR 0xe50
	csrr x3, 0xe50	// Read CSR
	li x19, -1
	csrrw x20, 0xe50, x19	// Write all 1s to CSR
	csrrw x20, 0xe50, x0	// Write all 0s to CSR
	csrrs x20, 0xe50, x19	// Set all CSR bits
	csrrc x20, 0xe50, x19	// Clear all CSR bits
	csrrw x20, 0xe50, x3	// Restore CSR

// Testing CSR 0xe51
	csrr x30, 0xe51	// Read CSR
	li x16, -1
	csrrw x17, 0xe51, x16	// Write all 1s to CSR
	csrrw x17, 0xe51, x0	// Write all 0s to CSR
	csrrs x17, 0xe51, x16	// Set all CSR bits
	csrrc x17, 0xe51, x16	// Clear all CSR bits
	csrrw x17, 0xe51, x30	// Restore CSR

// Testing CSR 0xe52
	csrr x11, 0xe52	// Read CSR
	li x30, -1
	csrrw x22, 0xe52, x30	// Write all 1s to CSR
	csrrw x22, 0xe52, x0	// Write all 0s to CSR
	csrrs x22, 0xe52, x30	// Set all CSR bits
	csrrc x22, 0xe52, x30	// Clear all CSR bits
	csrrw x22, 0xe52, x11	// Restore CSR

// Testing CSR 0xe53
	csrr x19, 0xe53	// Read CSR
	li x31, -1
	csrrw x15, 0xe53, x31	// Write all 1s to CSR
	csrrw x15, 0xe53, x0	// Write all 0s to CSR
	csrrs x15, 0xe53, x31	// Set all CSR bits
	csrrc x15, 0xe53, x31	// Clear all CSR bits
	csrrw x15, 0xe53, x19	// Restore CSR

// Testing CSR 0xe54
	csrr x12, 0xe54	// Read CSR
	li x11, -1
	csrrw x7, 0xe54, x11	// Write all 1s to CSR
	csrrw x7, 0xe54, x0	// Write all 0s to CSR
	csrrs x7, 0xe54, x11	// Set all CSR bits
	csrrc x7, 0xe54, x11	// Clear all CSR bits
	csrrw x7, 0xe54, x12	// Restore CSR

// Testing CSR 0xe55
	csrr x25, 0xe55	// Read CSR
	li x2, -1
	csrrw x21, 0xe55, x2	// Write all 1s to CSR
	csrrw x21, 0xe55, x0	// Write all 0s to CSR
	csrrs x21, 0xe55, x2	// Set all CSR bits
	csrrc x21, 0xe55, x2	// Clear all CSR bits
	csrrw x21, 0xe55, x25	// Restore CSR

// Testing CSR 0xe56
	csrr x1, 0xe56	// Read CSR
	li x7, -1
	csrrw x11, 0xe56, x7	// Write all 1s to CSR
	csrrw x11, 0xe56, x0	// Write all 0s to CSR
	csrrs x11, 0xe56, x7	// Set all CSR bits
	csrrc x11, 0xe56, x7	// Clear all CSR bits
	csrrw x11, 0xe56, x1	// Restore CSR

// Testing CSR 0xe57
	csrr x25, 0xe57	// Read CSR
	li x11, -1
	csrrw x22, 0xe57, x11	// Write all 1s to CSR
	csrrw x22, 0xe57, x0	// Write all 0s to CSR
	csrrs x22, 0xe57, x11	// Set all CSR bits
	csrrc x22, 0xe57, x11	// Clear all CSR bits
	csrrw x22, 0xe57, x25	// Restore CSR

// Testing CSR 0xe58
	csrr x8, 0xe58	// Read CSR
	li x30, -1
	csrrw x18, 0xe58, x30	// Write all 1s to CSR
	csrrw x18, 0xe58, x0	// Write all 0s to CSR
	csrrs x18, 0xe58, x30	// Set all CSR bits
	csrrc x18, 0xe58, x30	// Clear all CSR bits
	csrrw x18, 0xe58, x8	// Restore CSR

// Testing CSR 0xe59
	csrr x15, 0xe59	// Read CSR
	li x11, -1
	csrrw x6, 0xe59, x11	// Write all 1s to CSR
	csrrw x6, 0xe59, x0	// Write all 0s to CSR
	csrrs x6, 0xe59, x11	// Set all CSR bits
	csrrc x6, 0xe59, x11	// Clear all CSR bits
	csrrw x6, 0xe59, x15	// Restore CSR

// Testing CSR 0xe5a
	csrr x5, 0xe5a	// Read CSR
	li x25, -1
	csrrw x19, 0xe5a, x25	// Write all 1s to CSR
	csrrw x19, 0xe5a, x0	// Write all 0s to CSR
	csrrs x19, 0xe5a, x25	// Set all CSR bits
	csrrc x19, 0xe5a, x25	// Clear all CSR bits
	csrrw x19, 0xe5a, x5	// Restore CSR

// Testing CSR 0xe5b
	csrr x5, 0xe5b	// Read CSR
	li x20, -1
	csrrw x11, 0xe5b, x20	// Write all 1s to CSR
	csrrw x11, 0xe5b, x0	// Write all 0s to CSR
	csrrs x11, 0xe5b, x20	// Set all CSR bits
	csrrc x11, 0xe5b, x20	// Clear all CSR bits
	csrrw x11, 0xe5b, x5	// Restore CSR

// Testing CSR 0xe5c
	csrr x7, 0xe5c	// Read CSR
	li x29, -1
	csrrw x13, 0xe5c, x29	// Write all 1s to CSR
	csrrw x13, 0xe5c, x0	// Write all 0s to CSR
	csrrs x13, 0xe5c, x29	// Set all CSR bits
	csrrc x13, 0xe5c, x29	// Clear all CSR bits
	csrrw x13, 0xe5c, x7	// Restore CSR

// Testing CSR 0xe5d
	csrr x25, 0xe5d	// Read CSR
	li x30, -1
	csrrw x12, 0xe5d, x30	// Write all 1s to CSR
	csrrw x12, 0xe5d, x0	// Write all 0s to CSR
	csrrs x12, 0xe5d, x30	// Set all CSR bits
	csrrc x12, 0xe5d, x30	// Clear all CSR bits
	csrrw x12, 0xe5d, x25	// Restore CSR

// Testing CSR 0xe5e
	csrr x31, 0xe5e	// Read CSR
	li x14, -1
	csrrw x25, 0xe5e, x14	// Write all 1s to CSR
	csrrw x25, 0xe5e, x0	// Write all 0s to CSR
	csrrs x25, 0xe5e, x14	// Set all CSR bits
	csrrc x25, 0xe5e, x14	// Clear all CSR bits
	csrrw x25, 0xe5e, x31	// Restore CSR

// Testing CSR 0xe5f
	csrr x12, 0xe5f	// Read CSR
	li x21, -1
	csrrw x23, 0xe5f, x21	// Write all 1s to CSR
	csrrw x23, 0xe5f, x0	// Write all 0s to CSR
	csrrs x23, 0xe5f, x21	// Set all CSR bits
	csrrc x23, 0xe5f, x21	// Clear all CSR bits
	csrrw x23, 0xe5f, x12	// Restore CSR

// Testing CSR 0xe60
	csrr x28, 0xe60	// Read CSR
	li x12, -1
	csrrw x25, 0xe60, x12	// Write all 1s to CSR
	csrrw x25, 0xe60, x0	// Write all 0s to CSR
	csrrs x25, 0xe60, x12	// Set all CSR bits
	csrrc x25, 0xe60, x12	// Clear all CSR bits
	csrrw x25, 0xe60, x28	// Restore CSR

// Testing CSR 0xe61
	csrr x11, 0xe61	// Read CSR
	li x1, -1
	csrrw x2, 0xe61, x1	// Write all 1s to CSR
	csrrw x2, 0xe61, x0	// Write all 0s to CSR
	csrrs x2, 0xe61, x1	// Set all CSR bits
	csrrc x2, 0xe61, x1	// Clear all CSR bits
	csrrw x2, 0xe61, x11	// Restore CSR

// Testing CSR 0xe62
	csrr x13, 0xe62	// Read CSR
	li x31, -1
	csrrw x28, 0xe62, x31	// Write all 1s to CSR
	csrrw x28, 0xe62, x0	// Write all 0s to CSR
	csrrs x28, 0xe62, x31	// Set all CSR bits
	csrrc x28, 0xe62, x31	// Clear all CSR bits
	csrrw x28, 0xe62, x13	// Restore CSR

// Testing CSR 0xe63
	csrr x19, 0xe63	// Read CSR
	li x17, -1
	csrrw x13, 0xe63, x17	// Write all 1s to CSR
	csrrw x13, 0xe63, x0	// Write all 0s to CSR
	csrrs x13, 0xe63, x17	// Set all CSR bits
	csrrc x13, 0xe63, x17	// Clear all CSR bits
	csrrw x13, 0xe63, x19	// Restore CSR

// Testing CSR 0xe64
	csrr x23, 0xe64	// Read CSR
	li x27, -1
	csrrw x21, 0xe64, x27	// Write all 1s to CSR
	csrrw x21, 0xe64, x0	// Write all 0s to CSR
	csrrs x21, 0xe64, x27	// Set all CSR bits
	csrrc x21, 0xe64, x27	// Clear all CSR bits
	csrrw x21, 0xe64, x23	// Restore CSR

// Testing CSR 0xe65
	csrr x17, 0xe65	// Read CSR
	li x21, -1
	csrrw x24, 0xe65, x21	// Write all 1s to CSR
	csrrw x24, 0xe65, x0	// Write all 0s to CSR
	csrrs x24, 0xe65, x21	// Set all CSR bits
	csrrc x24, 0xe65, x21	// Clear all CSR bits
	csrrw x24, 0xe65, x17	// Restore CSR

// Testing CSR 0xe66
	csrr x26, 0xe66	// Read CSR
	li x18, -1
	csrrw x6, 0xe66, x18	// Write all 1s to CSR
	csrrw x6, 0xe66, x0	// Write all 0s to CSR
	csrrs x6, 0xe66, x18	// Set all CSR bits
	csrrc x6, 0xe66, x18	// Clear all CSR bits
	csrrw x6, 0xe66, x26	// Restore CSR

// Testing CSR 0xe67
	csrr x8, 0xe67	// Read CSR
	li x10, -1
	csrrw x23, 0xe67, x10	// Write all 1s to CSR
	csrrw x23, 0xe67, x0	// Write all 0s to CSR
	csrrs x23, 0xe67, x10	// Set all CSR bits
	csrrc x23, 0xe67, x10	// Clear all CSR bits
	csrrw x23, 0xe67, x8	// Restore CSR

// Testing CSR 0xe68
	csrr x7, 0xe68	// Read CSR
	li x23, -1
	csrrw x4, 0xe68, x23	// Write all 1s to CSR
	csrrw x4, 0xe68, x0	// Write all 0s to CSR
	csrrs x4, 0xe68, x23	// Set all CSR bits
	csrrc x4, 0xe68, x23	// Clear all CSR bits
	csrrw x4, 0xe68, x7	// Restore CSR

// Testing CSR 0xe69
	csrr x20, 0xe69	// Read CSR
	li x26, -1
	csrrw x1, 0xe69, x26	// Write all 1s to CSR
	csrrw x1, 0xe69, x0	// Write all 0s to CSR
	csrrs x1, 0xe69, x26	// Set all CSR bits
	csrrc x1, 0xe69, x26	// Clear all CSR bits
	csrrw x1, 0xe69, x20	// Restore CSR

// Testing CSR 0xe6a
	csrr x16, 0xe6a	// Read CSR
	li x15, -1
	csrrw x26, 0xe6a, x15	// Write all 1s to CSR
	csrrw x26, 0xe6a, x0	// Write all 0s to CSR
	csrrs x26, 0xe6a, x15	// Set all CSR bits
	csrrc x26, 0xe6a, x15	// Clear all CSR bits
	csrrw x26, 0xe6a, x16	// Restore CSR

// Testing CSR 0xe6b
	csrr x9, 0xe6b	// Read CSR
	li x31, -1
	csrrw x13, 0xe6b, x31	// Write all 1s to CSR
	csrrw x13, 0xe6b, x0	// Write all 0s to CSR
	csrrs x13, 0xe6b, x31	// Set all CSR bits
	csrrc x13, 0xe6b, x31	// Clear all CSR bits
	csrrw x13, 0xe6b, x9	// Restore CSR

// Testing CSR 0xe6c
	csrr x9, 0xe6c	// Read CSR
	li x14, -1
	csrrw x12, 0xe6c, x14	// Write all 1s to CSR
	csrrw x12, 0xe6c, x0	// Write all 0s to CSR
	csrrs x12, 0xe6c, x14	// Set all CSR bits
	csrrc x12, 0xe6c, x14	// Clear all CSR bits
	csrrw x12, 0xe6c, x9	// Restore CSR

// Testing CSR 0xe6d
	csrr x3, 0xe6d	// Read CSR
	li x28, -1
	csrrw x17, 0xe6d, x28	// Write all 1s to CSR
	csrrw x17, 0xe6d, x0	// Write all 0s to CSR
	csrrs x17, 0xe6d, x28	// Set all CSR bits
	csrrc x17, 0xe6d, x28	// Clear all CSR bits
	csrrw x17, 0xe6d, x3	// Restore CSR

// Testing CSR 0xe6e
	csrr x2, 0xe6e	// Read CSR
	li x9, -1
	csrrw x30, 0xe6e, x9	// Write all 1s to CSR
	csrrw x30, 0xe6e, x0	// Write all 0s to CSR
	csrrs x30, 0xe6e, x9	// Set all CSR bits
	csrrc x30, 0xe6e, x9	// Clear all CSR bits
	csrrw x30, 0xe6e, x2	// Restore CSR

// Testing CSR 0xe6f
	csrr x26, 0xe6f	// Read CSR
	li x3, -1
	csrrw x20, 0xe6f, x3	// Write all 1s to CSR
	csrrw x20, 0xe6f, x0	// Write all 0s to CSR
	csrrs x20, 0xe6f, x3	// Set all CSR bits
	csrrc x20, 0xe6f, x3	// Clear all CSR bits
	csrrw x20, 0xe6f, x26	// Restore CSR

// Testing CSR 0xe70
	csrr x28, 0xe70	// Read CSR
	li x14, -1
	csrrw x20, 0xe70, x14	// Write all 1s to CSR
	csrrw x20, 0xe70, x0	// Write all 0s to CSR
	csrrs x20, 0xe70, x14	// Set all CSR bits
	csrrc x20, 0xe70, x14	// Clear all CSR bits
	csrrw x20, 0xe70, x28	// Restore CSR

// Testing CSR 0xe71
	csrr x15, 0xe71	// Read CSR
	li x12, -1
	csrrw x24, 0xe71, x12	// Write all 1s to CSR
	csrrw x24, 0xe71, x0	// Write all 0s to CSR
	csrrs x24, 0xe71, x12	// Set all CSR bits
	csrrc x24, 0xe71, x12	// Clear all CSR bits
	csrrw x24, 0xe71, x15	// Restore CSR

// Testing CSR 0xe72
	csrr x18, 0xe72	// Read CSR
	li x10, -1
	csrrw x30, 0xe72, x10	// Write all 1s to CSR
	csrrw x30, 0xe72, x0	// Write all 0s to CSR
	csrrs x30, 0xe72, x10	// Set all CSR bits
	csrrc x30, 0xe72, x10	// Clear all CSR bits
	csrrw x30, 0xe72, x18	// Restore CSR

// Testing CSR 0xe73
	csrr x29, 0xe73	// Read CSR
	li x14, -1
	csrrw x19, 0xe73, x14	// Write all 1s to CSR
	csrrw x19, 0xe73, x0	// Write all 0s to CSR
	csrrs x19, 0xe73, x14	// Set all CSR bits
	csrrc x19, 0xe73, x14	// Clear all CSR bits
	csrrw x19, 0xe73, x29	// Restore CSR

// Testing CSR 0xe74
	csrr x8, 0xe74	// Read CSR
	li x3, -1
	csrrw x16, 0xe74, x3	// Write all 1s to CSR
	csrrw x16, 0xe74, x0	// Write all 0s to CSR
	csrrs x16, 0xe74, x3	// Set all CSR bits
	csrrc x16, 0xe74, x3	// Clear all CSR bits
	csrrw x16, 0xe74, x8	// Restore CSR

// Testing CSR 0xe75
	csrr x24, 0xe75	// Read CSR
	li x29, -1
	csrrw x3, 0xe75, x29	// Write all 1s to CSR
	csrrw x3, 0xe75, x0	// Write all 0s to CSR
	csrrs x3, 0xe75, x29	// Set all CSR bits
	csrrc x3, 0xe75, x29	// Clear all CSR bits
	csrrw x3, 0xe75, x24	// Restore CSR

// Testing CSR 0xe76
	csrr x30, 0xe76	// Read CSR
	li x26, -1
	csrrw x10, 0xe76, x26	// Write all 1s to CSR
	csrrw x10, 0xe76, x0	// Write all 0s to CSR
	csrrs x10, 0xe76, x26	// Set all CSR bits
	csrrc x10, 0xe76, x26	// Clear all CSR bits
	csrrw x10, 0xe76, x30	// Restore CSR

// Testing CSR 0xe77
	csrr x16, 0xe77	// Read CSR
	li x6, -1
	csrrw x31, 0xe77, x6	// Write all 1s to CSR
	csrrw x31, 0xe77, x0	// Write all 0s to CSR
	csrrs x31, 0xe77, x6	// Set all CSR bits
	csrrc x31, 0xe77, x6	// Clear all CSR bits
	csrrw x31, 0xe77, x16	// Restore CSR

// Testing CSR 0xe78
	csrr x11, 0xe78	// Read CSR
	li x10, -1
	csrrw x22, 0xe78, x10	// Write all 1s to CSR
	csrrw x22, 0xe78, x0	// Write all 0s to CSR
	csrrs x22, 0xe78, x10	// Set all CSR bits
	csrrc x22, 0xe78, x10	// Clear all CSR bits
	csrrw x22, 0xe78, x11	// Restore CSR

// Testing CSR 0xe79
	csrr x11, 0xe79	// Read CSR
	li x27, -1
	csrrw x29, 0xe79, x27	// Write all 1s to CSR
	csrrw x29, 0xe79, x0	// Write all 0s to CSR
	csrrs x29, 0xe79, x27	// Set all CSR bits
	csrrc x29, 0xe79, x27	// Clear all CSR bits
	csrrw x29, 0xe79, x11	// Restore CSR

// Testing CSR 0xe7a
	csrr x20, 0xe7a	// Read CSR
	li x10, -1
	csrrw x25, 0xe7a, x10	// Write all 1s to CSR
	csrrw x25, 0xe7a, x0	// Write all 0s to CSR
	csrrs x25, 0xe7a, x10	// Set all CSR bits
	csrrc x25, 0xe7a, x10	// Clear all CSR bits
	csrrw x25, 0xe7a, x20	// Restore CSR

// Testing CSR 0xe7b
	csrr x20, 0xe7b	// Read CSR
	li x7, -1
	csrrw x8, 0xe7b, x7	// Write all 1s to CSR
	csrrw x8, 0xe7b, x0	// Write all 0s to CSR
	csrrs x8, 0xe7b, x7	// Set all CSR bits
	csrrc x8, 0xe7b, x7	// Clear all CSR bits
	csrrw x8, 0xe7b, x20	// Restore CSR

// Testing CSR 0xe7c
	csrr x19, 0xe7c	// Read CSR
	li x13, -1
	csrrw x5, 0xe7c, x13	// Write all 1s to CSR
	csrrw x5, 0xe7c, x0	// Write all 0s to CSR
	csrrs x5, 0xe7c, x13	// Set all CSR bits
	csrrc x5, 0xe7c, x13	// Clear all CSR bits
	csrrw x5, 0xe7c, x19	// Restore CSR

// Testing CSR 0xe7d
	csrr x8, 0xe7d	// Read CSR
	li x30, -1
	csrrw x4, 0xe7d, x30	// Write all 1s to CSR
	csrrw x4, 0xe7d, x0	// Write all 0s to CSR
	csrrs x4, 0xe7d, x30	// Set all CSR bits
	csrrc x4, 0xe7d, x30	// Clear all CSR bits
	csrrw x4, 0xe7d, x8	// Restore CSR

// Testing CSR 0xe7e
	csrr x24, 0xe7e	// Read CSR
	li x1, -1
	csrrw x3, 0xe7e, x1	// Write all 1s to CSR
	csrrw x3, 0xe7e, x0	// Write all 0s to CSR
	csrrs x3, 0xe7e, x1	// Set all CSR bits
	csrrc x3, 0xe7e, x1	// Clear all CSR bits
	csrrw x3, 0xe7e, x24	// Restore CSR

// Testing CSR 0xe7f
	csrr x22, 0xe7f	// Read CSR
	li x20, -1
	csrrw x3, 0xe7f, x20	// Write all 1s to CSR
	csrrw x3, 0xe7f, x0	// Write all 0s to CSR
	csrrs x3, 0xe7f, x20	// Set all CSR bits
	csrrc x3, 0xe7f, x20	// Clear all CSR bits
	csrrw x3, 0xe7f, x22	// Restore CSR

// Testing CSR 0xe80
	csrr x3, 0xe80	// Read CSR
	li x6, -1
	csrrw x16, 0xe80, x6	// Write all 1s to CSR
	csrrw x16, 0xe80, x0	// Write all 0s to CSR
	csrrs x16, 0xe80, x6	// Set all CSR bits
	csrrc x16, 0xe80, x6	// Clear all CSR bits
	csrrw x16, 0xe80, x3	// Restore CSR

// Testing CSR 0xe81
	csrr x23, 0xe81	// Read CSR
	li x25, -1
	csrrw x9, 0xe81, x25	// Write all 1s to CSR
	csrrw x9, 0xe81, x0	// Write all 0s to CSR
	csrrs x9, 0xe81, x25	// Set all CSR bits
	csrrc x9, 0xe81, x25	// Clear all CSR bits
	csrrw x9, 0xe81, x23	// Restore CSR

// Testing CSR 0xe82
	csrr x23, 0xe82	// Read CSR
	li x2, -1
	csrrw x27, 0xe82, x2	// Write all 1s to CSR
	csrrw x27, 0xe82, x0	// Write all 0s to CSR
	csrrs x27, 0xe82, x2	// Set all CSR bits
	csrrc x27, 0xe82, x2	// Clear all CSR bits
	csrrw x27, 0xe82, x23	// Restore CSR

// Testing CSR 0xe83
	csrr x20, 0xe83	// Read CSR
	li x5, -1
	csrrw x14, 0xe83, x5	// Write all 1s to CSR
	csrrw x14, 0xe83, x0	// Write all 0s to CSR
	csrrs x14, 0xe83, x5	// Set all CSR bits
	csrrc x14, 0xe83, x5	// Clear all CSR bits
	csrrw x14, 0xe83, x20	// Restore CSR

// Testing CSR 0xe84
	csrr x5, 0xe84	// Read CSR
	li x3, -1
	csrrw x29, 0xe84, x3	// Write all 1s to CSR
	csrrw x29, 0xe84, x0	// Write all 0s to CSR
	csrrs x29, 0xe84, x3	// Set all CSR bits
	csrrc x29, 0xe84, x3	// Clear all CSR bits
	csrrw x29, 0xe84, x5	// Restore CSR

// Testing CSR 0xe85
	csrr x27, 0xe85	// Read CSR
	li x20, -1
	csrrw x24, 0xe85, x20	// Write all 1s to CSR
	csrrw x24, 0xe85, x0	// Write all 0s to CSR
	csrrs x24, 0xe85, x20	// Set all CSR bits
	csrrc x24, 0xe85, x20	// Clear all CSR bits
	csrrw x24, 0xe85, x27	// Restore CSR

// Testing CSR 0xe86
	csrr x23, 0xe86	// Read CSR
	li x10, -1
	csrrw x9, 0xe86, x10	// Write all 1s to CSR
	csrrw x9, 0xe86, x0	// Write all 0s to CSR
	csrrs x9, 0xe86, x10	// Set all CSR bits
	csrrc x9, 0xe86, x10	// Clear all CSR bits
	csrrw x9, 0xe86, x23	// Restore CSR

// Testing CSR 0xe87
	csrr x20, 0xe87	// Read CSR
	li x19, -1
	csrrw x16, 0xe87, x19	// Write all 1s to CSR
	csrrw x16, 0xe87, x0	// Write all 0s to CSR
	csrrs x16, 0xe87, x19	// Set all CSR bits
	csrrc x16, 0xe87, x19	// Clear all CSR bits
	csrrw x16, 0xe87, x20	// Restore CSR

// Testing CSR 0xe88
	csrr x27, 0xe88	// Read CSR
	li x22, -1
	csrrw x21, 0xe88, x22	// Write all 1s to CSR
	csrrw x21, 0xe88, x0	// Write all 0s to CSR
	csrrs x21, 0xe88, x22	// Set all CSR bits
	csrrc x21, 0xe88, x22	// Clear all CSR bits
	csrrw x21, 0xe88, x27	// Restore CSR

// Testing CSR 0xe89
	csrr x21, 0xe89	// Read CSR
	li x3, -1
	csrrw x7, 0xe89, x3	// Write all 1s to CSR
	csrrw x7, 0xe89, x0	// Write all 0s to CSR
	csrrs x7, 0xe89, x3	// Set all CSR bits
	csrrc x7, 0xe89, x3	// Clear all CSR bits
	csrrw x7, 0xe89, x21	// Restore CSR

// Testing CSR 0xe8a
	csrr x28, 0xe8a	// Read CSR
	li x19, -1
	csrrw x4, 0xe8a, x19	// Write all 1s to CSR
	csrrw x4, 0xe8a, x0	// Write all 0s to CSR
	csrrs x4, 0xe8a, x19	// Set all CSR bits
	csrrc x4, 0xe8a, x19	// Clear all CSR bits
	csrrw x4, 0xe8a, x28	// Restore CSR

// Testing CSR 0xe8b
	csrr x24, 0xe8b	// Read CSR
	li x13, -1
	csrrw x4, 0xe8b, x13	// Write all 1s to CSR
	csrrw x4, 0xe8b, x0	// Write all 0s to CSR
	csrrs x4, 0xe8b, x13	// Set all CSR bits
	csrrc x4, 0xe8b, x13	// Clear all CSR bits
	csrrw x4, 0xe8b, x24	// Restore CSR

// Testing CSR 0xe8c
	csrr x9, 0xe8c	// Read CSR
	li x5, -1
	csrrw x18, 0xe8c, x5	// Write all 1s to CSR
	csrrw x18, 0xe8c, x0	// Write all 0s to CSR
	csrrs x18, 0xe8c, x5	// Set all CSR bits
	csrrc x18, 0xe8c, x5	// Clear all CSR bits
	csrrw x18, 0xe8c, x9	// Restore CSR

// Testing CSR 0xe8d
	csrr x7, 0xe8d	// Read CSR
	li x14, -1
	csrrw x8, 0xe8d, x14	// Write all 1s to CSR
	csrrw x8, 0xe8d, x0	// Write all 0s to CSR
	csrrs x8, 0xe8d, x14	// Set all CSR bits
	csrrc x8, 0xe8d, x14	// Clear all CSR bits
	csrrw x8, 0xe8d, x7	// Restore CSR

// Testing CSR 0xe8e
	csrr x7, 0xe8e	// Read CSR
	li x25, -1
	csrrw x19, 0xe8e, x25	// Write all 1s to CSR
	csrrw x19, 0xe8e, x0	// Write all 0s to CSR
	csrrs x19, 0xe8e, x25	// Set all CSR bits
	csrrc x19, 0xe8e, x25	// Clear all CSR bits
	csrrw x19, 0xe8e, x7	// Restore CSR

// Testing CSR 0xe8f
	csrr x4, 0xe8f	// Read CSR
	li x21, -1
	csrrw x15, 0xe8f, x21	// Write all 1s to CSR
	csrrw x15, 0xe8f, x0	// Write all 0s to CSR
	csrrs x15, 0xe8f, x21	// Set all CSR bits
	csrrc x15, 0xe8f, x21	// Clear all CSR bits
	csrrw x15, 0xe8f, x4	// Restore CSR

// Testing CSR 0xe90
	csrr x19, 0xe90	// Read CSR
	li x7, -1
	csrrw x20, 0xe90, x7	// Write all 1s to CSR
	csrrw x20, 0xe90, x0	// Write all 0s to CSR
	csrrs x20, 0xe90, x7	// Set all CSR bits
	csrrc x20, 0xe90, x7	// Clear all CSR bits
	csrrw x20, 0xe90, x19	// Restore CSR

// Testing CSR 0xe91
	csrr x20, 0xe91	// Read CSR
	li x7, -1
	csrrw x18, 0xe91, x7	// Write all 1s to CSR
	csrrw x18, 0xe91, x0	// Write all 0s to CSR
	csrrs x18, 0xe91, x7	// Set all CSR bits
	csrrc x18, 0xe91, x7	// Clear all CSR bits
	csrrw x18, 0xe91, x20	// Restore CSR

// Testing CSR 0xe92
	csrr x21, 0xe92	// Read CSR
	li x20, -1
	csrrw x3, 0xe92, x20	// Write all 1s to CSR
	csrrw x3, 0xe92, x0	// Write all 0s to CSR
	csrrs x3, 0xe92, x20	// Set all CSR bits
	csrrc x3, 0xe92, x20	// Clear all CSR bits
	csrrw x3, 0xe92, x21	// Restore CSR

// Testing CSR 0xe93
	csrr x13, 0xe93	// Read CSR
	li x19, -1
	csrrw x14, 0xe93, x19	// Write all 1s to CSR
	csrrw x14, 0xe93, x0	// Write all 0s to CSR
	csrrs x14, 0xe93, x19	// Set all CSR bits
	csrrc x14, 0xe93, x19	// Clear all CSR bits
	csrrw x14, 0xe93, x13	// Restore CSR

// Testing CSR 0xe94
	csrr x27, 0xe94	// Read CSR
	li x3, -1
	csrrw x12, 0xe94, x3	// Write all 1s to CSR
	csrrw x12, 0xe94, x0	// Write all 0s to CSR
	csrrs x12, 0xe94, x3	// Set all CSR bits
	csrrc x12, 0xe94, x3	// Clear all CSR bits
	csrrw x12, 0xe94, x27	// Restore CSR

// Testing CSR 0xe95
	csrr x17, 0xe95	// Read CSR
	li x23, -1
	csrrw x3, 0xe95, x23	// Write all 1s to CSR
	csrrw x3, 0xe95, x0	// Write all 0s to CSR
	csrrs x3, 0xe95, x23	// Set all CSR bits
	csrrc x3, 0xe95, x23	// Clear all CSR bits
	csrrw x3, 0xe95, x17	// Restore CSR

// Testing CSR 0xe96
	csrr x26, 0xe96	// Read CSR
	li x13, -1
	csrrw x1, 0xe96, x13	// Write all 1s to CSR
	csrrw x1, 0xe96, x0	// Write all 0s to CSR
	csrrs x1, 0xe96, x13	// Set all CSR bits
	csrrc x1, 0xe96, x13	// Clear all CSR bits
	csrrw x1, 0xe96, x26	// Restore CSR

// Testing CSR 0xe97
	csrr x28, 0xe97	// Read CSR
	li x6, -1
	csrrw x31, 0xe97, x6	// Write all 1s to CSR
	csrrw x31, 0xe97, x0	// Write all 0s to CSR
	csrrs x31, 0xe97, x6	// Set all CSR bits
	csrrc x31, 0xe97, x6	// Clear all CSR bits
	csrrw x31, 0xe97, x28	// Restore CSR

// Testing CSR 0xe98
	csrr x5, 0xe98	// Read CSR
	li x21, -1
	csrrw x28, 0xe98, x21	// Write all 1s to CSR
	csrrw x28, 0xe98, x0	// Write all 0s to CSR
	csrrs x28, 0xe98, x21	// Set all CSR bits
	csrrc x28, 0xe98, x21	// Clear all CSR bits
	csrrw x28, 0xe98, x5	// Restore CSR

// Testing CSR 0xe99
	csrr x22, 0xe99	// Read CSR
	li x3, -1
	csrrw x24, 0xe99, x3	// Write all 1s to CSR
	csrrw x24, 0xe99, x0	// Write all 0s to CSR
	csrrs x24, 0xe99, x3	// Set all CSR bits
	csrrc x24, 0xe99, x3	// Clear all CSR bits
	csrrw x24, 0xe99, x22	// Restore CSR

// Testing CSR 0xe9a
	csrr x23, 0xe9a	// Read CSR
	li x1, -1
	csrrw x13, 0xe9a, x1	// Write all 1s to CSR
	csrrw x13, 0xe9a, x0	// Write all 0s to CSR
	csrrs x13, 0xe9a, x1	// Set all CSR bits
	csrrc x13, 0xe9a, x1	// Clear all CSR bits
	csrrw x13, 0xe9a, x23	// Restore CSR

// Testing CSR 0xe9b
	csrr x29, 0xe9b	// Read CSR
	li x16, -1
	csrrw x24, 0xe9b, x16	// Write all 1s to CSR
	csrrw x24, 0xe9b, x0	// Write all 0s to CSR
	csrrs x24, 0xe9b, x16	// Set all CSR bits
	csrrc x24, 0xe9b, x16	// Clear all CSR bits
	csrrw x24, 0xe9b, x29	// Restore CSR

// Testing CSR 0xe9c
	csrr x14, 0xe9c	// Read CSR
	li x29, -1
	csrrw x25, 0xe9c, x29	// Write all 1s to CSR
	csrrw x25, 0xe9c, x0	// Write all 0s to CSR
	csrrs x25, 0xe9c, x29	// Set all CSR bits
	csrrc x25, 0xe9c, x29	// Clear all CSR bits
	csrrw x25, 0xe9c, x14	// Restore CSR

// Testing CSR 0xe9d
	csrr x18, 0xe9d	// Read CSR
	li x11, -1
	csrrw x19, 0xe9d, x11	// Write all 1s to CSR
	csrrw x19, 0xe9d, x0	// Write all 0s to CSR
	csrrs x19, 0xe9d, x11	// Set all CSR bits
	csrrc x19, 0xe9d, x11	// Clear all CSR bits
	csrrw x19, 0xe9d, x18	// Restore CSR

// Testing CSR 0xe9e
	csrr x5, 0xe9e	// Read CSR
	li x25, -1
	csrrw x7, 0xe9e, x25	// Write all 1s to CSR
	csrrw x7, 0xe9e, x0	// Write all 0s to CSR
	csrrs x7, 0xe9e, x25	// Set all CSR bits
	csrrc x7, 0xe9e, x25	// Clear all CSR bits
	csrrw x7, 0xe9e, x5	// Restore CSR

// Testing CSR 0xe9f
	csrr x3, 0xe9f	// Read CSR
	li x20, -1
	csrrw x22, 0xe9f, x20	// Write all 1s to CSR
	csrrw x22, 0xe9f, x0	// Write all 0s to CSR
	csrrs x22, 0xe9f, x20	// Set all CSR bits
	csrrc x22, 0xe9f, x20	// Clear all CSR bits
	csrrw x22, 0xe9f, x3	// Restore CSR

// Testing CSR 0xea0
	csrr x13, 0xea0	// Read CSR
	li x19, -1
	csrrw x16, 0xea0, x19	// Write all 1s to CSR
	csrrw x16, 0xea0, x0	// Write all 0s to CSR
	csrrs x16, 0xea0, x19	// Set all CSR bits
	csrrc x16, 0xea0, x19	// Clear all CSR bits
	csrrw x16, 0xea0, x13	// Restore CSR

// Testing CSR 0xea1
	csrr x19, 0xea1	// Read CSR
	li x25, -1
	csrrw x11, 0xea1, x25	// Write all 1s to CSR
	csrrw x11, 0xea1, x0	// Write all 0s to CSR
	csrrs x11, 0xea1, x25	// Set all CSR bits
	csrrc x11, 0xea1, x25	// Clear all CSR bits
	csrrw x11, 0xea1, x19	// Restore CSR

// Testing CSR 0xea2
	csrr x27, 0xea2	// Read CSR
	li x13, -1
	csrrw x4, 0xea2, x13	// Write all 1s to CSR
	csrrw x4, 0xea2, x0	// Write all 0s to CSR
	csrrs x4, 0xea2, x13	// Set all CSR bits
	csrrc x4, 0xea2, x13	// Clear all CSR bits
	csrrw x4, 0xea2, x27	// Restore CSR

// Testing CSR 0xea3
	csrr x30, 0xea3	// Read CSR
	li x23, -1
	csrrw x19, 0xea3, x23	// Write all 1s to CSR
	csrrw x19, 0xea3, x0	// Write all 0s to CSR
	csrrs x19, 0xea3, x23	// Set all CSR bits
	csrrc x19, 0xea3, x23	// Clear all CSR bits
	csrrw x19, 0xea3, x30	// Restore CSR

// Testing CSR 0xea4
	csrr x20, 0xea4	// Read CSR
	li x10, -1
	csrrw x12, 0xea4, x10	// Write all 1s to CSR
	csrrw x12, 0xea4, x0	// Write all 0s to CSR
	csrrs x12, 0xea4, x10	// Set all CSR bits
	csrrc x12, 0xea4, x10	// Clear all CSR bits
	csrrw x12, 0xea4, x20	// Restore CSR

// Testing CSR 0xea5
	csrr x1, 0xea5	// Read CSR
	li x6, -1
	csrrw x4, 0xea5, x6	// Write all 1s to CSR
	csrrw x4, 0xea5, x0	// Write all 0s to CSR
	csrrs x4, 0xea5, x6	// Set all CSR bits
	csrrc x4, 0xea5, x6	// Clear all CSR bits
	csrrw x4, 0xea5, x1	// Restore CSR

// Testing CSR 0xea6
	csrr x25, 0xea6	// Read CSR
	li x1, -1
	csrrw x26, 0xea6, x1	// Write all 1s to CSR
	csrrw x26, 0xea6, x0	// Write all 0s to CSR
	csrrs x26, 0xea6, x1	// Set all CSR bits
	csrrc x26, 0xea6, x1	// Clear all CSR bits
	csrrw x26, 0xea6, x25	// Restore CSR

// Testing CSR 0xea7
	csrr x9, 0xea7	// Read CSR
	li x19, -1
	csrrw x18, 0xea7, x19	// Write all 1s to CSR
	csrrw x18, 0xea7, x0	// Write all 0s to CSR
	csrrs x18, 0xea7, x19	// Set all CSR bits
	csrrc x18, 0xea7, x19	// Clear all CSR bits
	csrrw x18, 0xea7, x9	// Restore CSR

// Testing CSR 0xea8
	csrr x30, 0xea8	// Read CSR
	li x11, -1
	csrrw x4, 0xea8, x11	// Write all 1s to CSR
	csrrw x4, 0xea8, x0	// Write all 0s to CSR
	csrrs x4, 0xea8, x11	// Set all CSR bits
	csrrc x4, 0xea8, x11	// Clear all CSR bits
	csrrw x4, 0xea8, x30	// Restore CSR

// Testing CSR 0xea9
	csrr x19, 0xea9	// Read CSR
	li x25, -1
	csrrw x18, 0xea9, x25	// Write all 1s to CSR
	csrrw x18, 0xea9, x0	// Write all 0s to CSR
	csrrs x18, 0xea9, x25	// Set all CSR bits
	csrrc x18, 0xea9, x25	// Clear all CSR bits
	csrrw x18, 0xea9, x19	// Restore CSR

// Testing CSR 0xeaa
	csrr x31, 0xeaa	// Read CSR
	li x8, -1
	csrrw x4, 0xeaa, x8	// Write all 1s to CSR
	csrrw x4, 0xeaa, x0	// Write all 0s to CSR
	csrrs x4, 0xeaa, x8	// Set all CSR bits
	csrrc x4, 0xeaa, x8	// Clear all CSR bits
	csrrw x4, 0xeaa, x31	// Restore CSR

// Testing CSR 0xeab
	csrr x23, 0xeab	// Read CSR
	li x29, -1
	csrrw x15, 0xeab, x29	// Write all 1s to CSR
	csrrw x15, 0xeab, x0	// Write all 0s to CSR
	csrrs x15, 0xeab, x29	// Set all CSR bits
	csrrc x15, 0xeab, x29	// Clear all CSR bits
	csrrw x15, 0xeab, x23	// Restore CSR

// Testing CSR 0xeac
	csrr x21, 0xeac	// Read CSR
	li x16, -1
	csrrw x28, 0xeac, x16	// Write all 1s to CSR
	csrrw x28, 0xeac, x0	// Write all 0s to CSR
	csrrs x28, 0xeac, x16	// Set all CSR bits
	csrrc x28, 0xeac, x16	// Clear all CSR bits
	csrrw x28, 0xeac, x21	// Restore CSR

// Testing CSR 0xead
	csrr x16, 0xead	// Read CSR
	li x8, -1
	csrrw x1, 0xead, x8	// Write all 1s to CSR
	csrrw x1, 0xead, x0	// Write all 0s to CSR
	csrrs x1, 0xead, x8	// Set all CSR bits
	csrrc x1, 0xead, x8	// Clear all CSR bits
	csrrw x1, 0xead, x16	// Restore CSR

// Testing CSR 0xeae
	csrr x27, 0xeae	// Read CSR
	li x18, -1
	csrrw x8, 0xeae, x18	// Write all 1s to CSR
	csrrw x8, 0xeae, x0	// Write all 0s to CSR
	csrrs x8, 0xeae, x18	// Set all CSR bits
	csrrc x8, 0xeae, x18	// Clear all CSR bits
	csrrw x8, 0xeae, x27	// Restore CSR

// Testing CSR 0xeaf
	csrr x10, 0xeaf	// Read CSR
	li x11, -1
	csrrw x26, 0xeaf, x11	// Write all 1s to CSR
	csrrw x26, 0xeaf, x0	// Write all 0s to CSR
	csrrs x26, 0xeaf, x11	// Set all CSR bits
	csrrc x26, 0xeaf, x11	// Clear all CSR bits
	csrrw x26, 0xeaf, x10	// Restore CSR

// Testing CSR 0xeb0
	csrr x8, 0xeb0	// Read CSR
	li x30, -1
	csrrw x11, 0xeb0, x30	// Write all 1s to CSR
	csrrw x11, 0xeb0, x0	// Write all 0s to CSR
	csrrs x11, 0xeb0, x30	// Set all CSR bits
	csrrc x11, 0xeb0, x30	// Clear all CSR bits
	csrrw x11, 0xeb0, x8	// Restore CSR

// Testing CSR 0xeb1
	csrr x13, 0xeb1	// Read CSR
	li x4, -1
	csrrw x7, 0xeb1, x4	// Write all 1s to CSR
	csrrw x7, 0xeb1, x0	// Write all 0s to CSR
	csrrs x7, 0xeb1, x4	// Set all CSR bits
	csrrc x7, 0xeb1, x4	// Clear all CSR bits
	csrrw x7, 0xeb1, x13	// Restore CSR

// Testing CSR 0xeb2
	csrr x6, 0xeb2	// Read CSR
	li x17, -1
	csrrw x18, 0xeb2, x17	// Write all 1s to CSR
	csrrw x18, 0xeb2, x0	// Write all 0s to CSR
	csrrs x18, 0xeb2, x17	// Set all CSR bits
	csrrc x18, 0xeb2, x17	// Clear all CSR bits
	csrrw x18, 0xeb2, x6	// Restore CSR

// Testing CSR 0xeb3
	csrr x28, 0xeb3	// Read CSR
	li x26, -1
	csrrw x20, 0xeb3, x26	// Write all 1s to CSR
	csrrw x20, 0xeb3, x0	// Write all 0s to CSR
	csrrs x20, 0xeb3, x26	// Set all CSR bits
	csrrc x20, 0xeb3, x26	// Clear all CSR bits
	csrrw x20, 0xeb3, x28	// Restore CSR

// Testing CSR 0xeb4
	csrr x14, 0xeb4	// Read CSR
	li x19, -1
	csrrw x3, 0xeb4, x19	// Write all 1s to CSR
	csrrw x3, 0xeb4, x0	// Write all 0s to CSR
	csrrs x3, 0xeb4, x19	// Set all CSR bits
	csrrc x3, 0xeb4, x19	// Clear all CSR bits
	csrrw x3, 0xeb4, x14	// Restore CSR

// Testing CSR 0xeb5
	csrr x14, 0xeb5	// Read CSR
	li x15, -1
	csrrw x1, 0xeb5, x15	// Write all 1s to CSR
	csrrw x1, 0xeb5, x0	// Write all 0s to CSR
	csrrs x1, 0xeb5, x15	// Set all CSR bits
	csrrc x1, 0xeb5, x15	// Clear all CSR bits
	csrrw x1, 0xeb5, x14	// Restore CSR

// Testing CSR 0xeb6
	csrr x5, 0xeb6	// Read CSR
	li x1, -1
	csrrw x6, 0xeb6, x1	// Write all 1s to CSR
	csrrw x6, 0xeb6, x0	// Write all 0s to CSR
	csrrs x6, 0xeb6, x1	// Set all CSR bits
	csrrc x6, 0xeb6, x1	// Clear all CSR bits
	csrrw x6, 0xeb6, x5	// Restore CSR

// Testing CSR 0xeb7
	csrr x18, 0xeb7	// Read CSR
	li x4, -1
	csrrw x22, 0xeb7, x4	// Write all 1s to CSR
	csrrw x22, 0xeb7, x0	// Write all 0s to CSR
	csrrs x22, 0xeb7, x4	// Set all CSR bits
	csrrc x22, 0xeb7, x4	// Clear all CSR bits
	csrrw x22, 0xeb7, x18	// Restore CSR

// Testing CSR 0xeb8
	csrr x17, 0xeb8	// Read CSR
	li x21, -1
	csrrw x15, 0xeb8, x21	// Write all 1s to CSR
	csrrw x15, 0xeb8, x0	// Write all 0s to CSR
	csrrs x15, 0xeb8, x21	// Set all CSR bits
	csrrc x15, 0xeb8, x21	// Clear all CSR bits
	csrrw x15, 0xeb8, x17	// Restore CSR

// Testing CSR 0xeb9
	csrr x19, 0xeb9	// Read CSR
	li x11, -1
	csrrw x15, 0xeb9, x11	// Write all 1s to CSR
	csrrw x15, 0xeb9, x0	// Write all 0s to CSR
	csrrs x15, 0xeb9, x11	// Set all CSR bits
	csrrc x15, 0xeb9, x11	// Clear all CSR bits
	csrrw x15, 0xeb9, x19	// Restore CSR

// Testing CSR 0xeba
	csrr x9, 0xeba	// Read CSR
	li x27, -1
	csrrw x26, 0xeba, x27	// Write all 1s to CSR
	csrrw x26, 0xeba, x0	// Write all 0s to CSR
	csrrs x26, 0xeba, x27	// Set all CSR bits
	csrrc x26, 0xeba, x27	// Clear all CSR bits
	csrrw x26, 0xeba, x9	// Restore CSR

// Testing CSR 0xebb
	csrr x28, 0xebb	// Read CSR
	li x25, -1
	csrrw x26, 0xebb, x25	// Write all 1s to CSR
	csrrw x26, 0xebb, x0	// Write all 0s to CSR
	csrrs x26, 0xebb, x25	// Set all CSR bits
	csrrc x26, 0xebb, x25	// Clear all CSR bits
	csrrw x26, 0xebb, x28	// Restore CSR

// Testing CSR 0xebc
	csrr x1, 0xebc	// Read CSR
	li x8, -1
	csrrw x19, 0xebc, x8	// Write all 1s to CSR
	csrrw x19, 0xebc, x0	// Write all 0s to CSR
	csrrs x19, 0xebc, x8	// Set all CSR bits
	csrrc x19, 0xebc, x8	// Clear all CSR bits
	csrrw x19, 0xebc, x1	// Restore CSR

// Testing CSR 0xebd
	csrr x14, 0xebd	// Read CSR
	li x25, -1
	csrrw x11, 0xebd, x25	// Write all 1s to CSR
	csrrw x11, 0xebd, x0	// Write all 0s to CSR
	csrrs x11, 0xebd, x25	// Set all CSR bits
	csrrc x11, 0xebd, x25	// Clear all CSR bits
	csrrw x11, 0xebd, x14	// Restore CSR

// Testing CSR 0xebe
	csrr x10, 0xebe	// Read CSR
	li x19, -1
	csrrw x9, 0xebe, x19	// Write all 1s to CSR
	csrrw x9, 0xebe, x0	// Write all 0s to CSR
	csrrs x9, 0xebe, x19	// Set all CSR bits
	csrrc x9, 0xebe, x19	// Clear all CSR bits
	csrrw x9, 0xebe, x10	// Restore CSR

// Testing CSR 0xebf
	csrr x27, 0xebf	// Read CSR
	li x18, -1
	csrrw x15, 0xebf, x18	// Write all 1s to CSR
	csrrw x15, 0xebf, x0	// Write all 0s to CSR
	csrrs x15, 0xebf, x18	// Set all CSR bits
	csrrc x15, 0xebf, x18	// Clear all CSR bits
	csrrw x15, 0xebf, x27	// Restore CSR

// Testing CSR 0xf00
	csrr x26, 0xf00	// Read CSR
	li x29, -1
	csrrw x17, 0xf00, x29	// Write all 1s to CSR
	csrrw x17, 0xf00, x0	// Write all 0s to CSR
	csrrs x17, 0xf00, x29	// Set all CSR bits
	csrrc x17, 0xf00, x29	// Clear all CSR bits
	csrrw x17, 0xf00, x26	// Restore CSR

// Testing CSR 0xf01
	csrr x8, 0xf01	// Read CSR
	li x14, -1
	csrrw x29, 0xf01, x14	// Write all 1s to CSR
	csrrw x29, 0xf01, x0	// Write all 0s to CSR
	csrrs x29, 0xf01, x14	// Set all CSR bits
	csrrc x29, 0xf01, x14	// Clear all CSR bits
	csrrw x29, 0xf01, x8	// Restore CSR

// Testing CSR 0xf02
	csrr x22, 0xf02	// Read CSR
	li x27, -1
	csrrw x9, 0xf02, x27	// Write all 1s to CSR
	csrrw x9, 0xf02, x0	// Write all 0s to CSR
	csrrs x9, 0xf02, x27	// Set all CSR bits
	csrrc x9, 0xf02, x27	// Clear all CSR bits
	csrrw x9, 0xf02, x22	// Restore CSR

// Testing CSR 0xf03
	csrr x24, 0xf03	// Read CSR
	li x26, -1
	csrrw x23, 0xf03, x26	// Write all 1s to CSR
	csrrw x23, 0xf03, x0	// Write all 0s to CSR
	csrrs x23, 0xf03, x26	// Set all CSR bits
	csrrc x23, 0xf03, x26	// Clear all CSR bits
	csrrw x23, 0xf03, x24	// Restore CSR

// Testing CSR 0xf04
	csrr x13, 0xf04	// Read CSR
	li x21, -1
	csrrw x26, 0xf04, x21	// Write all 1s to CSR
	csrrw x26, 0xf04, x0	// Write all 0s to CSR
	csrrs x26, 0xf04, x21	// Set all CSR bits
	csrrc x26, 0xf04, x21	// Clear all CSR bits
	csrrw x26, 0xf04, x13	// Restore CSR

// Testing CSR 0xf05
	csrr x20, 0xf05	// Read CSR
	li x11, -1
	csrrw x7, 0xf05, x11	// Write all 1s to CSR
	csrrw x7, 0xf05, x0	// Write all 0s to CSR
	csrrs x7, 0xf05, x11	// Set all CSR bits
	csrrc x7, 0xf05, x11	// Clear all CSR bits
	csrrw x7, 0xf05, x20	// Restore CSR

// Testing CSR 0xf06
	csrr x24, 0xf06	// Read CSR
	li x4, -1
	csrrw x8, 0xf06, x4	// Write all 1s to CSR
	csrrw x8, 0xf06, x0	// Write all 0s to CSR
	csrrs x8, 0xf06, x4	// Set all CSR bits
	csrrc x8, 0xf06, x4	// Clear all CSR bits
	csrrw x8, 0xf06, x24	// Restore CSR

// Testing CSR 0xf07
	csrr x31, 0xf07	// Read CSR
	li x5, -1
	csrrw x15, 0xf07, x5	// Write all 1s to CSR
	csrrw x15, 0xf07, x0	// Write all 0s to CSR
	csrrs x15, 0xf07, x5	// Set all CSR bits
	csrrc x15, 0xf07, x5	// Clear all CSR bits
	csrrw x15, 0xf07, x31	// Restore CSR

// Testing CSR 0xf08
	csrr x2, 0xf08	// Read CSR
	li x25, -1
	csrrw x8, 0xf08, x25	// Write all 1s to CSR
	csrrw x8, 0xf08, x0	// Write all 0s to CSR
	csrrs x8, 0xf08, x25	// Set all CSR bits
	csrrc x8, 0xf08, x25	// Clear all CSR bits
	csrrw x8, 0xf08, x2	// Restore CSR

// Testing CSR 0xf09
	csrr x8, 0xf09	// Read CSR
	li x25, -1
	csrrw x14, 0xf09, x25	// Write all 1s to CSR
	csrrw x14, 0xf09, x0	// Write all 0s to CSR
	csrrs x14, 0xf09, x25	// Set all CSR bits
	csrrc x14, 0xf09, x25	// Clear all CSR bits
	csrrw x14, 0xf09, x8	// Restore CSR

// Testing CSR 0xf0a
	csrr x30, 0xf0a	// Read CSR
	li x18, -1
	csrrw x7, 0xf0a, x18	// Write all 1s to CSR
	csrrw x7, 0xf0a, x0	// Write all 0s to CSR
	csrrs x7, 0xf0a, x18	// Set all CSR bits
	csrrc x7, 0xf0a, x18	// Clear all CSR bits
	csrrw x7, 0xf0a, x30	// Restore CSR

// Testing CSR 0xf0b
	csrr x14, 0xf0b	// Read CSR
	li x3, -1
	csrrw x29, 0xf0b, x3	// Write all 1s to CSR
	csrrw x29, 0xf0b, x0	// Write all 0s to CSR
	csrrs x29, 0xf0b, x3	// Set all CSR bits
	csrrc x29, 0xf0b, x3	// Clear all CSR bits
	csrrw x29, 0xf0b, x14	// Restore CSR

// Testing CSR 0xf0c
	csrr x1, 0xf0c	// Read CSR
	li x31, -1
	csrrw x29, 0xf0c, x31	// Write all 1s to CSR
	csrrw x29, 0xf0c, x0	// Write all 0s to CSR
	csrrs x29, 0xf0c, x31	// Set all CSR bits
	csrrc x29, 0xf0c, x31	// Clear all CSR bits
	csrrw x29, 0xf0c, x1	// Restore CSR

// Testing CSR 0xf0d
	csrr x14, 0xf0d	// Read CSR
	li x13, -1
	csrrw x16, 0xf0d, x13	// Write all 1s to CSR
	csrrw x16, 0xf0d, x0	// Write all 0s to CSR
	csrrs x16, 0xf0d, x13	// Set all CSR bits
	csrrc x16, 0xf0d, x13	// Clear all CSR bits
	csrrw x16, 0xf0d, x14	// Restore CSR

// Testing CSR 0xf0e
	csrr x6, 0xf0e	// Read CSR
	li x19, -1
	csrrw x14, 0xf0e, x19	// Write all 1s to CSR
	csrrw x14, 0xf0e, x0	// Write all 0s to CSR
	csrrs x14, 0xf0e, x19	// Set all CSR bits
	csrrc x14, 0xf0e, x19	// Clear all CSR bits
	csrrw x14, 0xf0e, x6	// Restore CSR

// Testing CSR 0xf0f
	csrr x29, 0xf0f	// Read CSR
	li x21, -1
	csrrw x5, 0xf0f, x21	// Write all 1s to CSR
	csrrw x5, 0xf0f, x0	// Write all 0s to CSR
	csrrs x5, 0xf0f, x21	// Set all CSR bits
	csrrc x5, 0xf0f, x21	// Clear all CSR bits
	csrrw x5, 0xf0f, x29	// Restore CSR

// Testing CSR 0xf10
	csrr x20, 0xf10	// Read CSR
	li x6, -1
	csrrw x24, 0xf10, x6	// Write all 1s to CSR
	csrrw x24, 0xf10, x0	// Write all 0s to CSR
	csrrs x24, 0xf10, x6	// Set all CSR bits
	csrrc x24, 0xf10, x6	// Clear all CSR bits
	csrrw x24, 0xf10, x20	// Restore CSR

// Testing CSR 0xf11
	csrr x3, 0xf11	// Read CSR
	li x4, -1
	csrrw x2, 0xf11, x4	// Write all 1s to CSR
	csrrw x2, 0xf11, x0	// Write all 0s to CSR
	csrrs x2, 0xf11, x4	// Set all CSR bits
	csrrc x2, 0xf11, x4	// Clear all CSR bits
	csrrw x2, 0xf11, x3	// Restore CSR

// Testing CSR 0xf12
	csrr x17, 0xf12	// Read CSR
	li x9, -1
	csrrw x18, 0xf12, x9	// Write all 1s to CSR
	csrrw x18, 0xf12, x0	// Write all 0s to CSR
	csrrs x18, 0xf12, x9	// Set all CSR bits
	csrrc x18, 0xf12, x9	// Clear all CSR bits
	csrrw x18, 0xf12, x17	// Restore CSR

// Testing CSR 0xf13
	csrr x7, 0xf13	// Read CSR
	li x2, -1
	csrrw x10, 0xf13, x2	// Write all 1s to CSR
	csrrw x10, 0xf13, x0	// Write all 0s to CSR
	csrrs x10, 0xf13, x2	// Set all CSR bits
	csrrc x10, 0xf13, x2	// Clear all CSR bits
	csrrw x10, 0xf13, x7	// Restore CSR

// Testing CSR 0xf14
	csrr x2, 0xf14	// Read CSR
	li x19, -1
	csrrw x26, 0xf14, x19	// Write all 1s to CSR
	csrrw x26, 0xf14, x0	// Write all 0s to CSR
	csrrs x26, 0xf14, x19	// Set all CSR bits
	csrrc x26, 0xf14, x19	// Clear all CSR bits
	csrrw x26, 0xf14, x2	// Restore CSR

// Testing CSR 0xf15
	csrr x23, 0xf15	// Read CSR
	li x9, -1
	csrrw x30, 0xf15, x9	// Write all 1s to CSR
	csrrw x30, 0xf15, x0	// Write all 0s to CSR
	csrrs x30, 0xf15, x9	// Set all CSR bits
	csrrc x30, 0xf15, x9	// Clear all CSR bits
	csrrw x30, 0xf15, x23	// Restore CSR

// Testing CSR 0xf16
	csrr x24, 0xf16	// Read CSR
	li x23, -1
	csrrw x22, 0xf16, x23	// Write all 1s to CSR
	csrrw x22, 0xf16, x0	// Write all 0s to CSR
	csrrs x22, 0xf16, x23	// Set all CSR bits
	csrrc x22, 0xf16, x23	// Clear all CSR bits
	csrrw x22, 0xf16, x24	// Restore CSR

// Testing CSR 0xf17
	csrr x21, 0xf17	// Read CSR
	li x1, -1
	csrrw x10, 0xf17, x1	// Write all 1s to CSR
	csrrw x10, 0xf17, x0	// Write all 0s to CSR
	csrrs x10, 0xf17, x1	// Set all CSR bits
	csrrc x10, 0xf17, x1	// Clear all CSR bits
	csrrw x10, 0xf17, x21	// Restore CSR

// Testing CSR 0xf18
	csrr x22, 0xf18	// Read CSR
	li x28, -1
	csrrw x29, 0xf18, x28	// Write all 1s to CSR
	csrrw x29, 0xf18, x0	// Write all 0s to CSR
	csrrs x29, 0xf18, x28	// Set all CSR bits
	csrrc x29, 0xf18, x28	// Clear all CSR bits
	csrrw x29, 0xf18, x22	// Restore CSR

// Testing CSR 0xf19
	csrr x27, 0xf19	// Read CSR
	li x6, -1
	csrrw x25, 0xf19, x6	// Write all 1s to CSR
	csrrw x25, 0xf19, x0	// Write all 0s to CSR
	csrrs x25, 0xf19, x6	// Set all CSR bits
	csrrc x25, 0xf19, x6	// Clear all CSR bits
	csrrw x25, 0xf19, x27	// Restore CSR

// Testing CSR 0xf1a
	csrr x23, 0xf1a	// Read CSR
	li x24, -1
	csrrw x10, 0xf1a, x24	// Write all 1s to CSR
	csrrw x10, 0xf1a, x0	// Write all 0s to CSR
	csrrs x10, 0xf1a, x24	// Set all CSR bits
	csrrc x10, 0xf1a, x24	// Clear all CSR bits
	csrrw x10, 0xf1a, x23	// Restore CSR

// Testing CSR 0xf1b
	csrr x24, 0xf1b	// Read CSR
	li x21, -1
	csrrw x26, 0xf1b, x21	// Write all 1s to CSR
	csrrw x26, 0xf1b, x0	// Write all 0s to CSR
	csrrs x26, 0xf1b, x21	// Set all CSR bits
	csrrc x26, 0xf1b, x21	// Clear all CSR bits
	csrrw x26, 0xf1b, x24	// Restore CSR

// Testing CSR 0xf1c
	csrr x14, 0xf1c	// Read CSR
	li x19, -1
	csrrw x29, 0xf1c, x19	// Write all 1s to CSR
	csrrw x29, 0xf1c, x0	// Write all 0s to CSR
	csrrs x29, 0xf1c, x19	// Set all CSR bits
	csrrc x29, 0xf1c, x19	// Clear all CSR bits
	csrrw x29, 0xf1c, x14	// Restore CSR

// Testing CSR 0xf1d
	csrr x9, 0xf1d	// Read CSR
	li x1, -1
	csrrw x10, 0xf1d, x1	// Write all 1s to CSR
	csrrw x10, 0xf1d, x0	// Write all 0s to CSR
	csrrs x10, 0xf1d, x1	// Set all CSR bits
	csrrc x10, 0xf1d, x1	// Clear all CSR bits
	csrrw x10, 0xf1d, x9	// Restore CSR

// Testing CSR 0xf1e
	csrr x8, 0xf1e	// Read CSR
	li x31, -1
	csrrw x15, 0xf1e, x31	// Write all 1s to CSR
	csrrw x15, 0xf1e, x0	// Write all 0s to CSR
	csrrs x15, 0xf1e, x31	// Set all CSR bits
	csrrc x15, 0xf1e, x31	// Clear all CSR bits
	csrrw x15, 0xf1e, x8	// Restore CSR

// Testing CSR 0xf1f
	csrr x6, 0xf1f	// Read CSR
	li x21, -1
	csrrw x15, 0xf1f, x21	// Write all 1s to CSR
	csrrw x15, 0xf1f, x0	// Write all 0s to CSR
	csrrs x15, 0xf1f, x21	// Set all CSR bits
	csrrc x15, 0xf1f, x21	// Clear all CSR bits
	csrrw x15, 0xf1f, x6	// Restore CSR

// Testing CSR 0xf20
	csrr x21, 0xf20	// Read CSR
	li x2, -1
	csrrw x13, 0xf20, x2	// Write all 1s to CSR
	csrrw x13, 0xf20, x0	// Write all 0s to CSR
	csrrs x13, 0xf20, x2	// Set all CSR bits
	csrrc x13, 0xf20, x2	// Clear all CSR bits
	csrrw x13, 0xf20, x21	// Restore CSR

// Testing CSR 0xf21
	csrr x18, 0xf21	// Read CSR
	li x22, -1
	csrrw x16, 0xf21, x22	// Write all 1s to CSR
	csrrw x16, 0xf21, x0	// Write all 0s to CSR
	csrrs x16, 0xf21, x22	// Set all CSR bits
	csrrc x16, 0xf21, x22	// Clear all CSR bits
	csrrw x16, 0xf21, x18	// Restore CSR

// Testing CSR 0xf22
	csrr x4, 0xf22	// Read CSR
	li x9, -1
	csrrw x11, 0xf22, x9	// Write all 1s to CSR
	csrrw x11, 0xf22, x0	// Write all 0s to CSR
	csrrs x11, 0xf22, x9	// Set all CSR bits
	csrrc x11, 0xf22, x9	// Clear all CSR bits
	csrrw x11, 0xf22, x4	// Restore CSR

// Testing CSR 0xf23
	csrr x2, 0xf23	// Read CSR
	li x16, -1
	csrrw x10, 0xf23, x16	// Write all 1s to CSR
	csrrw x10, 0xf23, x0	// Write all 0s to CSR
	csrrs x10, 0xf23, x16	// Set all CSR bits
	csrrc x10, 0xf23, x16	// Clear all CSR bits
	csrrw x10, 0xf23, x2	// Restore CSR

// Testing CSR 0xf24
	csrr x18, 0xf24	// Read CSR
	li x20, -1
	csrrw x25, 0xf24, x20	// Write all 1s to CSR
	csrrw x25, 0xf24, x0	// Write all 0s to CSR
	csrrs x25, 0xf24, x20	// Set all CSR bits
	csrrc x25, 0xf24, x20	// Clear all CSR bits
	csrrw x25, 0xf24, x18	// Restore CSR

// Testing CSR 0xf25
	csrr x21, 0xf25	// Read CSR
	li x1, -1
	csrrw x6, 0xf25, x1	// Write all 1s to CSR
	csrrw x6, 0xf25, x0	// Write all 0s to CSR
	csrrs x6, 0xf25, x1	// Set all CSR bits
	csrrc x6, 0xf25, x1	// Clear all CSR bits
	csrrw x6, 0xf25, x21	// Restore CSR

// Testing CSR 0xf26
	csrr x4, 0xf26	// Read CSR
	li x7, -1
	csrrw x15, 0xf26, x7	// Write all 1s to CSR
	csrrw x15, 0xf26, x0	// Write all 0s to CSR
	csrrs x15, 0xf26, x7	// Set all CSR bits
	csrrc x15, 0xf26, x7	// Clear all CSR bits
	csrrw x15, 0xf26, x4	// Restore CSR

// Testing CSR 0xf27
	csrr x26, 0xf27	// Read CSR
	li x23, -1
	csrrw x7, 0xf27, x23	// Write all 1s to CSR
	csrrw x7, 0xf27, x0	// Write all 0s to CSR
	csrrs x7, 0xf27, x23	// Set all CSR bits
	csrrc x7, 0xf27, x23	// Clear all CSR bits
	csrrw x7, 0xf27, x26	// Restore CSR

// Testing CSR 0xf28
	csrr x23, 0xf28	// Read CSR
	li x5, -1
	csrrw x10, 0xf28, x5	// Write all 1s to CSR
	csrrw x10, 0xf28, x0	// Write all 0s to CSR
	csrrs x10, 0xf28, x5	// Set all CSR bits
	csrrc x10, 0xf28, x5	// Clear all CSR bits
	csrrw x10, 0xf28, x23	// Restore CSR

// Testing CSR 0xf29
	csrr x17, 0xf29	// Read CSR
	li x31, -1
	csrrw x30, 0xf29, x31	// Write all 1s to CSR
	csrrw x30, 0xf29, x0	// Write all 0s to CSR
	csrrs x30, 0xf29, x31	// Set all CSR bits
	csrrc x30, 0xf29, x31	// Clear all CSR bits
	csrrw x30, 0xf29, x17	// Restore CSR

// Testing CSR 0xf2a
	csrr x20, 0xf2a	// Read CSR
	li x14, -1
	csrrw x2, 0xf2a, x14	// Write all 1s to CSR
	csrrw x2, 0xf2a, x0	// Write all 0s to CSR
	csrrs x2, 0xf2a, x14	// Set all CSR bits
	csrrc x2, 0xf2a, x14	// Clear all CSR bits
	csrrw x2, 0xf2a, x20	// Restore CSR

// Testing CSR 0xf2b
	csrr x6, 0xf2b	// Read CSR
	li x9, -1
	csrrw x30, 0xf2b, x9	// Write all 1s to CSR
	csrrw x30, 0xf2b, x0	// Write all 0s to CSR
	csrrs x30, 0xf2b, x9	// Set all CSR bits
	csrrc x30, 0xf2b, x9	// Clear all CSR bits
	csrrw x30, 0xf2b, x6	// Restore CSR

// Testing CSR 0xf2c
	csrr x16, 0xf2c	// Read CSR
	li x27, -1
	csrrw x2, 0xf2c, x27	// Write all 1s to CSR
	csrrw x2, 0xf2c, x0	// Write all 0s to CSR
	csrrs x2, 0xf2c, x27	// Set all CSR bits
	csrrc x2, 0xf2c, x27	// Clear all CSR bits
	csrrw x2, 0xf2c, x16	// Restore CSR

// Testing CSR 0xf2d
	csrr x28, 0xf2d	// Read CSR
	li x29, -1
	csrrw x16, 0xf2d, x29	// Write all 1s to CSR
	csrrw x16, 0xf2d, x0	// Write all 0s to CSR
	csrrs x16, 0xf2d, x29	// Set all CSR bits
	csrrc x16, 0xf2d, x29	// Clear all CSR bits
	csrrw x16, 0xf2d, x28	// Restore CSR

// Testing CSR 0xf2e
	csrr x14, 0xf2e	// Read CSR
	li x31, -1
	csrrw x17, 0xf2e, x31	// Write all 1s to CSR
	csrrw x17, 0xf2e, x0	// Write all 0s to CSR
	csrrs x17, 0xf2e, x31	// Set all CSR bits
	csrrc x17, 0xf2e, x31	// Clear all CSR bits
	csrrw x17, 0xf2e, x14	// Restore CSR

// Testing CSR 0xf2f
	csrr x10, 0xf2f	// Read CSR
	li x1, -1
	csrrw x19, 0xf2f, x1	// Write all 1s to CSR
	csrrw x19, 0xf2f, x0	// Write all 0s to CSR
	csrrs x19, 0xf2f, x1	// Set all CSR bits
	csrrc x19, 0xf2f, x1	// Clear all CSR bits
	csrrw x19, 0xf2f, x10	// Restore CSR

// Testing CSR 0xf30
	csrr x9, 0xf30	// Read CSR
	li x8, -1
	csrrw x12, 0xf30, x8	// Write all 1s to CSR
	csrrw x12, 0xf30, x0	// Write all 0s to CSR
	csrrs x12, 0xf30, x8	// Set all CSR bits
	csrrc x12, 0xf30, x8	// Clear all CSR bits
	csrrw x12, 0xf30, x9	// Restore CSR

// Testing CSR 0xf31
	csrr x29, 0xf31	// Read CSR
	li x19, -1
	csrrw x17, 0xf31, x19	// Write all 1s to CSR
	csrrw x17, 0xf31, x0	// Write all 0s to CSR
	csrrs x17, 0xf31, x19	// Set all CSR bits
	csrrc x17, 0xf31, x19	// Clear all CSR bits
	csrrw x17, 0xf31, x29	// Restore CSR

// Testing CSR 0xf32
	csrr x17, 0xf32	// Read CSR
	li x18, -1
	csrrw x22, 0xf32, x18	// Write all 1s to CSR
	csrrw x22, 0xf32, x0	// Write all 0s to CSR
	csrrs x22, 0xf32, x18	// Set all CSR bits
	csrrc x22, 0xf32, x18	// Clear all CSR bits
	csrrw x22, 0xf32, x17	// Restore CSR

// Testing CSR 0xf33
	csrr x23, 0xf33	// Read CSR
	li x6, -1
	csrrw x28, 0xf33, x6	// Write all 1s to CSR
	csrrw x28, 0xf33, x0	// Write all 0s to CSR
	csrrs x28, 0xf33, x6	// Set all CSR bits
	csrrc x28, 0xf33, x6	// Clear all CSR bits
	csrrw x28, 0xf33, x23	// Restore CSR

// Testing CSR 0xf34
	csrr x17, 0xf34	// Read CSR
	li x13, -1
	csrrw x6, 0xf34, x13	// Write all 1s to CSR
	csrrw x6, 0xf34, x0	// Write all 0s to CSR
	csrrs x6, 0xf34, x13	// Set all CSR bits
	csrrc x6, 0xf34, x13	// Clear all CSR bits
	csrrw x6, 0xf34, x17	// Restore CSR

// Testing CSR 0xf35
	csrr x20, 0xf35	// Read CSR
	li x15, -1
	csrrw x24, 0xf35, x15	// Write all 1s to CSR
	csrrw x24, 0xf35, x0	// Write all 0s to CSR
	csrrs x24, 0xf35, x15	// Set all CSR bits
	csrrc x24, 0xf35, x15	// Clear all CSR bits
	csrrw x24, 0xf35, x20	// Restore CSR

// Testing CSR 0xf36
	csrr x29, 0xf36	// Read CSR
	li x11, -1
	csrrw x24, 0xf36, x11	// Write all 1s to CSR
	csrrw x24, 0xf36, x0	// Write all 0s to CSR
	csrrs x24, 0xf36, x11	// Set all CSR bits
	csrrc x24, 0xf36, x11	// Clear all CSR bits
	csrrw x24, 0xf36, x29	// Restore CSR

// Testing CSR 0xf37
	csrr x12, 0xf37	// Read CSR
	li x20, -1
	csrrw x18, 0xf37, x20	// Write all 1s to CSR
	csrrw x18, 0xf37, x0	// Write all 0s to CSR
	csrrs x18, 0xf37, x20	// Set all CSR bits
	csrrc x18, 0xf37, x20	// Clear all CSR bits
	csrrw x18, 0xf37, x12	// Restore CSR

// Testing CSR 0xf38
	csrr x18, 0xf38	// Read CSR
	li x27, -1
	csrrw x28, 0xf38, x27	// Write all 1s to CSR
	csrrw x28, 0xf38, x0	// Write all 0s to CSR
	csrrs x28, 0xf38, x27	// Set all CSR bits
	csrrc x28, 0xf38, x27	// Clear all CSR bits
	csrrw x28, 0xf38, x18	// Restore CSR

// Testing CSR 0xf39
	csrr x21, 0xf39	// Read CSR
	li x12, -1
	csrrw x24, 0xf39, x12	// Write all 1s to CSR
	csrrw x24, 0xf39, x0	// Write all 0s to CSR
	csrrs x24, 0xf39, x12	// Set all CSR bits
	csrrc x24, 0xf39, x12	// Clear all CSR bits
	csrrw x24, 0xf39, x21	// Restore CSR

// Testing CSR 0xf3a
	csrr x29, 0xf3a	// Read CSR
	li x24, -1
	csrrw x12, 0xf3a, x24	// Write all 1s to CSR
	csrrw x12, 0xf3a, x0	// Write all 0s to CSR
	csrrs x12, 0xf3a, x24	// Set all CSR bits
	csrrc x12, 0xf3a, x24	// Clear all CSR bits
	csrrw x12, 0xf3a, x29	// Restore CSR

// Testing CSR 0xf3b
	csrr x19, 0xf3b	// Read CSR
	li x12, -1
	csrrw x21, 0xf3b, x12	// Write all 1s to CSR
	csrrw x21, 0xf3b, x0	// Write all 0s to CSR
	csrrs x21, 0xf3b, x12	// Set all CSR bits
	csrrc x21, 0xf3b, x12	// Clear all CSR bits
	csrrw x21, 0xf3b, x19	// Restore CSR

// Testing CSR 0xf3c
	csrr x11, 0xf3c	// Read CSR
	li x5, -1
	csrrw x29, 0xf3c, x5	// Write all 1s to CSR
	csrrw x29, 0xf3c, x0	// Write all 0s to CSR
	csrrs x29, 0xf3c, x5	// Set all CSR bits
	csrrc x29, 0xf3c, x5	// Clear all CSR bits
	csrrw x29, 0xf3c, x11	// Restore CSR

// Testing CSR 0xf3d
	csrr x20, 0xf3d	// Read CSR
	li x25, -1
	csrrw x24, 0xf3d, x25	// Write all 1s to CSR
	csrrw x24, 0xf3d, x0	// Write all 0s to CSR
	csrrs x24, 0xf3d, x25	// Set all CSR bits
	csrrc x24, 0xf3d, x25	// Clear all CSR bits
	csrrw x24, 0xf3d, x20	// Restore CSR

// Testing CSR 0xf3e
	csrr x19, 0xf3e	// Read CSR
	li x3, -1
	csrrw x20, 0xf3e, x3	// Write all 1s to CSR
	csrrw x20, 0xf3e, x0	// Write all 0s to CSR
	csrrs x20, 0xf3e, x3	// Set all CSR bits
	csrrc x20, 0xf3e, x3	// Clear all CSR bits
	csrrw x20, 0xf3e, x19	// Restore CSR

// Testing CSR 0xf3f
	csrr x1, 0xf3f	// Read CSR
	li x25, -1
	csrrw x23, 0xf3f, x25	// Write all 1s to CSR
	csrrw x23, 0xf3f, x0	// Write all 0s to CSR
	csrrs x23, 0xf3f, x25	// Set all CSR bits
	csrrc x23, 0xf3f, x25	// Clear all CSR bits
	csrrw x23, 0xf3f, x1	// Restore CSR

// Testing CSR 0xf40
	csrr x13, 0xf40	// Read CSR
	li x28, -1
	csrrw x31, 0xf40, x28	// Write all 1s to CSR
	csrrw x31, 0xf40, x0	// Write all 0s to CSR
	csrrs x31, 0xf40, x28	// Set all CSR bits
	csrrc x31, 0xf40, x28	// Clear all CSR bits
	csrrw x31, 0xf40, x13	// Restore CSR

// Testing CSR 0xf41
	csrr x1, 0xf41	// Read CSR
	li x15, -1
	csrrw x19, 0xf41, x15	// Write all 1s to CSR
	csrrw x19, 0xf41, x0	// Write all 0s to CSR
	csrrs x19, 0xf41, x15	// Set all CSR bits
	csrrc x19, 0xf41, x15	// Clear all CSR bits
	csrrw x19, 0xf41, x1	// Restore CSR

// Testing CSR 0xf42
	csrr x8, 0xf42	// Read CSR
	li x23, -1
	csrrw x17, 0xf42, x23	// Write all 1s to CSR
	csrrw x17, 0xf42, x0	// Write all 0s to CSR
	csrrs x17, 0xf42, x23	// Set all CSR bits
	csrrc x17, 0xf42, x23	// Clear all CSR bits
	csrrw x17, 0xf42, x8	// Restore CSR

// Testing CSR 0xf43
	csrr x29, 0xf43	// Read CSR
	li x14, -1
	csrrw x13, 0xf43, x14	// Write all 1s to CSR
	csrrw x13, 0xf43, x0	// Write all 0s to CSR
	csrrs x13, 0xf43, x14	// Set all CSR bits
	csrrc x13, 0xf43, x14	// Clear all CSR bits
	csrrw x13, 0xf43, x29	// Restore CSR

// Testing CSR 0xf44
	csrr x10, 0xf44	// Read CSR
	li x13, -1
	csrrw x8, 0xf44, x13	// Write all 1s to CSR
	csrrw x8, 0xf44, x0	// Write all 0s to CSR
	csrrs x8, 0xf44, x13	// Set all CSR bits
	csrrc x8, 0xf44, x13	// Clear all CSR bits
	csrrw x8, 0xf44, x10	// Restore CSR

// Testing CSR 0xf45
	csrr x19, 0xf45	// Read CSR
	li x11, -1
	csrrw x22, 0xf45, x11	// Write all 1s to CSR
	csrrw x22, 0xf45, x0	// Write all 0s to CSR
	csrrs x22, 0xf45, x11	// Set all CSR bits
	csrrc x22, 0xf45, x11	// Clear all CSR bits
	csrrw x22, 0xf45, x19	// Restore CSR

// Testing CSR 0xf46
	csrr x15, 0xf46	// Read CSR
	li x1, -1
	csrrw x19, 0xf46, x1	// Write all 1s to CSR
	csrrw x19, 0xf46, x0	// Write all 0s to CSR
	csrrs x19, 0xf46, x1	// Set all CSR bits
	csrrc x19, 0xf46, x1	// Clear all CSR bits
	csrrw x19, 0xf46, x15	// Restore CSR

// Testing CSR 0xf47
	csrr x15, 0xf47	// Read CSR
	li x29, -1
	csrrw x10, 0xf47, x29	// Write all 1s to CSR
	csrrw x10, 0xf47, x0	// Write all 0s to CSR
	csrrs x10, 0xf47, x29	// Set all CSR bits
	csrrc x10, 0xf47, x29	// Clear all CSR bits
	csrrw x10, 0xf47, x15	// Restore CSR

// Testing CSR 0xf48
	csrr x4, 0xf48	// Read CSR
	li x1, -1
	csrrw x15, 0xf48, x1	// Write all 1s to CSR
	csrrw x15, 0xf48, x0	// Write all 0s to CSR
	csrrs x15, 0xf48, x1	// Set all CSR bits
	csrrc x15, 0xf48, x1	// Clear all CSR bits
	csrrw x15, 0xf48, x4	// Restore CSR

// Testing CSR 0xf49
	csrr x25, 0xf49	// Read CSR
	li x18, -1
	csrrw x13, 0xf49, x18	// Write all 1s to CSR
	csrrw x13, 0xf49, x0	// Write all 0s to CSR
	csrrs x13, 0xf49, x18	// Set all CSR bits
	csrrc x13, 0xf49, x18	// Clear all CSR bits
	csrrw x13, 0xf49, x25	// Restore CSR

// Testing CSR 0xf4a
	csrr x23, 0xf4a	// Read CSR
	li x19, -1
	csrrw x11, 0xf4a, x19	// Write all 1s to CSR
	csrrw x11, 0xf4a, x0	// Write all 0s to CSR
	csrrs x11, 0xf4a, x19	// Set all CSR bits
	csrrc x11, 0xf4a, x19	// Clear all CSR bits
	csrrw x11, 0xf4a, x23	// Restore CSR

// Testing CSR 0xf4b
	csrr x23, 0xf4b	// Read CSR
	li x9, -1
	csrrw x1, 0xf4b, x9	// Write all 1s to CSR
	csrrw x1, 0xf4b, x0	// Write all 0s to CSR
	csrrs x1, 0xf4b, x9	// Set all CSR bits
	csrrc x1, 0xf4b, x9	// Clear all CSR bits
	csrrw x1, 0xf4b, x23	// Restore CSR

// Testing CSR 0xf4c
	csrr x13, 0xf4c	// Read CSR
	li x4, -1
	csrrw x21, 0xf4c, x4	// Write all 1s to CSR
	csrrw x21, 0xf4c, x0	// Write all 0s to CSR
	csrrs x21, 0xf4c, x4	// Set all CSR bits
	csrrc x21, 0xf4c, x4	// Clear all CSR bits
	csrrw x21, 0xf4c, x13	// Restore CSR

// Testing CSR 0xf4d
	csrr x29, 0xf4d	// Read CSR
	li x17, -1
	csrrw x13, 0xf4d, x17	// Write all 1s to CSR
	csrrw x13, 0xf4d, x0	// Write all 0s to CSR
	csrrs x13, 0xf4d, x17	// Set all CSR bits
	csrrc x13, 0xf4d, x17	// Clear all CSR bits
	csrrw x13, 0xf4d, x29	// Restore CSR

// Testing CSR 0xf4e
	csrr x12, 0xf4e	// Read CSR
	li x1, -1
	csrrw x30, 0xf4e, x1	// Write all 1s to CSR
	csrrw x30, 0xf4e, x0	// Write all 0s to CSR
	csrrs x30, 0xf4e, x1	// Set all CSR bits
	csrrc x30, 0xf4e, x1	// Clear all CSR bits
	csrrw x30, 0xf4e, x12	// Restore CSR

// Testing CSR 0xf4f
	csrr x20, 0xf4f	// Read CSR
	li x27, -1
	csrrw x15, 0xf4f, x27	// Write all 1s to CSR
	csrrw x15, 0xf4f, x0	// Write all 0s to CSR
	csrrs x15, 0xf4f, x27	// Set all CSR bits
	csrrc x15, 0xf4f, x27	// Clear all CSR bits
	csrrw x15, 0xf4f, x20	// Restore CSR

// Testing CSR 0xf50
	csrr x11, 0xf50	// Read CSR
	li x27, -1
	csrrw x3, 0xf50, x27	// Write all 1s to CSR
	csrrw x3, 0xf50, x0	// Write all 0s to CSR
	csrrs x3, 0xf50, x27	// Set all CSR bits
	csrrc x3, 0xf50, x27	// Clear all CSR bits
	csrrw x3, 0xf50, x11	// Restore CSR

// Testing CSR 0xf51
	csrr x17, 0xf51	// Read CSR
	li x18, -1
	csrrw x1, 0xf51, x18	// Write all 1s to CSR
	csrrw x1, 0xf51, x0	// Write all 0s to CSR
	csrrs x1, 0xf51, x18	// Set all CSR bits
	csrrc x1, 0xf51, x18	// Clear all CSR bits
	csrrw x1, 0xf51, x17	// Restore CSR

// Testing CSR 0xf52
	csrr x9, 0xf52	// Read CSR
	li x19, -1
	csrrw x3, 0xf52, x19	// Write all 1s to CSR
	csrrw x3, 0xf52, x0	// Write all 0s to CSR
	csrrs x3, 0xf52, x19	// Set all CSR bits
	csrrc x3, 0xf52, x19	// Clear all CSR bits
	csrrw x3, 0xf52, x9	// Restore CSR

// Testing CSR 0xf53
	csrr x23, 0xf53	// Read CSR
	li x18, -1
	csrrw x16, 0xf53, x18	// Write all 1s to CSR
	csrrw x16, 0xf53, x0	// Write all 0s to CSR
	csrrs x16, 0xf53, x18	// Set all CSR bits
	csrrc x16, 0xf53, x18	// Clear all CSR bits
	csrrw x16, 0xf53, x23	// Restore CSR

// Testing CSR 0xf54
	csrr x1, 0xf54	// Read CSR
	li x26, -1
	csrrw x25, 0xf54, x26	// Write all 1s to CSR
	csrrw x25, 0xf54, x0	// Write all 0s to CSR
	csrrs x25, 0xf54, x26	// Set all CSR bits
	csrrc x25, 0xf54, x26	// Clear all CSR bits
	csrrw x25, 0xf54, x1	// Restore CSR

// Testing CSR 0xf55
	csrr x18, 0xf55	// Read CSR
	li x8, -1
	csrrw x12, 0xf55, x8	// Write all 1s to CSR
	csrrw x12, 0xf55, x0	// Write all 0s to CSR
	csrrs x12, 0xf55, x8	// Set all CSR bits
	csrrc x12, 0xf55, x8	// Clear all CSR bits
	csrrw x12, 0xf55, x18	// Restore CSR

// Testing CSR 0xf56
	csrr x15, 0xf56	// Read CSR
	li x18, -1
	csrrw x2, 0xf56, x18	// Write all 1s to CSR
	csrrw x2, 0xf56, x0	// Write all 0s to CSR
	csrrs x2, 0xf56, x18	// Set all CSR bits
	csrrc x2, 0xf56, x18	// Clear all CSR bits
	csrrw x2, 0xf56, x15	// Restore CSR

// Testing CSR 0xf57
	csrr x1, 0xf57	// Read CSR
	li x2, -1
	csrrw x27, 0xf57, x2	// Write all 1s to CSR
	csrrw x27, 0xf57, x0	// Write all 0s to CSR
	csrrs x27, 0xf57, x2	// Set all CSR bits
	csrrc x27, 0xf57, x2	// Clear all CSR bits
	csrrw x27, 0xf57, x1	// Restore CSR

// Testing CSR 0xf58
	csrr x9, 0xf58	// Read CSR
	li x26, -1
	csrrw x13, 0xf58, x26	// Write all 1s to CSR
	csrrw x13, 0xf58, x0	// Write all 0s to CSR
	csrrs x13, 0xf58, x26	// Set all CSR bits
	csrrc x13, 0xf58, x26	// Clear all CSR bits
	csrrw x13, 0xf58, x9	// Restore CSR

// Testing CSR 0xf59
	csrr x14, 0xf59	// Read CSR
	li x13, -1
	csrrw x17, 0xf59, x13	// Write all 1s to CSR
	csrrw x17, 0xf59, x0	// Write all 0s to CSR
	csrrs x17, 0xf59, x13	// Set all CSR bits
	csrrc x17, 0xf59, x13	// Clear all CSR bits
	csrrw x17, 0xf59, x14	// Restore CSR

// Testing CSR 0xf5a
	csrr x21, 0xf5a	// Read CSR
	li x24, -1
	csrrw x26, 0xf5a, x24	// Write all 1s to CSR
	csrrw x26, 0xf5a, x0	// Write all 0s to CSR
	csrrs x26, 0xf5a, x24	// Set all CSR bits
	csrrc x26, 0xf5a, x24	// Clear all CSR bits
	csrrw x26, 0xf5a, x21	// Restore CSR

// Testing CSR 0xf5b
	csrr x7, 0xf5b	// Read CSR
	li x10, -1
	csrrw x1, 0xf5b, x10	// Write all 1s to CSR
	csrrw x1, 0xf5b, x0	// Write all 0s to CSR
	csrrs x1, 0xf5b, x10	// Set all CSR bits
	csrrc x1, 0xf5b, x10	// Clear all CSR bits
	csrrw x1, 0xf5b, x7	// Restore CSR

// Testing CSR 0xf5c
	csrr x8, 0xf5c	// Read CSR
	li x6, -1
	csrrw x15, 0xf5c, x6	// Write all 1s to CSR
	csrrw x15, 0xf5c, x0	// Write all 0s to CSR
	csrrs x15, 0xf5c, x6	// Set all CSR bits
	csrrc x15, 0xf5c, x6	// Clear all CSR bits
	csrrw x15, 0xf5c, x8	// Restore CSR

// Testing CSR 0xf5d
	csrr x12, 0xf5d	// Read CSR
	li x16, -1
	csrrw x30, 0xf5d, x16	// Write all 1s to CSR
	csrrw x30, 0xf5d, x0	// Write all 0s to CSR
	csrrs x30, 0xf5d, x16	// Set all CSR bits
	csrrc x30, 0xf5d, x16	// Clear all CSR bits
	csrrw x30, 0xf5d, x12	// Restore CSR

// Testing CSR 0xf5e
	csrr x22, 0xf5e	// Read CSR
	li x7, -1
	csrrw x13, 0xf5e, x7	// Write all 1s to CSR
	csrrw x13, 0xf5e, x0	// Write all 0s to CSR
	csrrs x13, 0xf5e, x7	// Set all CSR bits
	csrrc x13, 0xf5e, x7	// Clear all CSR bits
	csrrw x13, 0xf5e, x22	// Restore CSR

// Testing CSR 0xf5f
	csrr x11, 0xf5f	// Read CSR
	li x4, -1
	csrrw x7, 0xf5f, x4	// Write all 1s to CSR
	csrrw x7, 0xf5f, x0	// Write all 0s to CSR
	csrrs x7, 0xf5f, x4	// Set all CSR bits
	csrrc x7, 0xf5f, x4	// Clear all CSR bits
	csrrw x7, 0xf5f, x11	// Restore CSR

// Testing CSR 0xf60
	csrr x24, 0xf60	// Read CSR
	li x23, -1
	csrrw x2, 0xf60, x23	// Write all 1s to CSR
	csrrw x2, 0xf60, x0	// Write all 0s to CSR
	csrrs x2, 0xf60, x23	// Set all CSR bits
	csrrc x2, 0xf60, x23	// Clear all CSR bits
	csrrw x2, 0xf60, x24	// Restore CSR

// Testing CSR 0xf61
	csrr x30, 0xf61	// Read CSR
	li x24, -1
	csrrw x20, 0xf61, x24	// Write all 1s to CSR
	csrrw x20, 0xf61, x0	// Write all 0s to CSR
	csrrs x20, 0xf61, x24	// Set all CSR bits
	csrrc x20, 0xf61, x24	// Clear all CSR bits
	csrrw x20, 0xf61, x30	// Restore CSR

// Testing CSR 0xf62
	csrr x2, 0xf62	// Read CSR
	li x24, -1
	csrrw x27, 0xf62, x24	// Write all 1s to CSR
	csrrw x27, 0xf62, x0	// Write all 0s to CSR
	csrrs x27, 0xf62, x24	// Set all CSR bits
	csrrc x27, 0xf62, x24	// Clear all CSR bits
	csrrw x27, 0xf62, x2	// Restore CSR

// Testing CSR 0xf63
	csrr x15, 0xf63	// Read CSR
	li x8, -1
	csrrw x26, 0xf63, x8	// Write all 1s to CSR
	csrrw x26, 0xf63, x0	// Write all 0s to CSR
	csrrs x26, 0xf63, x8	// Set all CSR bits
	csrrc x26, 0xf63, x8	// Clear all CSR bits
	csrrw x26, 0xf63, x15	// Restore CSR

// Testing CSR 0xf64
	csrr x4, 0xf64	// Read CSR
	li x11, -1
	csrrw x26, 0xf64, x11	// Write all 1s to CSR
	csrrw x26, 0xf64, x0	// Write all 0s to CSR
	csrrs x26, 0xf64, x11	// Set all CSR bits
	csrrc x26, 0xf64, x11	// Clear all CSR bits
	csrrw x26, 0xf64, x4	// Restore CSR

// Testing CSR 0xf65
	csrr x6, 0xf65	// Read CSR
	li x5, -1
	csrrw x16, 0xf65, x5	// Write all 1s to CSR
	csrrw x16, 0xf65, x0	// Write all 0s to CSR
	csrrs x16, 0xf65, x5	// Set all CSR bits
	csrrc x16, 0xf65, x5	// Clear all CSR bits
	csrrw x16, 0xf65, x6	// Restore CSR

// Testing CSR 0xf66
	csrr x9, 0xf66	// Read CSR
	li x25, -1
	csrrw x29, 0xf66, x25	// Write all 1s to CSR
	csrrw x29, 0xf66, x0	// Write all 0s to CSR
	csrrs x29, 0xf66, x25	// Set all CSR bits
	csrrc x29, 0xf66, x25	// Clear all CSR bits
	csrrw x29, 0xf66, x9	// Restore CSR

// Testing CSR 0xf67
	csrr x23, 0xf67	// Read CSR
	li x28, -1
	csrrw x18, 0xf67, x28	// Write all 1s to CSR
	csrrw x18, 0xf67, x0	// Write all 0s to CSR
	csrrs x18, 0xf67, x28	// Set all CSR bits
	csrrc x18, 0xf67, x28	// Clear all CSR bits
	csrrw x18, 0xf67, x23	// Restore CSR

// Testing CSR 0xf68
	csrr x12, 0xf68	// Read CSR
	li x25, -1
	csrrw x1, 0xf68, x25	// Write all 1s to CSR
	csrrw x1, 0xf68, x0	// Write all 0s to CSR
	csrrs x1, 0xf68, x25	// Set all CSR bits
	csrrc x1, 0xf68, x25	// Clear all CSR bits
	csrrw x1, 0xf68, x12	// Restore CSR

// Testing CSR 0xf69
	csrr x4, 0xf69	// Read CSR
	li x8, -1
	csrrw x15, 0xf69, x8	// Write all 1s to CSR
	csrrw x15, 0xf69, x0	// Write all 0s to CSR
	csrrs x15, 0xf69, x8	// Set all CSR bits
	csrrc x15, 0xf69, x8	// Clear all CSR bits
	csrrw x15, 0xf69, x4	// Restore CSR

// Testing CSR 0xf6a
	csrr x14, 0xf6a	// Read CSR
	li x24, -1
	csrrw x15, 0xf6a, x24	// Write all 1s to CSR
	csrrw x15, 0xf6a, x0	// Write all 0s to CSR
	csrrs x15, 0xf6a, x24	// Set all CSR bits
	csrrc x15, 0xf6a, x24	// Clear all CSR bits
	csrrw x15, 0xf6a, x14	// Restore CSR

// Testing CSR 0xf6b
	csrr x20, 0xf6b	// Read CSR
	li x22, -1
	csrrw x15, 0xf6b, x22	// Write all 1s to CSR
	csrrw x15, 0xf6b, x0	// Write all 0s to CSR
	csrrs x15, 0xf6b, x22	// Set all CSR bits
	csrrc x15, 0xf6b, x22	// Clear all CSR bits
	csrrw x15, 0xf6b, x20	// Restore CSR

// Testing CSR 0xf6c
	csrr x2, 0xf6c	// Read CSR
	li x13, -1
	csrrw x28, 0xf6c, x13	// Write all 1s to CSR
	csrrw x28, 0xf6c, x0	// Write all 0s to CSR
	csrrs x28, 0xf6c, x13	// Set all CSR bits
	csrrc x28, 0xf6c, x13	// Clear all CSR bits
	csrrw x28, 0xf6c, x2	// Restore CSR

// Testing CSR 0xf6d
	csrr x4, 0xf6d	// Read CSR
	li x15, -1
	csrrw x20, 0xf6d, x15	// Write all 1s to CSR
	csrrw x20, 0xf6d, x0	// Write all 0s to CSR
	csrrs x20, 0xf6d, x15	// Set all CSR bits
	csrrc x20, 0xf6d, x15	// Clear all CSR bits
	csrrw x20, 0xf6d, x4	// Restore CSR

// Testing CSR 0xf6e
	csrr x3, 0xf6e	// Read CSR
	li x26, -1
	csrrw x28, 0xf6e, x26	// Write all 1s to CSR
	csrrw x28, 0xf6e, x0	// Write all 0s to CSR
	csrrs x28, 0xf6e, x26	// Set all CSR bits
	csrrc x28, 0xf6e, x26	// Clear all CSR bits
	csrrw x28, 0xf6e, x3	// Restore CSR

// Testing CSR 0xf6f
	csrr x11, 0xf6f	// Read CSR
	li x25, -1
	csrrw x14, 0xf6f, x25	// Write all 1s to CSR
	csrrw x14, 0xf6f, x0	// Write all 0s to CSR
	csrrs x14, 0xf6f, x25	// Set all CSR bits
	csrrc x14, 0xf6f, x25	// Clear all CSR bits
	csrrw x14, 0xf6f, x11	// Restore CSR

// Testing CSR 0xf70
	csrr x23, 0xf70	// Read CSR
	li x25, -1
	csrrw x27, 0xf70, x25	// Write all 1s to CSR
	csrrw x27, 0xf70, x0	// Write all 0s to CSR
	csrrs x27, 0xf70, x25	// Set all CSR bits
	csrrc x27, 0xf70, x25	// Clear all CSR bits
	csrrw x27, 0xf70, x23	// Restore CSR

// Testing CSR 0xf71
	csrr x27, 0xf71	// Read CSR
	li x5, -1
	csrrw x25, 0xf71, x5	// Write all 1s to CSR
	csrrw x25, 0xf71, x0	// Write all 0s to CSR
	csrrs x25, 0xf71, x5	// Set all CSR bits
	csrrc x25, 0xf71, x5	// Clear all CSR bits
	csrrw x25, 0xf71, x27	// Restore CSR

// Testing CSR 0xf72
	csrr x6, 0xf72	// Read CSR
	li x12, -1
	csrrw x23, 0xf72, x12	// Write all 1s to CSR
	csrrw x23, 0xf72, x0	// Write all 0s to CSR
	csrrs x23, 0xf72, x12	// Set all CSR bits
	csrrc x23, 0xf72, x12	// Clear all CSR bits
	csrrw x23, 0xf72, x6	// Restore CSR

// Testing CSR 0xf73
	csrr x14, 0xf73	// Read CSR
	li x26, -1
	csrrw x24, 0xf73, x26	// Write all 1s to CSR
	csrrw x24, 0xf73, x0	// Write all 0s to CSR
	csrrs x24, 0xf73, x26	// Set all CSR bits
	csrrc x24, 0xf73, x26	// Clear all CSR bits
	csrrw x24, 0xf73, x14	// Restore CSR

// Testing CSR 0xf74
	csrr x28, 0xf74	// Read CSR
	li x21, -1
	csrrw x22, 0xf74, x21	// Write all 1s to CSR
	csrrw x22, 0xf74, x0	// Write all 0s to CSR
	csrrs x22, 0xf74, x21	// Set all CSR bits
	csrrc x22, 0xf74, x21	// Clear all CSR bits
	csrrw x22, 0xf74, x28	// Restore CSR

// Testing CSR 0xf75
	csrr x7, 0xf75	// Read CSR
	li x4, -1
	csrrw x31, 0xf75, x4	// Write all 1s to CSR
	csrrw x31, 0xf75, x0	// Write all 0s to CSR
	csrrs x31, 0xf75, x4	// Set all CSR bits
	csrrc x31, 0xf75, x4	// Clear all CSR bits
	csrrw x31, 0xf75, x7	// Restore CSR

// Testing CSR 0xf76
	csrr x14, 0xf76	// Read CSR
	li x10, -1
	csrrw x22, 0xf76, x10	// Write all 1s to CSR
	csrrw x22, 0xf76, x0	// Write all 0s to CSR
	csrrs x22, 0xf76, x10	// Set all CSR bits
	csrrc x22, 0xf76, x10	// Clear all CSR bits
	csrrw x22, 0xf76, x14	// Restore CSR

// Testing CSR 0xf77
	csrr x14, 0xf77	// Read CSR
	li x26, -1
	csrrw x7, 0xf77, x26	// Write all 1s to CSR
	csrrw x7, 0xf77, x0	// Write all 0s to CSR
	csrrs x7, 0xf77, x26	// Set all CSR bits
	csrrc x7, 0xf77, x26	// Clear all CSR bits
	csrrw x7, 0xf77, x14	// Restore CSR

// Testing CSR 0xf78
	csrr x21, 0xf78	// Read CSR
	li x28, -1
	csrrw x26, 0xf78, x28	// Write all 1s to CSR
	csrrw x26, 0xf78, x0	// Write all 0s to CSR
	csrrs x26, 0xf78, x28	// Set all CSR bits
	csrrc x26, 0xf78, x28	// Clear all CSR bits
	csrrw x26, 0xf78, x21	// Restore CSR

// Testing CSR 0xf79
	csrr x26, 0xf79	// Read CSR
	li x1, -1
	csrrw x30, 0xf79, x1	// Write all 1s to CSR
	csrrw x30, 0xf79, x0	// Write all 0s to CSR
	csrrs x30, 0xf79, x1	// Set all CSR bits
	csrrc x30, 0xf79, x1	// Clear all CSR bits
	csrrw x30, 0xf79, x26	// Restore CSR

// Testing CSR 0xf7a
	csrr x8, 0xf7a	// Read CSR
	li x27, -1
	csrrw x26, 0xf7a, x27	// Write all 1s to CSR
	csrrw x26, 0xf7a, x0	// Write all 0s to CSR
	csrrs x26, 0xf7a, x27	// Set all CSR bits
	csrrc x26, 0xf7a, x27	// Clear all CSR bits
	csrrw x26, 0xf7a, x8	// Restore CSR

// Testing CSR 0xf7b
	csrr x25, 0xf7b	// Read CSR
	li x4, -1
	csrrw x1, 0xf7b, x4	// Write all 1s to CSR
	csrrw x1, 0xf7b, x0	// Write all 0s to CSR
	csrrs x1, 0xf7b, x4	// Set all CSR bits
	csrrc x1, 0xf7b, x4	// Clear all CSR bits
	csrrw x1, 0xf7b, x25	// Restore CSR

// Testing CSR 0xf7c
	csrr x19, 0xf7c	// Read CSR
	li x12, -1
	csrrw x28, 0xf7c, x12	// Write all 1s to CSR
	csrrw x28, 0xf7c, x0	// Write all 0s to CSR
	csrrs x28, 0xf7c, x12	// Set all CSR bits
	csrrc x28, 0xf7c, x12	// Clear all CSR bits
	csrrw x28, 0xf7c, x19	// Restore CSR

// Testing CSR 0xf7d
	csrr x27, 0xf7d	// Read CSR
	li x15, -1
	csrrw x30, 0xf7d, x15	// Write all 1s to CSR
	csrrw x30, 0xf7d, x0	// Write all 0s to CSR
	csrrs x30, 0xf7d, x15	// Set all CSR bits
	csrrc x30, 0xf7d, x15	// Clear all CSR bits
	csrrw x30, 0xf7d, x27	// Restore CSR

// Testing CSR 0xf7e
	csrr x20, 0xf7e	// Read CSR
	li x7, -1
	csrrw x31, 0xf7e, x7	// Write all 1s to CSR
	csrrw x31, 0xf7e, x0	// Write all 0s to CSR
	csrrs x31, 0xf7e, x7	// Set all CSR bits
	csrrc x31, 0xf7e, x7	// Clear all CSR bits
	csrrw x31, 0xf7e, x20	// Restore CSR

// Testing CSR 0xf7f
	csrr x11, 0xf7f	// Read CSR
	li x29, -1
	csrrw x27, 0xf7f, x29	// Write all 1s to CSR
	csrrw x27, 0xf7f, x0	// Write all 0s to CSR
	csrrs x27, 0xf7f, x29	// Set all CSR bits
	csrrc x27, 0xf7f, x29	// Clear all CSR bits
	csrrw x27, 0xf7f, x11	// Restore CSR

// Testing CSR 0xf80
	csrr x1, 0xf80	// Read CSR
	li x9, -1
	csrrw x5, 0xf80, x9	// Write all 1s to CSR
	csrrw x5, 0xf80, x0	// Write all 0s to CSR
	csrrs x5, 0xf80, x9	// Set all CSR bits
	csrrc x5, 0xf80, x9	// Clear all CSR bits
	csrrw x5, 0xf80, x1	// Restore CSR

// Testing CSR 0xf81
	csrr x5, 0xf81	// Read CSR
	li x22, -1
	csrrw x19, 0xf81, x22	// Write all 1s to CSR
	csrrw x19, 0xf81, x0	// Write all 0s to CSR
	csrrs x19, 0xf81, x22	// Set all CSR bits
	csrrc x19, 0xf81, x22	// Clear all CSR bits
	csrrw x19, 0xf81, x5	// Restore CSR

// Testing CSR 0xf82
	csrr x10, 0xf82	// Read CSR
	li x22, -1
	csrrw x2, 0xf82, x22	// Write all 1s to CSR
	csrrw x2, 0xf82, x0	// Write all 0s to CSR
	csrrs x2, 0xf82, x22	// Set all CSR bits
	csrrc x2, 0xf82, x22	// Clear all CSR bits
	csrrw x2, 0xf82, x10	// Restore CSR

// Testing CSR 0xf83
	csrr x7, 0xf83	// Read CSR
	li x9, -1
	csrrw x2, 0xf83, x9	// Write all 1s to CSR
	csrrw x2, 0xf83, x0	// Write all 0s to CSR
	csrrs x2, 0xf83, x9	// Set all CSR bits
	csrrc x2, 0xf83, x9	// Clear all CSR bits
	csrrw x2, 0xf83, x7	// Restore CSR

// Testing CSR 0xf84
	csrr x31, 0xf84	// Read CSR
	li x10, -1
	csrrw x27, 0xf84, x10	// Write all 1s to CSR
	csrrw x27, 0xf84, x0	// Write all 0s to CSR
	csrrs x27, 0xf84, x10	// Set all CSR bits
	csrrc x27, 0xf84, x10	// Clear all CSR bits
	csrrw x27, 0xf84, x31	// Restore CSR

// Testing CSR 0xf85
	csrr x29, 0xf85	// Read CSR
	li x19, -1
	csrrw x9, 0xf85, x19	// Write all 1s to CSR
	csrrw x9, 0xf85, x0	// Write all 0s to CSR
	csrrs x9, 0xf85, x19	// Set all CSR bits
	csrrc x9, 0xf85, x19	// Clear all CSR bits
	csrrw x9, 0xf85, x29	// Restore CSR

// Testing CSR 0xf86
	csrr x29, 0xf86	// Read CSR
	li x3, -1
	csrrw x19, 0xf86, x3	// Write all 1s to CSR
	csrrw x19, 0xf86, x0	// Write all 0s to CSR
	csrrs x19, 0xf86, x3	// Set all CSR bits
	csrrc x19, 0xf86, x3	// Clear all CSR bits
	csrrw x19, 0xf86, x29	// Restore CSR

// Testing CSR 0xf87
	csrr x25, 0xf87	// Read CSR
	li x3, -1
	csrrw x13, 0xf87, x3	// Write all 1s to CSR
	csrrw x13, 0xf87, x0	// Write all 0s to CSR
	csrrs x13, 0xf87, x3	// Set all CSR bits
	csrrc x13, 0xf87, x3	// Clear all CSR bits
	csrrw x13, 0xf87, x25	// Restore CSR

// Testing CSR 0xf88
	csrr x14, 0xf88	// Read CSR
	li x18, -1
	csrrw x16, 0xf88, x18	// Write all 1s to CSR
	csrrw x16, 0xf88, x0	// Write all 0s to CSR
	csrrs x16, 0xf88, x18	// Set all CSR bits
	csrrc x16, 0xf88, x18	// Clear all CSR bits
	csrrw x16, 0xf88, x14	// Restore CSR

// Testing CSR 0xf89
	csrr x29, 0xf89	// Read CSR
	li x12, -1
	csrrw x19, 0xf89, x12	// Write all 1s to CSR
	csrrw x19, 0xf89, x0	// Write all 0s to CSR
	csrrs x19, 0xf89, x12	// Set all CSR bits
	csrrc x19, 0xf89, x12	// Clear all CSR bits
	csrrw x19, 0xf89, x29	// Restore CSR

// Testing CSR 0xf8a
	csrr x24, 0xf8a	// Read CSR
	li x23, -1
	csrrw x9, 0xf8a, x23	// Write all 1s to CSR
	csrrw x9, 0xf8a, x0	// Write all 0s to CSR
	csrrs x9, 0xf8a, x23	// Set all CSR bits
	csrrc x9, 0xf8a, x23	// Clear all CSR bits
	csrrw x9, 0xf8a, x24	// Restore CSR

// Testing CSR 0xf8b
	csrr x4, 0xf8b	// Read CSR
	li x19, -1
	csrrw x6, 0xf8b, x19	// Write all 1s to CSR
	csrrw x6, 0xf8b, x0	// Write all 0s to CSR
	csrrs x6, 0xf8b, x19	// Set all CSR bits
	csrrc x6, 0xf8b, x19	// Clear all CSR bits
	csrrw x6, 0xf8b, x4	// Restore CSR

// Testing CSR 0xf8c
	csrr x19, 0xf8c	// Read CSR
	li x10, -1
	csrrw x31, 0xf8c, x10	// Write all 1s to CSR
	csrrw x31, 0xf8c, x0	// Write all 0s to CSR
	csrrs x31, 0xf8c, x10	// Set all CSR bits
	csrrc x31, 0xf8c, x10	// Clear all CSR bits
	csrrw x31, 0xf8c, x19	// Restore CSR

// Testing CSR 0xf8d
	csrr x19, 0xf8d	// Read CSR
	li x21, -1
	csrrw x23, 0xf8d, x21	// Write all 1s to CSR
	csrrw x23, 0xf8d, x0	// Write all 0s to CSR
	csrrs x23, 0xf8d, x21	// Set all CSR bits
	csrrc x23, 0xf8d, x21	// Clear all CSR bits
	csrrw x23, 0xf8d, x19	// Restore CSR

// Testing CSR 0xf8e
	csrr x25, 0xf8e	// Read CSR
	li x1, -1
	csrrw x6, 0xf8e, x1	// Write all 1s to CSR
	csrrw x6, 0xf8e, x0	// Write all 0s to CSR
	csrrs x6, 0xf8e, x1	// Set all CSR bits
	csrrc x6, 0xf8e, x1	// Clear all CSR bits
	csrrw x6, 0xf8e, x25	// Restore CSR

// Testing CSR 0xf8f
	csrr x18, 0xf8f	// Read CSR
	li x13, -1
	csrrw x26, 0xf8f, x13	// Write all 1s to CSR
	csrrw x26, 0xf8f, x0	// Write all 0s to CSR
	csrrs x26, 0xf8f, x13	// Set all CSR bits
	csrrc x26, 0xf8f, x13	// Clear all CSR bits
	csrrw x26, 0xf8f, x18	// Restore CSR

// Testing CSR 0xf90
	csrr x22, 0xf90	// Read CSR
	li x17, -1
	csrrw x8, 0xf90, x17	// Write all 1s to CSR
	csrrw x8, 0xf90, x0	// Write all 0s to CSR
	csrrs x8, 0xf90, x17	// Set all CSR bits
	csrrc x8, 0xf90, x17	// Clear all CSR bits
	csrrw x8, 0xf90, x22	// Restore CSR

// Testing CSR 0xf91
	csrr x14, 0xf91	// Read CSR
	li x6, -1
	csrrw x31, 0xf91, x6	// Write all 1s to CSR
	csrrw x31, 0xf91, x0	// Write all 0s to CSR
	csrrs x31, 0xf91, x6	// Set all CSR bits
	csrrc x31, 0xf91, x6	// Clear all CSR bits
	csrrw x31, 0xf91, x14	// Restore CSR

// Testing CSR 0xf92
	csrr x14, 0xf92	// Read CSR
	li x30, -1
	csrrw x29, 0xf92, x30	// Write all 1s to CSR
	csrrw x29, 0xf92, x0	// Write all 0s to CSR
	csrrs x29, 0xf92, x30	// Set all CSR bits
	csrrc x29, 0xf92, x30	// Clear all CSR bits
	csrrw x29, 0xf92, x14	// Restore CSR

// Testing CSR 0xf93
	csrr x31, 0xf93	// Read CSR
	li x5, -1
	csrrw x20, 0xf93, x5	// Write all 1s to CSR
	csrrw x20, 0xf93, x0	// Write all 0s to CSR
	csrrs x20, 0xf93, x5	// Set all CSR bits
	csrrc x20, 0xf93, x5	// Clear all CSR bits
	csrrw x20, 0xf93, x31	// Restore CSR

// Testing CSR 0xf94
	csrr x23, 0xf94	// Read CSR
	li x4, -1
	csrrw x19, 0xf94, x4	// Write all 1s to CSR
	csrrw x19, 0xf94, x0	// Write all 0s to CSR
	csrrs x19, 0xf94, x4	// Set all CSR bits
	csrrc x19, 0xf94, x4	// Clear all CSR bits
	csrrw x19, 0xf94, x23	// Restore CSR

// Testing CSR 0xf95
	csrr x15, 0xf95	// Read CSR
	li x12, -1
	csrrw x30, 0xf95, x12	// Write all 1s to CSR
	csrrw x30, 0xf95, x0	// Write all 0s to CSR
	csrrs x30, 0xf95, x12	// Set all CSR bits
	csrrc x30, 0xf95, x12	// Clear all CSR bits
	csrrw x30, 0xf95, x15	// Restore CSR

// Testing CSR 0xf96
	csrr x18, 0xf96	// Read CSR
	li x24, -1
	csrrw x27, 0xf96, x24	// Write all 1s to CSR
	csrrw x27, 0xf96, x0	// Write all 0s to CSR
	csrrs x27, 0xf96, x24	// Set all CSR bits
	csrrc x27, 0xf96, x24	// Clear all CSR bits
	csrrw x27, 0xf96, x18	// Restore CSR

// Testing CSR 0xf97
	csrr x18, 0xf97	// Read CSR
	li x19, -1
	csrrw x28, 0xf97, x19	// Write all 1s to CSR
	csrrw x28, 0xf97, x0	// Write all 0s to CSR
	csrrs x28, 0xf97, x19	// Set all CSR bits
	csrrc x28, 0xf97, x19	// Clear all CSR bits
	csrrw x28, 0xf97, x18	// Restore CSR

// Testing CSR 0xf98
	csrr x21, 0xf98	// Read CSR
	li x10, -1
	csrrw x6, 0xf98, x10	// Write all 1s to CSR
	csrrw x6, 0xf98, x0	// Write all 0s to CSR
	csrrs x6, 0xf98, x10	// Set all CSR bits
	csrrc x6, 0xf98, x10	// Clear all CSR bits
	csrrw x6, 0xf98, x21	// Restore CSR

// Testing CSR 0xf99
	csrr x21, 0xf99	// Read CSR
	li x1, -1
	csrrw x23, 0xf99, x1	// Write all 1s to CSR
	csrrw x23, 0xf99, x0	// Write all 0s to CSR
	csrrs x23, 0xf99, x1	// Set all CSR bits
	csrrc x23, 0xf99, x1	// Clear all CSR bits
	csrrw x23, 0xf99, x21	// Restore CSR

// Testing CSR 0xf9a
	csrr x2, 0xf9a	// Read CSR
	li x24, -1
	csrrw x27, 0xf9a, x24	// Write all 1s to CSR
	csrrw x27, 0xf9a, x0	// Write all 0s to CSR
	csrrs x27, 0xf9a, x24	// Set all CSR bits
	csrrc x27, 0xf9a, x24	// Clear all CSR bits
	csrrw x27, 0xf9a, x2	// Restore CSR

// Testing CSR 0xf9b
	csrr x20, 0xf9b	// Read CSR
	li x30, -1
	csrrw x13, 0xf9b, x30	// Write all 1s to CSR
	csrrw x13, 0xf9b, x0	// Write all 0s to CSR
	csrrs x13, 0xf9b, x30	// Set all CSR bits
	csrrc x13, 0xf9b, x30	// Clear all CSR bits
	csrrw x13, 0xf9b, x20	// Restore CSR

// Testing CSR 0xf9c
	csrr x14, 0xf9c	// Read CSR
	li x26, -1
	csrrw x11, 0xf9c, x26	// Write all 1s to CSR
	csrrw x11, 0xf9c, x0	// Write all 0s to CSR
	csrrs x11, 0xf9c, x26	// Set all CSR bits
	csrrc x11, 0xf9c, x26	// Clear all CSR bits
	csrrw x11, 0xf9c, x14	// Restore CSR

// Testing CSR 0xf9d
	csrr x24, 0xf9d	// Read CSR
	li x9, -1
	csrrw x25, 0xf9d, x9	// Write all 1s to CSR
	csrrw x25, 0xf9d, x0	// Write all 0s to CSR
	csrrs x25, 0xf9d, x9	// Set all CSR bits
	csrrc x25, 0xf9d, x9	// Clear all CSR bits
	csrrw x25, 0xf9d, x24	// Restore CSR

// Testing CSR 0xf9e
	csrr x21, 0xf9e	// Read CSR
	li x22, -1
	csrrw x15, 0xf9e, x22	// Write all 1s to CSR
	csrrw x15, 0xf9e, x0	// Write all 0s to CSR
	csrrs x15, 0xf9e, x22	// Set all CSR bits
	csrrc x15, 0xf9e, x22	// Clear all CSR bits
	csrrw x15, 0xf9e, x21	// Restore CSR

// Testing CSR 0xf9f
	csrr x12, 0xf9f	// Read CSR
	li x19, -1
	csrrw x4, 0xf9f, x19	// Write all 1s to CSR
	csrrw x4, 0xf9f, x0	// Write all 0s to CSR
	csrrs x4, 0xf9f, x19	// Set all CSR bits
	csrrc x4, 0xf9f, x19	// Clear all CSR bits
	csrrw x4, 0xf9f, x12	// Restore CSR

// Testing CSR 0xfa0
	csrr x11, 0xfa0	// Read CSR
	li x13, -1
	csrrw x7, 0xfa0, x13	// Write all 1s to CSR
	csrrw x7, 0xfa0, x0	// Write all 0s to CSR
	csrrs x7, 0xfa0, x13	// Set all CSR bits
	csrrc x7, 0xfa0, x13	// Clear all CSR bits
	csrrw x7, 0xfa0, x11	// Restore CSR

// Testing CSR 0xfa1
	csrr x7, 0xfa1	// Read CSR
	li x26, -1
	csrrw x25, 0xfa1, x26	// Write all 1s to CSR
	csrrw x25, 0xfa1, x0	// Write all 0s to CSR
	csrrs x25, 0xfa1, x26	// Set all CSR bits
	csrrc x25, 0xfa1, x26	// Clear all CSR bits
	csrrw x25, 0xfa1, x7	// Restore CSR

// Testing CSR 0xfa2
	csrr x12, 0xfa2	// Read CSR
	li x23, -1
	csrrw x25, 0xfa2, x23	// Write all 1s to CSR
	csrrw x25, 0xfa2, x0	// Write all 0s to CSR
	csrrs x25, 0xfa2, x23	// Set all CSR bits
	csrrc x25, 0xfa2, x23	// Clear all CSR bits
	csrrw x25, 0xfa2, x12	// Restore CSR

// Testing CSR 0xfa3
	csrr x1, 0xfa3	// Read CSR
	li x28, -1
	csrrw x22, 0xfa3, x28	// Write all 1s to CSR
	csrrw x22, 0xfa3, x0	// Write all 0s to CSR
	csrrs x22, 0xfa3, x28	// Set all CSR bits
	csrrc x22, 0xfa3, x28	// Clear all CSR bits
	csrrw x22, 0xfa3, x1	// Restore CSR

// Testing CSR 0xfa4
	csrr x19, 0xfa4	// Read CSR
	li x12, -1
	csrrw x17, 0xfa4, x12	// Write all 1s to CSR
	csrrw x17, 0xfa4, x0	// Write all 0s to CSR
	csrrs x17, 0xfa4, x12	// Set all CSR bits
	csrrc x17, 0xfa4, x12	// Clear all CSR bits
	csrrw x17, 0xfa4, x19	// Restore CSR

// Testing CSR 0xfa5
	csrr x7, 0xfa5	// Read CSR
	li x30, -1
	csrrw x20, 0xfa5, x30	// Write all 1s to CSR
	csrrw x20, 0xfa5, x0	// Write all 0s to CSR
	csrrs x20, 0xfa5, x30	// Set all CSR bits
	csrrc x20, 0xfa5, x30	// Clear all CSR bits
	csrrw x20, 0xfa5, x7	// Restore CSR

// Testing CSR 0xfa6
	csrr x8, 0xfa6	// Read CSR
	li x12, -1
	csrrw x5, 0xfa6, x12	// Write all 1s to CSR
	csrrw x5, 0xfa6, x0	// Write all 0s to CSR
	csrrs x5, 0xfa6, x12	// Set all CSR bits
	csrrc x5, 0xfa6, x12	// Clear all CSR bits
	csrrw x5, 0xfa6, x8	// Restore CSR

// Testing CSR 0xfa7
	csrr x23, 0xfa7	// Read CSR
	li x18, -1
	csrrw x31, 0xfa7, x18	// Write all 1s to CSR
	csrrw x31, 0xfa7, x0	// Write all 0s to CSR
	csrrs x31, 0xfa7, x18	// Set all CSR bits
	csrrc x31, 0xfa7, x18	// Clear all CSR bits
	csrrw x31, 0xfa7, x23	// Restore CSR

// Testing CSR 0xfa8
	csrr x13, 0xfa8	// Read CSR
	li x3, -1
	csrrw x30, 0xfa8, x3	// Write all 1s to CSR
	csrrw x30, 0xfa8, x0	// Write all 0s to CSR
	csrrs x30, 0xfa8, x3	// Set all CSR bits
	csrrc x30, 0xfa8, x3	// Clear all CSR bits
	csrrw x30, 0xfa8, x13	// Restore CSR

// Testing CSR 0xfa9
	csrr x13, 0xfa9	// Read CSR
	li x16, -1
	csrrw x29, 0xfa9, x16	// Write all 1s to CSR
	csrrw x29, 0xfa9, x0	// Write all 0s to CSR
	csrrs x29, 0xfa9, x16	// Set all CSR bits
	csrrc x29, 0xfa9, x16	// Clear all CSR bits
	csrrw x29, 0xfa9, x13	// Restore CSR

// Testing CSR 0xfaa
	csrr x7, 0xfaa	// Read CSR
	li x13, -1
	csrrw x28, 0xfaa, x13	// Write all 1s to CSR
	csrrw x28, 0xfaa, x0	// Write all 0s to CSR
	csrrs x28, 0xfaa, x13	// Set all CSR bits
	csrrc x28, 0xfaa, x13	// Clear all CSR bits
	csrrw x28, 0xfaa, x7	// Restore CSR

// Testing CSR 0xfab
	csrr x29, 0xfab	// Read CSR
	li x28, -1
	csrrw x16, 0xfab, x28	// Write all 1s to CSR
	csrrw x16, 0xfab, x0	// Write all 0s to CSR
	csrrs x16, 0xfab, x28	// Set all CSR bits
	csrrc x16, 0xfab, x28	// Clear all CSR bits
	csrrw x16, 0xfab, x29	// Restore CSR

// Testing CSR 0xfac
	csrr x28, 0xfac	// Read CSR
	li x23, -1
	csrrw x14, 0xfac, x23	// Write all 1s to CSR
	csrrw x14, 0xfac, x0	// Write all 0s to CSR
	csrrs x14, 0xfac, x23	// Set all CSR bits
	csrrc x14, 0xfac, x23	// Clear all CSR bits
	csrrw x14, 0xfac, x28	// Restore CSR

// Testing CSR 0xfad
	csrr x20, 0xfad	// Read CSR
	li x25, -1
	csrrw x28, 0xfad, x25	// Write all 1s to CSR
	csrrw x28, 0xfad, x0	// Write all 0s to CSR
	csrrs x28, 0xfad, x25	// Set all CSR bits
	csrrc x28, 0xfad, x25	// Clear all CSR bits
	csrrw x28, 0xfad, x20	// Restore CSR

// Testing CSR 0xfae
	csrr x9, 0xfae	// Read CSR
	li x2, -1
	csrrw x29, 0xfae, x2	// Write all 1s to CSR
	csrrw x29, 0xfae, x0	// Write all 0s to CSR
	csrrs x29, 0xfae, x2	// Set all CSR bits
	csrrc x29, 0xfae, x2	// Clear all CSR bits
	csrrw x29, 0xfae, x9	// Restore CSR

// Testing CSR 0xfaf
	csrr x23, 0xfaf	// Read CSR
	li x6, -1
	csrrw x30, 0xfaf, x6	// Write all 1s to CSR
	csrrw x30, 0xfaf, x0	// Write all 0s to CSR
	csrrs x30, 0xfaf, x6	// Set all CSR bits
	csrrc x30, 0xfaf, x6	// Clear all CSR bits
	csrrw x30, 0xfaf, x23	// Restore CSR

// Testing CSR 0xfb0
	csrr x19, 0xfb0	// Read CSR
	li x27, -1
	csrrw x14, 0xfb0, x27	// Write all 1s to CSR
	csrrw x14, 0xfb0, x0	// Write all 0s to CSR
	csrrs x14, 0xfb0, x27	// Set all CSR bits
	csrrc x14, 0xfb0, x27	// Clear all CSR bits
	csrrw x14, 0xfb0, x19	// Restore CSR

// Testing CSR 0xfb1
	csrr x28, 0xfb1	// Read CSR
	li x25, -1
	csrrw x4, 0xfb1, x25	// Write all 1s to CSR
	csrrw x4, 0xfb1, x0	// Write all 0s to CSR
	csrrs x4, 0xfb1, x25	// Set all CSR bits
	csrrc x4, 0xfb1, x25	// Clear all CSR bits
	csrrw x4, 0xfb1, x28	// Restore CSR

// Testing CSR 0xfb2
	csrr x19, 0xfb2	// Read CSR
	li x24, -1
	csrrw x14, 0xfb2, x24	// Write all 1s to CSR
	csrrw x14, 0xfb2, x0	// Write all 0s to CSR
	csrrs x14, 0xfb2, x24	// Set all CSR bits
	csrrc x14, 0xfb2, x24	// Clear all CSR bits
	csrrw x14, 0xfb2, x19	// Restore CSR

// Testing CSR 0xfb3
	csrr x30, 0xfb3	// Read CSR
	li x19, -1
	csrrw x8, 0xfb3, x19	// Write all 1s to CSR
	csrrw x8, 0xfb3, x0	// Write all 0s to CSR
	csrrs x8, 0xfb3, x19	// Set all CSR bits
	csrrc x8, 0xfb3, x19	// Clear all CSR bits
	csrrw x8, 0xfb3, x30	// Restore CSR

// Testing CSR 0xfb4
	csrr x6, 0xfb4	// Read CSR
	li x13, -1
	csrrw x12, 0xfb4, x13	// Write all 1s to CSR
	csrrw x12, 0xfb4, x0	// Write all 0s to CSR
	csrrs x12, 0xfb4, x13	// Set all CSR bits
	csrrc x12, 0xfb4, x13	// Clear all CSR bits
	csrrw x12, 0xfb4, x6	// Restore CSR

// Testing CSR 0xfb5
	csrr x16, 0xfb5	// Read CSR
	li x23, -1
	csrrw x30, 0xfb5, x23	// Write all 1s to CSR
	csrrw x30, 0xfb5, x0	// Write all 0s to CSR
	csrrs x30, 0xfb5, x23	// Set all CSR bits
	csrrc x30, 0xfb5, x23	// Clear all CSR bits
	csrrw x30, 0xfb5, x16	// Restore CSR

// Testing CSR 0xfb6
	csrr x20, 0xfb6	// Read CSR
	li x1, -1
	csrrw x6, 0xfb6, x1	// Write all 1s to CSR
	csrrw x6, 0xfb6, x0	// Write all 0s to CSR
	csrrs x6, 0xfb6, x1	// Set all CSR bits
	csrrc x6, 0xfb6, x1	// Clear all CSR bits
	csrrw x6, 0xfb6, x20	// Restore CSR

// Testing CSR 0xfb7
	csrr x16, 0xfb7	// Read CSR
	li x18, -1
	csrrw x12, 0xfb7, x18	// Write all 1s to CSR
	csrrw x12, 0xfb7, x0	// Write all 0s to CSR
	csrrs x12, 0xfb7, x18	// Set all CSR bits
	csrrc x12, 0xfb7, x18	// Clear all CSR bits
	csrrw x12, 0xfb7, x16	// Restore CSR

// Testing CSR 0xfb8
	csrr x3, 0xfb8	// Read CSR
	li x11, -1
	csrrw x25, 0xfb8, x11	// Write all 1s to CSR
	csrrw x25, 0xfb8, x0	// Write all 0s to CSR
	csrrs x25, 0xfb8, x11	// Set all CSR bits
	csrrc x25, 0xfb8, x11	// Clear all CSR bits
	csrrw x25, 0xfb8, x3	// Restore CSR

// Testing CSR 0xfb9
	csrr x8, 0xfb9	// Read CSR
	li x2, -1
	csrrw x20, 0xfb9, x2	// Write all 1s to CSR
	csrrw x20, 0xfb9, x0	// Write all 0s to CSR
	csrrs x20, 0xfb9, x2	// Set all CSR bits
	csrrc x20, 0xfb9, x2	// Clear all CSR bits
	csrrw x20, 0xfb9, x8	// Restore CSR

// Testing CSR 0xfba
	csrr x27, 0xfba	// Read CSR
	li x22, -1
	csrrw x10, 0xfba, x22	// Write all 1s to CSR
	csrrw x10, 0xfba, x0	// Write all 0s to CSR
	csrrs x10, 0xfba, x22	// Set all CSR bits
	csrrc x10, 0xfba, x22	// Clear all CSR bits
	csrrw x10, 0xfba, x27	// Restore CSR

// Testing CSR 0xfbb
	csrr x23, 0xfbb	// Read CSR
	li x2, -1
	csrrw x30, 0xfbb, x2	// Write all 1s to CSR
	csrrw x30, 0xfbb, x0	// Write all 0s to CSR
	csrrs x30, 0xfbb, x2	// Set all CSR bits
	csrrc x30, 0xfbb, x2	// Clear all CSR bits
	csrrw x30, 0xfbb, x23	// Restore CSR

// Testing CSR 0xfbc
	csrr x14, 0xfbc	// Read CSR
	li x9, -1
	csrrw x19, 0xfbc, x9	// Write all 1s to CSR
	csrrw x19, 0xfbc, x0	// Write all 0s to CSR
	csrrs x19, 0xfbc, x9	// Set all CSR bits
	csrrc x19, 0xfbc, x9	// Clear all CSR bits
	csrrw x19, 0xfbc, x14	// Restore CSR

// Testing CSR 0xfbd
	csrr x12, 0xfbd	// Read CSR
	li x18, -1
	csrrw x3, 0xfbd, x18	// Write all 1s to CSR
	csrrw x3, 0xfbd, x0	// Write all 0s to CSR
	csrrs x3, 0xfbd, x18	// Set all CSR bits
	csrrc x3, 0xfbd, x18	// Clear all CSR bits
	csrrw x3, 0xfbd, x12	// Restore CSR

// Testing CSR 0xfbe
	csrr x25, 0xfbe	// Read CSR
	li x11, -1
	csrrw x3, 0xfbe, x11	// Write all 1s to CSR
	csrrw x3, 0xfbe, x0	// Write all 0s to CSR
	csrrs x3, 0xfbe, x11	// Set all CSR bits
	csrrc x3, 0xfbe, x11	// Clear all CSR bits
	csrrw x3, 0xfbe, x25	// Restore CSR

// Testing CSR 0xfbf
	csrr x18, 0xfbf	// Read CSR
	li x26, -1
	csrrw x17, 0xfbf, x26	// Write all 1s to CSR
	csrrw x17, 0xfbf, x0	// Write all 0s to CSR
	csrrs x17, 0xfbf, x26	// Set all CSR bits
	csrrc x17, 0xfbf, x26	// Clear all CSR bits
	csrrw x17, 0xfbf, x18	// Restore CSR

// Testing CSR 0xfc0
	csrr x28, 0xfc0	// Read CSR
	li x2, -1
	csrrw x17, 0xfc0, x2	// Write all 1s to CSR
	csrrw x17, 0xfc0, x0	// Write all 0s to CSR
	csrrs x17, 0xfc0, x2	// Set all CSR bits
	csrrc x17, 0xfc0, x2	// Clear all CSR bits
	csrrw x17, 0xfc0, x28	// Restore CSR

// Testing CSR 0xfc1
	csrr x28, 0xfc1	// Read CSR
	li x13, -1
	csrrw x3, 0xfc1, x13	// Write all 1s to CSR
	csrrw x3, 0xfc1, x0	// Write all 0s to CSR
	csrrs x3, 0xfc1, x13	// Set all CSR bits
	csrrc x3, 0xfc1, x13	// Clear all CSR bits
	csrrw x3, 0xfc1, x28	// Restore CSR

// Testing CSR 0xfc2
	csrr x13, 0xfc2	// Read CSR
	li x23, -1
	csrrw x24, 0xfc2, x23	// Write all 1s to CSR
	csrrw x24, 0xfc2, x0	// Write all 0s to CSR
	csrrs x24, 0xfc2, x23	// Set all CSR bits
	csrrc x24, 0xfc2, x23	// Clear all CSR bits
	csrrw x24, 0xfc2, x13	// Restore CSR

// Testing CSR 0xfc3
	csrr x15, 0xfc3	// Read CSR
	li x17, -1
	csrrw x24, 0xfc3, x17	// Write all 1s to CSR
	csrrw x24, 0xfc3, x0	// Write all 0s to CSR
	csrrs x24, 0xfc3, x17	// Set all CSR bits
	csrrc x24, 0xfc3, x17	// Clear all CSR bits
	csrrw x24, 0xfc3, x15	// Restore CSR

// Testing CSR 0xfc4
	csrr x7, 0xfc4	// Read CSR
	li x31, -1
	csrrw x27, 0xfc4, x31	// Write all 1s to CSR
	csrrw x27, 0xfc4, x0	// Write all 0s to CSR
	csrrs x27, 0xfc4, x31	// Set all CSR bits
	csrrc x27, 0xfc4, x31	// Clear all CSR bits
	csrrw x27, 0xfc4, x7	// Restore CSR

// Testing CSR 0xfc5
	csrr x22, 0xfc5	// Read CSR
	li x12, -1
	csrrw x1, 0xfc5, x12	// Write all 1s to CSR
	csrrw x1, 0xfc5, x0	// Write all 0s to CSR
	csrrs x1, 0xfc5, x12	// Set all CSR bits
	csrrc x1, 0xfc5, x12	// Clear all CSR bits
	csrrw x1, 0xfc5, x22	// Restore CSR

// Testing CSR 0xfc6
	csrr x17, 0xfc6	// Read CSR
	li x21, -1
	csrrw x13, 0xfc6, x21	// Write all 1s to CSR
	csrrw x13, 0xfc6, x0	// Write all 0s to CSR
	csrrs x13, 0xfc6, x21	// Set all CSR bits
	csrrc x13, 0xfc6, x21	// Clear all CSR bits
	csrrw x13, 0xfc6, x17	// Restore CSR

// Testing CSR 0xfc7
	csrr x17, 0xfc7	// Read CSR
	li x24, -1
	csrrw x23, 0xfc7, x24	// Write all 1s to CSR
	csrrw x23, 0xfc7, x0	// Write all 0s to CSR
	csrrs x23, 0xfc7, x24	// Set all CSR bits
	csrrc x23, 0xfc7, x24	// Clear all CSR bits
	csrrw x23, 0xfc7, x17	// Restore CSR

// Testing CSR 0xfc8
	csrr x15, 0xfc8	// Read CSR
	li x17, -1
	csrrw x20, 0xfc8, x17	// Write all 1s to CSR
	csrrw x20, 0xfc8, x0	// Write all 0s to CSR
	csrrs x20, 0xfc8, x17	// Set all CSR bits
	csrrc x20, 0xfc8, x17	// Clear all CSR bits
	csrrw x20, 0xfc8, x15	// Restore CSR

// Testing CSR 0xfc9
	csrr x19, 0xfc9	// Read CSR
	li x13, -1
	csrrw x7, 0xfc9, x13	// Write all 1s to CSR
	csrrw x7, 0xfc9, x0	// Write all 0s to CSR
	csrrs x7, 0xfc9, x13	// Set all CSR bits
	csrrc x7, 0xfc9, x13	// Clear all CSR bits
	csrrw x7, 0xfc9, x19	// Restore CSR

// Testing CSR 0xfca
	csrr x2, 0xfca	// Read CSR
	li x23, -1
	csrrw x8, 0xfca, x23	// Write all 1s to CSR
	csrrw x8, 0xfca, x0	// Write all 0s to CSR
	csrrs x8, 0xfca, x23	// Set all CSR bits
	csrrc x8, 0xfca, x23	// Clear all CSR bits
	csrrw x8, 0xfca, x2	// Restore CSR

// Testing CSR 0xfcb
	csrr x2, 0xfcb	// Read CSR
	li x10, -1
	csrrw x17, 0xfcb, x10	// Write all 1s to CSR
	csrrw x17, 0xfcb, x0	// Write all 0s to CSR
	csrrs x17, 0xfcb, x10	// Set all CSR bits
	csrrc x17, 0xfcb, x10	// Clear all CSR bits
	csrrw x17, 0xfcb, x2	// Restore CSR

// Testing CSR 0xfcc
	csrr x13, 0xfcc	// Read CSR
	li x15, -1
	csrrw x11, 0xfcc, x15	// Write all 1s to CSR
	csrrw x11, 0xfcc, x0	// Write all 0s to CSR
	csrrs x11, 0xfcc, x15	// Set all CSR bits
	csrrc x11, 0xfcc, x15	// Clear all CSR bits
	csrrw x11, 0xfcc, x13	// Restore CSR

// Testing CSR 0xfcd
	csrr x14, 0xfcd	// Read CSR
	li x13, -1
	csrrw x4, 0xfcd, x13	// Write all 1s to CSR
	csrrw x4, 0xfcd, x0	// Write all 0s to CSR
	csrrs x4, 0xfcd, x13	// Set all CSR bits
	csrrc x4, 0xfcd, x13	// Clear all CSR bits
	csrrw x4, 0xfcd, x14	// Restore CSR

// Testing CSR 0xfce
	csrr x28, 0xfce	// Read CSR
	li x14, -1
	csrrw x15, 0xfce, x14	// Write all 1s to CSR
	csrrw x15, 0xfce, x0	// Write all 0s to CSR
	csrrs x15, 0xfce, x14	// Set all CSR bits
	csrrc x15, 0xfce, x14	// Clear all CSR bits
	csrrw x15, 0xfce, x28	// Restore CSR

// Testing CSR 0xfcf
	csrr x10, 0xfcf	// Read CSR
	li x16, -1
	csrrw x27, 0xfcf, x16	// Write all 1s to CSR
	csrrw x27, 0xfcf, x0	// Write all 0s to CSR
	csrrs x27, 0xfcf, x16	// Set all CSR bits
	csrrc x27, 0xfcf, x16	// Clear all CSR bits
	csrrw x27, 0xfcf, x10	// Restore CSR

// Testing CSR 0xfd0
	csrr x24, 0xfd0	// Read CSR
	li x26, -1
	csrrw x7, 0xfd0, x26	// Write all 1s to CSR
	csrrw x7, 0xfd0, x0	// Write all 0s to CSR
	csrrs x7, 0xfd0, x26	// Set all CSR bits
	csrrc x7, 0xfd0, x26	// Clear all CSR bits
	csrrw x7, 0xfd0, x24	// Restore CSR

// Testing CSR 0xfd1
	csrr x1, 0xfd1	// Read CSR
	li x19, -1
	csrrw x26, 0xfd1, x19	// Write all 1s to CSR
	csrrw x26, 0xfd1, x0	// Write all 0s to CSR
	csrrs x26, 0xfd1, x19	// Set all CSR bits
	csrrc x26, 0xfd1, x19	// Clear all CSR bits
	csrrw x26, 0xfd1, x1	// Restore CSR

// Testing CSR 0xfd2
	csrr x26, 0xfd2	// Read CSR
	li x9, -1
	csrrw x13, 0xfd2, x9	// Write all 1s to CSR
	csrrw x13, 0xfd2, x0	// Write all 0s to CSR
	csrrs x13, 0xfd2, x9	// Set all CSR bits
	csrrc x13, 0xfd2, x9	// Clear all CSR bits
	csrrw x13, 0xfd2, x26	// Restore CSR

// Testing CSR 0xfd3
	csrr x28, 0xfd3	// Read CSR
	li x18, -1
	csrrw x7, 0xfd3, x18	// Write all 1s to CSR
	csrrw x7, 0xfd3, x0	// Write all 0s to CSR
	csrrs x7, 0xfd3, x18	// Set all CSR bits
	csrrc x7, 0xfd3, x18	// Clear all CSR bits
	csrrw x7, 0xfd3, x28	// Restore CSR

// Testing CSR 0xfd4
	csrr x21, 0xfd4	// Read CSR
	li x14, -1
	csrrw x3, 0xfd4, x14	// Write all 1s to CSR
	csrrw x3, 0xfd4, x0	// Write all 0s to CSR
	csrrs x3, 0xfd4, x14	// Set all CSR bits
	csrrc x3, 0xfd4, x14	// Clear all CSR bits
	csrrw x3, 0xfd4, x21	// Restore CSR

// Testing CSR 0xfd5
	csrr x11, 0xfd5	// Read CSR
	li x26, -1
	csrrw x13, 0xfd5, x26	// Write all 1s to CSR
	csrrw x13, 0xfd5, x0	// Write all 0s to CSR
	csrrs x13, 0xfd5, x26	// Set all CSR bits
	csrrc x13, 0xfd5, x26	// Clear all CSR bits
	csrrw x13, 0xfd5, x11	// Restore CSR

// Testing CSR 0xfd6
	csrr x29, 0xfd6	// Read CSR
	li x16, -1
	csrrw x18, 0xfd6, x16	// Write all 1s to CSR
	csrrw x18, 0xfd6, x0	// Write all 0s to CSR
	csrrs x18, 0xfd6, x16	// Set all CSR bits
	csrrc x18, 0xfd6, x16	// Clear all CSR bits
	csrrw x18, 0xfd6, x29	// Restore CSR

// Testing CSR 0xfd7
	csrr x1, 0xfd7	// Read CSR
	li x13, -1
	csrrw x15, 0xfd7, x13	// Write all 1s to CSR
	csrrw x15, 0xfd7, x0	// Write all 0s to CSR
	csrrs x15, 0xfd7, x13	// Set all CSR bits
	csrrc x15, 0xfd7, x13	// Clear all CSR bits
	csrrw x15, 0xfd7, x1	// Restore CSR

// Testing CSR 0xfd8
	csrr x26, 0xfd8	// Read CSR
	li x8, -1
	csrrw x31, 0xfd8, x8	// Write all 1s to CSR
	csrrw x31, 0xfd8, x0	// Write all 0s to CSR
	csrrs x31, 0xfd8, x8	// Set all CSR bits
	csrrc x31, 0xfd8, x8	// Clear all CSR bits
	csrrw x31, 0xfd8, x26	// Restore CSR

// Testing CSR 0xfd9
	csrr x1, 0xfd9	// Read CSR
	li x22, -1
	csrrw x6, 0xfd9, x22	// Write all 1s to CSR
	csrrw x6, 0xfd9, x0	// Write all 0s to CSR
	csrrs x6, 0xfd9, x22	// Set all CSR bits
	csrrc x6, 0xfd9, x22	// Clear all CSR bits
	csrrw x6, 0xfd9, x1	// Restore CSR

// Testing CSR 0xfda
	csrr x18, 0xfda	// Read CSR
	li x17, -1
	csrrw x20, 0xfda, x17	// Write all 1s to CSR
	csrrw x20, 0xfda, x0	// Write all 0s to CSR
	csrrs x20, 0xfda, x17	// Set all CSR bits
	csrrc x20, 0xfda, x17	// Clear all CSR bits
	csrrw x20, 0xfda, x18	// Restore CSR

// Testing CSR 0xfdb
	csrr x25, 0xfdb	// Read CSR
	li x18, -1
	csrrw x20, 0xfdb, x18	// Write all 1s to CSR
	csrrw x20, 0xfdb, x0	// Write all 0s to CSR
	csrrs x20, 0xfdb, x18	// Set all CSR bits
	csrrc x20, 0xfdb, x18	// Clear all CSR bits
	csrrw x20, 0xfdb, x25	// Restore CSR

// Testing CSR 0xfdc
	csrr x26, 0xfdc	// Read CSR
	li x8, -1
	csrrw x17, 0xfdc, x8	// Write all 1s to CSR
	csrrw x17, 0xfdc, x0	// Write all 0s to CSR
	csrrs x17, 0xfdc, x8	// Set all CSR bits
	csrrc x17, 0xfdc, x8	// Clear all CSR bits
	csrrw x17, 0xfdc, x26	// Restore CSR

// Testing CSR 0xfdd
	csrr x7, 0xfdd	// Read CSR
	li x16, -1
	csrrw x10, 0xfdd, x16	// Write all 1s to CSR
	csrrw x10, 0xfdd, x0	// Write all 0s to CSR
	csrrs x10, 0xfdd, x16	// Set all CSR bits
	csrrc x10, 0xfdd, x16	// Clear all CSR bits
	csrrw x10, 0xfdd, x7	// Restore CSR

// Testing CSR 0xfde
	csrr x17, 0xfde	// Read CSR
	li x21, -1
	csrrw x26, 0xfde, x21	// Write all 1s to CSR
	csrrw x26, 0xfde, x0	// Write all 0s to CSR
	csrrs x26, 0xfde, x21	// Set all CSR bits
	csrrc x26, 0xfde, x21	// Clear all CSR bits
	csrrw x26, 0xfde, x17	// Restore CSR

// Testing CSR 0xfdf
	csrr x16, 0xfdf	// Read CSR
	li x8, -1
	csrrw x4, 0xfdf, x8	// Write all 1s to CSR
	csrrw x4, 0xfdf, x0	// Write all 0s to CSR
	csrrs x4, 0xfdf, x8	// Set all CSR bits
	csrrc x4, 0xfdf, x8	// Clear all CSR bits
	csrrw x4, 0xfdf, x16	// Restore CSR

// Testing CSR 0xfe0
	csrr x7, 0xfe0	// Read CSR
	li x25, -1
	csrrw x17, 0xfe0, x25	// Write all 1s to CSR
	csrrw x17, 0xfe0, x0	// Write all 0s to CSR
	csrrs x17, 0xfe0, x25	// Set all CSR bits
	csrrc x17, 0xfe0, x25	// Clear all CSR bits
	csrrw x17, 0xfe0, x7	// Restore CSR

// Testing CSR 0xfe1
	csrr x24, 0xfe1	// Read CSR
	li x18, -1
	csrrw x8, 0xfe1, x18	// Write all 1s to CSR
	csrrw x8, 0xfe1, x0	// Write all 0s to CSR
	csrrs x8, 0xfe1, x18	// Set all CSR bits
	csrrc x8, 0xfe1, x18	// Clear all CSR bits
	csrrw x8, 0xfe1, x24	// Restore CSR

// Testing CSR 0xfe2
	csrr x24, 0xfe2	// Read CSR
	li x12, -1
	csrrw x7, 0xfe2, x12	// Write all 1s to CSR
	csrrw x7, 0xfe2, x0	// Write all 0s to CSR
	csrrs x7, 0xfe2, x12	// Set all CSR bits
	csrrc x7, 0xfe2, x12	// Clear all CSR bits
	csrrw x7, 0xfe2, x24	// Restore CSR

// Testing CSR 0xfe3
	csrr x28, 0xfe3	// Read CSR
	li x17, -1
	csrrw x15, 0xfe3, x17	// Write all 1s to CSR
	csrrw x15, 0xfe3, x0	// Write all 0s to CSR
	csrrs x15, 0xfe3, x17	// Set all CSR bits
	csrrc x15, 0xfe3, x17	// Clear all CSR bits
	csrrw x15, 0xfe3, x28	// Restore CSR

// Testing CSR 0xfe4
	csrr x18, 0xfe4	// Read CSR
	li x12, -1
	csrrw x31, 0xfe4, x12	// Write all 1s to CSR
	csrrw x31, 0xfe4, x0	// Write all 0s to CSR
	csrrs x31, 0xfe4, x12	// Set all CSR bits
	csrrc x31, 0xfe4, x12	// Clear all CSR bits
	csrrw x31, 0xfe4, x18	// Restore CSR

// Testing CSR 0xfe5
	csrr x10, 0xfe5	// Read CSR
	li x21, -1
	csrrw x22, 0xfe5, x21	// Write all 1s to CSR
	csrrw x22, 0xfe5, x0	// Write all 0s to CSR
	csrrs x22, 0xfe5, x21	// Set all CSR bits
	csrrc x22, 0xfe5, x21	// Clear all CSR bits
	csrrw x22, 0xfe5, x10	// Restore CSR

// Testing CSR 0xfe6
	csrr x5, 0xfe6	// Read CSR
	li x3, -1
	csrrw x30, 0xfe6, x3	// Write all 1s to CSR
	csrrw x30, 0xfe6, x0	// Write all 0s to CSR
	csrrs x30, 0xfe6, x3	// Set all CSR bits
	csrrc x30, 0xfe6, x3	// Clear all CSR bits
	csrrw x30, 0xfe6, x5	// Restore CSR

// Testing CSR 0xfe7
	csrr x10, 0xfe7	// Read CSR
	li x29, -1
	csrrw x18, 0xfe7, x29	// Write all 1s to CSR
	csrrw x18, 0xfe7, x0	// Write all 0s to CSR
	csrrs x18, 0xfe7, x29	// Set all CSR bits
	csrrc x18, 0xfe7, x29	// Clear all CSR bits
	csrrw x18, 0xfe7, x10	// Restore CSR

// Testing CSR 0xfe8
	csrr x9, 0xfe8	// Read CSR
	li x10, -1
	csrrw x13, 0xfe8, x10	// Write all 1s to CSR
	csrrw x13, 0xfe8, x0	// Write all 0s to CSR
	csrrs x13, 0xfe8, x10	// Set all CSR bits
	csrrc x13, 0xfe8, x10	// Clear all CSR bits
	csrrw x13, 0xfe8, x9	// Restore CSR

// Testing CSR 0xfe9
	csrr x4, 0xfe9	// Read CSR
	li x16, -1
	csrrw x27, 0xfe9, x16	// Write all 1s to CSR
	csrrw x27, 0xfe9, x0	// Write all 0s to CSR
	csrrs x27, 0xfe9, x16	// Set all CSR bits
	csrrc x27, 0xfe9, x16	// Clear all CSR bits
	csrrw x27, 0xfe9, x4	// Restore CSR

// Testing CSR 0xfea
	csrr x26, 0xfea	// Read CSR
	li x15, -1
	csrrw x20, 0xfea, x15	// Write all 1s to CSR
	csrrw x20, 0xfea, x0	// Write all 0s to CSR
	csrrs x20, 0xfea, x15	// Set all CSR bits
	csrrc x20, 0xfea, x15	// Clear all CSR bits
	csrrw x20, 0xfea, x26	// Restore CSR

// Testing CSR 0xfeb
	csrr x23, 0xfeb	// Read CSR
	li x14, -1
	csrrw x29, 0xfeb, x14	// Write all 1s to CSR
	csrrw x29, 0xfeb, x0	// Write all 0s to CSR
	csrrs x29, 0xfeb, x14	// Set all CSR bits
	csrrc x29, 0xfeb, x14	// Clear all CSR bits
	csrrw x29, 0xfeb, x23	// Restore CSR

// Testing CSR 0xfec
	csrr x12, 0xfec	// Read CSR
	li x19, -1
	csrrw x17, 0xfec, x19	// Write all 1s to CSR
	csrrw x17, 0xfec, x0	// Write all 0s to CSR
	csrrs x17, 0xfec, x19	// Set all CSR bits
	csrrc x17, 0xfec, x19	// Clear all CSR bits
	csrrw x17, 0xfec, x12	// Restore CSR

// Testing CSR 0xfed
	csrr x3, 0xfed	// Read CSR
	li x21, -1
	csrrw x25, 0xfed, x21	// Write all 1s to CSR
	csrrw x25, 0xfed, x0	// Write all 0s to CSR
	csrrs x25, 0xfed, x21	// Set all CSR bits
	csrrc x25, 0xfed, x21	// Clear all CSR bits
	csrrw x25, 0xfed, x3	// Restore CSR

// Testing CSR 0xfee
	csrr x26, 0xfee	// Read CSR
	li x20, -1
	csrrw x13, 0xfee, x20	// Write all 1s to CSR
	csrrw x13, 0xfee, x0	// Write all 0s to CSR
	csrrs x13, 0xfee, x20	// Set all CSR bits
	csrrc x13, 0xfee, x20	// Clear all CSR bits
	csrrw x13, 0xfee, x26	// Restore CSR

// Testing CSR 0xfef
	csrr x9, 0xfef	// Read CSR
	li x4, -1
	csrrw x29, 0xfef, x4	// Write all 1s to CSR
	csrrw x29, 0xfef, x0	// Write all 0s to CSR
	csrrs x29, 0xfef, x4	// Set all CSR bits
	csrrc x29, 0xfef, x4	// Clear all CSR bits
	csrrw x29, 0xfef, x9	// Restore CSR

// Testing CSR 0xff0
	csrr x9, 0xff0	// Read CSR
	li x2, -1
	csrrw x24, 0xff0, x2	// Write all 1s to CSR
	csrrw x24, 0xff0, x0	// Write all 0s to CSR
	csrrs x24, 0xff0, x2	// Set all CSR bits
	csrrc x24, 0xff0, x2	// Clear all CSR bits
	csrrw x24, 0xff0, x9	// Restore CSR

// Testing CSR 0xff1
	csrr x23, 0xff1	// Read CSR
	li x9, -1
	csrrw x24, 0xff1, x9	// Write all 1s to CSR
	csrrw x24, 0xff1, x0	// Write all 0s to CSR
	csrrs x24, 0xff1, x9	// Set all CSR bits
	csrrc x24, 0xff1, x9	// Clear all CSR bits
	csrrw x24, 0xff1, x23	// Restore CSR

// Testing CSR 0xff2
	csrr x30, 0xff2	// Read CSR
	li x26, -1
	csrrw x22, 0xff2, x26	// Write all 1s to CSR
	csrrw x22, 0xff2, x0	// Write all 0s to CSR
	csrrs x22, 0xff2, x26	// Set all CSR bits
	csrrc x22, 0xff2, x26	// Clear all CSR bits
	csrrw x22, 0xff2, x30	// Restore CSR

// Testing CSR 0xff3
	csrr x28, 0xff3	// Read CSR
	li x29, -1
	csrrw x17, 0xff3, x29	// Write all 1s to CSR
	csrrw x17, 0xff3, x0	// Write all 0s to CSR
	csrrs x17, 0xff3, x29	// Set all CSR bits
	csrrc x17, 0xff3, x29	// Clear all CSR bits
	csrrw x17, 0xff3, x28	// Restore CSR

// Testing CSR 0xff4
	csrr x4, 0xff4	// Read CSR
	li x27, -1
	csrrw x3, 0xff4, x27	// Write all 1s to CSR
	csrrw x3, 0xff4, x0	// Write all 0s to CSR
	csrrs x3, 0xff4, x27	// Set all CSR bits
	csrrc x3, 0xff4, x27	// Clear all CSR bits
	csrrw x3, 0xff4, x4	// Restore CSR

// Testing CSR 0xff5
	csrr x8, 0xff5	// Read CSR
	li x15, -1
	csrrw x5, 0xff5, x15	// Write all 1s to CSR
	csrrw x5, 0xff5, x0	// Write all 0s to CSR
	csrrs x5, 0xff5, x15	// Set all CSR bits
	csrrc x5, 0xff5, x15	// Clear all CSR bits
	csrrw x5, 0xff5, x8	// Restore CSR

// Testing CSR 0xff6
	csrr x25, 0xff6	// Read CSR
	li x13, -1
	csrrw x7, 0xff6, x13	// Write all 1s to CSR
	csrrw x7, 0xff6, x0	// Write all 0s to CSR
	csrrs x7, 0xff6, x13	// Set all CSR bits
	csrrc x7, 0xff6, x13	// Clear all CSR bits
	csrrw x7, 0xff6, x25	// Restore CSR

// Testing CSR 0xff7
	csrr x12, 0xff7	// Read CSR
	li x15, -1
	csrrw x9, 0xff7, x15	// Write all 1s to CSR
	csrrw x9, 0xff7, x0	// Write all 0s to CSR
	csrrs x9, 0xff7, x15	// Set all CSR bits
	csrrc x9, 0xff7, x15	// Clear all CSR bits
	csrrw x9, 0xff7, x12	// Restore CSR

// Testing CSR 0xff8
	csrr x12, 0xff8	// Read CSR
	li x25, -1
	csrrw x5, 0xff8, x25	// Write all 1s to CSR
	csrrw x5, 0xff8, x0	// Write all 0s to CSR
	csrrs x5, 0xff8, x25	// Set all CSR bits
	csrrc x5, 0xff8, x25	// Clear all CSR bits
	csrrw x5, 0xff8, x12	// Restore CSR

// Testing CSR 0xff9
	csrr x16, 0xff9	// Read CSR
	li x6, -1
	csrrw x30, 0xff9, x6	// Write all 1s to CSR
	csrrw x30, 0xff9, x0	// Write all 0s to CSR
	csrrs x30, 0xff9, x6	// Set all CSR bits
	csrrc x30, 0xff9, x6	// Clear all CSR bits
	csrrw x30, 0xff9, x16	// Restore CSR

// Testing CSR 0xffa
	csrr x10, 0xffa	// Read CSR
	li x25, -1
	csrrw x5, 0xffa, x25	// Write all 1s to CSR
	csrrw x5, 0xffa, x0	// Write all 0s to CSR
	csrrs x5, 0xffa, x25	// Set all CSR bits
	csrrc x5, 0xffa, x25	// Clear all CSR bits
	csrrw x5, 0xffa, x10	// Restore CSR

// Testing CSR 0xffb
	csrr x1, 0xffb	// Read CSR
	li x20, -1
	csrrw x9, 0xffb, x20	// Write all 1s to CSR
	csrrw x9, 0xffb, x0	// Write all 0s to CSR
	csrrs x9, 0xffb, x20	// Set all CSR bits
	csrrc x9, 0xffb, x20	// Clear all CSR bits
	csrrw x9, 0xffb, x1	// Restore CSR

// Testing CSR 0xffc
	csrr x13, 0xffc	// Read CSR
	li x23, -1
	csrrw x18, 0xffc, x23	// Write all 1s to CSR
	csrrw x18, 0xffc, x0	// Write all 0s to CSR
	csrrs x18, 0xffc, x23	// Set all CSR bits
	csrrc x18, 0xffc, x23	// Clear all CSR bits
	csrrw x18, 0xffc, x13	// Restore CSR

// Testing CSR 0xffd
	csrr x29, 0xffd	// Read CSR
	li x5, -1
	csrrw x2, 0xffd, x5	// Write all 1s to CSR
	csrrw x2, 0xffd, x0	// Write all 0s to CSR
	csrrs x2, 0xffd, x5	// Set all CSR bits
	csrrc x2, 0xffd, x5	// Clear all CSR bits
	csrrw x2, 0xffd, x29	// Restore CSR

// Testing CSR 0xffe
	csrr x27, 0xffe	// Read CSR
	li x17, -1
	csrrw x13, 0xffe, x17	// Write all 1s to CSR
	csrrw x13, 0xffe, x0	// Write all 0s to CSR
	csrrs x13, 0xffe, x17	// Set all CSR bits
	csrrc x13, 0xffe, x17	// Clear all CSR bits
	csrrw x13, 0xffe, x27	// Restore CSR

// Testing CSR 0xfff
	csrr x13, 0xfff	// Read CSR
	li x18, -1
	csrrw x1, 0xfff, x18	// Write all 1s to CSR
	csrrw x1, 0xfff, x0	// Write all 0s to CSR
	csrrs x1, 0xfff, x18	// Set all CSR bits
	csrrc x1, 0xfff, x18	// Clear all CSR bits
	csrrw x1, 0xfff, x13	// Restore CSR
