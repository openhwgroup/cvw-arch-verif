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

`define COVER_RV64ZICOND
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64zicond_t;


covergroup czero_eqz_cg with function sample(ins_rv64zicond_t ins);
    option.per_instance = 1; 
    option.comment = "czero.eqz";
    cp_asm_count : coverpoint ins.ins_str == "czero.eqz"  iff (ins.trap == 0 )  {
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
    cp_rd_corners : coverpoint unsigned'(ins.current.rd_val)  iff (ins.trap == 0 )  {
        option.comment = "RD Corners";
        wildcard bins zero  = {0};
        wildcard bins one      = {64'b0000000000000000000000000000000000000000000000000000000000000001};
        wildcard bins two      = {64'b0000000000000000000000000000000000000000000000000000000000000010};
        wildcard bins min      = {64'b1000000000000000000000000000000000000000000000000000000000000000};
        wildcard bins minp1    = {64'b1000000000000000000000000000000000000000000000000000000000000001}; 
        wildcard bins Wmax     = {64'b0000000000000000000000000000000011111111111111111111111111111111};
        wildcard bins Wmaxm1   = {64'b0000000000000000000000000000000011111111111111111111111111111110};
        wildcard bins Wmaxp1   = {64'b0000000000000000000000000000000100000000000000000000000000000000}; 
        wildcard bins Wmaxp2   = {64'b0000000000000000000000000000000100000000000000000000000000000001}; 
        wildcard bins max      = {64'b0111111111111111111111111111111111111111111111111111111111111111}; 
        wildcard bins maxm1    = {64'b0111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins ones     = {64'b1111111111111111111111111111111111111111111111111111111111111111};
        wildcard bins onesm1   = {64'b1111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins walkeodd = {64'b1010101010101010101010101010101010101010101010101010101010101010};
        wildcard bins walkeven = {64'b0101010101010101010101010101010101010101010101010101010101010101};
        wildcard bins random   = {64'b0101101110111100100010000111011101100011101011101000011011110111};
    }
    cp_rs1_corners : coverpoint unsigned'(ins.current.rs1_val)  iff (ins.trap == 0 )  {
        option.comment = "RS1 Corners";
        wildcard bins zero  = {0};
        wildcard bins one      = {64'b0000000000000000000000000000000000000000000000000000000000000001};
        wildcard bins two      = {64'b0000000000000000000000000000000000000000000000000000000000000010};
        wildcard bins min      = {64'b1000000000000000000000000000000000000000000000000000000000000000};
        wildcard bins minp1    = {64'b1000000000000000000000000000000000000000000000000000000000000001}; 
        wildcard bins Wmax     = {64'b0000000000000000000000000000000011111111111111111111111111111111};
        wildcard bins Wmaxm1   = {64'b0000000000000000000000000000000011111111111111111111111111111110};
        wildcard bins Wmaxp1   = {64'b0000000000000000000000000000000100000000000000000000000000000000}; 
        wildcard bins Wmaxp2   = {64'b0000000000000000000000000000000100000000000000000000000000000001}; 
        wildcard bins max      = {64'b0111111111111111111111111111111111111111111111111111111111111111}; 
        wildcard bins maxm1    = {64'b0111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins ones     = {64'b1111111111111111111111111111111111111111111111111111111111111111};
        wildcard bins onesm1   = {64'b1111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins walkeodd = {64'b1010101010101010101010101010101010101010101010101010101010101010};
        wildcard bins walkeven = {64'b0101010101010101010101010101010101010101010101010101010101010101};
        wildcard bins random   = {64'b0101101110111100100010000111011101100011101011101000011011110111};
     }
    cp_rs2_corners : coverpoint unsigned'(ins.current.rs2_val)  iff (ins.trap == 0 )  {
        option.comment = "RS2 Corners";
        wildcard bins zero  = {0};
        wildcard bins one      = {64'b0000000000000000000000000000000000000000000000000000000000000001};
        wildcard bins two      = {64'b0000000000000000000000000000000000000000000000000000000000000010};
        wildcard bins min      = {64'b1000000000000000000000000000000000000000000000000000000000000000};
        wildcard bins minp1    = {64'b1000000000000000000000000000000000000000000000000000000000000001}; 
        wildcard bins Wmax     = {64'b0000000000000000000000000000000011111111111111111111111111111111};
        wildcard bins Wmaxm1   = {64'b0000000000000000000000000000000011111111111111111111111111111110};
        wildcard bins Wmaxp1   = {64'b0000000000000000000000000000000100000000000000000000000000000000}; 
        wildcard bins Wmaxp2   = {64'b0000000000000000000000000000000100000000000000000000000000000001}; 
        wildcard bins max      = {64'b0111111111111111111111111111111111111111111111111111111111111111}; 
        wildcard bins maxm1    = {64'b0111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins ones     = {64'b1111111111111111111111111111111111111111111111111111111111111111};
        wildcard bins onesm1   = {64'b1111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins walkeodd = {64'b1010101010101010101010101010101010101010101010101010101010101010};
        wildcard bins walkeven = {64'b0101010101010101010101010101010101010101010101010101010101010101};
        wildcard bins random   = {64'b0101101110111100100010000111011101100011101011101000011011110111};
     }
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

covergroup czero_nez_cg with function sample(ins_rv64zicond_t ins);
    option.per_instance = 1; 
    option.comment = "czero.nez";
    cp_asm_count : coverpoint ins.ins_str == "czero.nez"  iff (ins.trap == 0 )  {
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
    cp_rd_corners : coverpoint unsigned'(ins.current.rd_val)  iff (ins.trap == 0 )  {
        option.comment = "RD Corners";
        wildcard bins zero  = {0};
        wildcard bins one      = {64'b0000000000000000000000000000000000000000000000000000000000000001};
        wildcard bins two      = {64'b0000000000000000000000000000000000000000000000000000000000000010};
        wildcard bins min      = {64'b1000000000000000000000000000000000000000000000000000000000000000};
        wildcard bins minp1    = {64'b1000000000000000000000000000000000000000000000000000000000000001}; 
        wildcard bins Wmax     = {64'b0000000000000000000000000000000011111111111111111111111111111111};
        wildcard bins Wmaxm1   = {64'b0000000000000000000000000000000011111111111111111111111111111110};
        wildcard bins Wmaxp1   = {64'b0000000000000000000000000000000100000000000000000000000000000000}; 
        wildcard bins Wmaxp2   = {64'b0000000000000000000000000000000100000000000000000000000000000001}; 
        wildcard bins max      = {64'b0111111111111111111111111111111111111111111111111111111111111111}; 
        wildcard bins maxm1    = {64'b0111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins ones     = {64'b1111111111111111111111111111111111111111111111111111111111111111};
        wildcard bins onesm1   = {64'b1111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins walkeodd = {64'b1010101010101010101010101010101010101010101010101010101010101010};
        wildcard bins walkeven = {64'b0101010101010101010101010101010101010101010101010101010101010101};
        wildcard bins random   = {64'b0101101110111100100010000111011101100011101011101000011011110111};
    }
    cp_rs1_corners : coverpoint unsigned'(ins.current.rs1_val)  iff (ins.trap == 0 )  {
        option.comment = "RS1 Corners";
        wildcard bins zero  = {0};
        wildcard bins one      = {64'b0000000000000000000000000000000000000000000000000000000000000001};
        wildcard bins two      = {64'b0000000000000000000000000000000000000000000000000000000000000010};
        wildcard bins min      = {64'b1000000000000000000000000000000000000000000000000000000000000000};
        wildcard bins minp1    = {64'b1000000000000000000000000000000000000000000000000000000000000001}; 
        wildcard bins Wmax     = {64'b0000000000000000000000000000000011111111111111111111111111111111};
        wildcard bins Wmaxm1   = {64'b0000000000000000000000000000000011111111111111111111111111111110};
        wildcard bins Wmaxp1   = {64'b0000000000000000000000000000000100000000000000000000000000000000}; 
        wildcard bins Wmaxp2   = {64'b0000000000000000000000000000000100000000000000000000000000000001}; 
        wildcard bins max      = {64'b0111111111111111111111111111111111111111111111111111111111111111}; 
        wildcard bins maxm1    = {64'b0111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins ones     = {64'b1111111111111111111111111111111111111111111111111111111111111111};
        wildcard bins onesm1   = {64'b1111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins walkeodd = {64'b1010101010101010101010101010101010101010101010101010101010101010};
        wildcard bins walkeven = {64'b0101010101010101010101010101010101010101010101010101010101010101};
        wildcard bins random   = {64'b0101101110111100100010000111011101100011101011101000011011110111};
     }
    cp_rs2_corners : coverpoint unsigned'(ins.current.rs2_val)  iff (ins.trap == 0 )  {
        option.comment = "RS2 Corners";
        wildcard bins zero  = {0};
        wildcard bins one      = {64'b0000000000000000000000000000000000000000000000000000000000000001};
        wildcard bins two      = {64'b0000000000000000000000000000000000000000000000000000000000000010};
        wildcard bins min      = {64'b1000000000000000000000000000000000000000000000000000000000000000};
        wildcard bins minp1    = {64'b1000000000000000000000000000000000000000000000000000000000000001}; 
        wildcard bins Wmax     = {64'b0000000000000000000000000000000011111111111111111111111111111111};
        wildcard bins Wmaxm1   = {64'b0000000000000000000000000000000011111111111111111111111111111110};
        wildcard bins Wmaxp1   = {64'b0000000000000000000000000000000100000000000000000000000000000000}; 
        wildcard bins Wmaxp2   = {64'b0000000000000000000000000000000100000000000000000000000000000001}; 
        wildcard bins max      = {64'b0111111111111111111111111111111111111111111111111111111111111111}; 
        wildcard bins maxm1    = {64'b0111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins ones     = {64'b1111111111111111111111111111111111111111111111111111111111111111};
        wildcard bins onesm1   = {64'b1111111111111111111111111111111111111111111111111111111111111110};
        wildcard bins walkeodd = {64'b1010101010101010101010101010101010101010101010101010101010101010};
        wildcard bins walkeven = {64'b0101010101010101010101010101010101010101010101010101010101010101};
        wildcard bins random   = {64'b0101101110111100100010000111011101100011101011101000011011110111};
     }
    cr_rs1_rs2_corners : cross cp_rs1_corners,cp_rs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage of RS1 corners and RS2 corners";
    }
endgroup

function void rv64zicond_sample(int hart, int issue);
    ins_rv64zicond_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "czero.eqz"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            czero_eqz_cg.sample(ins); 
        end
        "czero.nez"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            czero_nez_cg.sample(ins); 
        end
    endcase
endfunction
