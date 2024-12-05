///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written:  Marina Bellido (mbellido@hmc.edu) & Leilani Elkaslasy (lelkaslay@hmc.edu)  ->  20 November 2024
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

`define COVER_ZICNTRS
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_zicntrs_t;

covergroup scounters_cg with function sample(ins_zicntrs_t ins);
    option.per_instance = 0; 
    // counter access in supervisor mode

    // building blocks for the main coverpoints
    mcounteren: coverpoint ins.current.insn[31:20]{
        bins mcounteren = {12'h306};
    }
    scounteren: coverpoint ins.current.insn[31:20]{
        bins scounteren = {12'h106};
    }
    walking_ones: coverpoint ins.current.rs1_val[31:0] {
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
    walking_zeros: coverpoint ins.current.rs1_val[31:0] {
        bins b_0  = {32'b11111111111111111111111111111110};
        bins b_1  = {32'b11111111111111111111111111111101};
        bins b_2  = {32'b11111111111111111111111111111011};
        bins b_3  = {32'b11111111111111111111111111110111};
        bins b_4  = {32'b11111111111111111111111111101111};
        bins b_5  = {32'b11111111111111111111111111011111};
        bins b_6  = {32'b11111111111111111111111110111111};
        bins b_7  = {32'b11111111111111111111111101111111};
        bins b_8  = {32'b11111111111111111111111011111111};
        bins b_9  = {32'b11111111111111111111110111111111};
        bins b_10 = {32'b11111111111111111111101111111111};
        bins b_11 = {32'b11111111111111111111011111111111};
        bins b_12 = {32'b11111111111111111110111111111111};
        bins b_13 = {32'b11111111111111111101111111111111};
        bins b_14 = {32'b11111111111111111011111111111111};
        bins b_15 = {32'b11111111111111110111111111111111};
        bins b_16 = {32'b11111111111111101111111111111111};
        bins b_17 = {32'b11111111111111011111111111111111};
        bins b_18 = {32'b11111111111110111111111111111111};
        bins b_19 = {32'b11111111111101111111111111111111};
        bins b_20 = {32'b11111111111011111111111111111111};
        bins b_21 = {32'b11111111110111111111111111111111};
        bins b_22 = {32'b11111111101111111111111111111111};
        bins b_23 = {32'b11111111011111111111111111111111};
        bins b_24 = {32'b11111110111111111111111111111111};
        bins b_25 = {32'b11111101111111111111111111111111};
        bins b_26 = {32'b11111011111111111111111111111111};
        bins b_27 = {32'b11110111111111111111111111111111};
        bins b_28 = {32'b11101111111111111111111111111111};
        bins b_29 = {32'b11011111111111111111111111111111};
        bins b_30 = {32'b10111111111111111111111111111111};
        bins b_31 = {32'b01111111111111111111111111111111};
    }
    priv_mode_s: coverpoint ins.current.mode { 
       bins S_mode = {2'b01};  
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
        bins mcycle_enabled          = {12'hB00, 32'b00000000000000000000000000000001};
        bins mtime_enabled           = {12'hC01, 32'b00000000000000000000000000000010};
        bins minstret_enabled        = {12'hB02, 32'b00000000000000000000000000000100};
        bins mhpmcounter3_enabled    = {12'hB03, 32'b00000000000000000000000000001000};
        bins mhpmcounter4_enabled    = {12'hB04, 32'b00000000000000000000000000010000};
        bins mhpmcounter5_enabled    = {12'hB05, 32'b00000000000000000000000000100000};
        bins mhpmcounter6_enabled    = {12'hB06, 32'b00000000000000000000000001000000};
        bins mhpmcounter7_enabled    = {12'hB07, 32'b00000000000000000000000010000000};
        bins mhpmcounter8_enabled    = {12'hB08, 32'b00000000000000000000000100000000};
        bins mhpmcounter9_enabled    = {12'hB09, 32'b00000000000000000000001000000000};
        bins mhpmcounter10_enabled   = {12'hB0A, 32'b00000000000000000000010000000000};
        bins mhpmcounter11_enabled   = {12'hB0B, 32'b00000000000000000000100000000000};
        bins mhpmcounter12_enabled   = {12'hB0C, 32'b00000000000000000001000000000000};
        bins mhpmcounter13_enabled   = {12'hB0D, 32'b00000000000000000010000000000000};
        bins mhpmcounter14_enabled   = {12'hB0E, 32'b00000000000000000100000000000000};
        bins mhpmcounter15_enabled   = {12'hB0F, 32'b00000000000000001000000000000000};
        bins mhpmcounter16_enabled   = {12'hB10, 32'b00000000000000010000000000000000};
        bins mhpmcounter17_enabled   = {12'hB11, 32'b00000000000000100000000000000000};
        bins mhpmcounter18_enabled   = {12'hB12, 32'b00000000000001000000000000000000};
        bins mhpmcounter19_enabled   = {12'hB13, 32'b00000000000010000000000000000000};
        bins mhpmcounter20_enabled   = {12'hB14, 32'b00000000000100000000000000000000};
        bins mhpmcounter21_enabled   = {12'hB15, 32'b00000000001000000000000000000000};
        bins mhpmcounter22_enabled   = {12'hB16, 32'b00000000010000000000000000000000};
        bins mhpmcounter23_enabled   = {12'hB17, 32'b00000000100000000000000000000000};
        bins mhpmcounter24_enabled   = {12'hB18, 32'b00000001000000000000000000000000};
        bins mhpmcounter25_enabled   = {12'hB19, 32'b00000010000000000000000000000000};
        bins mhpmcounter26_enabled   = {12'hB1A, 32'b00000100000000000000000000000000};
        bins mhpmcounter27_enabled   = {12'hB1B, 32'b00001000000000000000000000000000};
        bins mhpmcounter28_enabled   = {12'hB1C, 32'b00010000000000000000000000000000};
        bins mhpmcounter29_enabled   = {12'hB1D, 32'b00100000000000000000000000000000};
        bins mhpmcounter30_enabled   = {12'hB1E, 32'b01000000000000000000000000000000};
        bins mhpmcounter31_enabled   = {12'hB1F, 32'b10000000000000000000000000000000};

        
        bins mcycle_disabled         = {12'hB00, 32'b11111111111111111111111111111110};
        bins mtime_disabled          = {12'hC01, 32'b11111111111111111111111111111101};
        bins minstret_disabled       = {12'hB02, 32'b11111111111111111111111111111011};
        bins mhpmcounter3_disabled   = {12'hB03, 32'b11111111111111111111111111110111};
        bins mhpmcounter4_disabled   = {12'hB04, 32'b11111111111111111111111111101111};
        bins mhpmcounter5_disabled   = {12'hB05, 32'b11111111111111111111111111011111};
        bins mhpmcounter6_disabled   = {12'hB06, 32'b11111111111111111111111110111111};
        bins mhpmcounter7_disabled   = {12'hB07, 32'b11111111111111111111111101111111};
        bins mhpmcounter8_disabled   = {12'hB08, 32'b11111111111111111111111011111111};
        bins mhpmcounter9_disabled   = {12'hB09, 32'b11111111111111111111110111111111};
        bins mhpmcounter10_disabled  = {12'hB0A, 32'b11111111111111111111101111111111};
        bins mhpmcounter11_disabled  = {12'hB0B, 32'b11111111111111111111011111111111};
        bins mhpmcounter12_disabled  = {12'hB0C, 32'b11111111111111111110111111111111};
        bins mhpmcounter13_disabled  = {12'hB0D, 32'b11111111111111111101111111111111};
        bins mhpmcounter14_disabled  = {12'hB0E, 32'b11111111111111111011111111111111};
        bins mhpmcounter15_disabled  = {12'hB0F, 32'b11111111111111110111111111111111};
        bins mhpmcounter16_disabled  = {12'hB10, 32'b11111111111111101111111111111111};
        bins mhpmcounter17_disabled  = {12'hB11, 32'b11111111111111011111111111111111};
        bins mhpmcounter18_disabled  = {12'hB12, 32'b11111111111110111111111111111111};
        bins mhpmcounter19_disabled  = {12'hB13, 32'b11111111111101111111111111111111};
        bins mhpmcounter20_disabled  = {12'hB14, 32'b11111111111011111111111111111111};
        bins mhpmcounter21_disabled  = {12'hB15, 32'b11111111110111111111111111111111};
        bins mhpmcounter22_disabled  = {12'hB16, 32'b11111111101111111111111111111111};
        bins mhpmcounter23_disabled  = {12'hB17, 32'b11111111011111111111111111111111};
        bins mhpmcounter24_disabled  = {12'hB18, 32'b11111110111111111111111111111111};
        bins mhpmcounter25_disabled  = {12'hB19, 32'b11111101111111111111111111111111};
        bins mhpmcounter26_disabled  = {12'hB1A, 32'b11111011111111111111111111111111};
        bins mhpmcounter27_disabled  = {12'hB1B, 32'b11110111111111111111111111111111};
        bins mhpmcounter28_disabled  = {12'hB1C, 32'b11101111111111111111111111111111};
        bins mhpmcounter29_disabled  = {12'hB1D, 32'b11011111111111111111111111111111};
        bins mhpmcounter30_disabled  = {12'hB1E, 32'b10111111111111111111111111111111};
        bins mhpmcounter31_disabled  = {12'hB1F, 32'b01111111111111111111111111111111};
    }

    counters_scounteren: coverpoint {ins.current.insn[31:20], ins.current.csr[12'h106]} {
        bins mcycle_enable         = {12'hB00, 32'b00000000000000000000000000000001};
        bins mtime_enable          = {12'hC01, 32'b00000000000000000000000000000010};
        bins minstret_enable       = {12'hB02, 32'b00000000000000000000000000000100};
        bins mhpmcounter3_enable   = {12'hB03, 32'b00000000000000000000000000001000};
        bins mhpmcounter4_enable   = {12'hB04, 32'b00000000000000000000000000010000};
        bins mhpmcounter5_enable   = {12'hB05, 32'b00000000000000000000000000100000};
        bins mhpmcounter6_enable   = {12'hB06, 32'b00000000000000000000000001000000};
        bins mhpmcounter7_enable   = {12'hB07, 32'b00000000000000000000000010000000};
        bins mhpmcounter8_enable   = {12'hB08, 32'b00000000000000000000000100000000};
        bins mhpmcounter9_enable   = {12'hB09, 32'b00000000000000000000001000000000};
        bins mhpmcounter10_enable  = {12'hB0A, 32'b00000000000000000000010000000000};
        bins mhpmcounter11_enable  = {12'hB0B, 32'b00000000000000000000100000000000};
        bins mhpmcounter12_enable  = {12'hB0C, 32'b00000000000000000001000000000000};
        bins mhpmcounter13_enable  = {12'hB0D, 32'b00000000000000000010000000000000};
        bins mhpmcounter14_enable  = {12'hB0E, 32'b00000000000000000100000000000000};
        bins mhpmcounter15_enable  = {12'hB0F, 32'b00000000000000001000000000000000};
        bins mhpmcounter16_enable  = {12'hB10, 32'b00000000000000010000000000000000};
        bins mhpmcounter17_enable  = {12'hB11, 32'b00000000000000100000000000000000};
        bins mhpmcounter18_enable  = {12'hB12, 32'b00000000000001000000000000000000};
        bins mhpmcounter19_enable  = {12'hB13, 32'b00000000000010000000000000000000};
        bins mhpmcounter20_enable  = {12'hB14, 32'b00000000000100000000000000000000};
        bins mhpmcounter21_enable  = {12'hB15, 32'b00000000001000000000000000000000};
        bins mhpmcounter22_enable  = {12'hB16, 32'b00000000010000000000000000000000};
        bins mhpmcounter23_enable  = {12'hB17, 32'b00000000100000000000000000000000};
        bins mhpmcounter24_enable  = {12'hB18, 32'b00000001000000000000000000000000};
        bins mhpmcounter25_enable  = {12'hB19, 32'b00000010000000000000000000000000};
        bins mhpmcounter26_enable  = {12'hB1A, 32'b00000100000000000000000000000000};
        bins mhpmcounter27_enable  = {12'hB1B, 32'b00001000000000000000000000000000};
        bins mhpmcounter28_enable  = {12'hB1C, 32'b00010000000000000000000000000000};
        bins mhpmcounter29_enable  = {12'hB1D, 32'b00100000000000000000000000000000};
        bins mhpmcounter30_enable  = {12'hB1E, 32'b01000000000000000000000000000000};
        bins mhpmcounter31_enable  = {12'hB1F, 32'b10000000000000000000000000000000};

        bins mcycle_disabled         = {12'hB00, 32'b11111111111111111111111111111110};
        bins mtime_disabled          = {12'hC01, 32'b11111111111111111111111111111101};
        bins minstret_disabled       = {12'hB02, 32'b11111111111111111111111111111011};
        bins mhpmcounter3_disabled   = {12'hB03, 32'b11111111111111111111111111110111};
        bins mhpmcounter4_disabled   = {12'hB04, 32'b11111111111111111111111111101111};
        bins mhpmcounter5_disabled   = {12'hB05, 32'b11111111111111111111111111011111};
        bins mhpmcounter6_disabled   = {12'hB06, 32'b11111111111111111111111110111111};
        bins mhpmcounter7_disabled   = {12'hB07, 32'b11111111111111111111111101111111};
        bins mhpmcounter8_disabled   = {12'hB08, 32'b11111111111111111111111011111111};
        bins mhpmcounter9_disabled   = {12'hB09, 32'b11111111111111111111110111111111};
        bins mhpmcounter10_disabled  = {12'hB0A, 32'b11111111111111111111101111111111};
        bins mhpmcounter11_disabled  = {12'hB0B, 32'b11111111111111111111011111111111};
        bins mhpmcounter12_disabled  = {12'hB0C, 32'b11111111111111111110111111111111};
        bins mhpmcounter13_disabled  = {12'hB0D, 32'b11111111111111111101111111111111};
        bins mhpmcounter14_disabled  = {12'hB0E, 32'b11111111111111111011111111111111};
        bins mhpmcounter15_disabled  = {12'hB0F, 32'b11111111111111110111111111111111};
        bins mhpmcounter16_disabled  = {12'hB10, 32'b11111111111111101111111111111111};
        bins mhpmcounter17_disabled  = {12'hB11, 32'b11111111111111011111111111111111};
        bins mhpmcounter18_disabled  = {12'hB12, 32'b11111111111110111111111111111111};
        bins mhpmcounter19_disabled  = {12'hB13, 32'b11111111111101111111111111111111};
        bins mhpmcounter20_disabled  = {12'hB14, 32'b11111111111011111111111111111111};
        bins mhpmcounter21_disabled  = {12'hB15, 32'b11111111110111111111111111111111};
        bins mhpmcounter22_disabled  = {12'hB16, 32'b11111111101111111111111111111111};
        bins mhpmcounter23_disabled  = {12'hB17, 32'b11111111011111111111111111111111};
        bins mhpmcounter24_disabled  = {12'hB18, 32'b11111110111111111111111111111111};
        bins mhpmcounter25_disabled  = {12'hB19, 32'b11111101111111111111111111111111};
        bins mhpmcounter26_disabled  = {12'hB1A, 32'b11111011111111111111111111111111};
        bins mhpmcounter27_disabled  = {12'hB1B, 32'b11110111111111111111111111111111};
        bins mhpmcounter28_disabled  = {12'hB1C, 32'b11101111111111111111111111111111};
        bins mhpmcounter29_disabled  = {12'hB1D, 32'b11011111111111111111111111111111};
        bins mhpmcounter30_disabled  = {12'hB1E, 32'b10111111111111111111111111111111};
        bins mhpmcounter31_disabled  = {12'hB1F, 32'b01111111111111111111111111111111};
    }

    // main coverpoints
    cp_mcounteren_access_write_ones: cross csrrw, walking_ones, mcounteren;
    cp_mcounteren_access_write_zeros: cross csrrw, walking_zeros, mcounteren;
    cp_scounteren_access_write_ones: cross csrrw, walking_ones, scounteren;
    cp_scounteren_access_write_zeros: cross csrrw, walking_zeros, scounteren;

    cp_mcounteren_access_read_s:  cross csrr, counters_mcounteren, priv_mode_s;
    cp_scounteren_access_read_s:  cross csrr, counters_scounteren, priv_mode_s;
    cp_scounteren_access_read_m:  cross csrr, counters_scounteren, priv_mode_m; //m mode


endgroup


function void zicntrs_sample(int hart, int issue);
    ins_zicntrs_t ins;  

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    scounters_cg.sample(ins);
    
endfunction
