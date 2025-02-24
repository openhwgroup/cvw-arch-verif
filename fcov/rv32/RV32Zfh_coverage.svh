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

`define COVER_RV32ZFH
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv32zfh_t;


covergroup fadd_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fadd.h";
    cp_asm_count : coverpoint ins.ins_str == "fadd.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_von : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins OF  = {5'b??1??};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_3 : coverpoint get_frm(ins.ops[3].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm_H : cross cp_fs1_corners_H,cp_fs2_corners_H,cp_frm_3  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS2 (half precision), rounding mode";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fclass_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fclass.h";
    cp_asm_count : coverpoint ins.ins_str == "fclass.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_h_s_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.h.s";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.h.s"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_csr_fflags_vn : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners : coverpoint unsigned'(ins.current.fs1_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_h_w_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.h.w";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.h.w"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
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
    cp_csr_fflags_n : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
endgroup

covergroup fcvt_h_wu_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.h.wu";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.h.wu"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
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
    cp_csr_fflags_n : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
endgroup

covergroup fcvt_s_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.s.h";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.s.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_w_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.w.h";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.w.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_csr_fflags_vn : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_wu_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.wu.h";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.wu.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_csr_fflags_vn : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fdiv_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fdiv.h";
    cp_asm_count : coverpoint ins.ins_str == "fdiv.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_vdoun : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins DZ  = {5'b?1???};
        wildcard bins OF  = {5'b??1??};
        wildcard bins UF  = {5'b???1?};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_3 : coverpoint get_frm(ins.ops[3].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm_H : cross cp_fs1_corners_H,cp_fs2_corners_H,cp_frm_3  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS2 (half precision), rounding mode";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup feq_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "feq.h";
    cp_asm_count : coverpoint ins.ins_str == "feq.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rd_boolean : coverpoint longint'(ins.current.rd_val)  iff (ins.trap == 0 )  {
        option.comment = "RD Boolean Values";
        bins zero  = {0};
        bins one  = {1};
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cr_fs1_fs2_corners_H : cross cp_fs1_corners_H,cp_fs2_corners_H  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (half precision)";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fle_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fle.h";
    cp_asm_count : coverpoint ins.ins_str == "fle.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rd_boolean : coverpoint longint'(ins.current.rd_val)  iff (ins.trap == 0 )  {
        option.comment = "RD Boolean Values";
        bins zero  = {0};
        bins one  = {1};
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cr_fs1_fs2_corners_H : cross cp_fs1_corners_H,cp_fs2_corners_H  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (half precision)";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup flh_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "flh";
    cp_asm_count : coverpoint ins.ins_str == "flh"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rs1_nx0 : coverpoint ins.get_gpr_reg(ins.current.rs1) iff (ins.trap == 0) {
        option.comment = "RS1 register assignment (excluding x0)";

        bins x1 = {1};
        bins x2 = {2};
        bins x3 = {3};
        bins x4 = {4};
        bins x5 = {5};
        bins x6 = {6};
        bins x7 = {7};
        bins x8 = {8};
        bins x9 = {9};
        bins x10 = {10};
        bins x11 = {11};
        bins x12 = {12};
        bins x13 = {13};
        bins x14 = {14};
        bins x15 = {15};
        `ifndef COVER_BASE_E
        bins x16 = {16};
        bins x17 = {17};
        bins x18 = {18};
        bins x19 = {19};
        bins x20 = {20};
        bins x21 = {21};
        bins x22 = {22};
        bins x23 = {23};
        bins x24 = {24};
        bins x25 = {25};
        bins x26 = {26};
        bins x27 = {27};
        bins x28 = {28};
        bins x29 = {29};
        bins x30 = {30};
        bins x31 = {31};
        `endif    
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
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_f_mem_hazard : coverpoint check_mem_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "Memory Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD};
    }
endgroup

covergroup flt_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "flt.h";
    cp_asm_count : coverpoint ins.ins_str == "flt.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rd_boolean : coverpoint longint'(ins.current.rd_val)  iff (ins.trap == 0 )  {
        option.comment = "RD Boolean Values";
        bins zero  = {0};
        bins one  = {1};
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cr_fs1_fs2_corners_H : cross cp_fs1_corners_H,cp_fs2_corners_H  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (half precision)";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fmadd_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fmadd.h";
    cp_asm_count : coverpoint ins.ins_str == "fmadd.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_voun : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins OF  = {5'b??1??};
        wildcard bins UF  = {5'b???1?};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs3_corners_H : coverpoint unsigned'(ins.current.fs3_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS3 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_4 : coverpoint get_frm(ins.ops[4].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm4_H : cross cp_fs1_corners_H,cp_fs2_corners_H,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS2 (half precision), rounding mode";
    }
    cr_fs1_fs3_corners_frm4_H : cross cp_fs1_corners_H,cp_fs3_corners_H,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS3 (half precision), rounding mode";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fmax_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fmax.h";
    cp_asm_count : coverpoint ins.ins_str == "fmax.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cr_fs1_fs2_corners_H : cross cp_fs1_corners_H,cp_fs2_corners_H  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (half precision)";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fmin_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fmin.h";
    cp_asm_count : coverpoint ins.ins_str == "fmin.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cr_fs1_fs2_corners_H : cross cp_fs1_corners_H,cp_fs2_corners_H  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (half precision)";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fmsub_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fmsub.h";
    cp_asm_count : coverpoint ins.ins_str == "fmsub.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_voun : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins OF  = {5'b??1??};
        wildcard bins UF  = {5'b???1?};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs3_corners_H : coverpoint unsigned'(ins.current.fs3_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS3 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_4 : coverpoint get_frm(ins.ops[4].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm4_H : cross cp_fs1_corners_H,cp_fs2_corners_H,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS2 (half precision), rounding mode";
    }
    cr_fs1_fs3_corners_frm4_H : cross cp_fs1_corners_H,cp_fs3_corners_H,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS3 (half precision), rounding mode";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fmul_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fmul.h";
    cp_asm_count : coverpoint ins.ins_str == "fmul.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_voun : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins OF  = {5'b??1??};
        wildcard bins UF  = {5'b???1?};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_3 : coverpoint get_frm(ins.ops[3].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm_H : cross cp_fs1_corners_H,cp_fs2_corners_H,cp_frm_3  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS2 (half precision), rounding mode";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fmv_h_x_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fmv.h.x";
    cp_asm_count : coverpoint ins.ins_str == "fmv.h.x"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
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
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
endgroup

covergroup fmv_x_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fmv.x.h";
    cp_asm_count : coverpoint ins.ins_str == "fmv.x.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fnmadd_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fnmadd.h";
    cp_asm_count : coverpoint ins.ins_str == "fnmadd.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_voun : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins OF  = {5'b??1??};
        wildcard bins UF  = {5'b???1?};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs3_corners_H : coverpoint unsigned'(ins.current.fs3_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS3 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_4 : coverpoint get_frm(ins.ops[4].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm4_H : cross cp_fs1_corners_H,cp_fs2_corners_H,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS2 (half precision), rounding mode";
    }
    cr_fs1_fs3_corners_frm4_H : cross cp_fs1_corners_H,cp_fs3_corners_H,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS3 (half precision), rounding mode";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fnmsub_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fnmsub.h";
    cp_asm_count : coverpoint ins.ins_str == "fnmsub.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_voun : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins OF  = {5'b??1??};
        wildcard bins UF  = {5'b???1?};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs3_corners_H : coverpoint unsigned'(ins.current.fs3_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS3 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_4 : coverpoint get_frm(ins.ops[4].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm4_H : cross cp_fs1_corners_H,cp_fs2_corners_H,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS2 (half precision), rounding mode";
    }
    cr_fs1_fs3_corners_frm4_H : cross cp_fs1_corners_H,cp_fs3_corners_H,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS3 (half precision), rounding mode";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fsgnj_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fsgnj.h";
    cp_asm_count : coverpoint ins.ins_str == "fsgnj.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fsgnjn_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fsgnjn.h";
    cp_asm_count : coverpoint ins.ins_str == "fsgnjn.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fsgnjx_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fsgnjx.h";
    cp_asm_count : coverpoint ins.ins_str == "fsgnjx.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fsh_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fsh";
    cp_asm_count : coverpoint ins.ins_str == "fsh"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rs1_nx0 : coverpoint ins.get_gpr_reg(ins.current.rs1) iff (ins.trap == 0) {
        option.comment = "RS1 register assignment (excluding x0)";

        bins x1 = {1};
        bins x2 = {2};
        bins x3 = {3};
        bins x4 = {4};
        bins x5 = {5};
        bins x6 = {6};
        bins x7 = {7};
        bins x8 = {8};
        bins x9 = {9};
        bins x10 = {10};
        bins x11 = {11};
        bins x12 = {12};
        bins x13 = {13};
        bins x14 = {14};
        bins x15 = {15};
        `ifndef COVER_BASE_E
        bins x16 = {16};
        bins x17 = {17};
        bins x18 = {18};
        bins x19 = {19};
        bins x20 = {20};
        bins x21 = {21};
        bins x22 = {22};
        bins x23 = {23};
        bins x24 = {24};
        bins x25 = {25};
        bins x26 = {26};
        bins x27 = {27};
        bins x28 = {28};
        bins x29 = {29};
        bins x30 = {30};
        bins x31 = {31};
        `endif    
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
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fsqrt_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fsqrt.h";
    cp_asm_count : coverpoint ins.ins_str == "fsqrt.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_vn : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fsub_h_cg with function sample(ins_rv32zfh_t ins);
    option.per_instance = 1; 
    option.comment = "fsub.h";
    cp_asm_count : coverpoint ins.ins_str == "fsub.h"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_von : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins OF  = {5'b??1??};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_H : coverpoint unsigned'(ins.current.fs1_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_fs2_corners_H : coverpoint unsigned'(ins.current.fs2_val[15:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Half Precision)";
        bins pos0             = {16'h0000};
        bins neg0             = {16'h8000};
        bins pos1             = {16'h3C00};
        bins neg1             = {16'hBC00};
        bins pos1p5           = {16'h3E00};
        bins neg1p5           = {16'hBE00};
        bins pos2             = {16'h4000};
        bins neg2             = {16'hC000};
        bins posminnorm       = {16'h0400};
        bins mnegminnorm      = {16'h8400};
        bins posmaxnorm       = {16'h7BFF};
        bins negmaxnorm       = {16'hFBFF};
        bins posmax_subnorm   = {16'h03FF};
        bins negmax_subnorm   = {16'h83FF};
        bins posmid_subnorm   = {16'h0200};
        bins negmid_subnorm   = {16'h8200};
        bins posmin_subnorm   = {16'h0001};
        bins negmin_subnorm   = {16'h8001};
        bins posinfinity      = {16'h7C00};
        bins neginfinity      = {16'hFC00};
        bins posQNaN          = {[16'h7E00:16'h7FFF]};
        bins posSNaN          = {[16'h7C01:16'h7DFF]};
        bins posrandom        = {16'h58B4};
        bins negrandom        = {16'hC93A};
    }
    cp_frm_3 : coverpoint get_frm(ins.ops[3].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm_H : cross cp_fs1_corners_H,cp_fs2_corners_H,cp_frm_3  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (half precision), FS2 (half precision), rounding mode";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

function void rv32zfh_sample(int hart, int issue);
    ins_rv32zfh_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "fadd.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fadd_h_cg.sample(ins); 
        end
        "fclass.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fclass_h_cg.sample(ins); 
        end
        "fcvt.h.s"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fcvt_h_s_cg.sample(ins); 
        end
        "fcvt.h.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_rs1(1);
            fcvt_h_w_cg.sample(ins); 
        end
        "fcvt.h.wu"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_rs1(1);
            fcvt_h_wu_cg.sample(ins); 
        end
        "fcvt.s.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fcvt_s_h_cg.sample(ins); 
        end
        "fcvt.w.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            fcvt_w_h_cg.sample(ins); 
        end
        "fcvt.wu.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            fcvt_wu_h_cg.sample(ins); 
        end
        "fdiv.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fdiv_h_cg.sample(ins); 
        end
        "feq.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            feq_h_cg.sample(ins); 
        end
        "fle.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fle_h_cg.sample(ins); 
        end
        "flh"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_imm(1);
            ins.add_rs1(2);
            ins.current.inst_category = INST_CAT_LOAD;
            ins.add_mem_address();
            flh_cg.sample(ins); 
        end
        "flt.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            flt_h_cg.sample(ins); 
        end
        "fmadd.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            ins.add_fs3(3);
            fmadd_h_cg.sample(ins); 
        end
        "fmax.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fmax_h_cg.sample(ins); 
        end
        "fmin.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fmin_h_cg.sample(ins); 
        end
        "fmsub.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            ins.add_fs3(3);
            fmsub_h_cg.sample(ins); 
        end
        "fmul.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fmul_h_cg.sample(ins); 
        end
        "fmv.h.x"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_rs1(1);
            fmv_h_x_cg.sample(ins); 
        end
        "fmv.x.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            fmv_x_h_cg.sample(ins); 
        end
        "fnmadd.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            ins.add_fs3(3);
            fnmadd_h_cg.sample(ins); 
        end
        "fnmsub.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            ins.add_fs3(3);
            fnmsub_h_cg.sample(ins); 
        end
        "fsgnj.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fsgnj_h_cg.sample(ins); 
        end
        "fsgnjn.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fsgnjn_h_cg.sample(ins); 
        end
        "fsgnjx.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fsgnjx_h_cg.sample(ins); 
        end
        "fsh"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fs2(0);
            ins.add_imm(1);
            ins.add_rs1(2);
            ins.current.inst_category = INST_CAT_STORE;
            ins.add_mem_address();
            fsh_cg.sample(ins); 
        end
        "fsqrt.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fsqrt_h_cg.sample(ins); 
        end
        "fsub.h"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fsub_h_cg.sample(ins); 
        end
    endcase
endfunction
