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

`define COVER_RV32ZCF
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv32zcf_t;


covergroup c_flw_cg with function sample(ins_rv32zcf_t ins);
    option.per_instance = 1; 
    option.comment = "c.flw";
    cp_asm_count : coverpoint ins.ins_str == "flw"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rs1p : coverpoint ins.get_gpr_c_reg(ins.current.rs1)  iff (ins.trap == 0 )  {
        option.comment = "RS1 register assignment";
    }
    cp_fdp : coverpoint ins.get_fpr_c_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fd_toggle : coverpoint unsigned'(ins.current.fd_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FD Toggle bits";
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
        wildcard bins bit_13_0  = {32'b??????????????????0?????????????};
        wildcard bins bit_14_0  = {32'b?????????????????0??????????????};
        wildcard bins bit_15_0  = {32'b????????????????0???????????????};
        wildcard bins bit_16_0  = {32'b???????????????0????????????????};
        wildcard bins bit_17_0  = {32'b??????????????0?????????????????};
        wildcard bins bit_18_0  = {32'b?????????????0??????????????????};
        wildcard bins bit_19_0  = {32'b????????????0???????????????????};
        wildcard bins bit_20_0  = {32'b???????????0????????????????????};
        wildcard bins bit_21_0  = {32'b??????????0?????????????????????};
        wildcard bins bit_22_0  = {32'b?????????0??????????????????????};
        wildcard bins bit_23_0  = {32'b????????0???????????????????????};
        wildcard bins bit_24_0  = {32'b???????0????????????????????????};
        wildcard bins bit_25_0  = {32'b??????0?????????????????????????};
        wildcard bins bit_26_0  = {32'b?????0??????????????????????????};
        wildcard bins bit_27_0  = {32'b????0???????????????????????????};
        wildcard bins bit_28_0  = {32'b???0????????????????????????????};
        wildcard bins bit_29_0  = {32'b??0?????????????????????????????};
        wildcard bins bit_30_0  = {32'b?0??????????????????????????????};
        wildcard bins bit_31_0  = {32'b0???????????????????????????????};
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
        wildcard bins bit_13_1  = {32'b??????????????????1?????????????};
        wildcard bins bit_14_1  = {32'b?????????????????1??????????????};
        wildcard bins bit_15_1  = {32'b????????????????1???????????????};
        wildcard bins bit_16_1  = {32'b???????????????1????????????????};
        wildcard bins bit_17_1  = {32'b??????????????1?????????????????};
        wildcard bins bit_18_1  = {32'b?????????????1??????????????????};
        wildcard bins bit_19_1  = {32'b????????????1???????????????????};
        wildcard bins bit_20_1  = {32'b???????????1????????????????????};
        wildcard bins bit_21_1  = {32'b??????????1?????????????????????};
        wildcard bins bit_22_1  = {32'b?????????1??????????????????????};
        wildcard bins bit_23_1  = {32'b????????1???????????????????????};
        wildcard bins bit_24_1  = {32'b???????1????????????????????????};
        wildcard bins bit_25_1  = {32'b??????1?????????????????????????};
        wildcard bins bit_26_1  = {32'b?????1??????????????????????????};
        wildcard bins bit_27_1  = {32'b????1???????????????????????????};
        wildcard bins bit_28_1  = {32'b???1????????????????????????????};
        wildcard bins bit_29_1  = {32'b??1?????????????????????????????};
        wildcard bins bit_30_1  = {32'b?1??????????????????????????????};
        wildcard bins bit_31_1  = {32'b1???????????????????????????????};
    }
    cp_imm_mul : coverpoint int'(ins.current.imm) iff (ins.trap == 0) {
        option.comment = "Immediate Multiples of 4";
        bins offset[] = {0,4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64,68,
                         72,76,80,84,88,92,96,100,104,108,112,116,120,124};
    }
endgroup

covergroup c_flwsp_cg with function sample(ins_rv32zcf_t ins);
    option.per_instance = 1; 
    option.comment = "c.flwsp";
    cp_asm_count : coverpoint ins.ins_str == "flwsp"  iff (ins.trap == 0 )  {
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
    cp_fdp : coverpoint ins.get_fpr_c_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
endgroup

covergroup c_fsw_cg with function sample(ins_rv32zcf_t ins);
    option.per_instance = 1; 
    option.comment = "c.fsw";
    cp_asm_count : coverpoint ins.ins_str == "fsw"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rs1p : coverpoint ins.get_gpr_c_reg(ins.current.rs1)  iff (ins.trap == 0 )  {
        option.comment = "RS1 register assignment";
    }
    cp_fs2p : coverpoint ins.get_fpr_c_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
    cp_fs2_toggle : coverpoint unsigned'(ins.current.fs2_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 Toggle bits";
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
        wildcard bins bit_13_0  = {32'b??????????????????0?????????????};
        wildcard bins bit_14_0  = {32'b?????????????????0??????????????};
        wildcard bins bit_15_0  = {32'b????????????????0???????????????};
        wildcard bins bit_16_0  = {32'b???????????????0????????????????};
        wildcard bins bit_17_0  = {32'b??????????????0?????????????????};
        wildcard bins bit_18_0  = {32'b?????????????0??????????????????};
        wildcard bins bit_19_0  = {32'b????????????0???????????????????};
        wildcard bins bit_20_0  = {32'b???????????0????????????????????};
        wildcard bins bit_21_0  = {32'b??????????0?????????????????????};
        wildcard bins bit_22_0  = {32'b?????????0??????????????????????};
        wildcard bins bit_23_0  = {32'b????????0???????????????????????};
        wildcard bins bit_24_0  = {32'b???????0????????????????????????};
        wildcard bins bit_25_0  = {32'b??????0?????????????????????????};
        wildcard bins bit_26_0  = {32'b?????0??????????????????????????};
        wildcard bins bit_27_0  = {32'b????0???????????????????????????};
        wildcard bins bit_28_0  = {32'b???0????????????????????????????};
        wildcard bins bit_29_0  = {32'b??0?????????????????????????????};
        wildcard bins bit_30_0  = {32'b?0??????????????????????????????};
        wildcard bins bit_31_0  = {32'b0???????????????????????????????};
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
        wildcard bins bit_13_1  = {32'b??????????????????1?????????????};
        wildcard bins bit_14_1  = {32'b?????????????????1??????????????};
        wildcard bins bit_15_1  = {32'b????????????????1???????????????};
        wildcard bins bit_16_1  = {32'b???????????????1????????????????};
        wildcard bins bit_17_1  = {32'b??????????????1?????????????????};
        wildcard bins bit_18_1  = {32'b?????????????1??????????????????};
        wildcard bins bit_19_1  = {32'b????????????1???????????????????};
        wildcard bins bit_20_1  = {32'b???????????1????????????????????};
        wildcard bins bit_21_1  = {32'b??????????1?????????????????????};
        wildcard bins bit_22_1  = {32'b?????????1??????????????????????};
        wildcard bins bit_23_1  = {32'b????????1???????????????????????};
        wildcard bins bit_24_1  = {32'b???????1????????????????????????};
        wildcard bins bit_25_1  = {32'b??????1?????????????????????????};
        wildcard bins bit_26_1  = {32'b?????1??????????????????????????};
        wildcard bins bit_27_1  = {32'b????1???????????????????????????};
        wildcard bins bit_28_1  = {32'b???1????????????????????????????};
        wildcard bins bit_29_1  = {32'b??1?????????????????????????????};
        wildcard bins bit_30_1  = {32'b?1??????????????????????????????};
        wildcard bins bit_31_1  = {32'b1???????????????????????????????};
    }
    cp_imm_mul : coverpoint int'(ins.current.imm) iff (ins.trap == 0) {
        option.comment = "Immediate Multiples of 4";
        bins offset[] = {0,4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64,68,
                         72,76,80,84,88,92,96,100,104,108,112,116,120,124};
    }
endgroup

covergroup c_fswsp_cg with function sample(ins_rv32zcf_t ins);
    option.per_instance = 1; 
    option.comment = "c.fswsp";
    cp_asm_count : coverpoint ins.ins_str == "fswsp"  iff (ins.trap == 0 )  {
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
    cp_fs2p : coverpoint ins.get_fpr_c_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

function void rv32zcf_sample(int hart, int issue);
    ins_rv32zcf_t ins;

    if (traceDataQ[hart][issue][0].insn[1:0] != 3) begin // compressed instruction
        $display("Examining compressed instruction rv32zcf_sample with inst_name = %s disass = %s", traceDataQ[hart][issue][0].inst_name, traceDataQ[hart][issue][0].disass);
        case (traceDataQ[hart][issue][0].inst_name)
            "flw" : begin
                ins = new(hart, issue, traceDataQ);
                ins.add_fd(0); 
                ins.add_imm(1);
                ins.add_rs1(2); 
                ins.add_mem_address(); 
                c_flw_cg.sample(ins); 
            end
            "fsw" : begin
                ins = new(hart, issue, traceDataQ);
                ins.add_fs2(0);
                ins.add_imm(1); 
                ins.add_rs1(2); 
                ins.add_mem_address();
                c_fsw_cg.sample(ins); 
            end
        endcase
    end
endfunction