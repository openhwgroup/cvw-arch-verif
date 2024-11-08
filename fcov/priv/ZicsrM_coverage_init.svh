///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
// 
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
////////////////////////////////////////////////////////////////////////////////////////////////

    csr_cg = new();         csr_cg.set_inst_name("obj_csr");
    mcause_cg = new();      mcause_cg.set_inst_name("obj_mcause");
    csr_bits_cg = new();         csr_bits_cg.set_inst_name("obj_csr_bits");
     if (XLEN == 64) begin
        mstatus64_cg = new();     mstatus64_cg.set_inst_name("obj_mstatus64");
    end else begin
        mstatus32_cg = new();     mstatus32_cg.set_inst_name("obj_mstatus32");
    end
    ecall_cg = new();       ecall_cg.set_inst_name("obj_ecall");
    ebreak_cg = new();      ebreak_cg.set_inst_name("obj_ebreak");
    mret_cg = new();        mret_cg.set_inst_name("obj_mret");
    sret_cg = new();        sret_cg.set_inst_name("obj_sret");
 
