module test_vm39_coverage import cvw::*; #(parameter cvw_t P) (input clk);

rvviTrace #(.XLEN(P.XLEN), .FLEN(P.FLEN)) rvvi();
wallyTracer #(P) wallyTracer(rvvi);


covergroup cg_satp @(posedge clk iff rvvi.valid[0][0]);
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60]{
        bins sv39   = {4'b1000};
        bins bare   = {4'b0000};
    }
endgroup

covergroup cg_mstatus_TVM @(posedge clk iff rvvi.valid[0][0]);
    tvm_mstatus: coverpoint rvvi.csr[0][0][12'h300][20]{
        bins set = {1};
    }
    priv_mode: coverpoint rvvi.mode[0][0]{
        bins S_mode = {2'b01};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins illegal_ins = {64'd2};
    }

    tvm_exception_s: cross tvm_mstatus, priv_mode, Scause;
endgroup

covergroup cg_mstatus_MPRV @(posedge clk iff rvvi.valid[0][0]);
    mprv_mstatus: coverpoint rvvi.csr[0][0][12'h300][17]{
        bins set = {1};
    }
    mpp_mstatus: coverpoint rvvi.csr[0][0][12'h300][12:11]{
        bins U_mode = {2'b00};
        bins S_mode = {2'b01};
    }
    read_acc: coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
        bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }

    mprv_load: cross mprv_mstatus, mpp_mstatus, read_acc;
    mprv_store: cross mprv_mstatus, mpp_mstatus, write_acc;
    mprv_ins: cross mprv_mstatus, mpp_mstatus, exec_acc;
endgroup

covergroup cg_asid_Length @(posedge clk iff rvvi.valid[0][0]);
    asid_Length: coverpoint  rvvi.csr[0][0][12'h180][59:44] {
        bins values[]   = {[16'd16:16'd0]};
    }
endgroup

covergroup cg_PMPonPA @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl2_s = {8'b???01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);

    }
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl2_s = {8'b???01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
    }
    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 
    PTE_perm_s_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_u);
        ignore_bins ig2 = binsof(PTE_i.lvl2_s) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_u);
        ignore_bins ig4 = binsof(PTE_i.lvl1_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_u);
        ignore_bins ig6 = binsof(PTE_i.lvl0_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero));
    }

    PTE_perm_u_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_s);
        ignore_bins ig2 = binsof(PTE_i.lvl2_u) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_s);
        ignore_bins ig4 = binsof(PTE_i.lvl1_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_s);
        ignore_bins ig6 = binsof(PTE_i.lvl0_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_u);
        ignore_bins ig4 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_u);
        ignore_bins ig6 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_s);
        ignore_bins ig4 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_s);
        ignore_bins ig6 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc: coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
        bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }

    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_acc = {64'd5};
        bins ins_acc_fault  = {64'd1};
        bins store_amo_acc = {64'd7};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_acc = {64'd5};
        bins ins_acc_fault  = {64'd1};
        bins store_amo_acc = {64'd7};
    }

    PMP0_1: coverpoint  rvvi.csr[0][0][12'h3A0][15:8] {
        wildcard bins noread   = {8'b?????110};
        wildcard bins nowrite  = {8'b?????101};
        wildcard bins noexe    = {8'b?????011};
    }

    pmp0_noread_s: cross PTE_perm_s_d, mode, PMP0_1, Scause, read_acc {
        ignore_bins ig1 = binsof(PMP0_1.nowrite);
        ignore_bins ig2 = binsof(PMP0_1.noexe);
        ignore_bins ig3 = binsof(Scause.ins_acc_fault);
        ignore_bins ig4 = binsof(Scause.store_amo_acc);
    }
    pmp0_noread_u: cross PTE_perm_u_d, mode, PMP0_1, Mcause, read_acc {
        ignore_bins ig1 = binsof(PMP0_1.nowrite);
        ignore_bins ig2 = binsof(PMP0_1.noexe);
        ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
        ignore_bins ig4 = binsof(Mcause.store_amo_acc);
    }

    pmp0_nowrite_s: cross PTE_perm_s_d, mode, PMP0_1, Scause, write_acc {
        ignore_bins ig1 = binsof(PMP0_1.noread);
        ignore_bins ig2 = binsof(PMP0_1.noexe);
        ignore_bins ig3 = binsof(Scause.ins_acc_fault);
        ignore_bins ig4 = binsof(Scause.load_page_acc);
    }
    pmp0_nowrite_u: cross PTE_perm_u_d, mode, PMP0_1, Mcause, write_acc {
        ignore_bins ig1 = binsof(PMP0_1.noread);
        ignore_bins ig2 = binsof(PMP0_1.noexe);
        ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
        ignore_bins ig4 = binsof(Mcause.load_page_acc);
    }

    pmp0_noexec_s: cross PTE_perm_s_i, mode, PMP0_1, Scause, exec_acc {
        ignore_bins ig1 = binsof(PMP0_1.nowrite);
        ignore_bins ig2 = binsof(PMP0_1.noread);
        ignore_bins ig3 = binsof(Scause.store_amo_acc);
        ignore_bins ig4 = binsof(Scause.load_page_acc);
    }
    pmp0_noexec_u: cross PTE_perm_u_i, mode, PMP0_1, Mcause, exec_acc {
        ignore_bins ig1 = binsof(PMP0_1.nowrite);
        ignore_bins ig2 = binsof(PMP0_1.noread);
        ignore_bins ig3 = binsof(Mcause.store_amo_acc);
        ignore_bins ig4 = binsof(Mcause.load_page_acc);
    }
endgroup

covergroup cg_PMPonPTE @(posedge clk iff rvvi.valid[0][0]);
    

    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl2_s = {8'b???01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }

    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_u);
        ignore_bins ig4 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_u);
        ignore_bins ig6 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_s);
        ignore_bins ig4 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_s);
        ignore_bins ig6 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }
    read_acc: coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
        bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }

    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_acc = {64'd5};
        bins ins_acc_fault  = {64'd1};
        bins store_amo_acc = {64'd7};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_acc = {64'd5};
        bins ins_acc_fault  = {64'd1};
        bins store_amo_acc = {64'd7};
    }

    PMP0_0: coverpoint  rvvi.csr[0][0][12'h3A0][7:0] {
        wildcard bins noread   = {8'b?????110};
        wildcard bins nowrite  = {8'b?????101};
        wildcard bins noexe    = {8'b?????011};
    }

    pmp0_noread_s: cross PTE_perm_s_d, mode, PMP0_0, Scause, read_acc {
        ignore_bins ig1 = binsof(PMP0_0.nowrite);
        ignore_bins ig2 = binsof(PMP0_0.noexe);
        ignore_bins ig3 = binsof(Scause.ins_acc_fault);
        ignore_bins ig4 = binsof(Scause.store_amo_acc);
    }
    pmp0_noread_u: cross PTE_perm_u_d, mode, PMP0_0, Mcause, read_acc {
        ignore_bins ig1 = binsof(PMP0_0.nowrite);
        ignore_bins ig2 = binsof(PMP0_0.noexe);
        ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
        ignore_bins ig4 = binsof(Mcause.store_amo_acc);
    }

    pmp0_nowrite_s: cross PTE_perm_s_d, mode, PMP0_0, Scause, write_acc {
        ignore_bins ig1 = binsof(PMP0_0.noread);
        ignore_bins ig2 = binsof(PMP0_0.noexe);
        ignore_bins ig3 = binsof(Scause.ins_acc_fault);
        ignore_bins ig4 = binsof(Scause.load_page_acc);
    }
    pmp0_nowrite_u: cross PTE_perm_u_d, mode, PMP0_0, Mcause, write_acc {
        ignore_bins ig1 = binsof(PMP0_0.noread);
        ignore_bins ig2 = binsof(PMP0_0.noexe);
        ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
        ignore_bins ig4 = binsof(Mcause.load_page_acc);
    }
endgroup

covergroup cg_inv_perm @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {

        wildcard bins lvl2_u_2 = {8'b???11000};
        wildcard bins lvl2_s_2 = {8'b???01000};

        wildcard bins lvl1_u_2 = (8'b???10001 => 8'b???11000);
        wildcard bins lvl1_s_2 = (8'b???00001 => 8'b???01000);

        wildcard bins lvl0_u_2 = (8'b???10001 => 8'b???10001 => 8'b???11000);
        wildcard bins lvl0_s_2 = (8'b???00001 => 8'b???00001 => 8'b???01000);

    }

    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        
        wildcard bins lvl2_u_0 = {8'b???10010};
        wildcard bins lvl2_u_1 = {8'b???10110};
        wildcard bins lvl2_s_0 = {8'b???00010};
        wildcard bins lvl2_s_1 = {8'b???00110};

        wildcard bins lvl1_u_0 = (8'b???10001 => 8'b???10010);
        wildcard bins lvl1_u_1 = (8'b???10001 => 8'b???10110);
        wildcard bins lvl1_s_0 = (8'b???00001 => 8'b???00010);
        wildcard bins lvl1_s_1 = (8'b???00001 => 8'b???00110);

        wildcard bins lvl0_u_0 = (8'b???10001 => 8'b???10001 => 8'b???10010);
        wildcard bins lvl0_u_1 = (8'b???10001 => 8'b???10001 => 8'b???10110);
        wildcard bins lvl0_s_0 = (8'b???00001 => 8'b???00001 => 8'b???00010);
        wildcard bins lvl0_s_1 = (8'b???00001 => 8'b???00001 => 8'b???00110);
    }

    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {19'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {19'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 

     PTE_perm_exec_s_i: cross PTE_i, PPN_i {

        ignore_bins ig1 = binsof(PTE_i.lvl2_u_2);
        ignore_bins ig2 = binsof(PTE_i.lvl2_s_2) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_u_2);
        ignore_bins ig4 = binsof(PTE_i.lvl1_s_2) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_u_2);
        ignore_bins ig6 = binsof(PTE_i.lvl0_s_2) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;

    }


    PTE_perm_exec_u_i: cross PTE_i, PPN_i {

        ignore_bins ig1 = binsof(PTE_i.lvl2_s_2);
        ignore_bins ig2 = binsof(PTE_i.lvl2_u_2) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_s_2);
        ignore_bins ig4 = binsof(PTE_i.lvl1_u_2) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_s_2);
        ignore_bins ig6 = binsof(PTE_i.lvl0_u_2) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_read_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u_0);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u_1);
        ignore_bins ig3 = binsof(PTE_d.lvl2_s_0) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig4 = binsof(PTE_d.lvl2_s_1);

        ignore_bins ig5 = binsof(PTE_d.lvl1_u_0);
        ignore_bins ig6 = binsof(PTE_d.lvl1_u_1);
        ignore_bins ig7 = binsof(PTE_d.lvl1_s_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig8 = binsof(PTE_d.lvl1_s_1);

        ignore_bins ig9 = binsof(PTE_d.lvl0_u_0);
        ignore_bins ig10 = binsof(PTE_d.lvl0_u_1);
        ignore_bins ig11 = binsof(PTE_d.lvl0_s_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig12 = binsof(PTE_d.lvl0_s_1);

    }

     PTE_perm_write_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u_0);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u_1);
        ignore_bins ig3 = binsof(PTE_d.lvl2_s_1) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig4 = binsof(PTE_d.lvl2_s_0);

        ignore_bins ig5 = binsof(PTE_d.lvl1_u_0);
        ignore_bins ig6 = binsof(PTE_d.lvl1_u_1);
        ignore_bins ig7 = binsof(PTE_d.lvl1_s_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig8 = binsof(PTE_d.lvl1_s_0);

        ignore_bins ig9 = binsof(PTE_d.lvl0_u_0);
        ignore_bins ig10 = binsof(PTE_d.lvl0_u_1);
        ignore_bins ig11 = binsof(PTE_d.lvl0_s_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig12 = binsof(PTE_d.lvl0_s_0);
    }


    PTE_perm_read_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s_0);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s_1);
        ignore_bins ig3 = binsof(PTE_d.lvl2_u_0) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig4 = binsof(PTE_d.lvl2_u_1);

        ignore_bins ig5 = binsof(PTE_d.lvl1_s_0);
        ignore_bins ig6 = binsof(PTE_d.lvl1_s_1);
        ignore_bins ig7 = binsof(PTE_d.lvl1_u_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig8 = binsof(PTE_d.lvl1_u_1);

        ignore_bins ig9 = binsof(PTE_d.lvl0_s_0);
        ignore_bins ig10 = binsof(PTE_d.lvl0_s_1);
        ignore_bins ig11 = binsof(PTE_d.lvl0_u_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig12 = binsof(PTE_d.lvl0_u_1);
    }

    PTE_perm_write_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s_0);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s_1);
        ignore_bins ig3 = binsof(PTE_d.lvl2_u_1) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig4 = binsof(PTE_d.lvl2_u_0);

        ignore_bins ig5 = binsof(PTE_d.lvl1_s_0);
        ignore_bins ig6 = binsof(PTE_d.lvl1_s_1);
        ignore_bins ig7 = binsof(PTE_d.lvl1_u_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig8 = binsof(PTE_d.lvl1_u_0);

        ignore_bins ig9 = binsof(PTE_d.lvl0_s_0);
        ignore_bins ig10 = binsof(PTE_d.lvl0_s_1);
        ignore_bins ig11 = binsof(PTE_d.lvl0_u_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig12 = binsof(PTE_d.lvl0_u_0);
    }


    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc: coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
        bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
   

    invread_s: cross PTE_perm_read_s_d, mode, Scause, read_acc {
       ignore_bins ig1 = binsof(Scause.ins_page_fault);
       ignore_bins ig2 = binsof(Scause.store_amo_fault);
    }
    invread_u: cross PTE_perm_read_u_d, mode, Mcause, read_acc {
       ignore_bins ig1 = binsof(Mcause.ins_page_fault);
       ignore_bins ig2 = binsof(Mcause.store_amo_fault);
    }

    invwrite_s: cross PTE_perm_write_s_d, mode, Scause, write_acc {
       ignore_bins ig1 = binsof(Scause.load_page_fault);
       ignore_bins ig2 = binsof(Scause.ins_page_fault);
    }
    invwrite_u: cross PTE_perm_write_u_d, mode, Mcause, write_acc {
       ignore_bins ig1 = binsof(Mcause.load_page_fault);
       ignore_bins ig2 = binsof(Mcause.ins_page_fault);
    }

    invexec_s: cross PTE_perm_exec_s_i, mode, Scause, exec_acc {
        ignore_bins ig1 = binsof(Scause.store_amo_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    invexec_u: cross PTE_perm_exec_u_i, mode, Mcause, exec_acc {
        ignore_bins ig1 = binsof(Mcause.store_amo_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
endgroup

covergroup cg_res_rwx @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???1?101};
        wildcard bins lvl2_s = {8'b???0?101};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???0?101);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???1?101);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???0?101);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???1?101);

    }
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???1?101};
        wildcard bins lvl2_s = {8'b???0?101};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???0?101);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???1?101);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???0?101);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???1?101);
    }
    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 
    PTE_perm_s_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_u);
        ignore_bins ig2 = binsof(PTE_i.lvl2_s) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_u);
        ignore_bins ig4 = binsof(PTE_i.lvl1_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_u);
        ignore_bins ig6 = binsof(PTE_i.lvl0_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_u_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_s);
        ignore_bins ig2 = binsof(PTE_i.lvl2_u) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_s);
        ignore_bins ig4 = binsof(PTE_i.lvl1_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_s);
        ignore_bins ig6 = binsof(PTE_i.lvl0_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_u);
        ignore_bins ig4 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_u);
        ignore_bins ig6 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_s);
        ignore_bins ig4 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_s);
        ignore_bins ig6 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }

    read_s: cross PTE_perm_s_d, mode, Scause, read_acc {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.store_amo_fault);
    }
    read_u: cross PTE_perm_u_d, mode, Mcause, read_acc {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_fault);
    }

    write_s: cross PTE_perm_s_d, mode, Scause, write_acc {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    write_u: cross PTE_perm_u_d, mode, Mcause, write_acc {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    exec_s: cross PTE_perm_s_i, mode, Scause, exec_acc {
        ignore_bins ig1 = binsof(Scause.store_amo_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    exec_u: cross PTE_perm_u_i, mode, Mcause, exec_acc {
       ignore_bins ig1 = binsof(Mcause.store_amo_fault);
       ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
endgroup

covergroup cg_nonleafperm_lvl0 @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001);
    }
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001);
    }
    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PTE_perm_s_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl0_u);
    }

    PTE_perm_u_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl0_s);
    }

    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl0_u);
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl0_s);
    }

    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }


    
    read_s: cross PTE_perm_s_d, mode, Scause, read_acc {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.store_amo_fault);
    }
    read_u: cross PTE_perm_u_d, mode, Mcause, read_acc {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_fault);
    }

    write_s: cross PTE_perm_s_d, mode, Scause, write_acc {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    write_u: cross PTE_perm_u_d, mode, Mcause, write_acc {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    exec_s: cross PTE_perm_s_i, mode, Scause, exec_acc {
        ignore_bins ig1 = binsof(Scause.store_amo_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    exec_u: cross PTE_perm_u_i, mode, Mcause, exec_acc {
       ignore_bins ig1 = binsof(Mcause.store_amo_fault);
       ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
endgroup

covergroup cg_spage_smode_rwx @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {

        wildcard bins lvl2_x_0 = {8'b???00??1};
        wildcard bins lvl2_x_1 = {8'b???01??1};

        wildcard bins lvl1_x_0 = (8'b???00001 => 8'b???00??1);
        wildcard bins lvl1_x_1 = (8'b???00001 => 8'b???01??1);

        wildcard bins lvl0_x_0 = (8'b???00001 => 8'b???00001 => 8'b???00??1);
        wildcard bins lvl0_x_1 = (8'b???00001 => 8'b???00001 => 8'b???01??1);

    }

    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_w_1 = {8'b???0?111};
        wildcard bins lvl2_w_0 = {8'b???0?0?1};
        wildcard bins lvl2_r_1 = {8'b???0??11};
        wildcard bins lvl2_r_0 = {8'b???0??01};

        wildcard bins lvl1_w_0 = (8'b???00001 => 8'b???0?0?1);
        wildcard bins lvl1_w_1 = (8'b???00001 => 8'b???0?111);
        wildcard bins lvl1_r_0 = (8'b???00001 => 8'b???0??11);
        wildcard bins lvl1_r_1 = (8'b???00001 => 8'b???0??01);

        wildcard bins lvl0_w_0 = (8'b???00001 => 8'b???00001 => 8'b???0?0?1);
        wildcard bins lvl0_w_1 = (8'b???00001 => 8'b???00001 => 8'b???0?111);
        wildcard bins lvl0_r_0 = (8'b???00001 => 8'b???00001 => 8'b???0??01);
        wildcard bins lvl0_r_1 = (8'b???00001 => 8'b???00001 => 8'b???0??11);
    }

    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {19'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {19'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 

    PTE_perm_exec_s_i: cross PTE_i, PPN_i {

        ignore_bins ig1 = binsof(PTE_i.lvl2_x_0);
        ignore_bins ig2 = binsof(PTE_i.lvl2_x_1) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_x_0);
        ignore_bins ig4 = binsof(PTE_i.lvl1_x_1) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_x_0);
        ignore_bins ig6 = binsof(PTE_i.lvl0_x_1) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;

    }

    PTE_perm_noexec_s_i: cross PTE_i, PPN_i {

        ignore_bins ig1 = binsof(PTE_i.lvl2_x_0) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_i.lvl2_x_1);
        ignore_bins ig3 = binsof(PTE_i.lvl1_x_0) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig4 = binsof(PTE_i.lvl1_x_1);
        ignore_bins ig5 = binsof(PTE_i.lvl0_x_0) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        ignore_bins ig6 = binsof(PTE_i.lvl0_x_1);

    }


    PTE_perm_read_s_d: cross PTE_d, PPN_d {

        ignore_bins ig1 = binsof(PTE_d.lvl2_r_1) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_d.lvl2_r_0);
        ignore_bins ig3 = binsof(PTE_d.lvl2_w_0);
        ignore_bins ig4 = binsof(PTE_d.lvl2_w_1);
       
        ignore_bins ig5 = binsof(PTE_d.lvl1_r_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig6 = binsof(PTE_d.lvl1_r_0);
        ignore_bins ig7 = binsof(PTE_d.lvl1_w_0);
        ignore_bins ig8 = binsof(PTE_d.lvl1_w_1);


        ignore_bins ig9 = binsof(PTE_d.lvl0_r_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig10 = binsof(PTE_d.lvl0_r_0);
        ignore_bins ig11 = binsof(PTE_d.lvl0_w_0);
        ignore_bins ig12 = binsof(PTE_d.lvl0_w_1);
    }

    PTE_perm_noread_s_d: cross PTE_d, PPN_d {

        ignore_bins ig1 = binsof(PTE_d.lvl2_r_1);
        ignore_bins ig2 = binsof(PTE_d.lvl2_r_0) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl2_w_0);
        ignore_bins ig4 = binsof(PTE_d.lvl2_w_1);
       
        ignore_bins ig5 = binsof(PTE_d.lvl1_r_1);
        ignore_bins ig6 = binsof(PTE_d.lvl1_r_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig7 = binsof(PTE_d.lvl1_w_0);
        ignore_bins ig8 = binsof(PTE_d.lvl1_w_1);


        ignore_bins ig9 = binsof(PTE_d.lvl0_r_1);
        ignore_bins ig10 = binsof(PTE_d.lvl0_r_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig11 = binsof(PTE_d.lvl0_w_0);
        ignore_bins ig12 = binsof(PTE_d.lvl0_w_1);
    }

     PTE_perm_write_s_d: cross PTE_d, PPN_d {

        ignore_bins ig1 = binsof(PTE_d.lvl2_w_1) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_d.lvl2_w_0);
        ignore_bins ig3 = binsof(PTE_d.lvl2_r_0);
        ignore_bins ig4 = binsof(PTE_d.lvl2_r_1);
       
        ignore_bins ig5 = binsof(PTE_d.lvl1_w_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig6 = binsof(PTE_d.lvl1_w_0);
        ignore_bins ig7 = binsof(PTE_d.lvl1_r_0);
        ignore_bins ig8 = binsof(PTE_d.lvl1_r_1);


        ignore_bins ig9 = binsof(PTE_d.lvl0_w_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig10 = binsof(PTE_d.lvl0_w_0);
        ignore_bins ig11 = binsof(PTE_d.lvl0_r_0);
        ignore_bins ig12 = binsof(PTE_d.lvl0_r_1);

    }


     PTE_perm_nowrite_s_d: cross PTE_d, PPN_d {

        ignore_bins ig1 = binsof(PTE_d.lvl2_w_1);
        ignore_bins ig2 = binsof(PTE_d.lvl2_w_0) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl2_r_0);
        ignore_bins ig4 = binsof(PTE_d.lvl2_r_1);
       
        ignore_bins ig5 = binsof(PTE_d.lvl1_w_1);
        ignore_bins ig6 = binsof(PTE_d.lvl1_w_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig7 = binsof(PTE_d.lvl1_r_0);
        ignore_bins ig8 = binsof(PTE_d.lvl1_r_1);


        ignore_bins ig9 = binsof(PTE_d.lvl0_w_1);
        ignore_bins ig10 = binsof(PTE_d.lvl0_w_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig11 = binsof(PTE_d.lvl0_r_0);
        ignore_bins ig12 = binsof(PTE_d.lvl0_r_1);

    }
    

    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    Nopagefault: coverpoint  rvvi.csr[0][0][12'h143] {
        bins no_fault = {64'd0};
    }
    priv_mode: coverpoint rvvi.mode[0][0]{
        bins S_mode = {2'b01};
    }

    read_s: cross PTE_perm_read_s_d, mode,  Nopagefault, read_acc, priv_mode;

    noread_s: cross PTE_perm_noread_s_d, mode,  Scause, read_acc, priv_mode {
        ignore_bins b1 =  binsof(Scause.ins_page_fault);
        ignore_bins b2 =  binsof(Scause.store_amo_fault);
    }

    write_s: cross PTE_perm_write_s_d, mode,  Nopagefault, write_acc, priv_mode;

    nowrite_s: cross PTE_perm_nowrite_s_d, mode,  Scause, write_acc, priv_mode {
        ignore_bins b1 =  binsof(Scause.ins_page_fault);
        ignore_bins b2 =  binsof(Scause.load_page_fault);
    }

    exec_s: cross PTE_perm_exec_s_i, mode,  Nopagefault, exec_acc, priv_mode;

    noexec_s: cross PTE_perm_noexec_s_i, mode,  Scause, exec_acc, priv_mode {
        ignore_bins b1 =  binsof(Scause.load_page_fault);
        ignore_bins b2 =  binsof(Scause.store_amo_fault);
    }
endgroup

covergroup cg_spage_umode_rwx @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_s = {8'b???01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
    }
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_s = {8'b???01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
    }
    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 
    PTE_perm_s_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_s) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_i.lvl1_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl0_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    priv_mode: coverpoint rvvi.mode[0][0]{
        bins U_mode = {2'b00};
    }

    noread_s: cross PTE_perm_s_d, mode,  Mcause, read_acc, priv_mode {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_fault);
    }

    nowrite_s: cross PTE_perm_s_d, mode,  Mcause, write_acc, priv_mode {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    noexec_s: cross PTE_perm_s_i, mode,  Mcause, exec_acc, priv_mode {
        ignore_bins ig1 = binsof(Mcause.store_amo_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
endgroup

covergroup cg_upage_smode_sumunset @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
    }
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
    }
    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 
    PTE_perm_u_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_u) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_i.lvl1_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl0_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }
    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    priv_mode: coverpoint rvvi.mode[0][0]{
        bins S_mode = {2'b01};
    }
    sum_sstatus: coverpoint rvvi.csr[0][0][12'h100][18]{
        bins notset = {0};
    }

    noread_s: cross PTE_perm_u_d, mode,  Scause, read_acc, priv_mode , sum_sstatus{
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.store_amo_fault);
    }


    nowrite_s: cross PTE_perm_u_d, mode,  Scause, write_acc, priv_mode, sum_sstatus {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }

    noexec_s: cross PTE_perm_u_i, mode,  Scause, exec_acc, priv_mode , sum_sstatus{
        ignore_bins ig1 = binsof(Scause.store_amo_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }

endgroup

covergroup cg_upage_smode_sumset @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
    }
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
    }
    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 
    PTE_perm_u_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_u) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_i.lvl1_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl0_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }
    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins ins_page_fault  = {64'd12};
    }
    Nopagefault: coverpoint  rvvi.csr[0][0][12'h143] {
        bins no_fault = {64'd0};
    }
    priv_mode: coverpoint rvvi.mode[0][0]{
        bins S_mode = {2'b01};
    }
    sum_sstatus: coverpoint rvvi.csr[0][0][12'h100][18]{
        bins set = {1};
    }


    noread_s: cross PTE_perm_u_d, mode,  Nopagefault, read_acc, priv_mode , sum_sstatus;


    nowrite_s: cross PTE_perm_u_d, mode,  Nopagefault, write_acc, priv_mode, sum_sstatus;

    noexec_s: cross PTE_perm_u_i, mode,  Scause, exec_acc, priv_mode , sum_sstatus;

endgroup

covergroup cg_upage_umode_rwx @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {

        wildcard bins lvl2_x_0 = {8'b???10??1};
        wildcard bins lvl2_x_1 = {8'b???11??1};

        wildcard bins lvl1_x_0 = (8'b???00001 => 8'b???10??1);
        wildcard bins lvl1_x_1 = (8'b???00001 => 8'b???11??1);

        wildcard bins lvl0_x_0 = (8'b???00001 => 8'b???00001 => 8'b???10??1);
        wildcard bins lvl0_x_1 = (8'b???00001 => 8'b???00001 => 8'b???11??1);

    }

    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_w_1 = {8'b???1?111};
        wildcard bins lvl2_w_0 = {8'b???1?0?1};
        wildcard bins lvl2_r_1 = {8'b???1??11};
        wildcard bins lvl2_r_0 = {8'b???1??01};

        wildcard bins lvl1_w_0 = (8'b???00001 => 8'b???1?0?1);
        wildcard bins lvl1_w_1 = (8'b???00001 => 8'b???1?111);
        wildcard bins lvl1_r_0 = (8'b???00001 => 8'b???1??11);
        wildcard bins lvl1_r_1 = (8'b???00001 => 8'b???1??01);

        wildcard bins lvl0_w_0 = (8'b???00001 => 8'b???00001 => 8'b???1?0?1);
        wildcard bins lvl0_w_1 = (8'b???00001 => 8'b???00001 => 8'b???1?111);
        wildcard bins lvl0_r_0 = (8'b???00001 => 8'b???00001 => 8'b???1??01);
        wildcard bins lvl0_r_1 = (8'b???00001 => 8'b???00001 => 8'b???1??11);
    }

    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {19'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {19'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 

    PTE_perm_exec_u_i: cross PTE_i, PPN_i {

        ignore_bins ig1 = binsof(PTE_i.lvl2_x_0);
        ignore_bins ig2 = binsof(PTE_i.lvl2_x_1) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_x_0);
        ignore_bins ig4 = binsof(PTE_i.lvl1_x_1) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_x_0);
        ignore_bins ig6 = binsof(PTE_i.lvl0_x_1) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;

    }

    PTE_perm_noexec_u_i: cross PTE_i, PPN_i {

        ignore_bins ig1 = binsof(PTE_i.lvl2_x_0) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_i.lvl2_x_1);
        ignore_bins ig3 = binsof(PTE_i.lvl1_x_0) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig4 = binsof(PTE_i.lvl1_x_1);
        ignore_bins ig5 = binsof(PTE_i.lvl0_x_0) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        ignore_bins ig6 = binsof(PTE_i.lvl0_x_1);

    }


    PTE_perm_read_u_d: cross PTE_d, PPN_d {

        ignore_bins ig1 = binsof(PTE_d.lvl2_r_1) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_d.lvl2_r_0);
        ignore_bins ig3 = binsof(PTE_d.lvl2_w_0);
        ignore_bins ig4 = binsof(PTE_d.lvl2_w_1);
       
        ignore_bins ig5 = binsof(PTE_d.lvl1_r_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig6 = binsof(PTE_d.lvl1_r_0);
        ignore_bins ig7 = binsof(PTE_d.lvl1_w_0);
        ignore_bins ig8 = binsof(PTE_d.lvl1_w_1);


        ignore_bins ig9 = binsof(PTE_d.lvl0_r_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig10 = binsof(PTE_d.lvl0_r_0);
        ignore_bins ig11 = binsof(PTE_d.lvl0_w_0);
        ignore_bins ig12 = binsof(PTE_d.lvl0_w_1);
    }

    PTE_perm_noread_u_d: cross PTE_d, PPN_d {

        ignore_bins ig1 = binsof(PTE_d.lvl2_r_1);
        ignore_bins ig2 = binsof(PTE_d.lvl2_r_0) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl2_w_0);
        ignore_bins ig4 = binsof(PTE_d.lvl2_w_1);
       
        ignore_bins ig5 = binsof(PTE_d.lvl1_r_1);
        ignore_bins ig6 = binsof(PTE_d.lvl1_r_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig7 = binsof(PTE_d.lvl1_w_0);
        ignore_bins ig8 = binsof(PTE_d.lvl1_w_1);


        ignore_bins ig9 = binsof(PTE_d.lvl0_r_1);
        ignore_bins ig10 = binsof(PTE_d.lvl0_r_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig11 = binsof(PTE_d.lvl0_w_0);
        ignore_bins ig12 = binsof(PTE_d.lvl0_w_1);
    }

     PTE_perm_write_u_d: cross PTE_d, PPN_d {

        ignore_bins ig1 = binsof(PTE_d.lvl2_w_1) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig2 = binsof(PTE_d.lvl2_w_0);
        ignore_bins ig3 = binsof(PTE_d.lvl2_r_0);
        ignore_bins ig4 = binsof(PTE_d.lvl2_r_1);
       
        ignore_bins ig5 = binsof(PTE_d.lvl1_w_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig6 = binsof(PTE_d.lvl1_w_0);
        ignore_bins ig7 = binsof(PTE_d.lvl1_r_0);
        ignore_bins ig8 = binsof(PTE_d.lvl1_r_1);


        ignore_bins ig9 = binsof(PTE_d.lvl0_w_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig10 = binsof(PTE_d.lvl0_w_0);
        ignore_bins ig11 = binsof(PTE_d.lvl0_r_0);
        ignore_bins ig12 = binsof(PTE_d.lvl0_r_1);

    }


     PTE_perm_nowrite_u_d: cross PTE_d, PPN_d {

        ignore_bins ig1 = binsof(PTE_d.lvl2_w_1);
        ignore_bins ig2 = binsof(PTE_d.lvl2_w_0) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl2_r_0);
        ignore_bins ig4 = binsof(PTE_d.lvl2_r_1);
       
        ignore_bins ig5 = binsof(PTE_d.lvl1_w_1);
        ignore_bins ig6 = binsof(PTE_d.lvl1_w_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig7 = binsof(PTE_d.lvl1_r_0);
        ignore_bins ig8 = binsof(PTE_d.lvl1_r_1);


        ignore_bins ig9 = binsof(PTE_d.lvl0_w_1);
        ignore_bins ig10 = binsof(PTE_d.lvl0_w_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        ignore_bins ig11 = binsof(PTE_d.lvl0_r_0);
        ignore_bins ig12 = binsof(PTE_d.lvl0_r_1);

    }

    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    Nopagefault: coverpoint  rvvi.csr[0][0][12'h143] {
        bins no_fault = {64'd0};
    }
    priv_mode: coverpoint rvvi.mode[0][0]{
        bins U_mode = {2'b00};
    }

    read_u: cross PTE_perm_read_u_d, mode,  Nopagefault, read_acc, priv_mode;

    noread_u: cross PTE_perm_noread_u_d, mode,  Mcause, read_acc, priv_mode {
        ignore_bins b1 =  binsof(Mcause.ins_page_fault);
        ignore_bins b2 =  binsof(Mcause.store_amo_fault);
    }

    write_u: cross PTE_perm_write_u_d, mode,  Nopagefault, write_acc, priv_mode;

    nowrite_u: cross PTE_perm_nowrite_u_d, mode,  Mcause, write_acc, priv_mode {
        ignore_bins b1 =  binsof(Mcause.ins_page_fault);
        ignore_bins b2 =  binsof(Mcause.load_page_fault);
    }

    exec_u: cross PTE_perm_exec_u_i, mode,  Nopagefault, exec_acc, priv_mode;

    noexec_u: cross PTE_perm_noexec_u_i, mode,  Mcause, exec_acc, priv_mode {
        ignore_bins b1 =  binsof(Mcause.load_page_fault);
        ignore_bins b2 =  binsof(Mcause.store_amo_fault);
    }
endgroup

covergroup cg_xpage_read_mxrunset @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11001};
        wildcard bins lvl2_s = {8'b???01001};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01001);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11001);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01001);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11001);
    }

    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 


    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_u);
        ignore_bins ig4 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_u);
        ignore_bins ig6 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_s);
        ignore_bins ig4 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_s);
        ignore_bins ig6 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }

    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_fault = {64'd13};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_fault = {64'd13};
    }
    mxr_sstatus: coverpoint rvvi.csr[0][0][12'h100][19]{
        bins unset = {0};
    }

    read_s: cross PTE_perm_s_d, mode, Scause, read_acc, mxr_sstatus;

    read_u: cross PTE_perm_u_d, mode, Mcause, read_acc, mxr_sstatus;

endgroup

covergroup cg_xpage_read_mxrset @(posedge clk iff rvvi.valid[0][0]);
    

    
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11001};
        wildcard bins lvl2_s = {8'b???01001};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01001);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11001);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01001);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11001);
    }

    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 


    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_u);
        ignore_bins ig4 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_u);
        ignore_bins ig6 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_s);
        ignore_bins ig4 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_s);
        ignore_bins ig6 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }

    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }

    mxr_sstatus: coverpoint rvvi.csr[0][0][12'h100][19]{
        bins set = {1};
    }
    Nopagefault: coverpoint  rvvi.csr[0][0][12'h143] {
        bins no_fault = {64'd0};
    }

    read_s: cross PTE_perm_s_d, mode,  Nopagefault, mxr_sstatus, read_acc;

    read_u: cross PTE_perm_u_d, mode,  Nopagefault, mxr_sstatus, read_acc;

endgroup

covergroup cg_access_bit_rwx @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b?0?11111};
        wildcard bins lvl2_s = {8'b?0?01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b?0?01111);
        wildcard bins lvl1_u = (8'b???10001 => 8'b?0?11111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b?0?01111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b?0?11111);

    }
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b?0?11111};
        wildcard bins lvl2_s = {8'b?0?01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b?0?01111);
        wildcard bins lvl1_u = (8'b???10001 => 8'b?0?11111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b?0?01111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b?0?11111);
    }
    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 
    PTE_perm_s_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_u);
        ignore_bins ig2 = binsof(PTE_i.lvl2_s) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_u);
        ignore_bins ig4 = binsof(PTE_i.lvl1_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_u);
        ignore_bins ig6 = binsof(PTE_i.lvl0_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_u_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_s);
        ignore_bins ig2 = binsof(PTE_i.lvl2_u) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_s);
        ignore_bins ig4 = binsof(PTE_i.lvl1_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_s);
        ignore_bins ig6 = binsof(PTE_i.lvl0_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_u);
        ignore_bins ig4 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_u);
        ignore_bins ig6 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_s);
        ignore_bins ig4 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_s);
        ignore_bins ig6 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }
    
    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }

    read_s: cross PTE_perm_s_d, mode, Scause, read_acc {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.store_amo_fault);
    }
    read_u: cross PTE_perm_u_d, mode, Mcause, read_acc {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_fault);
    }

    write_s: cross PTE_perm_s_d, mode, Scause, write_acc {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    write_u: cross PTE_perm_u_d, mode, Mcause, write_acc {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    exec_s: cross PTE_perm_s_i, mode, Scause, exec_acc {
        ignore_bins ig1 = binsof(Scause.store_amo_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    exec_u: cross PTE_perm_u_i, mode, Mcause, exec_acc {
       ignore_bins ig1 = binsof(Mcause.store_amo_fault);
       ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
endgroup

covergroup cg_ditry_bit_w @(posedge clk iff rvvi.valid[0][0]);


    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b01?1?111};
        wildcard bins lvl2_s = {8'b01?0?111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b01?0?111);
        wildcard bins lvl1_u = (8'b???10001 => 8'b01?1?111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b01?0?111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b01?1?111);
    }

    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
 
   

    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_u);
        ignore_bins ig4 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_u);
        ignore_bins ig6 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_s);
        ignore_bins ig4 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_s);
        ignore_bins ig6 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins store_amo_fault = {64'd15};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins store_amo_fault = {64'd15};
    }

    write_s: cross PTE_perm_s_d, mode,  Scause, write_acc;

    write_u: cross PTE_perm_u_d, mode,  Mcause, write_acc;

endgroup

covergroup cg_misaligned_rwx @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???10011, 8'b???11001, 8'b???11011};
        wildcard bins lvl2_s = {8'b???00011, 8'b???01001, 8'b???01011};
        wildcard bins lvl1_u = (8'b???00001 => 8'b???10011, 8'b???11001, 8'b???11011);
        wildcard bins lvl1_s = (8'b???10001 => 8'b???00011, 8'b???01001, 8'b???01011);
    }
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???10011, 8'b???11001, 8'b???11011};
        wildcard bins lvl2_s = {8'b???00011, 8'b???01001, 8'b???01011};
        wildcard bins lvl1_u = (8'b???10001 => 8'b???10011, 8'b???11001, 8'b???11011);
        wildcard bins lvl1_s = (8'b???00001 => 8'b???00011, 8'b???01001, 8'b???01011);
    }

    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_not_zero = {[18'd1:18'd262143]};
        bins mega_not_zero = {[9'd1:9'd511]};
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_not_zero = {[18'd1:18'd262143]};
        bins mega_not_zero = {[9'd1:9'd511]};
    }
 

    PTE_perm_s_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_u);
        ignore_bins ig2 = binsof(PTE_i.lvl2_s) && binsof(PPN_i.giga_not_zero);
        ignore_bins ig3 = binsof(PTE_i.lvl1_u);
        ignore_bins ig4 = binsof(PTE_i.lvl1_s) && binsof(PPN_i.mega_not_zero);
    }

    PTE_perm_u_i: cross PTE_i, PPN_i {
        ignore_bins ig1 = binsof(PTE_i.lvl2_s);
        ignore_bins ig2 = binsof(PTE_i.lvl2_u) && binsof(PPN_i.giga_not_zero);
        ignore_bins ig3 = binsof(PTE_i.lvl1_s);
        ignore_bins ig4 = binsof(PTE_i.lvl1_u) && binsof(PPN_i.mega_not_zero);
    }

    PTE_perm_s_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s) && binsof(PPN_d.giga_not_zero);
        ignore_bins ig3 = binsof(PTE_d.lvl1_u);
        ignore_bins ig4 = binsof(PTE_d.lvl1_s) && binsof(PPN_d.mega_not_zero);
    }

    PTE_perm_u_d: cross PTE_d, PPN_d {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u) && binsof(PPN_d.giga_not_zero);
        ignore_bins ig3 = binsof(PTE_d.lvl1_s);
        ignore_bins ig4 = binsof(PTE_d.lvl1_u) && binsof(PPN_d.mega_not_zero);
    }

    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }

    read_s: cross PTE_perm_s_d, mode,  Scause, read_acc {
       ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.store_amo_fault);
    }
    read_u: cross PTE_perm_u_d, mode,  Mcause, read_acc  {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_fault);
    }

    write_s: cross PTE_perm_s_d, mode,  Scause, write_acc  {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    write_u: cross PTE_perm_u_d, mode,  Mcause, write_acc  {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    exec_s: cross PTE_perm_s_i, mode,  Scause, exec_acc  {
        ignore_bins ig1 = binsof(Scause.store_amo_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    exec_u: cross PTE_perm_u_i, mode,  Mcause, exec_acc  {
       ignore_bins ig1 = binsof(Mcause.store_amo_fault);
       ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
endgroup

covergroup cg_canocical @(posedge clk iff rvvi.valid[0][0]);
    
    PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl2_s = {8'b???01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);

    }
    PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl2_s = {8'b???01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
    }
    PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
        bins giga_zero = {18'd0};
        wildcard bins mega_zero = {18'b??_???????0_00000000};
        wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
    }
    VA: coverpoint dut.core.ifu.immu.immu.tlb.tlb.VAdr[63:39] {
        bins not_zero = {[25'b1:25'b11111_11111_11111_11111_11110]};
    }
 
    PTE_perm_s_i: cross PTE_i, PPN_i,VA {
        ignore_bins ig1 = binsof(PTE_i.lvl2_u);
        ignore_bins ig2 = binsof(PTE_i.lvl2_s) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_u);
        ignore_bins ig4 = binsof(PTE_i.lvl1_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_u);
        ignore_bins ig6 = binsof(PTE_i.lvl0_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_u_i: cross PTE_i, PPN_i, VA {
        ignore_bins ig1 = binsof(PTE_i.lvl2_s);
        ignore_bins ig2 = binsof(PTE_i.lvl2_u) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_i.lvl1_s);
        ignore_bins ig4 = binsof(PTE_i.lvl1_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_i.lvl0_s);
        ignore_bins ig6 = binsof(PTE_i.lvl0_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
    }

    PTE_perm_s_d: cross PTE_d, PPN_d, VA {
        ignore_bins ig1 = binsof(PTE_d.lvl2_u);
        ignore_bins ig2 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_u);
        ignore_bins ig4 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_u);
        ignore_bins ig6 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    PTE_perm_u_d: cross PTE_d, PPN_d, VA {
        ignore_bins ig1 = binsof(PTE_d.lvl2_s);
        ignore_bins ig2 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig3 = binsof(PTE_d.lvl1_s);
        ignore_bins ig4 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
        ignore_bins ig5 = binsof(PTE_d.lvl0_s);
        ignore_bins ig6 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
    }

    exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
        bins set = {1};
    }
    read_acc : coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
         bins set = {1};
    }
    write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
        bins set = {1};
    }
    mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
        bins sv39   = {4'b1000};
    }
    Scause: coverpoint  rvvi.csr[0][0][12'h142] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }
    Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_fault = {64'd15};
    }

    read_s: cross PTE_perm_s_d, mode, Scause, read_acc {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.store_amo_fault);
    }
    read_u: cross PTE_perm_u_d, mode, Mcause, read_acc {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_fault);
    }

    write_s: cross PTE_perm_s_d, mode, Scause, write_acc {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    write_u: cross PTE_perm_u_d, mode, Mcause, write_acc {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    exec_s: cross PTE_perm_s_i, mode, Scause, exec_acc {
        ignore_bins ig1 = binsof(Scause.store_amo_fault);
        ignore_bins ig2 = binsof(Scause.load_page_fault);
    }
    exec_u: cross PTE_perm_u_i, mode, Mcause, exec_acc {
       ignore_bins ig1 = binsof(Mcause.store_amo_fault);
       ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
endgroup


 initial begin

    cg_satp                         satpCG = new();  
    cg_PMPonPA                      pmponpaCG = new(); 
    cg_inv_perm                     invpermCG = new();
    cg_res_rwx                      resrwxCG = new();
    cg_nonleafperm_lvl0             nonleafperm_lvl0CG = new();
    cg_spage_smode_rwx              spage_smode_rwxCG = new();
    cg_spage_umode_rwx              spage_umode_rwxCG = new();
    cg_upage_smode_sumunset         upage_smode_sumunsetCG = new();
    cg_upage_smode_sumset           upage_smode_sumsetCG = new();
    cg_upage_umode_rwx              upage_umode_rwxCG = new();
    cg_xpage_read_mxrunset          xpage_read_mxrunsetCG = new();
    cg_xpage_read_mxrset            xpage_read_mxrsetCG = new();
    cg_access_bit_rwx               access_bit_rwxCG = new();
    cg_ditry_bit_w                  ditry_bit_wCG = new();
    cg_misaligned_rwx               misaligned_rwxCG = new();
    cg_PMPonPTE                     PMPonPTECG = new();
    cg_mstatus_TVM                  mstatus_TVMCG = new();
    cg_mstatus_MPRV                 mstatus_MPRVCG = new();
    cg_asid_Length                  asid_LengthCG = new();
    cg_canonical                    canonical_CG = new();

    forever begin

        @(posedge clk iff rvvi.valid[0][0]) begin
            
            satpCG.sample();  
            pmponpaCG.sample(); 
            invpermCG.sample();
            resrwxCG.sample();
            nonleafperm_lvl0CG.sample();
            spage_smode_rwxCG.sample();
            spage_umode_rwxCG.sample();
            upage_smode_sumunsetCG.sample();
            upage_smode_sumsetCG.sample();
            upage_umode_rwxCG.sample();
            xpage_read_mxrunsetCG.sample();
            xpage_read_mxrsetCG.sample();
            access_bit_rwxCG.sample();
            ditry_bit_wCG.sample();
            misaligned_rwxCG.sample();
            PMPonPTECG.sample();
            mstatus_TVMCG.sample();
            asid_LengthCG.sample();
            mstatus_MPRVCG.sample();
            canonical_CG.sample();

        end
    end
end


endmodule