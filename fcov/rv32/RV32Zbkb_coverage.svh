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

`define COVER_RV32ZBKB
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv32zbkb_t;


covergroup andn_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "andn";
    cp_asm_count : coverpoint ins.ins_str == "andn"  iff (ins.trap == 0 )  {
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

covergroup brev8_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "brev8";
    cp_asm_count : coverpoint ins.ins_str == "brev8"  iff (ins.trap == 0 )  {
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
endgroup

covergroup orn_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "orn";
    cp_asm_count : coverpoint ins.ins_str == "orn"  iff (ins.trap == 0 )  {
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

covergroup pack_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "pack";
    cp_asm_count : coverpoint ins.ins_str == "pack"  iff (ins.trap == 0 )  {
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

covergroup packh_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "packh";
    cp_asm_count : coverpoint ins.ins_str == "packh"  iff (ins.trap == 0 )  {
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

covergroup rev8_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "rev8";
    cp_asm_count : coverpoint ins.ins_str == "rev8"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rs1 : coverpoint ins.get_gpr_reg(ins.current.rs1)  iff (ins.trap == 0 )  {
        option.comment = "RS1 register assignment";
    }
endgroup

covergroup rol_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "rol";
    cp_asm_count : coverpoint ins.ins_str == "rol"  iff (ins.trap == 0 )  {
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

covergroup ror_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "ror";
    cp_asm_count : coverpoint ins.ins_str == "ror"  iff (ins.trap == 0 )  {
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

covergroup rori_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "rori";
    cp_asm_count : coverpoint ins.ins_str == "rori"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rs1 : coverpoint ins.get_gpr_reg(ins.current.rs1)  iff (ins.trap == 0 )  {
        option.comment = "RS1 register assignment";
    }
    cp_imm_sign : coverpoint int'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value sign";
        bins neg  = {[$:-1]};
        bins pos  = {[1:$]};
    }
    cp_imm_ones_zeros : coverpoint unsigned'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value ones and zeros";
        wildcard bins bit_0_0  = {32'b???????????????????????????????0};
        wildcard bins bit_1_0  = {32'b??????????????????????????????0?};
        wildcard bins bit_2_0  = {32'b?????????????????????????????0??};
        wildcard bins bit_3_0  = {32'b????????????????????????????0???};
        wildcard bins bit_4_0  = {32'b???????????????????????????0????};
        wildcard bins bit_5_0  = {32'b??????????????????????????0?????};
        wildcard bins bit_6_0  = {32'b?????????????????????????0??????};
        wildcard bins bit_7_0  = {32'b????????????????????????0???????};
        wildcard bins bit_8_0  = {32'b???????????????????????0????????};
        wildcard bins bit_9_0  = {32'b??????????????????????0?????????};
        wildcard bins bit_10_0  = {32'b?????????????????????0??????????};
        wildcard bins bit_11_0  = {32'b????????????????????0???????????};
        wildcard bins bit_12_0  = {32'b???????????????????0????????????};
        wildcard bins bit_0_1  = {32'b???????????????????????????????1};
        wildcard bins bit_1_1  = {32'b??????????????????????????????1?};
        wildcard bins bit_2_1  = {32'b?????????????????????????????1??};
        wildcard bins bit_3_1  = {32'b????????????????????????????1???};
        wildcard bins bit_4_1  = {32'b???????????????????????????1????};
        wildcard bins bit_5_1  = {32'b??????????????????????????1?????};
        wildcard bins bit_6_1  = {32'b?????????????????????????1??????};
        wildcard bins bit_7_1  = {32'b????????????????????????1???????};
        wildcard bins bit_8_1  = {32'b???????????????????????1????????};
        wildcard bins bit_9_1  = {32'b??????????????????????1?????????};
        wildcard bins bit_10_1  = {32'b?????????????????????1??????????};
        wildcard bins bit_11_1  = {32'b????????????????????1???????????};
        wildcard bins bit_12_1  = {32'b???????????????????1????????????};
    }
endgroup

covergroup unzip_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "unzip";
    cp_asm_count : coverpoint ins.ins_str == "unzip"  iff (ins.trap == 0 )  {
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
endgroup

covergroup xor_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "xor";
    cp_asm_count : coverpoint ins.ins_str == "xor"  iff (ins.trap == 0 )  {
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

covergroup zip_cg with function sample(ins_rv32zbkb_t ins);
    option.per_instance = 1; 
    option.comment = "zip";
    cp_asm_count : coverpoint ins.ins_str == "zip"  iff (ins.trap == 0 )  {
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
endgroup

function void rv32zbkb_sample(int hart, int issue);
    ins_rv32zbkb_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "andn"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            andn_cg.sample(ins); 
        end
        "brev8"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            brev8_cg.sample(ins); 
        end
        "orn"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            orn_cg.sample(ins); 
        end
        "pack"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            pack_cg.sample(ins); 
        end
        "packh"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            packh_cg.sample(ins); 
        end
        "rev8"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            rev8_cg.sample(ins); 
        end
        "rol"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            rol_cg.sample(ins); 
        end
        "ror"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            ror_cg.sample(ins); 
        end
        "rori"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            rori_cg.sample(ins); 
        end
        "unzip"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            unzip_cg.sample(ins); 
        end
        "xor"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_rs2(2);
            xor_cg.sample(ins); 
        end
        "zip"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_rs1(1);
            ins.add_imm(2);
            zip_cg.sample(ins); 
        end
    endcase
endfunction
