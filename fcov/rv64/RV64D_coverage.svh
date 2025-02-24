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

`define COVER_RV64D
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64d_t;


covergroup fadd_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fadd.d";
    cp_asm_count : coverpoint ins.ins_str == "fadd.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_3 : coverpoint get_frm(ins.ops[3].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm_D : cross cp_fs1_corners_D,cp_fs2_corners_D,cp_frm_3  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS2 (double precision), rounding mode";
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

covergroup fclass_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fclass.d";
    cp_asm_count : coverpoint ins.ins_str == "fclass.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_d_l_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.d.l";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.d.l"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
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

covergroup fcvt_d_lu_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.d.lu";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.d.lu"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
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

covergroup fcvt_d_s_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.d.s";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.d.s"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
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
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_d_w_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.d.w";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.d.w"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
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
    cp_csr_fflags_n : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NX  = {5'b????1};
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
endgroup

covergroup fcvt_d_wu_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.d.wu";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.d.wu"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
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
    cp_csr_fflags_n : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NX  = {5'b????1};
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
endgroup

covergroup fcvt_l_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.l.d";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.l.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_lu_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.lu.d";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.lu.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_s_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.s.d";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.s.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
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

covergroup fcvt_w_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.w.d";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.w.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fcvt_wu_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fcvt.wu.d";
    cp_asm_count : coverpoint ins.ins_str == "fcvt.wu.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fdiv_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fdiv.d";
    cp_asm_count : coverpoint ins.ins_str == "fdiv.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_3 : coverpoint get_frm(ins.ops[3].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm_D : cross cp_fs1_corners_D,cp_fs2_corners_D,cp_frm_3  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS2 (double precision), rounding mode";
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

covergroup feq_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "feq.d";
    cp_asm_count : coverpoint ins.ins_str == "feq.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cr_fs1_fs2_corners_D : cross cp_fs1_corners_D,cp_fs2_corners_D  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (double precision)";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fld_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fld";
    cp_asm_count : coverpoint ins.ins_str == "fld"  iff (ins.trap == 0 )  {
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
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_f_mem_hazard : coverpoint check_mem_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "Memory Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD};
    }
    cp_fd_toggle : coverpoint unsigned'(ins.current.fd_val)  iff (ins.trap == 0 )  {
        option.comment = "FD Toggle bits";
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

covergroup fle_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fle.d";
    cp_asm_count : coverpoint ins.ins_str == "fle.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cr_fs1_fs2_corners_D : cross cp_fs1_corners_D,cp_fs2_corners_D  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (double precision)";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup flt_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "flt.d";
    cp_asm_count : coverpoint ins.ins_str == "flt.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cr_fs1_fs2_corners_D : cross cp_fs1_corners_D,cp_fs2_corners_D  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (double precision)";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fmadd_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fmadd.d";
    cp_asm_count : coverpoint ins.ins_str == "fmadd.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs3_corners_D : coverpoint unsigned'(ins.current.fs3_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS3 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_4 : coverpoint get_frm(ins.ops[4].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm4_D : cross cp_fs1_corners_D,cp_fs2_corners_D,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS2 (double precision), rounding mode";
    }
    cr_fs1_fs3_corners_frm4_D : cross cp_fs1_corners_D,cp_fs3_corners_D,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS3 (double precision), rounding mode";
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

covergroup fmax_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fmax.d";
    cp_asm_count : coverpoint ins.ins_str == "fmax.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cr_fs1_fs2_corners_D : cross cp_fs1_corners_D,cp_fs2_corners_D  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (double precision)";
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

covergroup fmin_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fmin.d";
    cp_asm_count : coverpoint ins.ins_str == "fmin.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cr_fs1_fs2_corners_D : cross cp_fs1_corners_D,cp_fs2_corners_D  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (double precision)";
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

covergroup fmsub_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fmsub.d";
    cp_asm_count : coverpoint ins.ins_str == "fmsub.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs3_corners_D : coverpoint unsigned'(ins.current.fs3_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS3 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_4 : coverpoint get_frm(ins.ops[4].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm4_D : cross cp_fs1_corners_D,cp_fs2_corners_D,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS2 (double precision), rounding mode";
    }
    cr_fs1_fs3_corners_frm4_D : cross cp_fs1_corners_D,cp_fs3_corners_D,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS3 (double precision), rounding mode";
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

covergroup fmul_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fmul.d";
    cp_asm_count : coverpoint ins.ins_str == "fmul.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_3 : coverpoint get_frm(ins.ops[3].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm_D : cross cp_fs1_corners_D,cp_fs2_corners_D,cp_frm_3  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS2 (double precision), rounding mode";
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

covergroup fmv_d_x_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fmv.d.x";
    cp_asm_count : coverpoint ins.ins_str == "fmv.d.x"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
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
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
endgroup

covergroup fmv_x_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fmv.x.d";
    cp_asm_count : coverpoint ins.ins_str == "fmv.x.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fnmadd_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fnmadd.d";
    cp_asm_count : coverpoint ins.ins_str == "fnmadd.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs3_corners_D : coverpoint unsigned'(ins.current.fs3_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS3 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_4 : coverpoint get_frm(ins.ops[4].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm4_D : cross cp_fs1_corners_D,cp_fs2_corners_D,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS2 (double precision), rounding mode";
    }
    cr_fs1_fs3_corners_frm4_D : cross cp_fs1_corners_D,cp_fs3_corners_D,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS3 (double precision), rounding mode";
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

covergroup fnmsub_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fnmsub.d";
    cp_asm_count : coverpoint ins.ins_str == "fnmsub.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs3_corners_D : coverpoint unsigned'(ins.current.fs3_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS3 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_4 : coverpoint get_frm(ins.ops[4].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm4_D : cross cp_fs1_corners_D,cp_fs2_corners_D,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS2 (double precision), rounding mode";
    }
    cr_fs1_fs3_corners_frm4_D : cross cp_fs1_corners_D,cp_fs3_corners_D,cp_frm_4  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS3 (double precision), rounding mode";
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

covergroup fsd_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fsd";
    cp_asm_count : coverpoint ins.ins_str == "fsd"  iff (ins.trap == 0 )  {
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
    cp_fs2_corners : coverpoint unsigned'(ins.current.fs2_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners";
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
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fsgnj_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fsgnj.d";
    cp_asm_count : coverpoint ins.ins_str == "fsgnj.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
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

covergroup fsgnjn_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fsgnjn.d";
    cp_asm_count : coverpoint ins.ins_str == "fsgnjn.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
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

covergroup fsgnjx_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fsgnjx.d";
    cp_asm_count : coverpoint ins.ins_str == "fsgnjx.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
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

covergroup fsqrt_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fsqrt.d";
    cp_asm_count : coverpoint ins.ins_str == "fsqrt.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
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

covergroup fsub_d_cg with function sample(ins_rv64d_t ins);
    option.per_instance = 1; 
    option.comment = "fsub.d";
    cp_asm_count : coverpoint ins.ins_str == "fsub.d"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_3 : coverpoint get_frm(ins.ops[3].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cr_fs1_fs2_corners_frm_D : cross cp_fs1_corners_D,cp_fs2_corners_D,cp_frm_3  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1 (double precision), FS2 (double precision), rounding mode";
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

function void rv64d_sample(int hart, int issue);
    ins_rv64d_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "fadd.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fadd_d_cg.sample(ins); 
        end
        "fclass.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fclass_d_cg.sample(ins); 
        end
        "fcvt.d.l"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_rs1(1);
            fcvt_d_l_cg.sample(ins); 
        end
        "fcvt.d.lu"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_rs1(1);
            fcvt_d_lu_cg.sample(ins); 
        end
        "fcvt.d.s"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fcvt_d_s_cg.sample(ins); 
        end
        "fcvt.d.w"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_rs1(1);
            fcvt_d_w_cg.sample(ins); 
        end
        "fcvt.d.wu"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_rs1(1);
            fcvt_d_wu_cg.sample(ins); 
        end
        "fcvt.l.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            fcvt_l_d_cg.sample(ins); 
        end
        "fcvt.lu.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            fcvt_lu_d_cg.sample(ins); 
        end
        "fcvt.s.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fcvt_s_d_cg.sample(ins); 
        end
        "fcvt.w.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            fcvt_w_d_cg.sample(ins); 
        end
        "fcvt.wu.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            fcvt_wu_d_cg.sample(ins); 
        end
        "fdiv.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fdiv_d_cg.sample(ins); 
        end
        "feq.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            feq_d_cg.sample(ins); 
        end
        "fld"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_imm(1);
            ins.add_rs1(2);
            ins.current.inst_category = INST_CAT_LOAD;
            ins.add_mem_address();
            fld_cg.sample(ins); 
        end
        "fle.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fle_d_cg.sample(ins); 
        end
        "flt.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            flt_d_cg.sample(ins); 
        end
        "fmadd.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            ins.add_fs3(3);
            fmadd_d_cg.sample(ins); 
        end
        "fmax.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fmax_d_cg.sample(ins); 
        end
        "fmin.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fmin_d_cg.sample(ins); 
        end
        "fmsub.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            ins.add_fs3(3);
            fmsub_d_cg.sample(ins); 
        end
        "fmul.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fmul_d_cg.sample(ins); 
        end
        "fmv.d.x"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_rs1(1);
            fmv_d_x_cg.sample(ins); 
        end
        "fmv.x.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            fmv_x_d_cg.sample(ins); 
        end
        "fnmadd.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            ins.add_fs3(3);
            fnmadd_d_cg.sample(ins); 
        end
        "fnmsub.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            ins.add_fs3(3);
            fnmsub_d_cg.sample(ins); 
        end
        "fsd"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fs2(0);
            ins.add_imm(1);
            ins.add_rs1(2);
            ins.current.inst_category = INST_CAT_STORE;
            ins.add_mem_address();
            fsd_cg.sample(ins); 
        end
        "fsgnj.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fsgnj_d_cg.sample(ins); 
        end
        "fsgnjn.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fsgnjn_d_cg.sample(ins); 
        end
        "fsgnjx.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fsgnjx_d_cg.sample(ins); 
        end
        "fsqrt.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fsqrt_d_cg.sample(ins); 
        end
        "fsub.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fsub_d_cg.sample(ins); 
        end
    endcase
endfunction
