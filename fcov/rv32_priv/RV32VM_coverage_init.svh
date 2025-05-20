///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
////////////////////////////////////////////////////////////////////////////////////////////////

    RV32VM_satp_cg = new(); RV32VM_satp_cg.set_inst_name("obj_RV32VM_satp");
    RV32VM_PA_VA_cg = new(); RV32VM_PA_VA_cg.set_inst_name("obj_RV32VM_PA_VA");
    RV32VM_sfence_cg = new(); RV32VM_sfence_cg.set_inst_name("obj_RV32VM_sfence");
    RV32VM_mstatus_mprv_cg = new(); RV32VM_mstatus_mprv_cg.set_inst_name("obj_mstatus_RV32VM_mprv");
    RV32VM_vm_permissions_cg = new(); RV32VM_vm_permissions_cg.set_inst_name("obj_RV32VM_vm_permissions");
    RV32VM_res_global_pte_cg = new(); RV32VM_res_global_pte_cg.set_inst_name("obj_RV32VM_res_global_pte");
    RV32VM_add_feature_cg = new(); RV32VM_add_feature_cg.set_inst_name("obj_RV32VM_add_feature");
