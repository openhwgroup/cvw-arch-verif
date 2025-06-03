///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: James Kaden Cassidy jacassidy@hmc.edu 28 Mar 2025
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

`define COVER_EXCEPTIONSV

covergroup ExceptionsV_exceptions_cg with function sample(ins_t ins);
    option.per_instance = 0;

    test: coverpoint ins.current.insn[0] {
        bins one    = {0};
        bins two    = {1};
        bins one_one    = {1'b0};
        bins one_two    = {1'b1};
    }

    // vl_ff: coverpoint ins.current.insn { //vector load fault first operation
    //     bins load = {32'b???_0_00_?_10000_?????_???_?????_0000111};
    // }

    // vl_update: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vl", "vl") !=
    //                        get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vl", "vl")) {
    //     bins vl_updated = {1'b1};
    // }


//     Test: coverpoint ins.current.insn[31:29] {
//         bins one    = {3'b000};
//         bins two    = {3'b001};
//         bins three  = {3'b010};
//         bins four   = {3'b011};
//         bins five   = {3'b100};
//         bins six    = {3'b101};
//         bins seven  = {3'b110};
//         bins eight  = {3'b111};
//     }

//     //TODO find new home for coverpoint bellow on spreadsheet

//     vstart_write: coverpoint ins.current.insn {
//         wildcard bins vstart_csrrw     = {32'b000000001000_?????_001_?????_1110011};
//     }

//     rs1_val_pow_2: coverpoint unsigned'(ins.current.rs1_val) {
//         bins zero = {1};
//         bins one = {2};
//         bins two = {4};
//         bins three = {8};
//         bins four = {16};
//         bins five = {32};
//         bins six = {64};
//         bins seven = {128};
//         bins eight = {256};
//         bins nine = {512};
//         bins ten = {1024};
//         bins eleven = {2048};
//         bins twelve = {4096};
//         bins thirteen = {8192};
//         bins fourteen = {16384};
//         bins fifteen = {32768};
//         bins sixteen = {65536};
//     }

//     set_vstart_pow_2: cross vstart_write, rs1_val_pow_2;

//     arithmatic_vstart_pow_2: cross vstart_write, rs1_val_pow_2, vector_vector_arithmatic_instruction;

//     //TODO find new home for coverpoint above on spreadsheet (currently at top of exceptions I think)


//     vstart_set_non_zero: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart") == '0 &
//                                      get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vstart", "vstart") != '0) {
//         //boolean coverpoint
//     }

//     vector_vector_arithmatic_instruction: coverpoint ins.current.insn[14:0] {
//         bins arithmatic_vv_opcode = {15'b000_?????_1010111};
//     }

//     vtype_prev_vill_set: coverpoint 1'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vill")) {
//         bins vill_set = {1'b1};
//     }
//     //TODO coverpoint may be unreachable
//     vstart_not_modified_illegal_instruction: cross vtype_prev_vill_set, vector_vector_arithmatic_instruction, vstart_set_non_zero;

endgroup


function void exceptionsv_sample(int hart, int issue, ins_t ins);
    // if(traceDataQ[hart][issue][0].inst_name[0] == "v") begin
        ExceptionsV_exceptions_cg.sample(ins);
    // end
endfunction
