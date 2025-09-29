///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Corey Hickson chickson@hmc.edu 23 November 2024
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

`define COVER_EXCEPTIONSF
covergroup ExceptionsF_exceptions_cg with function sample(ins_t ins);
    option.per_instance = 0;

    // building blocks for the main coverpoints
    mstatus_FS_zero: coverpoint ins.prev.csr[12'h300][14:13] {
        bins disabled = {2'b00};
    }
    mstatus_FS_nonzero: coverpoint ins.prev.csr[12'h300][14:13] {
        bins enabled = {2'b01, 2'b10, 2'b11};
    }
    mstatus_FS_status: coverpoint ins.prev.csr[12'h300][14:13] {
        bins fs_initial = {2'b01};
        bins fs_clean   = {2'b10};
        bins fs_dirty   = {2'b11};
    }
    frm_illegal: coverpoint ins.prev.csr[12'h003][7:5] {
        bins reserved_5 = {3'b101};
        bins reserved_6 = {3'b110};
        bins reserved_7 = {3'b111};
    }
    frm_legal: coverpoint ins.prev.csr[12'h003][7:5] {
        bins legal_frm = {3'b000, 3'b001, 3'b010, 3'b011, 3'b100};
    }
    instrs: coverpoint ins.current.insn {
        wildcard bins fsw          = {32'b????????????_?????_010_?????_0100111};
        wildcard bins flw          = {32'b????????????_?????_010_?????_0000111};
        wildcard bins fadd         = {32'b00000_??_?????_?????_???_?????_1010011};
        wildcard bins fsub         = {32'b00001_??_?????_?????_???_?????_1010011};
        wildcard bins fmul         = {32'b00010_??_?????_?????_???_?????_1010011};
        wildcard bins fdiv         = {32'b00011_??_?????_?????_???_?????_1010011};
        wildcard bins fcvt_x_f     = {32'b11000_??_?????_?????_???_?????_1010011};
        wildcard bins fcvt_f_x     = {32'b11010_??_?????_?????_???_?????_1010011};
        wildcard bins fcvt_f_f     = {32'b01000_??_?????_?????_???_?????_1010011};
        wildcard bins fmadd        = {32'b?????_??_?????_?????_???_?????_1000011};
        wildcard bins fsqrt        = {32'b01011_??_00000_?????_???_?????_1010011};
        wildcard bins fsgnj        = {32'b00100_??_?????_?????_000_?????_1010011};
        wildcard bins feq          = {32'b10100_??_?????_?????_010_?????_1010011};
        wildcard bins fmv_x_f      = {32'b11100_??_00000_?????_000_?????_1010011};
        wildcard bins fmv_f_x      = {32'b11110_??_00000_?????_000_?????_1010011};
        wildcard bins fclass       = {32'b11100_??_00000_?????_001_?????_1010011};
        wildcard bins fmin         = {32'b00101_??_?????_?????_000_?????_1010011};
        wildcard bins fli          = {32'b11110_??_00001_?????_000_?????_1010011};
        wildcard bins fround       = {32'b01000_??_00100_?????_???_?????_1010011};
        wildcard bins csrrw_fcsr   = {32'b000000000011_?????_001_?????_1110011};
        wildcard bins csrrw_frm    = {32'b000000000010_?????_001_?????_1110011};
        wildcard bins csrrw_fflags = {32'b000000000001_?????_001_?????_1110011};
        wildcard bins csrrs_fcsr   = {32'b000000000011_?????_010_?????_1110011};
        wildcard bins csrrs_frm    = {32'b000000000010_?????_010_?????_1110011};
        wildcard bins csrrs_fflags = {32'b000000000001_?????_010_?????_1110011};
        wildcard bins csrrc_fcsr   = {32'b000000000011_?????_011_?????_1110011};
        wildcard bins csrrc_frm    = {32'b000000000010_?????_011_?????_1110011};
        wildcard bins csrrc_fflags = {32'b000000000001_?????_011_?????_1110011};
        `ifdef XLEN32
            wildcard bins fmvh         = {32'b1110001_00001_?????_000_?????_1010011};
            wildcard bins fmvp         = {32'b1011001_?????_?????_000_?????_1010011};
        `endif
    }

    // main coverpoints
    cp_mstatus_fs_illegal_instr: cross instrs, mstatus_FS_zero;
    // cp_mstatus_fs_csr_write:  redundant, covered by cp_mstatus_fs_illegal_instr
    cp_badfrm: cross instrs, mstatus_FS_nonzero, frm_illegal;
    cp_mstatus_fs_legal: cross instrs, mstatus_FS_status, frm_legal;
endgroup

function void exceptionsf_sample(int hart, int issue, ins_t ins);
    //$display("Mstatus FS: %b, frmIllegal: %b, op: %b, fmrBits: %b, imm: %b", ins.current.csr[12'h300][14:13], ins.current.csr[12'h003][7:5],  ins.current.insn[6:0], ins.current.insn[14:12], ins.current.insn[31:27]);
    ExceptionsF_exceptions_cg.sample(ins);


endfunction
