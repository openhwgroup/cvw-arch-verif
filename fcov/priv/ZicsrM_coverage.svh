///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Licensed under the Solderpad Hardware License v 2.1 (the “License”); you may not use this file 
// except in compliance with the License, or, at your option, the Apache License version 2.0. You 
// may obtain a copy of the License at
//
// https://solderpad.org/licenses/SHL-2.1/
//
// Unless required by applicable law or agreed to in writing, any work distributed under the 
// License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, 
// either express or implied. See the License for the specific language governing permissions 
// and limitations under the License.
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_ZICSRM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_zicsrm_t;

covergroup csr_cg with function sample(ins_zicsrm_t ins);
    option.per_instance = 1; 
    option.comment = "ZicsrM csr";

    // building blocks for the main coverpoints
    nonzerord: coverpoint ins.current.insn[11:7] {
        option.weight = 0;
        bins nonzero = { [1:$] }; // rd != 0
    }
    csrr: coverpoint ins.current.insn  {
        wildcard bins csrr = {32'b????????????_00000_010_?????_1110011};
    }
    csrrw: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_001_?????_1110011}; 
    }
    csrrs: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_010_?????_1110011};
    }
    csrrc: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_011_?????_1110011};
    }
    csr: coverpoint ins.current.insn[31:20]  {
        // automtically gives all 4096 bins
    }
    priv_mode_m: coverpoint ins.current.mode {
        bins M_mode = {2'b11};
    }
    rs1_ones: coverpoint ins.current.rs1_val {
        bins ones = {'1};
    }
    rs1_corners: coverpoint ins.current.rs1_val {
        bins zero = {0};
        bins ones = {'1};
    }

    // we don't seem to be getting hits on many CSRs.  We are suspicious it is because they are unimplemented and cause
    // illegal instruction traps when accessed (but still need to prove this, possibly by making a list of good and illegal
    // csrs in the csr coverpoint.  This temporary coverpoint is inserted from riscvISACOV for troubleshooting, and 
    // makes 0 hits right now.
    cp_illegal_inst : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mcause", "") == `MCAUSE_ILLEGAL_INST  iff (ins.trap == 1 )  {
        option.comment = "Number of illegal instructions";
        bins count[]  = {1};
    }
    
    // main coverpoints
    // This is ZicsrM machine-mode testing, so all coverpoints are in Machine mode.
    cp_csrr: cross csrr, csr, priv_mode_m, nonzerord;               // CSR read of all 4096 registers
    cp_csrw_corners: cross csrrw, csr, priv_mode_m, rs1_corners;    // CSR write of all 0s / all 1s to all 4096 registers
    cp_csrc: cross csrrc, csr, priv_mode_m, rs1_ones;               // CSR clear of all bits of all registers
    cp_csrs: cross csrrs, csr, priv_mode_m, rs1_ones;               // CSR set of all bits of all registers
endgroup

covergroup mcause_cg with function sample(ins_zicsrm_t ins);
    option.per_instance = 1; 
    option.comment = "ZicsrM mcause";
 
    csrrw_mcause: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b001101000010_?????_001_?????_1110011};  // csrrw to mcause
    }
    priv_mode_m: coverpoint ins.current.mode {
       bins M_mode = {2'b11};
    }
    mcause_interrupt : coverpoint ins.current.rs1_val[XLEN-1] {
        bins interrupt = {1};
    }
    mcause_exception : coverpoint ins.current.rs1_val[XLEN-1] {
        bins exception = {0};
    }
    mcause_exception_values: coverpoint ins.current.rs1_val[XLEN-2:0] {
        bins b_0_instruction_address_misaligned = {0};
        bins b_1_instruction_address_fault = {1};
        bins b_2_illegal_instruction = {2};
        bins b_3_breakpoint = {3};
        bins b_4_load_address_misaligned = {4};
        bins b_5_load_access_fault = {5};
        bins b_6_store_address_misaligned = {6};
        bins b_7_store_access_fault = {7};
        bins b_8_ecall_u = {8};
        bins b_9_ecall_s = {9};
        bins b_10_reserved = {10};
        bins b_11_ecall_m = {11};
        bins b_12_instruction_page_fault = {12};
        bins b_13_load_page_fault = {13};
        bins b_14_reserved = {14};
        bins b_15_store_page_fault = {15};
        bins b_17_16_reserved = {[17:16]};
        bins b_18_software_check = {18};
        bins b_19_hardware_error = {19};
        bins b_23_20_reserved = {[23:20]};
        bins b_31_24_custom = {[31:24]};
        bins b_47_32_reserved = {[47:32]};
        bins b_63_48_custom = {[63:48]};
    }
    mcause_interrupt_values: coverpoint ins.current.rs1_val[XLEN-2:0] {
        bins b_0_reserved = {0};
        bins b_1_supervisor_software = {1};
        bins b_2_reserved = {2};
        bins b_3_machine_software = {3};
        bins b_4_reserved = {4};
        bins b_5_supervisor_timer = {5};
        bins b_6_reserved = {6};
        bins b_7_machine_timer = {7};
        bins b_8_reserved = {8};
        bins b_9_supervisor_external = {9};
        bins b_10_reserved = {10};
        bins b_11_machine_external = {11};
        bins b_12_reserved = {12};
        bins b_13_counter_overflow = {13};
        bins b_14_reserved = {14};
        bins b_15_reserved = {15};
    }

    // main coverpoints
    // This is ZicsrM machine-mode testing, so all coverpoints are in Machine mode.
    cp_mcause_write_exception: cross csrrw_mcause, priv_mode_m, mcause_exception_values, mcause_exception; // CSR write of mcause in M mode with interesting values
    cp_mcause_write_interrupt: cross csrrw_mcause, priv_mode_m, mcause_interrupt_values, mcause_interrupt; // CSR write of mcause in M mode with interesting values
endgroup

/*
covergroup misa_cg with function sample(ins_zicsrm_t ins);
    csrrw_misa: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b001100000001_?????_001_?????_1110011};  // csrrw to misa
    }
    priv_mode_m: coverpoint ins.current.mode {
       bins M_mode = {2'b11};
    }
    misa_mxl : coverpoint ins.current.rs1_val[XLEN-1:XLEN-2] {
    }
    misa_ext : coverpoint ins.current.rs1_val[25:0] {
        wildcard bins b_0_0  = {26'b?????????????????????????0};
        wildcard bins b_1_0  = {26'b????????????????????????0?};
        wildcard bins b_2_0  = {26'b???????????????????????0??};
        wildcard bins b_3_0  = {26'b??????????????????????0???};
        wildcard bins b_4_0  = {26'b?????????????????????0????};
        wildcard bins b_5_0  = {26'b????????????????????0?????};
        wildcard bins b_6_0  = {26'b???????????????????0??????};
        wildcard bins b_7_0  = {26'b??????????????????0???????};
        wildcard bins b_8_0  = {26'b?????????????????0????????};
        wildcard bins b_9_0  = {26'b????????????????0?????????};
        wildcard bins b_10_0 = {26'b???????????????0??????????};
        wildcard bins b_11_0 = {26'b??????????????0???????????};
        wildcard bins b_12_0 = {26'b?????????????0????????????};
        wildcard bins b_13_0 = {26'b????????????0?????????????};
        wildcard bins b_14_0 = {26'b???????????0??????????????};
        wildcard bins b_15_0 = {26'b??????????0???????????????};
        wildcard bins b_16_0 = {26'b?????????0????????????????};
        wildcard bins b_17_0 = {26'b????????0?????????????????};
        wildcard bins b_18_0 = {26'b???????0??????????????????};
        wildcard bins b_19_0 = {26'b??????0???????????????????};
        wildcard bins b_20_0 = {26'b?????0????????????????????};
        wildcard bins b_21_0 = {26'b????0?????????????????????};
        wildcard bins b_22_0 = {26'b???0??????????????????????};
        wildcard bins b_23_0 = {26'b??0???????????????????????};
        wildcard bins b_24_0 = {26'b?0????????????????????????};
        wildcard bins b_25_0 = {26'b0?????????????????????????};
        wildcard bins b_0_1  = {26'b?????????????????????????1};
        wildcard bins b_1_1  = {26'b????????????????????????1?};
        wildcard bins b_2_1  = {26'b???????????????????????1??};
        wildcard bins b_3_1  = {26'b??????????????????????1???};
        wildcard bins b_4_1  = {26'b?????????????????????1????};
        wildcard bins b_5_1  = {26'b????????????????????1?????};
        wildcard bins b_6_1  = {26'b???????????????????1??????};
        wildcard bins b_7_1  = {26'b??????????????????1???????};
        wildcard bins b_8_1  = {26'b?????????????????1????????};
        wildcard bins b_9_1  = {26'b????????????????1?????????};
        wildcard bins b_10_1 = {26'b???????????????1??????????};
        wildcard bins b_11_1 = {26'b??????????????1???????????};
        wildcard bins b_12_1 = {26'b?????????????1????????????};
        wildcard bins b_13_1 = {26'b????????????1?????????????};
        wildcard bins b_14_1 = {26'b???????????1??????????????};
        wildcard bins b_15_1 = {26'b??????????1???????????????};
        wildcard bins b_16_1 = {26'b?????????1????????????????};
        wildcard bins b_17_1 = {26'b????????1?????????????????};
        wildcard bins b_18_1 = {26'b???????1??????????????????};
        wildcard bins b_19_1 = {26'b??????1???????????????????};
        wildcard bins b_20_1 = {26'b?????1????????????????????};
        wildcard bins b_21_1 = {26'b????1?????????????????????};
        wildcard bins b_22_1 = {26'b???1??????????????????????};
        wildcard bins b_23_1 = {26'b??1???????????????????????};
        wildcard bins b_24_1 = {26'b?1????????????????????????};
        wildcard bins b_25_1 = {26'b1?????????????????????????};
    }
    csrrs: coverpoint ins.current.insn {
        wildcard bins csrrs_misa = {32'b001100000001_?????_010_?????_1110011};
    }
    misa_middle : coverpoint ins.current.rs1_val[30:26] {
        wildcard bins b_26_1  = {5'b????1};
        wildcard bins b_27_1  = {5'b???1?};
        wildcard bins b_28_1  = {5'b??1??};
        wildcard bins b_29_1  = {5'b?1???};
        wildcard bins b_30_1  = {5'b1????};
    }

    misa_ext_A : coverpoint ins.current.csr[12'h301][0] iff (ins.ins_str == "add" ){
        bins disabled  = {0};
        bins enabled   = {1};
    }
    misa_ext_B : coverpoint ins.current.rs1_val[1] {
        bins disabled  = {0};
        bins enabled   = {1};
    }
    misa_ext_C : coverpoint ins.current.csr[12'h301][2] {
        bins disabled  = {0};
        bins enabled   = {1};
    }
    misa_ext_D : coverpoint ins.current.csr[12'h301][3] {
        bins disabled  = {0};
        bins enabled   = {1};
    }
    misa_ext_F : coverpoint ins.current.csr[12'h301][5] {
        bins disabled  = {0};
        bins enabled   = {1};
    }
    misa_ext_I : coverpoint ins.current.csr[12'h301][8] {
        bins disabled  = {0};
        bins enabled   = {1};
    }
    misa_ext_M : coverpoint ins.current.csr[12'h301][12] {
        bins disabled  = {0};
        bins enabled   = {1};
    }
    
    // main coverpoints
    cp_misa_mxl_write: cross csrrw_misa, priv_mode_m, misa_mxl; // write all four MXL values
    cp_misa_ext_write_corners: cross csrrw_misa, priv_mode_m, misa_mxl; // walking ones to all extensions
    cp_misa_middle_write: cross csrrs, priv_mode_m, misa_middle;
    // *** cp_misa_ext_disable can't be hit; consider removing it and cp_misa_ext_enable
endgroup */

covergroup csr_bits_cg with function sample(ins_zicsrm_t ins);
    priv_mode_m: coverpoint ins.current.mode {
       bins M_mode = {2'b11};
    }
    `ifdef XLEN64
        walking_ones : coverpoint ins.current.rs1_val {
        bins b_0  = {64'b0000000000000000000000000000000000000000000000000000000000000001};
        bins b_1  = {64'b0000000000000000000000000000000000000000000000000000000000000010};
        bins b_2  = {64'b0000000000000000000000000000000000000000000000000000000000000100};
        bins b_3  = {64'b0000000000000000000000000000000000000000000000000000000000001000};
        bins b_4  = {64'b0000000000000000000000000000000000000000000000000000000000010000};
        bins b_5  = {64'b0000000000000000000000000000000000000000000000000000000000100000};
        bins b_6  = {64'b0000000000000000000000000000000000000000000000000000000001000000};
        bins b_7  = {64'b0000000000000000000000000000000000000000000000000000000010000000};
        bins b_8  = {64'b0000000000000000000000000000000000000000000000000000000100000000};
        bins b_9  = {64'b0000000000000000000000000000000000000000000000000000001000000000};
        bins b_10 = {64'b0000000000000000000000000000000000000000000000000000010000000000};
        bins b_11 = {64'b0000000000000000000000000000000000000000000000000000100000000000};
        bins b_12 = {64'b0000000000000000000000000000000000000000000000000001000000000000};
        bins b_13 = {64'b0000000000000000000000000000000000000000000000000010000000000000};
        bins b_14 = {64'b0000000000000000000000000000000000000000000000000100000000000000};
        bins b_15 = {64'b0000000000000000000000000000000000000000000000001000000000000000};
        bins b_16 = {64'b0000000000000000000000000000000000000000000000010000000000000000};
        bins b_17 = {64'b0000000000000000000000000000000000000000000000100000000000000000};
        bins b_18 = {64'b0000000000000000000000000000000000000000000001000000000000000000};
        bins b_19 = {64'b0000000000000000000000000000000000000000000010000000000000000000};
        bins b_20 = {64'b0000000000000000000000000000000000000000000100000000000000000000};
        bins b_21 = {64'b0000000000000000000000000000000000000000001000000000000000000000};
        bins b_22 = {64'b0000000000000000000000000000000000000000010000000000000000000000};
        bins b_23 = {64'b0000000000000000000000000000000000000000100000000000000000000000};
        bins b_24 = {64'b0000000000000000000000000000000000000001000000000000000000000000};
        bins b_25 = {64'b0000000000000000000000000000000000000010000000000000000000000000};
        bins b_26 = {64'b0000000000000000000000000000000000000100000000000000000000000000};
        bins b_27 = {64'b0000000000000000000000000000000000001000000000000000000000000000};
        bins b_28 = {64'b0000000000000000000000000000000000010000000000000000000000000000};
        bins b_29 = {64'b0000000000000000000000000000000000100000000000000000000000000000};
        bins b_30 = {64'b0000000000000000000000000000000001000000000000000000000000000000};
        bins b_31 = {64'b0000000000000000000000000000000010000000000000000000000000000000};
        bins b_32 = {64'b0000000000000000000000000000000100000000000000000000000000000000};
        bins b_33 = {64'b0000000000000000000000000000001000000000000000000000000000000000};
        bins b_34 = {64'b0000000000000000000000000000010000000000000000000000000000000000};
        bins b_35 = {64'b0000000000000000000000000000100000000000000000000000000000000000};
        bins b_36 = {64'b0000000000000000000000000001000000000000000000000000000000000000};
        bins b_37 = {64'b0000000000000000000000000010000000000000000000000000000000000000};
        bins b_38 = {64'b0000000000000000000000000100000000000000000000000000000000000000};
        bins b_39 = {64'b0000000000000000000000001000000000000000000000000000000000000000};
        bins b_40 = {64'b0000000000000000000000010000000000000000000000000000000000000000};
        bins b_41 = {64'b0000000000000000000000100000000000000000000000000000000000000000};
        bins b_42 = {64'b0000000000000000000001000000000000000000000000000000000000000000};
        bins b_43 = {64'b0000000000000000000010000000000000000000000000000000000000000000};
        bins b_44 = {64'b0000000000000000000100000000000000000000000000000000000000000000};
        bins b_45 = {64'b0000000000000000001000000000000000000000000000000000000000000000};
        bins b_46 = {64'b0000000000000000010000000000000000000000000000000000000000000000};
        bins b_47 = {64'b0000000000000000100000000000000000000000000000000000000000000000};
        bins b_48 = {64'b0000000000000001000000000000000000000000000000000000000000000000};
        bins b_49 = {64'b0000000000000010000000000000000000000000000000000000000000000000};
        bins b_50 = {64'b0000000000000100000000000000000000000000000000000000000000000000};
        bins b_51 = {64'b0000000000001000000000000000000000000000000000000000000000000000};
        bins b_52 = {64'b0000000000010000000000000000000000000000000000000000000000000000};
        bins b_53 = {64'b0000000000100000000000000000000000000000000000000000000000000000};
        bins b_54 = {64'b0000000001000000000000000000000000000000000000000000000000000000};
        bins b_55 = {64'b0000000010000000000000000000000000000000000000000000000000000000};
        bins b_56 = {64'b0000000100000000000000000000000000000000000000000000000000000000};
        bins b_57 = {64'b0000001000000000000000000000000000000000000000000000000000000000};
        bins b_58 = {64'b0000010000000000000000000000000000000000000000000000000000000000};
        bins b_59 = {64'b0000100000000000000000000000000000000000000000000000000000000000};
        bins b_60 = {64'b0001000000000000000000000000000000000000000000000000000000000000};
        bins b_61 = {64'b0010000000000000000000000000000000000000000000000000000000000000};
        bins b_62 = {64'b0100000000000000000000000000000000000000000000000000000000000000};
        bins b_63 = {64'b1000000000000000000000000000000000000000000000000000000000000000};
    }
    `else
    walking_ones : coverpoint ins.current.rs1_val {
        bins b_0  = {32'b00000000000000000000000000000001};
        bins b_1  = {32'b00000000000000000000000000000010};
        bins b_2  = {32'b00000000000000000000000000000100};
        bins b_3  = {32'b00000000000000000000000000001000};
        bins b_4  = {32'b00000000000000000000000000010000};
        bins b_5  = {32'b00000000000000000000000000100000};
        bins b_6  = {32'b00000000000000000000000001000000};
        bins b_7  = {32'b00000000000000000000000010000000};
        bins b_8  = {32'b00000000000000000000000100000000};
        bins b_9  = {32'b00000000000000000000001000000000};
        bins b_10 = {32'b00000000000000000000010000000000};
        bins b_11 = {32'b00000000000000000000100000000000};
        bins b_12 = {32'b00000000000000000001000000000000};
        bins b_13 = {32'b00000000000000000010000000000000};
        bins b_14 = {32'b00000000000000000100000000000000};
        bins b_15 = {32'b00000000000000001000000000000000};
        bins b_16 = {32'b00000000000000010000000000000000};
        bins b_17 = {32'b00000000000000100000000000000000};
        bins b_18 = {32'b00000000000001000000000000000000};
        bins b_19 = {32'b00000000000010000000000000000000};
        bins b_20 = {32'b00000000000100000000000000000000};
        bins b_21 = {32'b00000000001000000000000000000000};
        bins b_22 = {32'b00000000010000000000000000000000};
        bins b_23 = {32'b00000000100000000000000000000000};
        bins b_24 = {32'b00000001000000000000000000000000};
        bins b_25 = {32'b00000010000000000000000000000000};
        bins b_26 = {32'b00000100000000000000000000000000};
        bins b_27 = {32'b00001000000000000000000000000000};
        bins b_28 = {32'b00010000000000000000000000000000};
        bins b_29 = {32'b00100000000000000000000000000000};
        bins b_30 = {32'b01000000000000000000000000000000};
        bins b_31 = {32'b10000000000000000000000000000000};
    }
    `endif
    /*
    misa
    mie
    mtvec
    mepc
    mtval
    mseccfg
    menvcfg
    mip
    mstatus
    mscratch***
    mcause***
    *** h: mstatush, mseccfgh
    */

    csrname : coverpoint ins.current.insn[31:20] {
        bins mstatus  = {12'h300};
        bins misa     = {12'h301};
        bins medeleg  = {12'h302};
        bins mideleg  = {12'h303};
        bins mie      = {12'h304};
        bins mtvec    = {12'h305};
        bins mscratch = {12'h340};
        bins mepc     = {12'h341};
        bins mcause   = {12'h342};
        bins mtval    = {12'h343};
        bins mip      = {12'h344};
        bins menvcfg  = {12'h30A};
        bins mseccfg  = {12'h747};
        `ifdef RV32
        bins mstatush = {12'h310};
        bins medelegh = {12'h312};
        bins menvcfgh = {12'h31A};
        bins mseccfgh = {12'h357};
        `endif
    }
    csrop: coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b1110011) {
        bins csrrs = {3'b010};
        bins csrrc = {3'b011};
    }
    // main coverpoints
    cp_mcsrwalk : cross csrname, csrop, priv_mode_m, walking_ones;
endgroup


covergroup mstatus_cg with function sample(ins_zicsrm_t ins);
endgroup

covergroup mstatus64_cg with function sample(ins_zicsrm_t ins);
endgroup

covergroup mstatus32_cg with function sample(ins_zicsrm_t ins);
endgroup

covergroup ecall_cg with function sample(ins_zicsrm_t ins);
endgroup

covergroup ebreak_cg with function sample(ins_zicsrm_t ins);
endgroup

covergroup mret_cg with function sample(ins_zicsrm_t ins);
endgroup

covergroup sret_cg with function sample(ins_zicsrm_t ins);
endgroup

function void zicsrm_sample(int hart, int issue);
    ins_zicsrm_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    csr_cg.sample(ins);
    mcause_cg.sample(ins);
    csr_bits_cg.sample(ins);
    //misa_cg.sample(ins);
    //medeleg_cg.sample(ins);
    //mideleg_cg.sample(ins);
    //mie_cg.sample(ins);
    //mtvec_cg.sample(ins);
    //mepc_cg.sample(ins);
    //mtval_cg.sample(ins);
    //mseccfg_cg.sample(ins);
    //menvcfg_cg.sample(ins);
    //mip_cg.sample(ins);
    //mstatus_cg.sample(ins);

    if (XLEN == 64)
        mstatus64_cg.sample(ins);
    else
        mstatus32_cg.sample(ins);

    ecall_cg.sample(ins);
    ebreak_cg.sample(ins);
    mret_cg.sample(ins);
    sret_cg.sample(ins);
    
endfunction
