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

covergroup ZicntrS_scounters_cg with function sample(ins_zicntrs_t ins);
    option.per_instance = 0; 
    // counter access in supervisor mode

    // building blocks for the main coverpoints
    mcounteren: coverpoint ins.current.insn[31:20]{
        bins mcounteren = {12'h306};
    }
    scounteren: coverpoint ins.current.insn[31:20]{
        bins scounteren = {12'h106};
    }
    mcounteren_ones: coverpoint ins.current.csr[12'h306]{
        bins ones = {32'b11111111111111111111111111111111};
    }
    counters_scounteren: coverpoint {ins.current.insn[31:20], ins.current.csr[12'h106]} {
        bins cycle_enabled         = {12'hC00, 32'b00000000000000000000000000000001};
        bins time_enabled          = {12'hC01, 32'b00000000000000000000000000000010};
        bins instret_enabled       = {12'hC02, 32'b00000000000000000000000000000100};
        bins hpmcounter3_enabled   = {12'hC03, 32'b00000000000000000000000000001000};
        bins hpmcounter4_enabled   = {12'hC04, 32'b00000000000000000000000000010000};
        bins hpmcounter5_enabled   = {12'hC05, 32'b00000000000000000000000000100000};
        bins hpmcounter6_enabled   = {12'hC06, 32'b00000000000000000000000001000000};
        bins hpmcounter7_enabled   = {12'hC07, 32'b00000000000000000000000010000000};
        bins hpmcounter8_enabled   = {12'hC08, 32'b00000000000000000000000100000000};
        bins hpmcounter9_enabled   = {12'hC09, 32'b00000000000000000000001000000000};
        bins hpmcounter10_enabled  = {12'hC0A, 32'b00000000000000000000010000000000};
        bins hpmcounter11_enabled  = {12'hC0B, 32'b00000000000000000000100000000000};
        bins hpmcounter12_enabled  = {12'hC0C, 32'b00000000000000000001000000000000};
        bins hpmcounter13_enabled  = {12'hC0D, 32'b00000000000000000010000000000000};
        bins hpmcounter14_enabled  = {12'hC0E, 32'b00000000000000000100000000000000};
        bins hpmcounter15_enabled  = {12'hC0F, 32'b00000000000000001000000000000000};
        bins hpmcounter16_enabled  = {12'hC10, 32'b00000000000000010000000000000000};
        bins hpmcounter17_enabled  = {12'hC11, 32'b00000000000000100000000000000000};
        bins hpmcounter18_enabled  = {12'hC12, 32'b00000000000001000000000000000000};
        bins hpmcounter19_enabled  = {12'hC13, 32'b00000000000010000000000000000000};
        bins hpmcounter20_enabled  = {12'hC14, 32'b00000000000100000000000000000000};
        bins hpmcounter21_enabled  = {12'hC15, 32'b00000000001000000000000000000000};
        bins hpmcounter22_enabled  = {12'hC16, 32'b00000000010000000000000000000000};
        bins hpmcounter23_enabled  = {12'hC17, 32'b00000000100000000000000000000000};
        bins hpmcounter24_enabled  = {12'hC18, 32'b00000001000000000000000000000000};
        bins hpmcounter25_enabled  = {12'hC19, 32'b00000010000000000000000000000000};
        bins hpmcounter26_enabled  = {12'hC1A, 32'b00000100000000000000000000000000};
        bins hpmcounter27_enabled  = {12'hC1B, 32'b00001000000000000000000000000000};
        bins hpmcounter28_enabled  = {12'hC1C, 32'b00010000000000000000000000000000};
        bins hpmcounter29_enabled  = {12'hC1D, 32'b00100000000000000000000000000000};
        bins hpmcounter30_enabled  = {12'hC1E, 32'b01000000000000000000000000000000};
        bins hpmcounter31_enabled  = {12'hC1F, 32'b10000000000000000000000000000000};

        bins cycle_disabled         = {12'hC00, 32'b11111111111111111111111111111110};
        bins time_disabled          = {12'hC01, 32'b11111111111111111111111111111101};
        bins instret_disabled       = {12'hC02, 32'b11111111111111111111111111111011};
        bins hpmcounter3_disabled   = {12'hC03, 32'b11111111111111111111111111110111};
        bins hpmcounter4_disabled   = {12'hC04, 32'b11111111111111111111111111101111};
        bins hpmcounter5_disabled   = {12'hC05, 32'b11111111111111111111111111011111};
        bins hpmcounter6_disabled   = {12'hC06, 32'b11111111111111111111111110111111};
        bins hpmcounter7_disabled   = {12'hC07, 32'b11111111111111111111111101111111};
        bins hpmcounter8_disabled   = {12'hC08, 32'b11111111111111111111111011111111};
        bins hpmcounter9_disabled   = {12'hC09, 32'b11111111111111111111110111111111};
        bins hpmcounter10_disabled  = {12'hC0A, 32'b11111111111111111111101111111111};
        bins hpmcounter11_disabled  = {12'hC0B, 32'b11111111111111111111011111111111};
        bins hpmcounter12_disabled  = {12'hC0C, 32'b11111111111111111110111111111111};
        bins hpmcounter13_disabled  = {12'hC0D, 32'b11111111111111111101111111111111};
        bins hpmcounter14_disabled  = {12'hC0E, 32'b11111111111111111011111111111111};
        bins hpmcounter15_disabled  = {12'hC0F, 32'b11111111111111110111111111111111};
        bins hpmcounter16_disabled  = {12'hC10, 32'b11111111111111101111111111111111};
        bins hpmcounter17_disabled  = {12'hC11, 32'b11111111111111011111111111111111};
        bins hpmcounter18_disabled  = {12'hC12, 32'b11111111111110111111111111111111};
        bins hpmcounter19_disabled  = {12'hC13, 32'b11111111111101111111111111111111};
        bins hpmcounter20_disabled  = {12'hC14, 32'b11111111111011111111111111111111};
        bins hpmcounter21_disabled  = {12'hC15, 32'b11111111110111111111111111111111};
        bins hpmcounter22_disabled  = {12'hC16, 32'b11111111101111111111111111111111};
        bins hpmcounter23_disabled  = {12'hC17, 32'b11111111011111111111111111111111};
        bins hpmcounter24_disabled  = {12'hC18, 32'b11111110111111111111111111111111};
        bins hpmcounter25_disabled  = {12'hC19, 32'b11111101111111111111111111111111};
        bins hpmcounter26_disabled  = {12'hC1A, 32'b11111011111111111111111111111111};
        bins hpmcounter27_disabled  = {12'hC1B, 32'b11110111111111111111111111111111};
        bins hpmcounter28_disabled  = {12'hC1C, 32'b11101111111111111111111111111111};
        bins hpmcounter29_disabled  = {12'hC1D, 32'b11011111111111111111111111111111};
        bins hpmcounter30_disabled  = {12'hC1E, 32'b10111111111111111111111111111111};
        bins hpmcounter31_disabled  = {12'hC1F, 32'b01111111111111111111111111111111};

        `ifdef XLEN32
            bins cycleh_enabled         = {12'hC80, 32'b00000000000000000000000000000001};
            bins timeh_enabled          = {12'hC81, 32'b00000000000000000000000000000010};
            bins instreth_enabled       = {12'hC82, 32'b00000000000000000000000000000100};
            bins hpmcounter3h_enabled   = {12'hC83, 32'b00000000000000000000000000001000};
            bins hpmcounter4h_enabled   = {12'hC84, 32'b00000000000000000000000000010000};
            bins hpmcounter5h_enabled   = {12'hC85, 32'b00000000000000000000000000100000};
            bins hpmcounter6h_enabled   = {12'hC86, 32'b00000000000000000000000001000000};
            bins hpmcounter7h_enabled   = {12'hC87, 32'b00000000000000000000000010000000};
            bins hpmcounter8h_enabled   = {12'hC88, 32'b00000000000000000000000100000000};
            bins hpmcounter9h_enabled   = {12'hC89, 32'b00000000000000000000001000000000};
            bins hpmcounter10h_enabled  = {12'hC8A, 32'b00000000000000000000010000000000};
            bins hpmcounter11h_enabled  = {12'hC8B, 32'b00000000000000000000100000000000};
            bins hpmcounter12h_enabled  = {12'hC8C, 32'b00000000000000000001000000000000};
            bins hpmcounter13h_enabled  = {12'hC8D, 32'b00000000000000000010000000000000};
            bins hpmcounter14h_enabled  = {12'hC8E, 32'b00000000000000000100000000000000};
            bins hpmcounter15h_enabled  = {12'hC8F, 32'b00000000000000001000000000000000};
            bins hpmcounter16h_enabled  = {12'hC90, 32'b00000000000000010000000000000000};
            bins hpmcounter17h_enabled  = {12'hC91, 32'b00000000000000100000000000000000};
            bins hpmcounter18h_enabled  = {12'hC92, 32'b00000000000001000000000000000000};
            bins hpmcounter19h_enabled  = {12'hC93, 32'b00000000000010000000000000000000};
            bins hpmcounter20h_enabled  = {12'hC94, 32'b00000000000100000000000000000000};
            bins hpmcounter21h_enabled  = {12'hC95, 32'b00000000001000000000000000000000};
            bins hpmcounter22h_enabled  = {12'hC96, 32'b00000000010000000000000000000000};
            bins hpmcounter23h_enabled  = {12'hC97, 32'b00000000100000000000000000000000};
            bins hpmcounter24h_enabled  = {12'hC98, 32'b00000001000000000000000000000000};
            bins hpmcounter25h_enabled  = {12'hC99, 32'b00000010000000000000000000000000};
            bins hpmcounter26h_enabled  = {12'hC9A, 32'b00000100000000000000000000000000};
            bins hpmcounter27h_enabled  = {12'hC9B, 32'b00001000000000000000000000000000};
            bins hpmcounter28h_enabled  = {12'hC9C, 32'b00010000000000000000000000000000};
            bins hpmcounter29h_enabled  = {12'hC9D, 32'b00100000000000000000000000000000};
            bins hpmcounter30h_enabled  = {12'hC9E, 32'b01000000000000000000000000000000};
            bins hpmcounter31h_enabled  = {12'hC9F, 32'b10000000000000000000000000000000};

            bins cycleh_disabled         = {12'hC80, 32'b11111111111111111111111111111110};
            bins timeh_disabled          = {12'hC81, 32'b11111111111111111111111111111101};
            bins instreth_disabled       = {12'hC82, 32'b11111111111111111111111111111011};
            bins hpmcounter3h_disabled   = {12'hC83, 32'b11111111111111111111111111110111};
            bins hpmcounter4h_disabled   = {12'hC84, 32'b11111111111111111111111111101111};
            bins hpmcounter5h_disabled   = {12'hC85, 32'b11111111111111111111111111011111};
            bins hpmcounter6h_disabled   = {12'hC86, 32'b11111111111111111111111110111111};
            bins hpmcounter7h_disabled   = {12'hC87, 32'b11111111111111111111111101111111};
            bins hpmcounter8h_disabled   = {12'hC88, 32'b11111111111111111111111011111111};
            bins hpmcounter9h_disabled   = {12'hC89, 32'b11111111111111111111110111111111};
            bins hpmcounter10h_disabled  = {12'hC8A, 32'b11111111111111111111101111111111};
            bins hpmcounter11h_disabled  = {12'hC8B, 32'b11111111111111111111011111111111};
            bins hpmcounter12h_disabled  = {12'hC8C, 32'b11111111111111111110111111111111};
            bins hpmcounter13h_disabled  = {12'hC8D, 32'b11111111111111111101111111111111};
            bins hpmcounter14h_disabled  = {12'hC8E, 32'b11111111111111111011111111111111};
            bins hpmcounter15h_disabled  = {12'hC8F, 32'b11111111111111110111111111111111};
            bins hpmcounter16h_disabled  = {12'hC90, 32'b11111111111111101111111111111111};
            bins hpmcounter17h_disabled  = {12'hC91, 32'b11111111111111011111111111111111};
            bins hpmcounter18h_disabled  = {12'hC92, 32'b11111111111110111111111111111111};
            bins hpmcounter19h_disabled  = {12'hC93, 32'b11111111111101111111111111111111};
            bins hpmcounter20h_disabled  = {12'hC94, 32'b11111111111011111111111111111111};
            bins hpmcounter21h_disabled  = {12'hC95, 32'b11111111110111111111111111111111};
            bins hpmcounter22h_disabled  = {12'hC96, 32'b11111111101111111111111111111111};
            bins hpmcounter23h_disabled  = {12'hC97, 32'b11111111011111111111111111111111};
            bins hpmcounter24h_disabled  = {12'hC98, 32'b11111110111111111111111111111111};
            bins hpmcounter25h_disabled  = {12'hC99, 32'b11111101111111111111111111111111};
            bins hpmcounter26h_disabled  = {12'hC9A, 32'b11111011111111111111111111111111};
            bins hpmcounter27h_disabled  = {12'hC9B, 32'b11110111111111111111111111111111};
            bins hpmcounter28h_disabled  = {12'hC9C, 32'b11101111111111111111111111111111};
            bins hpmcounter29h_disabled  = {12'hC9D, 32'b11011111111111111111111111111111};
            bins hpmcounter30h_disabled  = {12'hC9E, 32'b10111111111111111111111111111111};
            bins hpmcounter31h_disabled  = {12'hC9F, 32'b01111111111111111111111111111111};
        `endif
    }
    counters_mcounteren: coverpoint {ins.current.insn[31:20], ins.current.csr[12'h306]} {
        bins cycle_enabled         = {12'hC00, 32'b00000000000000000000000000000001};
        bins time_enabled          = {12'hC01, 32'b00000000000000000000000000000010};
        bins instret_enabled       = {12'hC02, 32'b00000000000000000000000000000100};
        bins hpmcounter3_enabled   = {12'hC03, 32'b00000000000000000000000000001000};
        bins hpmcounter4_enabled   = {12'hC04, 32'b00000000000000000000000000010000};
        bins hpmcounter5_enabled   = {12'hC05, 32'b00000000000000000000000000100000};
        bins hpmcounter6_enabled   = {12'hC06, 32'b00000000000000000000000001000000};
        bins hpmcounter7_enabled   = {12'hC07, 32'b00000000000000000000000010000000};
        bins hpmcounter8_enabled   = {12'hC08, 32'b00000000000000000000000100000000};
        bins hpmcounter9_enabled   = {12'hC09, 32'b00000000000000000000001000000000};
        bins hpmcounter10_enabled  = {12'hC0A, 32'b00000000000000000000010000000000};
        bins hpmcounter11_enabled  = {12'hC0B, 32'b00000000000000000000100000000000};
        bins hpmcounter12_enabled  = {12'hC0C, 32'b00000000000000000001000000000000};
        bins hpmcounter13_enabled  = {12'hC0D, 32'b00000000000000000010000000000000};
        bins hpmcounter14_enabled  = {12'hC0E, 32'b00000000000000000100000000000000};
        bins hpmcounter15_enabled  = {12'hC0F, 32'b00000000000000001000000000000000};
        bins hpmcounter16_enabled  = {12'hC10, 32'b00000000000000010000000000000000};
        bins hpmcounter17_enabled  = {12'hC11, 32'b00000000000000100000000000000000};
        bins hpmcounter18_enabled  = {12'hC12, 32'b00000000000001000000000000000000};
        bins hpmcounter19_enabled  = {12'hC13, 32'b00000000000010000000000000000000};
        bins hpmcounter20_enabled  = {12'hC14, 32'b00000000000100000000000000000000};
        bins hpmcounter21_enabled  = {12'hC15, 32'b00000000001000000000000000000000};
        bins hpmcounter22_enabled  = {12'hC16, 32'b00000000010000000000000000000000};
        bins hpmcounter23_enabled  = {12'hC17, 32'b00000000100000000000000000000000};
        bins hpmcounter24_enabled  = {12'hC18, 32'b00000001000000000000000000000000};
        bins hpmcounter25_enabled  = {12'hC19, 32'b00000010000000000000000000000000};
        bins hpmcounter26_enabled  = {12'hC1A, 32'b00000100000000000000000000000000};
        bins hpmcounter27_enabled  = {12'hC1B, 32'b00001000000000000000000000000000};
        bins hpmcounter28_enabled  = {12'hC1C, 32'b00010000000000000000000000000000};
        bins hpmcounter29_enabled  = {12'hC1D, 32'b00100000000000000000000000000000};
        bins hpmcounter30_enabled  = {12'hC1E, 32'b01000000000000000000000000000000};
        bins hpmcounter31_enabled  = {12'hC1F, 32'b10000000000000000000000000000000};

        bins cycle_disabled         = {12'hC00, 32'b11111111111111111111111111111110};
        bins time_disabled          = {12'hC01, 32'b11111111111111111111111111111101};
        bins instret_disabled       = {12'hC02, 32'b11111111111111111111111111111011};
        bins hpmcounter3_disabled   = {12'hC03, 32'b11111111111111111111111111110111};
        bins hpmcounter4_disabled   = {12'hC04, 32'b11111111111111111111111111101111};
        bins hpmcounter5_disabled   = {12'hC05, 32'b11111111111111111111111111011111};
        bins hpmcounter6_disabled   = {12'hC06, 32'b11111111111111111111111110111111};
        bins hpmcounter7_disabled   = {12'hC07, 32'b11111111111111111111111101111111};
        bins hpmcounter8_disabled   = {12'hC08, 32'b11111111111111111111111011111111};
        bins hpmcounter9_disabled   = {12'hC09, 32'b11111111111111111111110111111111};
        bins hpmcounter10_disabled  = {12'hC0A, 32'b11111111111111111111101111111111};
        bins hpmcounter11_disabled  = {12'hC0B, 32'b11111111111111111111011111111111};
        bins hpmcounter12_disabled  = {12'hC0C, 32'b11111111111111111110111111111111};
        bins hpmcounter13_disabled  = {12'hC0D, 32'b11111111111111111101111111111111};
        bins hpmcounter14_disabled  = {12'hC0E, 32'b11111111111111111011111111111111};
        bins hpmcounter15_disabled  = {12'hC0F, 32'b11111111111111110111111111111111};
        bins hpmcounter16_disabled  = {12'hC10, 32'b11111111111111101111111111111111};
        bins hpmcounter17_disabled  = {12'hC11, 32'b11111111111111011111111111111111};
        bins hpmcounter18_disabled  = {12'hC12, 32'b11111111111110111111111111111111};
        bins hpmcounter19_disabled  = {12'hC13, 32'b11111111111101111111111111111111};
        bins hpmcounter20_disabled  = {12'hC14, 32'b11111111111011111111111111111111};
        bins hpmcounter21_disabled  = {12'hC15, 32'b11111111110111111111111111111111};
        bins hpmcounter22_disabled  = {12'hC16, 32'b11111111101111111111111111111111};
        bins hpmcounter23_disabled  = {12'hC17, 32'b11111111011111111111111111111111};
        bins hpmcounter24_disabled  = {12'hC18, 32'b11111110111111111111111111111111};
        bins hpmcounter25_disabled  = {12'hC19, 32'b11111101111111111111111111111111};
        bins hpmcounter26_disabled  = {12'hC1A, 32'b11111011111111111111111111111111};
        bins hpmcounter27_disabled  = {12'hC1B, 32'b11110111111111111111111111111111};
        bins hpmcounter28_disabled  = {12'hC1C, 32'b11101111111111111111111111111111};
        bins hpmcounter29_disabled  = {12'hC1D, 32'b11011111111111111111111111111111};
        bins hpmcounter30_disabled  = {12'hC1E, 32'b10111111111111111111111111111111};
        bins hpmcounter31_disabled  = {12'hC1F, 32'b01111111111111111111111111111111};

        `ifdef XLEN32
            bins cycleh_enabled         = {12'hC80, 32'b00000000000000000000000000000001};
            bins timeh_enabled          = {12'hC81, 32'b00000000000000000000000000000010};
            bins instreth_enabled       = {12'hC82, 32'b00000000000000000000000000000100};
            bins hpmcounter3h_enabled   = {12'hC83, 32'b00000000000000000000000000001000};
            bins hpmcounter4h_enabled   = {12'hC84, 32'b00000000000000000000000000010000};
            bins hpmcounter5h_enabled   = {12'hC85, 32'b00000000000000000000000000100000};
            bins hpmcounter6h_enabled   = {12'hC86, 32'b00000000000000000000000001000000};
            bins hpmcounter7h_enabled   = {12'hC87, 32'b00000000000000000000000010000000};
            bins hpmcounter8h_enabled   = {12'hC88, 32'b00000000000000000000000100000000};
            bins hpmcounter9h_enabled   = {12'hC89, 32'b00000000000000000000001000000000};
            bins hpmcounter10h_enabled  = {12'hC8A, 32'b00000000000000000000010000000000};
            bins hpmcounter11h_enabled  = {12'hC8B, 32'b00000000000000000000100000000000};
            bins hpmcounter12h_enabled  = {12'hC8C, 32'b00000000000000000001000000000000};
            bins hpmcounter13h_enabled  = {12'hC8D, 32'b00000000000000000010000000000000};
            bins hpmcounter14h_enabled  = {12'hC8E, 32'b00000000000000000100000000000000};
            bins hpmcounter15h_enabled  = {12'hC8F, 32'b00000000000000001000000000000000};
            bins hpmcounter16h_enabled  = {12'hC90, 32'b00000000000000010000000000000000};
            bins hpmcounter17h_enabled  = {12'hC91, 32'b00000000000000100000000000000000};
            bins hpmcounter18h_enabled  = {12'hC92, 32'b00000000000001000000000000000000};
            bins hpmcounter19h_enabled  = {12'hC93, 32'b00000000000010000000000000000000};
            bins hpmcounter20h_enabled  = {12'hC94, 32'b00000000000100000000000000000000};
            bins hpmcounter21h_enabled  = {12'hC95, 32'b00000000001000000000000000000000};
            bins hpmcounter22h_enabled  = {12'hC96, 32'b00000000010000000000000000000000};
            bins hpmcounter23h_enabled  = {12'hC97, 32'b00000000100000000000000000000000};
            bins hpmcounter24h_enabled  = {12'hC98, 32'b00000001000000000000000000000000};
            bins hpmcounter25h_enabled  = {12'hC99, 32'b00000010000000000000000000000000};
            bins hpmcounter26h_enabled  = {12'hC9A, 32'b00000100000000000000000000000000};
            bins hpmcounter27h_enabled  = {12'hC9B, 32'b00001000000000000000000000000000};
            bins hpmcounter28h_enabled  = {12'hC9C, 32'b00010000000000000000000000000000};
            bins hpmcounter29h_enabled  = {12'hC9D, 32'b00100000000000000000000000000000};
            bins hpmcounter30h_enabled  = {12'hC9E, 32'b01000000000000000000000000000000};
            bins hpmcounter31h_enabled  = {12'hC9F, 32'b10000000000000000000000000000000};

            bins cycleh_disabled         = {12'hC80, 32'b11111111111111111111111111111110};
            bins timeh_disabled          = {12'hC81, 32'b11111111111111111111111111111101};
            bins instreth_disabled       = {12'hC82, 32'b11111111111111111111111111111011};
            bins hpmcounter3h_disabled   = {12'hC83, 32'b11111111111111111111111111110111};
            bins hpmcounter4h_disabled   = {12'hC84, 32'b11111111111111111111111111101111};
            bins hpmcounter5h_disabled   = {12'hC85, 32'b11111111111111111111111111011111};
            bins hpmcounter6h_disabled   = {12'hC86, 32'b11111111111111111111111110111111};
            bins hpmcounter7h_disabled   = {12'hC87, 32'b11111111111111111111111101111111};
            bins hpmcounter8h_disabled   = {12'hC88, 32'b11111111111111111111111011111111};
            bins hpmcounter9h_disabled   = {12'hC89, 32'b11111111111111111111110111111111};
            bins hpmcounter10h_disabled  = {12'hC8A, 32'b11111111111111111111101111111111};
            bins hpmcounter11h_disabled  = {12'hC8B, 32'b11111111111111111111011111111111};
            bins hpmcounter12h_disabled  = {12'hC8C, 32'b11111111111111111110111111111111};
            bins hpmcounter13h_disabled  = {12'hC8D, 32'b11111111111111111101111111111111};
            bins hpmcounter14h_disabled  = {12'hC8E, 32'b11111111111111111011111111111111};
            bins hpmcounter15h_disabled  = {12'hC8F, 32'b11111111111111110111111111111111};
            bins hpmcounter16h_disabled  = {12'hC90, 32'b11111111111111101111111111111111};
            bins hpmcounter17h_disabled  = {12'hC91, 32'b11111111111111011111111111111111};
            bins hpmcounter18h_disabled  = {12'hC92, 32'b11111111111110111111111111111111};
            bins hpmcounter19h_disabled  = {12'hC93, 32'b11111111111101111111111111111111};
            bins hpmcounter20h_disabled  = {12'hC94, 32'b11111111111011111111111111111111};
            bins hpmcounter21h_disabled  = {12'hC95, 32'b11111111110111111111111111111111};
            bins hpmcounter22h_disabled  = {12'hC96, 32'b11111111101111111111111111111111};
            bins hpmcounter23h_disabled  = {12'hC97, 32'b11111111011111111111111111111111};
            bins hpmcounter24h_disabled  = {12'hC98, 32'b11111110111111111111111111111111};
            bins hpmcounter25h_disabled  = {12'hC99, 32'b11111101111111111111111111111111};
            bins hpmcounter26h_disabled  = {12'hC9A, 32'b11111011111111111111111111111111};
            bins hpmcounter27h_disabled  = {12'hC9B, 32'b11110111111111111111111111111111};
            bins hpmcounter28h_disabled  = {12'hC9C, 32'b11101111111111111111111111111111};
            bins hpmcounter29h_disabled  = {12'hC9D, 32'b11011111111111111111111111111111};
            bins hpmcounter30h_disabled  = {12'hC9E, 32'b10111111111111111111111111111111};
            bins hpmcounter31h_disabled  = {12'hC9F, 32'b01111111111111111111111111111111};
        `endif
    }
    walking_ones_zeros: coverpoint ins.current.rs1_val[31:0] {
        bins b_0_1  = {32'b00000000000000000000000000000001};
        bins b_1_1  = {32'b00000000000000000000000000000010};
        bins b_2_1  = {32'b00000000000000000000000000000100};
        bins b_3_1  = {32'b00000000000000000000000000001000};
        bins b_4_1  = {32'b00000000000000000000000000010000};
        bins b_5_1  = {32'b00000000000000000000000000100000};
        bins b_6_1  = {32'b00000000000000000000000001000000};
        bins b_7_1  = {32'b00000000000000000000000010000000};
        bins b_8_1  = {32'b00000000000000000000000100000000};
        bins b_9_1  = {32'b00000000000000000000001000000000};
        bins b_10_1 = {32'b00000000000000000000010000000000};
        bins b_11_1 = {32'b00000000000000000000100000000000};
        bins b_12_1 = {32'b00000000000000000001000000000000};
        bins b_13_1 = {32'b00000000000000000010000000000000};
        bins b_14_1 = {32'b00000000000000000100000000000000};
        bins b_15_1 = {32'b00000000000000001000000000000000};
        bins b_16_1 = {32'b00000000000000010000000000000000};
        bins b_17_1 = {32'b00000000000000100000000000000000};
        bins b_18_1 = {32'b00000000000001000000000000000000};
        bins b_19_1 = {32'b00000000000010000000000000000000};
        bins b_20_1 = {32'b00000000000100000000000000000000};
        bins b_21_1 = {32'b00000000001000000000000000000000};
        bins b_22_1 = {32'b00000000010000000000000000000000};
        bins b_23_1 = {32'b00000000100000000000000000000000};
        bins b_24_1 = {32'b00000001000000000000000000000000};
        bins b_25_1 = {32'b00000010000000000000000000000000};
        bins b_26_1 = {32'b00000100000000000000000000000000};
        bins b_27_1 = {32'b00001000000000000000000000000000};
        bins b_28_1 = {32'b00010000000000000000000000000000};
        bins b_29_1 = {32'b00100000000000000000000000000000};
        bins b_30_1 = {32'b01000000000000000000000000000000};
        bins b_31_1 = {32'b10000000000000000000000000000000};
        bins b_0_0  = {32'b11111111111111111111111111111110};
        bins b_1_0  = {32'b11111111111111111111111111111101};
        bins b_2_0  = {32'b11111111111111111111111111111011};
        bins b_3_0  = {32'b11111111111111111111111111110111};
        bins b_4_0  = {32'b11111111111111111111111111101111};
        bins b_5_0  = {32'b11111111111111111111111111011111};
        bins b_6_0  = {32'b11111111111111111111111110111111};
        bins b_7_0  = {32'b11111111111111111111111101111111};
        bins b_8_0  = {32'b11111111111111111111111011111111};
        bins b_9_0  = {32'b11111111111111111111110111111111};
        bins b_10_0 = {32'b11111111111111111111101111111111};
        bins b_11_0 = {32'b11111111111111111111011111111111};
        bins b_12_0 = {32'b11111111111111111110111111111111};
        bins b_13_0 = {32'b11111111111111111101111111111111};
        bins b_14_0 = {32'b11111111111111111011111111111111};
        bins b_15_0 = {32'b11111111111111110111111111111111};
        bins b_16_0 = {32'b11111111111111101111111111111111};
        bins b_17_0 = {32'b11111111111111011111111111111111};
        bins b_18_0 = {32'b11111111111110111111111111111111};
        bins b_19_0 = {32'b11111111111101111111111111111111};
        bins b_20_0 = {32'b11111111111011111111111111111111};
        bins b_21_0 = {32'b11111111110111111111111111111111};
        bins b_22_0 = {32'b11111111101111111111111111111111};
        bins b_23_0 = {32'b11111111011111111111111111111111};
        bins b_24_0 = {32'b11111110111111111111111111111111};
        bins b_25_0 = {32'b11111101111111111111111111111111};
        bins b_26_0 = {32'b11111011111111111111111111111111};
        bins b_27_0 = {32'b11110111111111111111111111111111};
        bins b_28_0 = {32'b11101111111111111111111111111111};
        bins b_29_0 = {32'b11011111111111111111111111111111};
        bins b_30_0 = {32'b10111111111111111111111111111111};
        bins b_31_0 = {32'b01111111111111111111111111111111};
    }
    priv_mode_u: coverpoint ins.current.mode { 
       bins U_mode = {2'b00};  
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

    // main coverpoints
    cp_scounteren_write:    cross csrrw, walking_ones_zeros, scounteren, priv_mode_s;
    cp_mcounteren_access_s: cross csrr, counters_mcounteren, priv_mode_s;
    cp_scounteren_access_s: cross csrr, counters_scounteren, mcounteren_ones, priv_mode_s;
    cp_scounteren_access_m: cross csrr, counters_scounteren, mcounteren_ones, priv_mode_m;
    cp_scounteren_access_u: cross csrr, counters_scounteren, mcounteren_ones, priv_mode_u;
    cp_mcounteren_access_u: cross csrr, counters_mcounteren, priv_mode_u iff (ins.current.csr[12'h306] == ins.current.csr[12'h106]);

endgroup


function void zicntrs_sample(int hart, int issue);
    ins_zicntrs_t ins;  

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    ZicntrS_scounters_cg.sample(ins);
    
endfunction
