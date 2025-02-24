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

`define COVER_RV64ZCBM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64zcbm_t;


covergroup c_mul_cg with function sample(ins_rv64zcbm_t ins);
    option.per_instance = 1; 
    option.comment = "c.mul";
    cp_asm_count : coverpoint ins.ins_str == "mul"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cmp_rd_rs2_eqval : coverpoint ins.current.rd_val == ins.current.rs2_val  iff (ins.trap == 0 )  {
        option.comment = "Compare RD and RS2 register values";
        bins rd_eqval_rs2  = {1};
        bins rd_neval_rs2  = {0};
    }
    cmp_rd_rs2_c : coverpoint ins.current.rd == ins.current.rs2  iff (ins.trap == 0 )  {
        option.comment = "RD and RS1 register (assignment) WAR Hazard";
        bins x8  = {1} iff (ins.current.rd == "x8");
        bins x9  = {1} iff (ins.current.rd == "x9");
        bins x10  = {1} iff (ins.current.rd == "x10");
        bins x11  = {1} iff (ins.current.rd == "x11");
        bins x12  = {1} iff (ins.current.rd == "x12");
        bins x13  = {1} iff (ins.current.rd == "x13");
        bins x14  = {1} iff (ins.current.rd == "x14");
        bins x15  = {1} iff (ins.current.rd == "x15");
    }    cp_rd_sign : coverpoint int'(ins.current.rd_val)  iff (ins.trap == 0 )  {
        option.comment = "RD sign of value";
        bins neg  = {[$:-1]};
        bins pos  = {[1:$]};
    }
    cp_rs2_sign : coverpoint int'(ins.current.rs2_val)  iff (ins.trap == 0 )  {
        option.comment = "RS2 sign of value";
        bins neg  = {[$:-1]};
        bins pos  = {[1:$]};
    }
    cp_rdp : coverpoint ins.get_gpr_c_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rs2p : coverpoint ins.get_gpr_c_reg(ins.current.rs2)  iff (ins.trap == 0 )  {
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
    cp_rd_toggle : coverpoint unsigned'(ins.current.rd_val)  iff (ins.trap == 0 )  {
        option.comment = "RD Toggle bits";
        wildcard bins bit_0_0   = {64'b???????????????????????????????????????????????????????????????0};
        wildcard bins bit_1_0   = {64'b??????????????????????????????????????????????????????????????0?};
        wildcard bins bit_2_0   = {64'b?????????????????????????????????????????????????????????????0??};
        wildcard bins bit_3_0   = {64'b????????????????????????????????????????????????????????????0???};
        wildcard bins bit_4_0   = {64'b???????????????????????????????????????????????????????????0????};
        wildcard bins bit_5_0   = {64'b??????????????????????????????????????????????????????????0?????};
        wildcard bins bit_6_0   = {64'b?????????????????????????????????????????????????????????0??????};
        wildcard bins bit_7_0   = {64'b????????????????????????????????????????????????????????0???????};
        wildcard bins bit_8_0   = {64'b???????????????????????????????????????????????????????0????????};
        wildcard bins bit_9_0   = {64'b??????????????????????????????????????????????????????0?????????};
        wildcard bins bit_10_0  = {64'b?????????????????????????????????????????????????????0??????????};
        wildcard bins bit_11_0  = {64'b????????????????????????????????????????????????????0???????????};
        wildcard bins bit_12_0  = {64'b???????????????????????????????????????????????????0????????????};
        wildcard bins bit_13_0  = {64'b??????????????????????????????????????????????????0?????????????};
        wildcard bins bit_14_0  = {64'b?????????????????????????????????????????????????0??????????????};
        wildcard bins bit_15_0  = {64'b????????????????????????????????????????????????0???????????????};
        wildcard bins bit_16_0  = {64'b???????????????????????????????????????????????0????????????????};
        wildcard bins bit_17_0  = {64'b??????????????????????????????????????????????0?????????????????};
        wildcard bins bit_18_0  = {64'b?????????????????????????????????????????????0??????????????????};
        wildcard bins bit_19_0  = {64'b????????????????????????????????????????????0???????????????????};
        wildcard bins bit_20_0  = {64'b???????????????????????????????????????????0????????????????????};
        wildcard bins bit_21_0  = {64'b??????????????????????????????????????????0?????????????????????};
        wildcard bins bit_22_0  = {64'b?????????????????????????????????????????0??????????????????????};
        wildcard bins bit_23_0  = {64'b????????????????????????????????????????0???????????????????????};
        wildcard bins bit_24_0  = {64'b???????????????????????????????????????0????????????????????????};
        wildcard bins bit_25_0  = {64'b??????????????????????????????????????0?????????????????????????};
        wildcard bins bit_26_0  = {64'b?????????????????????????????????????0??????????????????????????};
        wildcard bins bit_27_0  = {64'b????????????????????????????????????0???????????????????????????};
        wildcard bins bit_28_0  = {64'b???????????????????????????????????0????????????????????????????};
        wildcard bins bit_29_0  = {64'b??????????????????????????????????0?????????????????????????????};
        wildcard bins bit_30_0  = {64'b?????????????????????????????????0??????????????????????????????};
        wildcard bins bit_31_0  = {64'b????????????????????????????????0???????????????????????????????};
        wildcard bins bit_32_0  = {64'b???????????????????????????????0????????????????????????????????};
        wildcard bins bit_33_0  = {64'b??????????????????????????????0?????????????????????????????????};
        wildcard bins bit_34_0  = {64'b?????????????????????????????0??????????????????????????????????};
        wildcard bins bit_35_0  = {64'b????????????????????????????0???????????????????????????????????};
        wildcard bins bit_36_0  = {64'b???????????????????????????0????????????????????????????????????};
        wildcard bins bit_37_0  = {64'b??????????????????????????0?????????????????????????????????????};
        wildcard bins bit_38_0  = {64'b?????????????????????????0??????????????????????????????????????};
        wildcard bins bit_39_0  = {64'b????????????????????????0???????????????????????????????????????};
        wildcard bins bit_40_0  = {64'b???????????????????????0????????????????????????????????????????};
        wildcard bins bit_41_0  = {64'b??????????????????????0?????????????????????????????????????????};
        wildcard bins bit_42_0  = {64'b?????????????????????0??????????????????????????????????????????};
        wildcard bins bit_43_0  = {64'b????????????????????0???????????????????????????????????????????};
        wildcard bins bit_44_0  = {64'b???????????????????0????????????????????????????????????????????};
        wildcard bins bit_45_0  = {64'b??????????????????0?????????????????????????????????????????????};
        wildcard bins bit_46_0  = {64'b?????????????????0??????????????????????????????????????????????};
        wildcard bins bit_47_0  = {64'b????????????????0???????????????????????????????????????????????};
        wildcard bins bit_48_0  = {64'b???????????????0????????????????????????????????????????????????};
        wildcard bins bit_49_0  = {64'b??????????????0?????????????????????????????????????????????????};
        wildcard bins bit_50_0  = {64'b?????????????0??????????????????????????????????????????????????};
        wildcard bins bit_51_0  = {64'b????????????0???????????????????????????????????????????????????};
        wildcard bins bit_52_0  = {64'b???????????0????????????????????????????????????????????????????};
        wildcard bins bit_53_0  = {64'b??????????0?????????????????????????????????????????????????????};
        wildcard bins bit_54_0  = {64'b?????????0??????????????????????????????????????????????????????};
        wildcard bins bit_55_0  = {64'b????????0???????????????????????????????????????????????????????};
        wildcard bins bit_56_0  = {64'b???????0????????????????????????????????????????????????????????};
        wildcard bins bit_57_0  = {64'b??????0?????????????????????????????????????????????????????????};
        wildcard bins bit_58_0  = {64'b?????0??????????????????????????????????????????????????????????};
        wildcard bins bit_59_0  = {64'b????0???????????????????????????????????????????????????????????};
        wildcard bins bit_60_0  = {64'b???0????????????????????????????????????????????????????????????};
        wildcard bins bit_61_0  = {64'b??0?????????????????????????????????????????????????????????????};
        wildcard bins bit_62_0  = {64'b?0??????????????????????????????????????????????????????????????};
        wildcard bins bit_63_0  = {64'b0???????????????????????????????????????????????????????????????};
        wildcard bins bit_0_1   = {64'b???????????????????????????????????????????????????????????????1};
        wildcard bins bit_1_1   = {64'b??????????????????????????????????????????????????????????????1?};
        wildcard bins bit_2_1   = {64'b?????????????????????????????????????????????????????????????1??};
        wildcard bins bit_3_1   = {64'b????????????????????????????????????????????????????????????1???};
        wildcard bins bit_4_1   = {64'b???????????????????????????????????????????????????????????1????};
        wildcard bins bit_5_1   = {64'b??????????????????????????????????????????????????????????1?????};
        wildcard bins bit_6_1   = {64'b?????????????????????????????????????????????????????????1??????};
        wildcard bins bit_7_1   = {64'b????????????????????????????????????????????????????????1???????};
        wildcard bins bit_8_1   = {64'b???????????????????????????????????????????????????????1????????};
        wildcard bins bit_9_1   = {64'b??????????????????????????????????????????????????????1?????????};
        wildcard bins bit_10_1  = {64'b?????????????????????????????????????????????????????1??????????};
        wildcard bins bit_11_1  = {64'b????????????????????????????????????????????????????1???????????};
        wildcard bins bit_12_1  = {64'b???????????????????????????????????????????????????1????????????};
        wildcard bins bit_13_1  = {64'b??????????????????????????????????????????????????1?????????????};
        wildcard bins bit_14_1  = {64'b?????????????????????????????????????????????????1??????????????};
        wildcard bins bit_15_1  = {64'b????????????????????????????????????????????????1???????????????};
        wildcard bins bit_16_1  = {64'b???????????????????????????????????????????????1????????????????};
        wildcard bins bit_17_1  = {64'b??????????????????????????????????????????????1?????????????????};
        wildcard bins bit_18_1  = {64'b?????????????????????????????????????????????1??????????????????};
        wildcard bins bit_19_1  = {64'b????????????????????????????????????????????1???????????????????};
        wildcard bins bit_20_1  = {64'b???????????????????????????????????????????1????????????????????};
        wildcard bins bit_21_1  = {64'b??????????????????????????????????????????1?????????????????????};
        wildcard bins bit_22_1  = {64'b?????????????????????????????????????????1??????????????????????};
        wildcard bins bit_23_1  = {64'b????????????????????????????????????????1???????????????????????};
        wildcard bins bit_24_1  = {64'b???????????????????????????????????????1????????????????????????};
        wildcard bins bit_25_1  = {64'b??????????????????????????????????????1?????????????????????????};
        wildcard bins bit_26_1  = {64'b?????????????????????????????????????1??????????????????????????};
        wildcard bins bit_27_1  = {64'b????????????????????????????????????1???????????????????????????};
        wildcard bins bit_28_1  = {64'b???????????????????????????????????1????????????????????????????};
        wildcard bins bit_29_1  = {64'b??????????????????????????????????1?????????????????????????????};
        wildcard bins bit_30_1  = {64'b?????????????????????????????????1??????????????????????????????};
        wildcard bins bit_31_1  = {64'b????????????????????????????????1???????????????????????????????};
        wildcard bins bit_32_1  = {64'b???????????????????????????????1????????????????????????????????};
        wildcard bins bit_33_1  = {64'b??????????????????????????????1?????????????????????????????????};
        wildcard bins bit_34_1  = {64'b?????????????????????????????1??????????????????????????????????};
        wildcard bins bit_35_1  = {64'b????????????????????????????1???????????????????????????????????};
        wildcard bins bit_36_1  = {64'b???????????????????????????1????????????????????????????????????};
        wildcard bins bit_37_1  = {64'b??????????????????????????1?????????????????????????????????????};
        wildcard bins bit_38_1  = {64'b?????????????????????????1??????????????????????????????????????};
        wildcard bins bit_39_1  = {64'b????????????????????????1???????????????????????????????????????};
        wildcard bins bit_40_1  = {64'b???????????????????????1????????????????????????????????????????};
        wildcard bins bit_41_1  = {64'b??????????????????????1?????????????????????????????????????????};
        wildcard bins bit_42_1  = {64'b?????????????????????1??????????????????????????????????????????};
        wildcard bins bit_43_1  = {64'b????????????????????1???????????????????????????????????????????};
        wildcard bins bit_44_1  = {64'b???????????????????1????????????????????????????????????????????};
        wildcard bins bit_45_1  = {64'b??????????????????1?????????????????????????????????????????????};
        wildcard bins bit_46_1  = {64'b?????????????????1??????????????????????????????????????????????};
        wildcard bins bit_47_1  = {64'b????????????????1???????????????????????????????????????????????};
        wildcard bins bit_48_1  = {64'b???????????????1????????????????????????????????????????????????};
        wildcard bins bit_49_1  = {64'b??????????????1?????????????????????????????????????????????????};
        wildcard bins bit_50_1  = {64'b?????????????1??????????????????????????????????????????????????};
        wildcard bins bit_51_1  = {64'b????????????1???????????????????????????????????????????????????};
        wildcard bins bit_52_1  = {64'b???????????1????????????????????????????????????????????????????};
        wildcard bins bit_53_1  = {64'b??????????1?????????????????????????????????????????????????????};
        wildcard bins bit_54_1  = {64'b?????????1??????????????????????????????????????????????????????};
        wildcard bins bit_55_1  = {64'b????????1???????????????????????????????????????????????????????};
        wildcard bins bit_56_1  = {64'b???????1????????????????????????????????????????????????????????};
        wildcard bins bit_57_1  = {64'b??????1?????????????????????????????????????????????????????????};
        wildcard bins bit_58_1  = {64'b?????1??????????????????????????????????????????????????????????};
        wildcard bins bit_59_1  = {64'b????1???????????????????????????????????????????????????????????};
        wildcard bins bit_60_1  = {64'b???1????????????????????????????????????????????????????????????};
        wildcard bins bit_61_1  = {64'b??1?????????????????????????????????????????????????????????????};
        wildcard bins bit_62_1  = {64'b?1??????????????????????????????????????????????????????????????};
        wildcard bins bit_63_1  = {64'b1???????????????????????????????????????????????????????????????};
    }
    cp_rs2_toggle : coverpoint unsigned'(ins.current.rs2_val)  iff (ins.trap == 0 )  {
        option.comment = "RS2 Toggle bits";
        wildcard bins bit_0_0   = {64'b???????????????????????????????????????????????????????????????0};
        wildcard bins bit_1_0   = {64'b??????????????????????????????????????????????????????????????0?};
        wildcard bins bit_2_0   = {64'b?????????????????????????????????????????????????????????????0??};
        wildcard bins bit_3_0   = {64'b????????????????????????????????????????????????????????????0???};
        wildcard bins bit_4_0   = {64'b???????????????????????????????????????????????????????????0????};
        wildcard bins bit_5_0   = {64'b??????????????????????????????????????????????????????????0?????};
        wildcard bins bit_6_0   = {64'b?????????????????????????????????????????????????????????0??????};
        wildcard bins bit_7_0   = {64'b????????????????????????????????????????????????????????0???????};
        wildcard bins bit_8_0   = {64'b???????????????????????????????????????????????????????0????????};
        wildcard bins bit_9_0   = {64'b??????????????????????????????????????????????????????0?????????};
        wildcard bins bit_10_0  = {64'b?????????????????????????????????????????????????????0??????????};
        wildcard bins bit_11_0  = {64'b????????????????????????????????????????????????????0???????????};
        wildcard bins bit_12_0  = {64'b???????????????????????????????????????????????????0????????????};
        wildcard bins bit_13_0  = {64'b??????????????????????????????????????????????????0?????????????};
        wildcard bins bit_14_0  = {64'b?????????????????????????????????????????????????0??????????????};
        wildcard bins bit_15_0  = {64'b????????????????????????????????????????????????0???????????????};
        wildcard bins bit_16_0  = {64'b???????????????????????????????????????????????0????????????????};
        wildcard bins bit_17_0  = {64'b??????????????????????????????????????????????0?????????????????};
        wildcard bins bit_18_0  = {64'b?????????????????????????????????????????????0??????????????????};
        wildcard bins bit_19_0  = {64'b????????????????????????????????????????????0???????????????????};
        wildcard bins bit_20_0  = {64'b???????????????????????????????????????????0????????????????????};
        wildcard bins bit_21_0  = {64'b??????????????????????????????????????????0?????????????????????};
        wildcard bins bit_22_0  = {64'b?????????????????????????????????????????0??????????????????????};
        wildcard bins bit_23_0  = {64'b????????????????????????????????????????0???????????????????????};
        wildcard bins bit_24_0  = {64'b???????????????????????????????????????0????????????????????????};
        wildcard bins bit_25_0  = {64'b??????????????????????????????????????0?????????????????????????};
        wildcard bins bit_26_0  = {64'b?????????????????????????????????????0??????????????????????????};
        wildcard bins bit_27_0  = {64'b????????????????????????????????????0???????????????????????????};
        wildcard bins bit_28_0  = {64'b???????????????????????????????????0????????????????????????????};
        wildcard bins bit_29_0  = {64'b??????????????????????????????????0?????????????????????????????};
        wildcard bins bit_30_0  = {64'b?????????????????????????????????0??????????????????????????????};
        wildcard bins bit_31_0  = {64'b????????????????????????????????0???????????????????????????????};
        wildcard bins bit_32_0  = {64'b???????????????????????????????0????????????????????????????????};
        wildcard bins bit_33_0  = {64'b??????????????????????????????0?????????????????????????????????};
        wildcard bins bit_34_0  = {64'b?????????????????????????????0??????????????????????????????????};
        wildcard bins bit_35_0  = {64'b????????????????????????????0???????????????????????????????????};
        wildcard bins bit_36_0  = {64'b???????????????????????????0????????????????????????????????????};
        wildcard bins bit_37_0  = {64'b??????????????????????????0?????????????????????????????????????};
        wildcard bins bit_38_0  = {64'b?????????????????????????0??????????????????????????????????????};
        wildcard bins bit_39_0  = {64'b????????????????????????0???????????????????????????????????????};
        wildcard bins bit_40_0  = {64'b???????????????????????0????????????????????????????????????????};
        wildcard bins bit_41_0  = {64'b??????????????????????0?????????????????????????????????????????};
        wildcard bins bit_42_0  = {64'b?????????????????????0??????????????????????????????????????????};
        wildcard bins bit_43_0  = {64'b????????????????????0???????????????????????????????????????????};
        wildcard bins bit_44_0  = {64'b???????????????????0????????????????????????????????????????????};
        wildcard bins bit_45_0  = {64'b??????????????????0?????????????????????????????????????????????};
        wildcard bins bit_46_0  = {64'b?????????????????0??????????????????????????????????????????????};
        wildcard bins bit_47_0  = {64'b????????????????0???????????????????????????????????????????????};
        wildcard bins bit_48_0  = {64'b???????????????0????????????????????????????????????????????????};
        wildcard bins bit_49_0  = {64'b??????????????0?????????????????????????????????????????????????};
        wildcard bins bit_50_0  = {64'b?????????????0??????????????????????????????????????????????????};
        wildcard bins bit_51_0  = {64'b????????????0???????????????????????????????????????????????????};
        wildcard bins bit_52_0  = {64'b???????????0????????????????????????????????????????????????????};
        wildcard bins bit_53_0  = {64'b??????????0?????????????????????????????????????????????????????};
        wildcard bins bit_54_0  = {64'b?????????0??????????????????????????????????????????????????????};
        wildcard bins bit_55_0  = {64'b????????0???????????????????????????????????????????????????????};
        wildcard bins bit_56_0  = {64'b???????0????????????????????????????????????????????????????????};
        wildcard bins bit_57_0  = {64'b??????0?????????????????????????????????????????????????????????};
        wildcard bins bit_58_0  = {64'b?????0??????????????????????????????????????????????????????????};
        wildcard bins bit_59_0  = {64'b????0???????????????????????????????????????????????????????????};
        wildcard bins bit_60_0  = {64'b???0????????????????????????????????????????????????????????????};
        wildcard bins bit_61_0  = {64'b??0?????????????????????????????????????????????????????????????};
        wildcard bins bit_62_0  = {64'b?0??????????????????????????????????????????????????????????????};
        wildcard bins bit_63_0  = {64'b0???????????????????????????????????????????????????????????????};
        wildcard bins bit_0_1   = {64'b???????????????????????????????????????????????????????????????1};
        wildcard bins bit_1_1   = {64'b??????????????????????????????????????????????????????????????1?};
        wildcard bins bit_2_1   = {64'b?????????????????????????????????????????????????????????????1??};
        wildcard bins bit_3_1   = {64'b????????????????????????????????????????????????????????????1???};
        wildcard bins bit_4_1   = {64'b???????????????????????????????????????????????????????????1????};
        wildcard bins bit_5_1   = {64'b??????????????????????????????????????????????????????????1?????};
        wildcard bins bit_6_1   = {64'b?????????????????????????????????????????????????????????1??????};
        wildcard bins bit_7_1   = {64'b????????????????????????????????????????????????????????1???????};
        wildcard bins bit_8_1   = {64'b???????????????????????????????????????????????????????1????????};
        wildcard bins bit_9_1   = {64'b??????????????????????????????????????????????????????1?????????};
        wildcard bins bit_10_1  = {64'b?????????????????????????????????????????????????????1??????????};
        wildcard bins bit_11_1  = {64'b????????????????????????????????????????????????????1???????????};
        wildcard bins bit_12_1  = {64'b???????????????????????????????????????????????????1????????????};
        wildcard bins bit_13_1  = {64'b??????????????????????????????????????????????????1?????????????};
        wildcard bins bit_14_1  = {64'b?????????????????????????????????????????????????1??????????????};
        wildcard bins bit_15_1  = {64'b????????????????????????????????????????????????1???????????????};
        wildcard bins bit_16_1  = {64'b???????????????????????????????????????????????1????????????????};
        wildcard bins bit_17_1  = {64'b??????????????????????????????????????????????1?????????????????};
        wildcard bins bit_18_1  = {64'b?????????????????????????????????????????????1??????????????????};
        wildcard bins bit_19_1  = {64'b????????????????????????????????????????????1???????????????????};
        wildcard bins bit_20_1  = {64'b???????????????????????????????????????????1????????????????????};
        wildcard bins bit_21_1  = {64'b??????????????????????????????????????????1?????????????????????};
        wildcard bins bit_22_1  = {64'b?????????????????????????????????????????1??????????????????????};
        wildcard bins bit_23_1  = {64'b????????????????????????????????????????1???????????????????????};
        wildcard bins bit_24_1  = {64'b???????????????????????????????????????1????????????????????????};
        wildcard bins bit_25_1  = {64'b??????????????????????????????????????1?????????????????????????};
        wildcard bins bit_26_1  = {64'b?????????????????????????????????????1??????????????????????????};
        wildcard bins bit_27_1  = {64'b????????????????????????????????????1???????????????????????????};
        wildcard bins bit_28_1  = {64'b???????????????????????????????????1????????????????????????????};
        wildcard bins bit_29_1  = {64'b??????????????????????????????????1?????????????????????????????};
        wildcard bins bit_30_1  = {64'b?????????????????????????????????1??????????????????????????????};
        wildcard bins bit_31_1  = {64'b????????????????????????????????1???????????????????????????????};
        wildcard bins bit_32_1  = {64'b???????????????????????????????1????????????????????????????????};
        wildcard bins bit_33_1  = {64'b??????????????????????????????1?????????????????????????????????};
        wildcard bins bit_34_1  = {64'b?????????????????????????????1??????????????????????????????????};
        wildcard bins bit_35_1  = {64'b????????????????????????????1???????????????????????????????????};
        wildcard bins bit_36_1  = {64'b???????????????????????????1????????????????????????????????????};
        wildcard bins bit_37_1  = {64'b??????????????????????????1?????????????????????????????????????};
        wildcard bins bit_38_1  = {64'b?????????????????????????1??????????????????????????????????????};
        wildcard bins bit_39_1  = {64'b????????????????????????1???????????????????????????????????????};
        wildcard bins bit_40_1  = {64'b???????????????????????1????????????????????????????????????????};
        wildcard bins bit_41_1  = {64'b??????????????????????1?????????????????????????????????????????};
        wildcard bins bit_42_1  = {64'b?????????????????????1??????????????????????????????????????????};
        wildcard bins bit_43_1  = {64'b????????????????????1???????????????????????????????????????????};
        wildcard bins bit_44_1  = {64'b???????????????????1????????????????????????????????????????????};
        wildcard bins bit_45_1  = {64'b??????????????????1?????????????????????????????????????????????};
        wildcard bins bit_46_1  = {64'b?????????????????1??????????????????????????????????????????????};
        wildcard bins bit_47_1  = {64'b????????????????1???????????????????????????????????????????????};
        wildcard bins bit_48_1  = {64'b???????????????1????????????????????????????????????????????????};
        wildcard bins bit_49_1  = {64'b??????????????1?????????????????????????????????????????????????};
        wildcard bins bit_50_1  = {64'b?????????????1??????????????????????????????????????????????????};
        wildcard bins bit_51_1  = {64'b????????????1???????????????????????????????????????????????????};
        wildcard bins bit_52_1  = {64'b???????????1????????????????????????????????????????????????????};
        wildcard bins bit_53_1  = {64'b??????????1?????????????????????????????????????????????????????};
        wildcard bins bit_54_1  = {64'b?????????1??????????????????????????????????????????????????????};
        wildcard bins bit_55_1  = {64'b????????1???????????????????????????????????????????????????????};
        wildcard bins bit_56_1  = {64'b???????1????????????????????????????????????????????????????????};
        wildcard bins bit_57_1  = {64'b??????1?????????????????????????????????????????????????????????};
        wildcard bins bit_58_1  = {64'b?????1??????????????????????????????????????????????????????????};
        wildcard bins bit_59_1  = {64'b????1???????????????????????????????????????????????????????????};
        wildcard bins bit_60_1  = {64'b???1????????????????????????????????????????????????????????????};
        wildcard bins bit_61_1  = {64'b??1?????????????????????????????????????????????????????????????};
        wildcard bins bit_62_1  = {64'b?1??????????????????????????????????????????????????????????????};
        wildcard bins bit_63_1  = {64'b1???????????????????????????????????????????????????????????????};
    }
endgroup

function void rv64zcbm_sample(int hart, int issue);
    ins_rv64zcbm_t ins;
    if (traceDataQ[hart][issue][0].insn[1:0] != 3) begin // compressed instruction
        $display("Examining compressed instruction rv64zcbm_sample with inst_name = %s disass = %s", traceDataQ[hart][issue][0].inst_name, traceDataQ[hart][issue][0].disass);
        case (traceDataQ[hart][issue][0].inst_name)
            "mul" : begin
                if (traceDataQ[hart][issue][0].insn[1:0] == 2'b01 && traceDataQ[hart][issue][0].insn[15:10] == 6'b100111) begin // Specific bits for "mul" 
                    ins = new(hart, issue, traceDataQ); 
                    ins.add_rd(0);                  
                    ins.add_rs2(2);                 
                    c_mul_cg.sample(ins);           
                end
            end
        endcase
    end
endfunction
