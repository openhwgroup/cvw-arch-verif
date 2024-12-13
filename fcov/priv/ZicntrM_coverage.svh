///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Corey Hickson chickson@hmc.edu 20 November 2024
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

`define COVER_ZICNTRM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_zicntrm_t;

covergroup mcounters_cg with function sample(ins_zicntrm_t ins);
    option.per_instance = 0; 
    // Counter access in machine mode

    // building blocks for the main coverpoints
    mcounteren: coverpoint ins.current.insn[31:20] {
        bins mcounteren = {12'h306};   
    }
    scounteren: coverpoint ins.current.insn[31:20] {
        bins scounteren = {12'h106};   
    }
    walking_ones : coverpoint ins.current.rs1_val[31:0] {
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
    priv_mode_m: coverpoint ins.current.mode {
       bins M_mode = {2'b11};
    }
    csrrw: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_001_?????_1110011}; 
    }
    csrr: coverpoint ins.current.insn  {
        wildcard bins csrr = {32'b????????????_00000_010_?????_1110011};
    }
    counters_mcounteren: coverpoint {ins.current.insn[31:20], ins.current.csr[12'h306]} {
        bins mcycle        = {12'hB00, 32'b00000000000000000000000000000001};
        bins mtime         = {12'hC01, 32'b00000000000000000000000000000010};
        bins minstret      = {12'hB02, 32'b00000000000000000000000000000100};
        bins mhpmcounter3  = {12'hB03, 32'b00000000000000000000000000001000};
        bins mhpmcounter4  = {12'hB04, 32'b00000000000000000000000000010000};
        bins mhpmcounter5  = {12'hB05, 32'b00000000000000000000000000100000};
        bins mhpmcounter6  = {12'hB06, 32'b00000000000000000000000001000000};
        bins mhpmcounter7  = {12'hB07, 32'b00000000000000000000000010000000};
        bins mhpmcounter8  = {12'hB08, 32'b00000000000000000000000100000000};
        bins mhpmcounter9  = {12'hB09, 32'b00000000000000000000001000000000};
        bins mhpmcounter10 = {12'hB0A, 32'b00000000000000000000010000000000};
        bins mhpmcounter11 = {12'hB0B, 32'b00000000000000000000100000000000};
        bins mhpmcounter12 = {12'hB0C, 32'b00000000000000000001000000000000};
        bins mhpmcounter13 = {12'hB0D, 32'b00000000000000000010000000000000};
        bins mhpmcounter14 = {12'hB0E, 32'b00000000000000000100000000000000};
        bins mhpmcounter15 = {12'hB0F, 32'b00000000000000001000000000000000};
        bins mhpmcounter16 = {12'hB10, 32'b00000000000000010000000000000000};
        bins mhpmcounter17 = {12'hB11, 32'b00000000000000100000000000000000};
        bins mhpmcounter18 = {12'hB12, 32'b00000000000001000000000000000000};
        bins mhpmcounter19 = {12'hB13, 32'b00000000000010000000000000000000};
        bins mhpmcounter20 = {12'hB14, 32'b00000000000100000000000000000000};
        bins mhpmcounter21 = {12'hB15, 32'b00000000001000000000000000000000};
        bins mhpmcounter22 = {12'hB16, 32'b00000000010000000000000000000000};
        bins mhpmcounter23 = {12'hB17, 32'b00000000100000000000000000000000};
        bins mhpmcounter24 = {12'hB18, 32'b00000001000000000000000000000000};
        bins mhpmcounter25 = {12'hB19, 32'b00000010000000000000000000000000};
        bins mhpmcounter26 = {12'hB1A, 32'b00000100000000000000000000000000};
        bins mhpmcounter27 = {12'hB1B, 32'b00001000000000000000000000000000};
        bins mhpmcounter28 = {12'hB1C, 32'b00010000000000000000000000000000};
        bins mhpmcounter29 = {12'hB1D, 32'b00100000000000000000000000000000};
        bins mhpmcounter30 = {12'hB1E, 32'b01000000000000000000000000000000};
        bins mhpmcounter31 = {12'hB1F, 32'b10000000000000000000000000000000};
    }
    counters_scounteren: coverpoint {ins.current.insn[31:20], ins.current.csr[12'h106]} {
        bins mcycle        = {12'hB00, 32'b00000000000000000000000000000001};
        bins mtime         = {12'hC01, 32'b00000000000000000000000000000010};
        bins minstret      = {12'hB02, 32'b00000000000000000000000000000100};
        bins mhpmcounter3  = {12'hB03, 32'b00000000000000000000000000001000};
        bins mhpmcounter4  = {12'hB04, 32'b00000000000000000000000000010000};
        bins mhpmcounter5  = {12'hB05, 32'b00000000000000000000000000100000};
        bins mhpmcounter6  = {12'hB06, 32'b00000000000000000000000001000000};
        bins mhpmcounter7  = {12'hB07, 32'b00000000000000000000000010000000};
        bins mhpmcounter8  = {12'hB08, 32'b00000000000000000000000100000000};
        bins mhpmcounter9  = {12'hB09, 32'b00000000000000000000001000000000};
        bins mhpmcounter10 = {12'hB0A, 32'b00000000000000000000010000000000};
        bins mhpmcounter11 = {12'hB0B, 32'b00000000000000000000100000000000};
        bins mhpmcounter12 = {12'hB0C, 32'b00000000000000000001000000000000};
        bins mhpmcounter13 = {12'hB0D, 32'b00000000000000000010000000000000};
        bins mhpmcounter14 = {12'hB0E, 32'b00000000000000000100000000000000};
        bins mhpmcounter15 = {12'hB0F, 32'b00000000000000001000000000000000};
        bins mhpmcounter16 = {12'hB10, 32'b00000000000000010000000000000000};
        bins mhpmcounter17 = {12'hB11, 32'b00000000000000100000000000000000};
        bins mhpmcounter18 = {12'hB12, 32'b00000000000001000000000000000000};
        bins mhpmcounter19 = {12'hB13, 32'b00000000000010000000000000000000};
        bins mhpmcounter20 = {12'hB14, 32'b00000000000100000000000000000000};
        bins mhpmcounter21 = {12'hB15, 32'b00000000001000000000000000000000};
        bins mhpmcounter22 = {12'hB16, 32'b00000000010000000000000000000000};
        bins mhpmcounter23 = {12'hB17, 32'b00000000100000000000000000000000};
        bins mhpmcounter24 = {12'hB18, 32'b00000001000000000000000000000000};
        bins mhpmcounter25 = {12'hB19, 32'b00000010000000000000000000000000};
        bins mhpmcounter26 = {12'hB1A, 32'b00000100000000000000000000000000};
        bins mhpmcounter27 = {12'hB1B, 32'b00001000000000000000000000000000};
        bins mhpmcounter28 = {12'hB1C, 32'b00010000000000000000000000000000};
        bins mhpmcounter29 = {12'hB1D, 32'b00100000000000000000000000000000};
        bins mhpmcounter30 = {12'hB1E, 32'b01000000000000000000000000000000};
        bins mhpmcounter31 = {12'hB1F, 32'b10000000000000000000000000000000};
    }
    // main coverpoints
    cp_mcounteren_access_write: cross csrrw, walking_ones, mcounteren;
    cp_mcounteren_access_read:  cross csrr, counters_mcounteren, priv_mode_m;
    cp_scounteren_access_write: cross csrrw, walking_ones, scounteren;
    cp_scounteren_access_read:  cross csrr, counters_scounteren, priv_mode_m;

    // TODO: add missing coverpoints specific 
endgroup

function void zicntrm_sample(int hart, int issue);
    ins_zicntrm_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    mcounters_cg.sample(ins);
    
endfunction
