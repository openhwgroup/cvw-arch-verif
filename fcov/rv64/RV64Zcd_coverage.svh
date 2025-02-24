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

`define COVER_RV64ZCD
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64zcd_t;


covergroup c_fld_cg with function sample(ins_rv64zcd_t ins);
    option.per_instance = 1; 
    option.comment = "c.fld";
    cp_asm_count : coverpoint ins.ins_str == "fld"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_imm_sign : coverpoint int'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value sign";
        bins neg  = {[$:-1]};
        bins pos  = {[1:$]};
    }
    cp_imm_ones_zeros : coverpoint unsigned'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value ones and zeros";
        wildcard bins bit_0_0  = {64'b???????????????????????????????????????????????????????????????0};
        wildcard bins bit_1_0  = {64'b??????????????????????????????????????????????????????????????0?};
        wildcard bins bit_2_0  = {64'b?????????????????????????????????????????????????????????????0??};
        wildcard bins bit_3_0  = {64'b????????????????????????????????????????????????????????????0???};
        wildcard bins bit_4_0  = {64'b???????????????????????????????????????????????????????????0????};
        wildcard bins bit_5_0  = {64'b??????????????????????????????????????????????????????????0?????};
        wildcard bins bit_6_0  = {64'b?????????????????????????????????????????????????????????0??????};
        wildcard bins bit_7_0  = {64'b????????????????????????????????????????????????????????0???????};
        wildcard bins bit_8_0  = {64'b???????????????????????????????????????????????????????0????????};
        wildcard bins bit_9_0  = {64'b??????????????????????????????????????????????????????0?????????};
        wildcard bins bit_10_0  = {64'b?????????????????????????????????????????????????????0??????????};
        wildcard bins bit_11_0  = {64'b????????????????????????????????????????????????????0???????????};
        wildcard bins bit_12_0  = {64'b???????????????????????????????????????????????????0????????????};
        wildcard bins bit_0_1  = {64'b???????????????????????????????????????????????????????????????1};
        wildcard bins bit_1_1  = {64'b??????????????????????????????????????????????????????????????1?};
        wildcard bins bit_2_1  = {64'b?????????????????????????????????????????????????????????????1??};
        wildcard bins bit_3_1  = {64'b????????????????????????????????????????????????????????????1???};
        wildcard bins bit_4_1  = {64'b???????????????????????????????????????????????????????????1????};
        wildcard bins bit_5_1  = {64'b??????????????????????????????????????????????????????????1?????};
        wildcard bins bit_6_1  = {64'b?????????????????????????????????????????????????????????1??????};
        wildcard bins bit_7_1  = {64'b????????????????????????????????????????????????????????1???????};
        wildcard bins bit_8_1  = {64'b???????????????????????????????????????????????????????1????????};
        wildcard bins bit_9_1  = {64'b??????????????????????????????????????????????????????1?????????};
        wildcard bins bit_10_1  = {64'b?????????????????????????????????????????????????????1??????????};
        wildcard bins bit_11_1  = {64'b????????????????????????????????????????????????????1???????????};
        wildcard bins bit_12_1  = {64'b???????????????????????????????????????????????????1????????????};
    }
    cp_rs1p : coverpoint ins.get_gpr_c_reg(ins.current.rs1)  iff (ins.trap == 0 )  {
        option.comment = "RS1 register assignment";
    }
    cp_fdp : coverpoint ins.get_fpr_c_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
endgroup

covergroup c_fldsp_cg with function sample(ins_rv64zcd_t ins);
    option.per_instance = 1; 
    option.comment = "c.fldsp";
    cp_asm_count : coverpoint ins.ins_str == "fldsp"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_imm_sign : coverpoint int'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value sign";
        bins neg  = {[$:-1]};
        bins pos  = {[1:$]};
    }
    cp_imm_ones_zeros : coverpoint unsigned'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value ones and zeros";
        wildcard bins bit_0_0  = {64'b???????????????????????????????????????????????????????????????0};
        wildcard bins bit_1_0  = {64'b??????????????????????????????????????????????????????????????0?};
        wildcard bins bit_2_0  = {64'b?????????????????????????????????????????????????????????????0??};
        wildcard bins bit_3_0  = {64'b????????????????????????????????????????????????????????????0???};
        wildcard bins bit_4_0  = {64'b???????????????????????????????????????????????????????????0????};
        wildcard bins bit_5_0  = {64'b??????????????????????????????????????????????????????????0?????};
        wildcard bins bit_6_0  = {64'b?????????????????????????????????????????????????????????0??????};
        wildcard bins bit_7_0  = {64'b????????????????????????????????????????????????????????0???????};
        wildcard bins bit_8_0  = {64'b???????????????????????????????????????????????????????0????????};
        wildcard bins bit_9_0  = {64'b??????????????????????????????????????????????????????0?????????};
        wildcard bins bit_10_0  = {64'b?????????????????????????????????????????????????????0??????????};
        wildcard bins bit_11_0  = {64'b????????????????????????????????????????????????????0???????????};
        wildcard bins bit_12_0  = {64'b???????????????????????????????????????????????????0????????????};
        wildcard bins bit_0_1  = {64'b???????????????????????????????????????????????????????????????1};
        wildcard bins bit_1_1  = {64'b??????????????????????????????????????????????????????????????1?};
        wildcard bins bit_2_1  = {64'b?????????????????????????????????????????????????????????????1??};
        wildcard bins bit_3_1  = {64'b????????????????????????????????????????????????????????????1???};
        wildcard bins bit_4_1  = {64'b???????????????????????????????????????????????????????????1????};
        wildcard bins bit_5_1  = {64'b??????????????????????????????????????????????????????????1?????};
        wildcard bins bit_6_1  = {64'b?????????????????????????????????????????????????????????1??????};
        wildcard bins bit_7_1  = {64'b????????????????????????????????????????????????????????1???????};
        wildcard bins bit_8_1  = {64'b???????????????????????????????????????????????????????1????????};
        wildcard bins bit_9_1  = {64'b??????????????????????????????????????????????????????1?????????};
        wildcard bins bit_10_1  = {64'b?????????????????????????????????????????????????????1??????????};
        wildcard bins bit_11_1  = {64'b????????????????????????????????????????????????????1???????????};
        wildcard bins bit_12_1  = {64'b???????????????????????????????????????????????????1????????????};
    }
    cp_fdp : coverpoint ins.get_fpr_c_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
endgroup

covergroup c_fsd_cg with function sample(ins_rv64zcd_t ins);
    option.per_instance = 1; 
    option.comment = "c.fsd";
    cp_asm_count : coverpoint ins.ins_str == "fsd"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_imm_sign : coverpoint int'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value sign";
        bins neg  = {[$:-1]};
        bins pos  = {[1:$]};
    }
    cp_imm_ones_zeros : coverpoint unsigned'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value ones and zeros";
        wildcard bins bit_0_0  = {64'b???????????????????????????????????????????????????????????????0};
        wildcard bins bit_1_0  = {64'b??????????????????????????????????????????????????????????????0?};
        wildcard bins bit_2_0  = {64'b?????????????????????????????????????????????????????????????0??};
        wildcard bins bit_3_0  = {64'b????????????????????????????????????????????????????????????0???};
        wildcard bins bit_4_0  = {64'b???????????????????????????????????????????????????????????0????};
        wildcard bins bit_5_0  = {64'b??????????????????????????????????????????????????????????0?????};
        wildcard bins bit_6_0  = {64'b?????????????????????????????????????????????????????????0??????};
        wildcard bins bit_7_0  = {64'b????????????????????????????????????????????????????????0???????};
        wildcard bins bit_8_0  = {64'b???????????????????????????????????????????????????????0????????};
        wildcard bins bit_9_0  = {64'b??????????????????????????????????????????????????????0?????????};
        wildcard bins bit_10_0  = {64'b?????????????????????????????????????????????????????0??????????};
        wildcard bins bit_11_0  = {64'b????????????????????????????????????????????????????0???????????};
        wildcard bins bit_12_0  = {64'b???????????????????????????????????????????????????0????????????};
        wildcard bins bit_0_1  = {64'b???????????????????????????????????????????????????????????????1};
        wildcard bins bit_1_1  = {64'b??????????????????????????????????????????????????????????????1?};
        wildcard bins bit_2_1  = {64'b?????????????????????????????????????????????????????????????1??};
        wildcard bins bit_3_1  = {64'b????????????????????????????????????????????????????????????1???};
        wildcard bins bit_4_1  = {64'b???????????????????????????????????????????????????????????1????};
        wildcard bins bit_5_1  = {64'b??????????????????????????????????????????????????????????1?????};
        wildcard bins bit_6_1  = {64'b?????????????????????????????????????????????????????????1??????};
        wildcard bins bit_7_1  = {64'b????????????????????????????????????????????????????????1???????};
        wildcard bins bit_8_1  = {64'b???????????????????????????????????????????????????????1????????};
        wildcard bins bit_9_1  = {64'b??????????????????????????????????????????????????????1?????????};
        wildcard bins bit_10_1  = {64'b?????????????????????????????????????????????????????1??????????};
        wildcard bins bit_11_1  = {64'b????????????????????????????????????????????????????1???????????};
        wildcard bins bit_12_1  = {64'b???????????????????????????????????????????????????1????????????};
    }
    cp_rs1p : coverpoint ins.get_gpr_c_reg(ins.current.rs1)  iff (ins.trap == 0 )  {
        option.comment = "RS1 register assignment";
    }
    cp_fs2p : coverpoint ins.get_fpr_c_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup c_fsdsp_cg with function sample(ins_rv64zcd_t ins);
    option.per_instance = 1; 
    option.comment = "c.fsdsp";
    cp_asm_count : coverpoint ins.ins_str == "fsdsp"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_imm_sign : coverpoint int'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value sign";
        bins neg  = {[$:-1]};
        bins pos  = {[1:$]};
    }
    cp_imm_ones_zeros : coverpoint unsigned'(ins.current.imm)  iff (ins.trap == 0 )  {
        option.comment = "Immediate value ones and zeros";
        wildcard bins bit_0_0  = {64'b???????????????????????????????????????????????????????????????0};
        wildcard bins bit_1_0  = {64'b??????????????????????????????????????????????????????????????0?};
        wildcard bins bit_2_0  = {64'b?????????????????????????????????????????????????????????????0??};
        wildcard bins bit_3_0  = {64'b????????????????????????????????????????????????????????????0???};
        wildcard bins bit_4_0  = {64'b???????????????????????????????????????????????????????????0????};
        wildcard bins bit_5_0  = {64'b??????????????????????????????????????????????????????????0?????};
        wildcard bins bit_6_0  = {64'b?????????????????????????????????????????????????????????0??????};
        wildcard bins bit_7_0  = {64'b????????????????????????????????????????????????????????0???????};
        wildcard bins bit_8_0  = {64'b???????????????????????????????????????????????????????0????????};
        wildcard bins bit_9_0  = {64'b??????????????????????????????????????????????????????0?????????};
        wildcard bins bit_10_0  = {64'b?????????????????????????????????????????????????????0??????????};
        wildcard bins bit_11_0  = {64'b????????????????????????????????????????????????????0???????????};
        wildcard bins bit_12_0  = {64'b???????????????????????????????????????????????????0????????????};
        wildcard bins bit_0_1  = {64'b???????????????????????????????????????????????????????????????1};
        wildcard bins bit_1_1  = {64'b??????????????????????????????????????????????????????????????1?};
        wildcard bins bit_2_1  = {64'b?????????????????????????????????????????????????????????????1??};
        wildcard bins bit_3_1  = {64'b????????????????????????????????????????????????????????????1???};
        wildcard bins bit_4_1  = {64'b???????????????????????????????????????????????????????????1????};
        wildcard bins bit_5_1  = {64'b??????????????????????????????????????????????????????????1?????};
        wildcard bins bit_6_1  = {64'b?????????????????????????????????????????????????????????1??????};
        wildcard bins bit_7_1  = {64'b????????????????????????????????????????????????????????1???????};
        wildcard bins bit_8_1  = {64'b???????????????????????????????????????????????????????1????????};
        wildcard bins bit_9_1  = {64'b??????????????????????????????????????????????????????1?????????};
        wildcard bins bit_10_1  = {64'b?????????????????????????????????????????????????????1??????????};
        wildcard bins bit_11_1  = {64'b????????????????????????????????????????????????????1???????????};
        wildcard bins bit_12_1  = {64'b???????????????????????????????????????????????????1????????????};
    }
    cp_fs2p : coverpoint ins.get_fpr_c_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

function void rv64zcd_sample(int hart, int issue);
    ins_rv64zcd_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "c.fld"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_imm(1);
            ins.add_rs1(2);
            ins.current.inst_category = INST_CAT_LOAD;
            ins.add_mem_address();
            c_fld_cg.sample(ins); 
        end
        "c.fldsp"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_imm(1);
            ins.add_rs1(2);
            ins.current.inst_category = INST_CAT_LOAD;
            ins.add_mem_address();
            c_fldsp_cg.sample(ins); 
        end
        "c.fsd"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fs2(0);
            ins.add_imm(1);
            ins.add_rs1(2);
            ins.current.inst_category = INST_CAT_STORE;
            ins.add_mem_address();
            c_fsd_cg.sample(ins); 
        end
        "c.fsdsp"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fs2(0);
            ins.add_imm(1);
            ins.add_rs1(2);
            ins.current.inst_category = INST_CAT_STORE;
            ins.add_mem_address();
            c_fsdsp_cg.sample(ins); 
        end
    endcase
endfunction
