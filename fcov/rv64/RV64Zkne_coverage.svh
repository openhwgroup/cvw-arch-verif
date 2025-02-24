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

`define COVER_RV64ZKNE
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64zkne_t;


covergroup aaes64es_cg with function sample(ins_rv64zkne_t ins);
    option.per_instance = 1; 
    option.comment = "aaes64es";
    cp_asm_count : coverpoint ins.ins_str == "aaes64es"  iff (ins.trap == 0 )  {
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
endgroup

covergroup aes64esmi_cg with function sample(ins_rv64zkne_t ins);
    option.per_instance = 1; 
    option.comment = "aes64esmi";
    cp_asm_count : coverpoint ins.ins_str == "aes64esmi"  iff (ins.trap == 0 )  {
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
endgroup

covergroup aes64ks1i_cg with function sample(ins_rv64zkne_t ins);
    option.per_instance = 1; 
    option.comment = "aes64ks1i";
    cp_asm_count : coverpoint ins.ins_str == "aes64ks1i"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rs1 : coverpoint ins.get_gpr_reg(ins.current.rs1)  iff (ins.trap == 0 )  {
        option.comment = "RS1 register assignment";
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
    cp_rnum : coverpoint ins.current.rnum  iff (ins.trap == 0 )  {
        option.comment = "rnum field"; // *** need to add ins.current.rnum to the RISCV_instruction class
    }
endgroup

covergroup aes64ks2_cg with function sample(ins_rv64zkne_t ins);
    option.per_instance = 1; 
    option.comment = "aes64ks2";
    cp_asm_count : coverpoint ins.ins_str == "aes64ks2"  iff (ins.trap == 0 )  {
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
endgroup

function void rv64zkne_sample(int hart, int issue);
    ins_rv64zkne_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "aaes64es"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            aaes64es_cg.sample(ins); 
        end
        "aes64esmi"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            aes64esmi_cg.sample(ins); 
        end
        "aes64ks1i"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            aes64ks1i_cg.sample(ins); 
        end
        "aes64ks2"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            aes64ks2_cg.sample(ins); 
        end
    endcase
endfunction
