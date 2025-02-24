///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
// 
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
////////////////////////////////////////////////////////////////////////////////////////////////

    add_cg = new(); add_cg.set_inst_name("obj_add");
    addi_cg = new(); addi_cg.set_inst_name("obj_addi");
    addiw_cg = new(); addiw_cg.set_inst_name("obj_addiw");
    addw_cg = new(); addw_cg.set_inst_name("obj_addw");
    and_cg = new(); and_cg.set_inst_name("obj_and");
    andi_cg = new(); andi_cg.set_inst_name("obj_andi");
    auipc_cg = new(); auipc_cg.set_inst_name("obj_auipc");
    beq_cg = new(); beq_cg.set_inst_name("obj_beq");
    bge_cg = new(); bge_cg.set_inst_name("obj_bge");
    bgeu_cg = new(); bgeu_cg.set_inst_name("obj_bgeu");
    blt_cg = new(); blt_cg.set_inst_name("obj_blt");
    bltu_cg = new(); bltu_cg.set_inst_name("obj_bltu");
    bne_cg = new(); bne_cg.set_inst_name("obj_bne");
    jal_cg = new(); jal_cg.set_inst_name("obj_jal");
    jalr_cg = new(); jalr_cg.set_inst_name("obj_jalr");
    lb_cg = new(); lb_cg.set_inst_name("obj_lb");
    lbu_cg = new(); lbu_cg.set_inst_name("obj_lbu");
    ld_cg = new(); ld_cg.set_inst_name("obj_ld");
    lh_cg = new(); lh_cg.set_inst_name("obj_lh");
    lhu_cg = new(); lhu_cg.set_inst_name("obj_lhu");
    lui_cg = new(); lui_cg.set_inst_name("obj_lui");
    lw_cg = new(); lw_cg.set_inst_name("obj_lw");
    lwu_cg = new(); lwu_cg.set_inst_name("obj_lwu");
    or_cg = new(); or_cg.set_inst_name("obj_or");
    ori_cg = new(); ori_cg.set_inst_name("obj_ori");
    sb_cg = new(); sb_cg.set_inst_name("obj_sb");
    sd_cg = new(); sd_cg.set_inst_name("obj_sd");
    sh_cg = new(); sh_cg.set_inst_name("obj_sh");
    sll_cg = new(); sll_cg.set_inst_name("obj_sll");
    slli_cg = new(); slli_cg.set_inst_name("obj_slli");
    slliw_cg = new(); slliw_cg.set_inst_name("obj_slliw");
    sllw_cg = new(); sllw_cg.set_inst_name("obj_sllw");
    slt_cg = new(); slt_cg.set_inst_name("obj_slt");
    slti_cg = new(); slti_cg.set_inst_name("obj_slti");
    sltiu_cg = new(); sltiu_cg.set_inst_name("obj_sltiu");
    sltu_cg = new(); sltu_cg.set_inst_name("obj_sltu");
    sra_cg = new(); sra_cg.set_inst_name("obj_sra");
    srai_cg = new(); srai_cg.set_inst_name("obj_srai");
    sraiw_cg = new(); sraiw_cg.set_inst_name("obj_sraiw");
    sraw_cg = new(); sraw_cg.set_inst_name("obj_sraw");
    srl_cg = new(); srl_cg.set_inst_name("obj_srl");
    srli_cg = new(); srli_cg.set_inst_name("obj_srli");
    srliw_cg = new(); srliw_cg.set_inst_name("obj_srliw");
    srlw_cg = new(); srlw_cg.set_inst_name("obj_srlw");
    sub_cg = new(); sub_cg.set_inst_name("obj_sub");
    subw_cg = new(); subw_cg.set_inst_name("obj_subw");
    sw_cg = new(); sw_cg.set_inst_name("obj_sw");
    xor_cg = new(); xor_cg.set_inst_name("obj_xor");
    xori_cg = new(); xori_cg.set_inst_name("obj_xori");
