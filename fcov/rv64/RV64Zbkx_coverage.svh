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

`define COVER_RV64ZBKX
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64zbkx_t;


covergroup xperm4_cg with function sample(ins_rv64zbkx_t ins);
    option.per_instance = 1; 
    option.comment = "xperm4";
    cp_asm_count : coverpoint ins.ins_str == "xperm4"  iff (ins.trap == 0 )  {
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

covergroup xperm8_cg with function sample(ins_rv64zbkx_t ins);
    option.per_instance = 1; 
    option.comment = "xperm8";
    cp_asm_count : coverpoint ins.ins_str == "xperm8"  iff (ins.trap == 0 )  {
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

function void rv64zbkx_sample(int hart, int issue);
    ins_rv64zbkx_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "xperm4"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            xperm4_cg.sample(ins); 
        end
        "xperm8"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            xperm8_cg.sample(ins); 
        end
    endcase
endfunction
