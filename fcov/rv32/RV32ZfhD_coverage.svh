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

`define COVER_RV32ZFHD
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv32zfhd_t;


covergroup fcvt_d_h_cg with function sample(ins_rv32zfhd_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.d.h";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.d.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_h_d_cg with function sample(ins_rv32zfhd_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.h.d";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.h.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_csr_fflags_vn : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

function void rv32zfhd_sample(int hart, int issue);
    ins_rv32zfhd_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "fcvt.d.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fcvt_d_h_cg.sample(ins); 
        end
        "fcvt.h.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fcvt_h_d_cg.sample(ins); 
        end
    endcase
endfunction
