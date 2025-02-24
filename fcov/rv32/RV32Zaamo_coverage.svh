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

`define COVER_RV32ZAAMO
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv32zaamo_t;


covergroup amoadd_w_cg with function sample(ins_rv32zaamo_t ins);
    option.per_instance = 1; 
    option.comment = "amoadd.w";
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

covergroup amoand_w_cg with function sample(ins_rv32zaamo_t ins);
    option.per_instance = 1; 
    option.comment = "amoand.w";
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

covergroup amoaxor_w_cg with function sample(ins_rv32zaamo_t ins);
    option.per_instance = 1; 
    option.comment = "amoaxor.w";
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

covergroup amomax_w_cg with function sample(ins_rv32zaamo_t ins);
    option.per_instance = 1; 
    option.comment = "amomax.w";
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

covergroup amomaxu_w_cg with function sample(ins_rv32zaamo_t ins);
    option.per_instance = 1; 
    option.comment = "amomaxu.w";
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

covergroup amomin_w_cg with function sample(ins_rv32zaamo_t ins);
    option.per_instance = 1; 
    option.comment = "amomin.w";
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

covergroup amominu_w_cg with function sample(ins_rv32zaamo_t ins);
    option.per_instance = 1; 
    option.comment = "amominu.w";
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

covergroup amoor_w_cg with function sample(ins_rv32zaamo_t ins);
    option.per_instance = 1; 
    option.comment = "amoor.w";
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

covergroup amoswap_w_cg with function sample(ins_rv32zaamo_t ins);
    option.per_instance = 1; 
    option.comment = "amoswap.w";
    cp_asm_count : coverpoint ins.ins_str == "amoswap.w"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rs1 : coverpoint ins.get_gpr_reg(ins.current.rs1)  iff (ins.trap == 0 )  {
        option.comment = "RS1 register assignment";
    }
    cp_rs2 : coverpoint ins.get_gpr_reg(ins.current.rs2)  iff (ins.trap == 0 )  {
        option.comment = "RS2 register assignment";
    }
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

function void rv32zaamo_sample(int hart, int issue);
    ins_rv32zaamo_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "amoadd.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            amoadd_w_cg.sample(ins); 
        end
        "amoand.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            amoand_w_cg.sample(ins); 
        end
        "amoaxor.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            amoaxor_w_cg.sample(ins); 
        end
        "amomax.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            amomax_w_cg.sample(ins); 
        end
        "amomaxu.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            amomaxu_w_cg.sample(ins); 
        end
        "amomin.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            amomin_w_cg.sample(ins); 
        end
        "amominu.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            amominu_w_cg.sample(ins); 
        end
        "amoor.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            amoor_w_cg.sample(ins); 
        end
        "amoswap.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            amoswap_w_cg.sample(ins); 
        end
    endcase
endfunction
