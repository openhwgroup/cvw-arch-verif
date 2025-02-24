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

`define COVER_RV32ZKNE
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv32zkne_t;


covergroup aes32esi_cg with function sample(ins_rv32zkne_t ins);
    option.per_instance = 1; 
    option.comment = "aes32esi";
    cp_asm_count : coverpoint ins.ins_str == "aes32esi"  iff (ins.trap == 0 )  {
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
        wildcard bins zero  =    {0};
        wildcard bins one  =     {32'b00000000000000000000000000000001};
        wildcard bins two  =     {32'b00000000000000000000000000000010};
        wildcard bins min  =     {32'b10000000000000000000000000000000};
        wildcard bins minp1  =   {32'b10000000000000000000000000000001};
        wildcard bins max  =     {32'b01111111111111111111111111111111};
        wildcard bins maxm1  =   {32'b01111111111111111111111111111110};
        wildcard bins ones  =    {32'b11111111111111111111111111111111};
        wildcard bins onesm1  =  {32'b11111111111111111111111111111110};
        wildcard bins walkeodd = {32'b10101010101010101010101010101010};
        wildcard bins walkeven = {32'b01010101010101010101010101010101};
        wildcard bins random   = {32'b01011011101111001000100001110111};
     }
    cp_rs2_corners : coverpoint unsigned'(ins.current.rs2_val)  iff (ins.trap == 0 )  {
        option.comment = "RS2 Corners";
        wildcard bins zero  = {0};
        wildcard bins one  = {32'b00000000000000000000000000000001};
        wildcard bins two  = {32'b00000000000000000000000000000010};
        wildcard bins min  = {32'b10000000000000000000000000000000};
        wildcard bins minp1  = {32'b10000000000000000000000000000001};
        wildcard bins max  = {32'b01111111111111111111111111111111};
        wildcard bins maxm1  = {32'b01111111111111111111111111111110};
        wildcard bins ones  = {32'b11111111111111111111111111111111};
        wildcard bins onesm1  = {32'b11111111111111111111111111111110};
        wildcard bins walkeodd = {32'b10101010101010101010101010101010};
        wildcard bins walkeven = {32'b01010101010101010101010101010101};
        wildcard bins random   = {32'b01011011101111001000100001110111};
     }
    cp_bs : coverpoint ins.current.bs  iff (ins.trap == 0 )  {
        option.comment = "BS field"; // *** need to add ins.current.bs to the RISCV_instruction class
    }
endgroup

covergroup aes32esmi_cg with function sample(ins_rv32zkne_t ins);
    option.per_instance = 1; 
    option.comment = "aes32esmi";
    cp_asm_count : coverpoint ins.ins_str == "aes32esmi"  iff (ins.trap == 0 )  {
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
        wildcard bins zero  =    {0};
        wildcard bins one  =     {32'b00000000000000000000000000000001};
        wildcard bins two  =     {32'b00000000000000000000000000000010};
        wildcard bins min  =     {32'b10000000000000000000000000000000};
        wildcard bins minp1  =   {32'b10000000000000000000000000000001};
        wildcard bins max  =     {32'b01111111111111111111111111111111};
        wildcard bins maxm1  =   {32'b01111111111111111111111111111110};
        wildcard bins ones  =    {32'b11111111111111111111111111111111};
        wildcard bins onesm1  =  {32'b11111111111111111111111111111110};
        wildcard bins walkeodd = {32'b10101010101010101010101010101010};
        wildcard bins walkeven = {32'b01010101010101010101010101010101};
        wildcard bins random   = {32'b01011011101111001000100001110111};
     }
    cp_rs2_corners : coverpoint unsigned'(ins.current.rs2_val)  iff (ins.trap == 0 )  {
        option.comment = "RS2 Corners";
        wildcard bins zero  = {0};
        wildcard bins one  = {32'b00000000000000000000000000000001};
        wildcard bins two  = {32'b00000000000000000000000000000010};
        wildcard bins min  = {32'b10000000000000000000000000000000};
        wildcard bins minp1  = {32'b10000000000000000000000000000001};
        wildcard bins max  = {32'b01111111111111111111111111111111};
        wildcard bins maxm1  = {32'b01111111111111111111111111111110};
        wildcard bins ones  = {32'b11111111111111111111111111111111};
        wildcard bins onesm1  = {32'b11111111111111111111111111111110};
        wildcard bins walkeodd = {32'b10101010101010101010101010101010};
        wildcard bins walkeven = {32'b01010101010101010101010101010101};
        wildcard bins random   = {32'b01011011101111001000100001110111};
     }
    cp_bs : coverpoint ins.current.bs  iff (ins.trap == 0 )  {
        option.comment = "BS field"; // *** need to add ins.current.bs to the RISCV_instruction class
    }
endgroup

function void rv32zkne_sample(int hart, int issue);
    ins_rv32zkne_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "aes32esi"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            aes32esi_cg.sample(ins); 
        end
        "aes32esmi"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            aes32esmi_cg.sample(ins); 
        end
    endcase
endfunction
