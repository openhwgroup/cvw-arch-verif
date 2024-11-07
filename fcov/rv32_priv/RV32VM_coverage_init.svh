///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
// 
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
////////////////////////////////////////////////////////////////////////////////////////////////

    satp_cg = new(); satp_cg.set_inst_name("obj_satp");
    PA_VA_cg = new(); PA_VA_cg.set_inst_name("obj_PA_VA");
    sfence_cg = new(); sfence_cg.set_inst_name("obj_sfence");
    mstatus_mprv_cg = new(); mstatus_cg.set_inst_name("obj_mstatus"); 
    vm_permissions_cg = new(); vm_permissions_cg.set_inst_name("obj_vm_permissions");
    res_global_pte_cg = new(); res_global_pte_cg.set_inst_name("obj_res_global_pte");
    add_feature_cg = new(); add_feature_cg.set_inst_name("obj_add_feature");
    