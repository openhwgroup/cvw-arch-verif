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

`define COVER_RV64ZKNH
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64zknh_t;


covergroup sha256sig0_cg with function sample(ins_rv64zknh_t ins);
    option.per_instance = 1; 
    option.comment = "sha256sig0";
    cp_asm_count : coverpoint ins.ins_str == "sha256sig0"  iff (ins.trap == 0 )  {
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
endgroup

covergroup sha256sig1_cg with function sample(ins_rv64zknh_t ins);
    option.per_instance = 1; 
    option.comment = "sha256sig1";
    cp_asm_count : coverpoint ins.ins_str == "sha256sig1"  iff (ins.trap == 0 )  {
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
endgroup

covergroup sha256sum0_cg with function sample(ins_rv64zknh_t ins);
    option.per_instance = 1; 
    option.comment = "sha256sum0";
    cp_asm_count : coverpoint ins.ins_str == "sha256sum0"  iff (ins.trap == 0 )  {
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
endgroup

covergroup sha256xum1_cg with function sample(ins_rv64zknh_t ins);
    option.per_instance = 1; 
    option.comment = "sha256xum1";
    cp_asm_count : coverpoint ins.ins_str == "sha256xum1"  iff (ins.trap == 0 )  {
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
endgroup

covergroup sha512sig0_cg with function sample(ins_rv64zknh_t ins);
    option.per_instance = 1; 
    option.comment = "sha512sig0";
    cp_asm_count : coverpoint ins.ins_str == "sha512sig0"  iff (ins.trap == 0 )  {
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
endgroup

covergroup sha512sig1_cg with function sample(ins_rv64zknh_t ins);
    option.per_instance = 1; 
    option.comment = "sha512sig1";
    cp_asm_count : coverpoint ins.ins_str == "sha512sig1"  iff (ins.trap == 0 )  {
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
endgroup

covergroup sha512sum0_cg with function sample(ins_rv64zknh_t ins);
    option.per_instance = 1; 
    option.comment = "sha512sum0";
    cp_asm_count : coverpoint ins.ins_str == "sha512sum0"  iff (ins.trap == 0 )  {
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
endgroup

covergroup sha512sum1_cg with function sample(ins_rv64zknh_t ins);
    option.per_instance = 1; 
    option.comment = "sha512sum1";
    cp_asm_count : coverpoint ins.ins_str == "sha512sum1"  iff (ins.trap == 0 )  {
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
endgroup

function void rv64zknh_sample(int hart, int issue);
    ins_rv64zknh_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "sha256sig0"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            sha256sig0_cg.sample(ins); 
        end
        "sha256sig1"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            sha256sig1_cg.sample(ins); 
        end
        "sha256sum0"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            sha256sum0_cg.sample(ins); 
        end
        "sha256xum1"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            sha256xum1_cg.sample(ins); 
        end
        "sha512sig0"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            sha512sig0_cg.sample(ins); 
        end
        "sha512sig1"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            sha512sig1_cg.sample(ins); 
        end
        "sha512sum0"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            sha512sum0_cg.sample(ins); 
        end
        "sha512sum1"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            sha512sum1_cg.sample(ins); 
        end
    endcase
endfunction
