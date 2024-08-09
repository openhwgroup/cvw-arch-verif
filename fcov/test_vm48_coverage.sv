module test_vm48_coverage import cvw::*; #(parameter cvw_t P) (input clk);

    rvviTrace #(.XLEN(P.XLEN), .FLEN(P.FLEN)) rvvi();
    wallyTracer #(P) wallyTracer(rvvi);

    covergroup cg_satp @(posedge clk iff rvvi.valid[0][0]);
        mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
            bins sv48   = {4'b1001};
            bins bare   = {4'b0000};
        }

        asid_Length: coverpoint  rvvi.csr[0][0][12'h180][59:44] {
            bins values[]   = {[16'd16:16'd0]};
        }
    endgroup

    covergroup cg_mstatus @(posedge clk iff rvvi.valid[0][0]);
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

    covergroup cg_PMP @(posedge clk iff rvvi.valid[0][0]);
        
        PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???11111};
            wildcard bins lvl3_s = {8'b???01111};
            wildcard bins lvl2_s = (8'b???00001 => 8'b???01111);
            wildcard bins lvl2_u = (8'b???10001 => 8'b???11111);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???01111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???11111);

        }
        PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???11111};
            wildcard bins lvl3_s = {8'b???01111};
            wildcard bins lvl2_s = (8'b???00001 => 8'b???01111);
            wildcard bins lvl2_u = (8'b???10001 => 8'b???11111);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???01111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???11111);
        }
        PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[26:0] {
            bins tera_zero = {27'd0};
            wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
            wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
            wildcard bins not_zero = {!27'd0, !27'b???_??????00_00000000_00000000, !27'b???_????????_???????0_00000000}; 
        }
        PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[26:0] {
            bins tera_zero = {27'd0};
            wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
            wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
            wildcard bins not_zero = {!27'd0, !27'b???_??????00_00000000_00000000, !27'b???_????????_???????0_00000000}; 
        }
    
        PTE_perm_s_i: cross PTE_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_i.lvl3_u);
            ignore_bins ig2 = binsof(PTE_i.lvl3_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_i.lvl2_u);
            ignore_bins ig4 = binsof(PTE_i.lvl2_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_i.lvl1_u);
            ignore_bins ig6 = binsof(PTE_i.lvl1_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_i.lvl0_u);
            ignore_bins ig8 = binsof(PTE_i.lvl0_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }

        PTE_perm_u_i: cross PTE_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_i.lvl3_s);
            ignore_bins ig2 = binsof(PTE_i.lvl3_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_i.lvl2_s);
            ignore_bins ig4 = binsof(PTE_i.lvl2_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_i.lvl1_s);
            ignore_bins ig6 = binsof(PTE_i.lvl1_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_i.lvl0_s);
            ignore_bins ig8 = binsof(PTE_i.lvl0_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }

        PTE_perm_s_d: cross PTE_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_d.lvl3_u);
            ignore_bins ig2 = binsof(PTE_d.lvl3_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_d.lvl2_u);
            ignore_bins ig4 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_d.lvl1_u);
            ignore_bins ig6 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_d.lvl0_u);
            ignore_bins ig8 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }

        PTE_perm_u_d: cross PTE_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_d.lvl3_s);
            ignore_bins ig2 = binsof(PTE_d.lvl3_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_d.lvl2_s);
            ignore_bins ig4 = binsof(PTE_d.lvl2_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_d.lvl1_s);
            ignore_bins ig6 = binsof(PTE_d.lvl1_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_d.lvl0_s);
            ignore_bins ig8 = binsof(PTE_d.lvl0_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
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
            bins sv48   = {4'b1001};
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

        PMP0_PTE: coverpoint  rvvi.csr[0][0][12'h3A0][7:0] {
            wildcard bins noread   = {8'b?????110};
            wildcard bins nowrite  = {8'b?????101};
            wildcard bins noexe    = {8'b?????011};
        }

        pmp0_pte_noread_s: cross PTE_perm_s_d, mode, PMP0_PTE, Scause, read_acc {
            ignore_bins ig1 = binsof(PMP0_PTE.nowrite);
            ignore_bins ig2 = binsof(PMP0_PTE.noexe);
            ignore_bins ig3 = binsof(Scause.ins_acc_fault);
            ignore_bins ig4 = binsof(Scause.store_amo_acc);
        }
        pmp0_pte_noread_u: cross PTE_perm_u_d, mode, PMP0_PTE, Mcause, read_acc {
            ignore_bins ig1 = binsof(PMP0_PTE.nowrite);
            ignore_bins ig2 = binsof(PMP0_PTE.noexe);
            ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
            ignore_bins ig4 = binsof(Mcause.store_amo_acc);
        }

        pmp0_pte_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PTE, Scause, write_acc {
            ignore_bins ig1 = binsof(PMP0_PTE.noread);
            ignore_bins ig2 = binsof(PMP0_PTE.noexe);
            ignore_bins ig3 = binsof(Scause.ins_acc_fault);
            ignore_bins ig4 = binsof(Scause.load_page_acc);
        }
        pmp0_pte_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PTE, Mcause, write_acc {
            ignore_bins ig1 = binsof(PMP0_PTE.noread);
            ignore_bins ig2 = binsof(PMP0_PTE.noexe);
            ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
            ignore_bins ig4 = binsof(Mcause.load_page_acc);
        }

    
        PMP0_PA: coverpoint  rvvi.csr[0][0][12'h3A0][15:8] {
            wildcard bins noread   = {8'b?????110};
            wildcard bins nowrite  = {8'b?????101};
            wildcard bins noexe    = {8'b?????011};
        }

        pmp0_PA_noread_s: cross PTE_perm_s_d, mode, PMP0_PA, Scause, read_acc {
            ignore_bins ig1 = binsof(PMP0_PA.nowrite);
            ignore_bins ig2 = binsof(PMP0_PA.noexe);
            ignore_bins ig3 = binsof(Scause.ins_acc_fault);
            ignore_bins ig4 = binsof(Scause.store_amo_acc);
        }
        pmp0_PA_noread_u: cross PTE_perm_u_d, mode, PMP0_PA, Mcause, read_acc {
            ignore_bins ig1 = binsof(PMP0_PA.nowrite);
            ignore_bins ig2 = binsof(PMP0_PA.noexe);
            ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
            ignore_bins ig4 = binsof(Mcause.store_amo_acc);
        }

        pmp0_PA_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PA, Scause, write_acc {
            ignore_bins ig1 = binsof(PMP0_PA.noread);
            ignore_bins ig2 = binsof(PMP0_PA.noexe);
            ignore_bins ig3 = binsof(Scause.ins_acc_fault);
            ignore_bins ig4 = binsof(Scause.load_page_acc);
        }
        pmp0_PA_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PA, Mcause, write_acc {
            ignore_bins ig1 = binsof(PMP0_PA.noread);
            ignore_bins ig2 = binsof(PMP0_PA.noexe);
            ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
            ignore_bins ig4 = binsof(Mcause.load_page_acc);
        }

        pmp0_PA_noexec_s: cross PTE_perm_s_i, mode, PMP0_PA, Scause, exec_acc {
            ignore_bins ig1 = binsof(PMP0_PA.nowrite);
            ignore_bins ig2 = binsof(PMP0_PA.noread);
            ignore_bins ig3 = binsof(Scause.store_amo_acc);
            ignore_bins ig4 = binsof(Scause.load_page_acc);
        }
        pmp0_PA_noexec_u: cross PTE_perm_u_i, mode, PMP0_PA, Mcause, exec_acc {
            ignore_bins ig1 = binsof(PMP0_PA.nowrite);
            ignore_bins ig2 = binsof(PMP0_PA.noread);
            ignore_bins ig3 = binsof(Mcause.store_amo_acc);
            ignore_bins ig4 = binsof(Mcause.load_page_acc);
        }
    endgroup

    covergroup cg_sv48 @(posedge clk iff rvvi.valid[0][0]);
        
        PTE_i_inv: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {

            wildcard bins lvl3_u_2 = {8'b???11000};
            wildcard bins lvl3_s_2 = {8'b???01000};

            wildcard bins lvl2_u_2 = (8'b???10001 => 8'b???11000);
            wildcard bins lvl2_s_2 = (8'b???00001 => 8'b???01000);

            wildcard bins lvl1_u_2 = (8'b???10001 => 8'b???10001 => 8'b???11000);
            wildcard bins lvl1_s_2 = (8'b???00001 => 8'b???00001 => 8'b???01000);

            wildcard bins  lvl0_u_2 = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???11000);
            wildcard bins  lvl0_s_2 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???01000);
        }
        PTE_d_inv: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            
            wildcard bins lvl3_u_0 = {8'b???10010};
            wildcard bins lvl3_u_1 = {8'b???10110};
            wildcard bins lvl3_s_0 = {8'b???00010};
            wildcard bins lvl3_s_1 = {8'b???00110};

            wildcard bins lvl2_u_0 = (8'b???10001 => 8'b???10010);
            wildcard bins lvl2_u_1 = (8'b???10001 => 8'b???10110);
            wildcard bins lvl2_s_0 = (8'b???00001 => 8'b???00010);
            wildcard bins lvl2_s_1 = (8'b???00001 => 8'b???00110);

            wildcard bins lvl1_u_0 = (8'b???10001 => 8'b???10001 => 8'b???10010);
            wildcard bins lvl1_u_1 = (8'b???10001 => 8'b???10001 => 8'b???10110);
            wildcard bins lvl1_s_0 = (8'b???00001 => 8'b???00001 => 8'b???00010);
            wildcard bins lvl1_s_1 = (8'b???00001 => 8'b???00001 => 8'b???00110);

            wildcard bins lvl0_u_0 = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???10010);
            wildcard bins lvl0_u_1 = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???10110);
            wildcard bins lvl0_s_0 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???00010);
            wildcard bins lvl0_s_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???00110);
        }

        PTE_i_res_rwx: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???1?101};
            wildcard bins lvl3_s = {8'b???0?101};
            wildcard bins lvl2_s = (8'b???00001 => 8'b???0?101);
            wildcard bins lvl2_u = (8'b???10001 => 8'b???1?101);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???0?101);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???1?101);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???0?101);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???1?101);
        }
        PTE_d_res_rwx: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???1?101};
            wildcard bins lvl3_s = {8'b???0?101};
            wildcard bins lvl2_s = (8'b???00001 => 8'b???0?101);
            wildcard bins lvl2_u = (8'b???10001 => 8'b???1?101);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???0?101);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???1?101);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???0?101);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???1?101);
        }

        PTE_nonleaf_lvl0_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???00001);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???10001);
        }
        PTE_nonleaf_lvl0_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???00001);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???10001);
        }

        PTE_x_spage_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {

            wildcard bins lvl3_x_0 = {8'b???00??1};
            wildcard bins lvl3_x_1 = {8'b???01??1};

            wildcard bins lvl2_x_0 = (8'b???00001 => 8'b???00??1);
            wildcard bins lvl2_x_1 = (8'b???00001 => 8'b???01??1);

            wildcard bins lvl1_x_0 = (8'b???00001 => 8'b???00001 => 8'b???00??1);
            wildcard bins lvl1_x_1 = (8'b???00001 => 8'b???00001 => 8'b???01??1);

            wildcard bins lvl0_x_0 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???00??1);
            wildcard bins lvl0_x_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???01??1);
        }
        PTE_rw_spage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_w_1 = {8'b???0?111};
            wildcard bins lvl3_w_0 = {8'b???0?0?1};
            wildcard bins lvl3_r_1 = {8'b???0??11};
            wildcard bins lvl3_r_0 = {8'b???0??01};

            wildcard bins lvl2_w_0 = (8'b???00001 => 8'b???0?0?1);
            wildcard bins lvl2_w_1 = (8'b???00001 => 8'b???0?111);
            wildcard bins lvl2_r_0 = (8'b???00001 => 8'b???0??11);
            wildcard bins lvl2_r_1 = (8'b???00001 => 8'b???0??01);

            wildcard bins lvl1_w_0 = (8'b???00001 => 8'b???00001 => 8'b???0?0?1);
            wildcard bins lvl1_w_1 = (8'b???00001 => 8'b???00001 => 8'b???0?111);
            wildcard bins lvl1_r_0 = (8'b???00001 => 8'b???00001 => 8'b???0??01);
            wildcard bins lvl1_r_1 = (8'b???00001 => 8'b???00001 => 8'b???0??11);

            wildcard bins lvl0_w_0 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???0?0?1);
            wildcard bins lvl0_w_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???0?111);
            wildcard bins lvl0_r_0 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???0??01);
            wildcard bins lvl0_r_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???0??11);
        }

        PTE_spage_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_s = {8'b???01111};
            wildcard bins lvl2_s = (8'b???00001 => 8'b???01111);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???01111);
        }
        PTE_spage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_s = {8'b???01111};
            wildcard bins lvl2_s = (8'b???00001 => 8'b???01111);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???01111);
        }

        PTE_upage_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???11111};
            wildcard bins lvl2_u = (8'b???10001 => 8'b???11111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???11111);
        }
        PTE_upage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???11111};
            wildcard bins lvl2_u = (8'b???10001 => 8'b???11111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???11111);
        }

        PTE_x_upage_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_x_0 = {8'b???10??1};
            wildcard bins lvl3_x_1 = {8'b???11??1};

            wildcard bins lvl2_x_0 = (8'b???00001 => 8'b???10??1);
            wildcard bins lvl2_x_1 = (8'b???00001 => 8'b???11??1);

            wildcard bins lvl1_x_0 = (8'b???00001 => 8'b???00001 => 8'b???10??1);
            wildcard bins lvl1_x_1 = (8'b???00001 => 8'b???00001 => 8'b???11??1);

            wildcard bins lvl0_x_0 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???10??1);
            wildcard bins lvl0_x_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???11??1);
        }
        PTE_rw_upage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_w_1 = {8'b???1?111};
            wildcard bins lvl3_w_0 = {8'b???1?0?1};
            wildcard bins lvl3_r_1 = {8'b???1??11};
            wildcard bins lvl3_r_0 = {8'b???1??01};

            wildcard bins lvl2_w_0 = (8'b???00001 => 8'b???1?0?1);
            wildcard bins lvl2_w_1 = (8'b???00001 => 8'b???1?111);
            wildcard bins lvl2_r_0 = (8'b???00001 => 8'b???1??11);
            wildcard bins lvl2_r_1 = (8'b???00001 => 8'b???1??01);

            wildcard bins lvl1_w_0 = (8'b???00001 => 8'b???00001 => 8'b???1?0?1);
            wildcard bins lvl1_w_1 = (8'b???00001 => 8'b???00001 => 8'b???1?111);
            wildcard bins lvl1_r_0 = (8'b???00001 => 8'b???00001 => 8'b???1??01);
            wildcard bins lvl1_r_1 = (8'b???00001 => 8'b???00001 => 8'b???1??11);

            wildcard bins lvl0_w_0 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???1?0?1);
            wildcard bins lvl0_w_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???1?111);
            wildcard bins lvl0_r_0 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???1??01);
            wildcard bins lvl0_r_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???1??11);
        }

        PTE_XnoRW_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???11001};
            wildcard bins lvl3_s = {8'b???01001};
            wildcard bins lvl2_s = (8'b???00001 => 8'b???01001);
            wildcard bins lvl2_u = (8'b???10001 => 8'b???11001);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???01001);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???11001);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???01001);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???11001);
        }

        PTE_Abit_unset_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b?0?11111};
            wildcard bins lvl3_s = {8'b?0?01111};
            wildcard bins lvl2_s = (8'b???00001 => 8'b?0?01111);
            wildcard bins lvl2_u = (8'b???10001 => 8'b?0?11111);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b?0?01111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b?0?11111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b?0?01111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b?0?11111);
        }
        PTE_Abit_unset_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b?0?11111};
            wildcard bins lvl3_s = {8'b?0?01111};
            wildcard bins lvl2_s = (8'b???00001 => 8'b?0?01111);
            wildcard bins lvl2_u = (8'b???10001 => 8'b?0?11111);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b?0?01111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b?0?11111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b?0?01111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b?0?11111);
        }

        PTE_Dbit_set_W_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b01?1?111};
            wildcard bins lvl3_s = {8'b01?0?111};
            wildcard bins lvl2_s = (8'b???00001 => 8'b01?0?111);
            wildcard bins lvl2_u = (8'b???10001 => 8'b01?1?111);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b01?0?111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b01?1?111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b01?0?111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b01?1?111);
        }

        PTE_RorX_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???10011, 8'b???11001, 8'b???11011};
            wildcard bins lvl3_s = {8'b???00011, 8'b???01001, 8'b???01011};
            wildcard bins lvl2_u = (8'b???10001 => 8'b???10011, 8'b???11001, 8'b???11011);
            wildcard bins lvl2_s = (8'b???00001 => 8'b???00011, 8'b???01001, 8'b???01011);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???10011, 8'b???11001, 8'b???11011);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???00011, 8'b???01001, 8'b???01011);
        }
        PTE_RorX_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???10011, 8'b???11001, 8'b???11011};
            wildcard bins lvl3_s = {8'b???00011, 8'b???01001, 8'b???01011};
            wildcard bins lvl2_u = (8'b???10001 => 8'b???10011, 8'b???11001, 8'b???11011);
            wildcard bins lvl2_s = (8'b???00001 => 8'b???00011, 8'b???01001, 8'b???01011);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???10011, 8'b???11001, 8'b???11011);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???00011, 8'b???01001, 8'b???01011);
        }

        PTE_canonical_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
        wildcard bins lvl2_u = {8'b???11111};
        wildcard bins lvl2_s = {8'b???01111};
        wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
        wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
        wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
        wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);

        }
        PTE_canonical_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl2_u = {8'b???11111};
            wildcard bins lvl2_s = {8'b???01111};
            wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
        }

        PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[26:0] {
            bins tera_zero = {27'd0};
            wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
            wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
            wildcard bins not_zero = {!27'd0, !27'b???_??????00_00000000_00000000, !27'b???_????????_???????0_00000000}; 
        }
        PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[26:0] {
            bins tera_zero = {27'd0};
            wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
            wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
            wildcard bins not_zero = {!27'd0, !27'b???_??????00_00000000_00000000, !27'b???_????????_???????0_00000000}; 
        }

        misaligned_PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[26:0] {
            bins tera_not_zero = {[27'd1:27'd134217727]};
            bins giga_not_zero = {[18'd1:18'd262143]};
            bins mega_not_zero = {[9'd1:9'd511]};
        }
        misaligned_PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[26:0] {
            bins tera_not_zero = {[27'd1:27'd134217727]};
            bins giga_not_zero = {[18'd1:18'd262143]};
            bins mega_not_zero = {[9'd1:9'd511]};
        }
    

        PTE_inv_exec_s_i: cross PTE_i_inv, PPN_i  {
            ignore_bins ig1 = binsof(PTE_i_inv.lvl3_u_2);
            ignore_bins ig2 = binsof(PTE_i_inv.lvl3_s_2) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_i_inv.lvl2_u_2);
            ignore_bins ig4 = binsof(PTE_i_inv.lvl2_s_2) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_i_inv.lvl1_u_2);
            ignore_bins ig6 = binsof(PTE_i_inv.lvl1_s_2) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_i_inv.lvl0_u_2);
            ignore_bins ig8 = binsof(PTE_i_inv.lvl0_s_2) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }
        PTE_inv_exec_u_i: cross PTE_i_inv, PPN_i  {
            ignore_bins ig1 = binsof(PTE_i_inv.lvl3_s_2);
            ignore_bins ig2 = binsof(PTE_i_inv.lvl3_u_2) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_i_inv.lvl2_s_2);
            ignore_bins ig4 = binsof(PTE_i_inv.lvl2_u_2) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_i_inv.lvl1_s_2);
            ignore_bins ig6 = binsof(PTE_i_inv.lvl1_u_2) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_i_inv.lvl0_s_2);
            ignore_bins ig8 = binsof(PTE_i_inv.lvl0_u_2) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }

        PTE_nonleaf_lvl0_s_i: cross PTE_nonleaf_lvl0_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_i.lvl0_u);
            ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_i.lvl0_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;        
        }

        PTE_nonleaf_lvl0_u_i: cross PTE_nonleaf_lvl0_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_i.lvl0_s);
            ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_i.lvl0_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;        
        }

        PTE_nonleaf_lvl0_s_d: cross PTE_nonleaf_lvl0_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_u);
            ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;        
        }

        PTE_nonleaf_lvl0_u_d: cross PTE_nonleaf_lvl0_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_s);
            ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;        
        }

        PTE_inv_read_s_d: cross PTE_d_inv, PPN_d  {
            ignore_bins ig1 = binsof(PTE_d_inv.lvl3_u_0);
            ignore_bins ig2 = binsof(PTE_d_inv.lvl3_u_1);
            ignore_bins ig3 = binsof(PTE_d_inv.lvl3_s_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig4 = binsof(PTE_d_inv.lvl3_s_1);

    
            ignore_bins ig5 = binsof(PTE_d_inv.lvl2_u_0);
            ignore_bins ig6 = binsof(PTE_d_inv.lvl2_u_1);
            ignore_bins ig7 = binsof(PTE_d_inv.lvl2_s_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig8 = binsof(PTE_d_inv.lvl2_s_1);

            ignore_bins ig9 = binsof(PTE_d_inv.lvl1_u_0);
            ignore_bins ig10 = binsof(PTE_d_inv.lvl1_u_1);
            ignore_bins ig11 = binsof(PTE_d_inv.lvl1_s_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig12 = binsof(PTE_d_inv.lvl1_s_1);

            ignore_bins ig13 = binsof(PTE_d_inv.lvl0_u_0);
            ignore_bins ig14 = binsof(PTE_d_inv.lvl0_u_1);
            ignore_bins ig15 = binsof(PTE_d_inv.lvl0_s_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig16 = binsof(PTE_d_inv.lvl0_s_1);
        }
        PTE_inv_read_u_d: cross PTE_d_inv, PPN_d  {
            ignore_bins ig1 = binsof(PTE_d_inv.lvl3_s_0);
            ignore_bins ig2 = binsof(PTE_d_inv.lvl3_s_1);
            ignore_bins ig3 = binsof(PTE_d_inv.lvl3_u_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig4 = binsof(PTE_d_inv.lvl3_u_1);

    
            ignore_bins ig5 = binsof(PTE_d_inv.lvl2_s_0);
            ignore_bins ig6 = binsof(PTE_d_inv.lvl2_s_1);
            ignore_bins ig7 = binsof(PTE_d_inv.lvl2_u_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig8 = binsof(PTE_d_inv.lvl2_u_1);

            ignore_bins ig9 = binsof(PTE_d_inv.lvl1_s_0);
            ignore_bins ig10 = binsof(PTE_d_inv.lvl1_s_1);
            ignore_bins ig11 = binsof(PTE_d_inv.lvl1_u_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig12 = binsof(PTE_d_inv.lvl1_u_1);

            ignore_bins ig13 = binsof(PTE_d_inv.lvl0_s_0);
            ignore_bins ig14 = binsof(PTE_d_inv.lvl0_s_1);
            ignore_bins ig15 = binsof(PTE_d_inv.lvl0_u_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig16 = binsof(PTE_d_inv.lvl0_u_1);
        }

        PTE_inv_write_s_d: cross PTE_d_inv, PPN_d  {
            ignore_bins ig1 = binsof(PTE_d_inv.lvl3_u_0);
            ignore_bins ig2 = binsof(PTE_d_inv.lvl3_u_1);
            ignore_bins ig3 = binsof(PTE_d_inv.lvl3_s_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig4 = binsof(PTE_d_inv.lvl3_s_0);

    
            ignore_bins ig5 = binsof(PTE_d_inv.lvl2_u_0);
            ignore_bins ig6 = binsof(PTE_d_inv.lvl2_u_1);
            ignore_bins ig7 = binsof(PTE_d_inv.lvl2_s_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig8 = binsof(PTE_d_inv.lvl2_s_0);

            ignore_bins ig9 = binsof(PTE_d_inv.lvl1_u_0);
            ignore_bins ig10 = binsof(PTE_d_inv.lvl1_u_1);
            ignore_bins ig11 = binsof(PTE_d_inv.lvl1_s_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig12 = binsof(PTE_d_inv.lvl1_s_0);

            ignore_bins ig13 = binsof(PTE_d_inv.lvl0_u_0);
            ignore_bins ig14 = binsof(PTE_d_inv.lvl0_u_1);
            ignore_bins ig15 = binsof(PTE_d_inv.lvl0_s_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig16 = binsof(PTE_d_inv.lvl0_s_0);
        }
        PTE_inv_write_u_d: cross PTE_d_inv, PPN_d  {
            ignore_bins ig1 = binsof(PTE_d_inv.lvl3_s_0);
            ignore_bins ig2 = binsof(PTE_d_inv.lvl3_s_1);
            ignore_bins ig3 = binsof(PTE_d_inv.lvl3_u_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig4 = binsof(PTE_d_inv.lvl3_u_0);

    
            ignore_bins ig5 = binsof(PTE_d_inv.lvl2_s_0);
            ignore_bins ig6 = binsof(PTE_d_inv.lvl2_s_1);
            ignore_bins ig7 = binsof(PTE_d_inv.lvl2_u_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig8 = binsof(PTE_d_inv.lvl2_u_0);

            ignore_bins ig9 = binsof(PTE_d_inv.lvl1_s_0);
            ignore_bins ig10 = binsof(PTE_d_inv.lvl1_s_1);
            ignore_bins ig11 = binsof(PTE_d_inv.lvl1_u_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig12 = binsof(PTE_d_inv.lvl1_u_0);

            ignore_bins ig13 = binsof(PTE_d_inv.lvl0_s_0);
            ignore_bins ig14 = binsof(PTE_d_inv.lvl0_s_1);
            ignore_bins ig15 = binsof(PTE_d_inv.lvl0_u_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig16 = binsof(PTE_d_inv.lvl0_u_0);
        }

        PTE_res_rwx_s_i: cross PTE_i_res_rwx, PPN_i  {
            ignore_bins ig1 = binsof(PTE_i_res_rwx.lvl3_u);
            ignore_bins ig2 = binsof(PTE_i_res_rwx.lvl3_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_i_res_rwx.lvl2_u);
            ignore_bins ig4 = binsof(PTE_i_res_rwx.lvl2_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_i_res_rwx.lvl1_u);
            ignore_bins ig6 = binsof(PTE_i_res_rwx.lvl1_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_i_res_rwx.lvl0_u);
            ignore_bins ig8 = binsof(PTE_i_res_rwx.lvl0_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }
        PTE_res_rwx_u_i: cross PTE_i_res_rwx, PPN_i  {
            ignore_bins ig1 = binsof(PTE_i_res_rwx.lvl3_s);
            ignore_bins ig2 = binsof(PTE_i_res_rwx.lvl3_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_i_res_rwx.lvl2_s);
            ignore_bins ig4 = binsof(PTE_i_res_rwx.lvl2_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_i_res_rwx.lvl1_s);
            ignore_bins ig6 = binsof(PTE_i_res_rwx.lvl1_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_i_res_rwx.lvl0_s);
            ignore_bins ig8 = binsof(PTE_i_res_rwx.lvl0_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }

        PTE_res_rwx_s_d: cross PTE_d_res_rwx, PPN_d  {
            ignore_bins ig1 = binsof(PTE_d_res_rwx.lvl3_u);
            ignore_bins ig2 = binsof(PTE_d_res_rwx.lvl3_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_d_res_rwx.lvl2_u);
            ignore_bins ig4 = binsof(PTE_d_res_rwx.lvl2_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_d_res_rwx.lvl1_u);
            ignore_bins ig6 = binsof(PTE_d_res_rwx.lvl1_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_d_res_rwx.lvl0_u);
            ignore_bins ig8 = binsof(PTE_d_res_rwx.lvl0_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }
        PTE_res_rwx_u_d: cross PTE_d_res_rwx, PPN_d  {
            ignore_bins ig1 = binsof(PTE_d_res_rwx.lvl3_s);
            ignore_bins ig2 = binsof(PTE_d_res_rwx.lvl3_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_d_res_rwx.lvl2_s);
            ignore_bins ig4 = binsof(PTE_d_res_rwx.lvl2_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_d_res_rwx.lvl1_s);
            ignore_bins ig6 = binsof(PTE_d_res_rwx.lvl1_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_d_res_rwx.lvl0_s);
            ignore_bins ig8 = binsof(PTE_d_res_rwx.lvl0_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }

        spage_exec_s_i: cross PTE_x_spage_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_x_spage_i.lvl3_x_0);
            ignore_bins ig2 = binsof(PTE_x_spage_i.lvl3_x_1) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_x_spage_i.lvl2_x_0);
            ignore_bins ig4 = binsof(PTE_x_spage_i.lvl2_x_1) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_x_spage_i.lvl1_x_0);
            ignore_bins ig6 = binsof(PTE_x_spage_i.lvl1_x_1) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_x_spage_i.lvl0_x_0);
            ignore_bins ig8 = binsof(PTE_x_spage_i.lvl0_x_1) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }
        spage_noexec_s_i: cross PTE_x_spage_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_x_spage_i.lvl3_x_1);
            ignore_bins ig2 = binsof(PTE_x_spage_i.lvl3_x_0) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_x_spage_i.lvl2_x_1);
            ignore_bins ig4 = binsof(PTE_x_spage_i.lvl2_x_0) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_x_spage_i.lvl1_x_1);
            ignore_bins ig6 = binsof(PTE_x_spage_i.lvl1_x_0) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_x_spage_i.lvl0_x_1);
            ignore_bins ig8 = binsof(PTE_x_spage_i.lvl0_x_0) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }

        spage_read_s_d: cross PTE_rw_spage_d, PPN_d  {

            ignore_bins ig1 = binsof(PTE_rw_spage_d.lvl3_r_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_rw_spage_d.lvl3_r_0);
            ignore_bins ig3 = binsof(PTE_rw_spage_d.lvl3_w_0);
            ignore_bins ig4 = binsof(PTE_rw_spage_d.lvl3_w_1);

            ignore_bins ig5 = binsof(PTE_rw_spage_d.lvl2_r_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig6 = binsof(PTE_rw_spage_d.lvl2_r_0);
            ignore_bins ig7 = binsof(PTE_rw_spage_d.lvl2_w_0);
            ignore_bins ig8 = binsof(PTE_rw_spage_d.lvl2_w_1);
        
            ignore_bins ig9 = binsof(PTE_rw_spage_d.lvl1_r_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig10 = binsof(PTE_rw_spage_d.lvl1_r_0);
            ignore_bins ig11 = binsof(PTE_rw_spage_d.lvl1_w_0);
            ignore_bins ig12 = binsof(PTE_rw_spage_d.lvl1_w_1);

            ignore_bins ig13 = binsof(PTE_rw_spage_d.lvl0_r_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig14 = binsof(PTE_rw_spage_d.lvl0_r_0);
            ignore_bins ig15 = binsof(PTE_rw_spage_d.lvl0_w_0);
            ignore_bins ig16 = binsof(PTE_rw_spage_d.lvl0_w_1);
        }
        spage_noread_s_d: cross PTE_rw_spage_d, PPN_d  {

            ignore_bins ig1 = binsof(PTE_rw_spage_d.lvl3_r_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_rw_spage_d.lvl3_r_1);
            ignore_bins ig3 = binsof(PTE_rw_spage_d.lvl3_w_0);
            ignore_bins ig4 = binsof(PTE_rw_spage_d.lvl3_w_1);

            ignore_bins ig5 = binsof(PTE_rw_spage_d.lvl2_r_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig6 = binsof(PTE_rw_spage_d.lvl2_r_1);
            ignore_bins ig7 = binsof(PTE_rw_spage_d.lvl2_w_0);
            ignore_bins ig8 = binsof(PTE_rw_spage_d.lvl2_w_1);
        
            ignore_bins ig9 = binsof(PTE_rw_spage_d.lvl1_r_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig10 = binsof(PTE_rw_spage_d.lvl1_r_1);
            ignore_bins ig11 = binsof(PTE_rw_spage_d.lvl1_w_0);
            ignore_bins ig12 = binsof(PTE_rw_spage_d.lvl1_w_1);

            ignore_bins ig13 = binsof(PTE_rw_spage_d.lvl0_r_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig14 = binsof(PTE_rw_spage_d.lvl0_r_1);
            ignore_bins ig15 = binsof(PTE_rw_spage_d.lvl0_w_0);
            ignore_bins ig16 = binsof(PTE_rw_spage_d.lvl0_w_1);
        }

        spage_write_s_d: cross PTE_rw_spage_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_rw_spage_d.lvl3_w_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_rw_spage_d.lvl3_r_0);
            ignore_bins ig3 = binsof(PTE_rw_spage_d.lvl3_w_0);
            ignore_bins ig4 = binsof(PTE_rw_spage_d.lvl3_r_1);

            ignore_bins ig5 = binsof(PTE_rw_spage_d.lvl2_w_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig6 = binsof(PTE_rw_spage_d.lvl2_r_0);
            ignore_bins ig7 = binsof(PTE_rw_spage_d.lvl2_w_0);
            ignore_bins ig8 = binsof(PTE_rw_spage_d.lvl2_r_1);
        
            ignore_bins ig9 = binsof(PTE_rw_spage_d.lvl1_w_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig10 = binsof(PTE_rw_spage_d.lvl1_r_0);
            ignore_bins ig11 = binsof(PTE_rw_spage_d.lvl1_w_0);
            ignore_bins ig12 = binsof(PTE_rw_spage_d.lvl1_r_1);

            ignore_bins ig13 = binsof(PTE_rw_spage_d.lvl0_w_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig14 = binsof(PTE_rw_spage_d.lvl0_r_0);
            ignore_bins ig15 = binsof(PTE_rw_spage_d.lvl0_w_0);
            ignore_bins ig16 = binsof(PTE_rw_spage_d.lvl0_r_1);
        }
        spage_nowrite_s_d: cross PTE_rw_spage_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_rw_spage_d.lvl3_w_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_rw_spage_d.lvl3_r_0);
            ignore_bins ig3 = binsof(PTE_rw_spage_d.lvl3_r_1);
            ignore_bins ig4 = binsof(PTE_rw_spage_d.lvl3_w_1);

            ignore_bins ig5 = binsof(PTE_rw_spage_d.lvl2_w_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig6 = binsof(PTE_rw_spage_d.lvl2_r_0);
            ignore_bins ig7 = binsof(PTE_rw_spage_d.lvl2_r_1);
            ignore_bins ig8 = binsof(PTE_rw_spage_d.lvl2_w_1);
        
            ignore_bins ig9 = binsof(PTE_rw_spage_d.lvl1_w_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig10 = binsof(PTE_rw_spage_d.lvl1_r_0);
            ignore_bins ig11 = binsof(PTE_rw_spage_d.lvl1_r_1);
            ignore_bins ig12 = binsof(PTE_rw_spage_d.lvl1_w_1);

            ignore_bins ig13 = binsof(PTE_rw_spage_d.lvl0_w_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig14 = binsof(PTE_rw_spage_d.lvl0_r_0);
            ignore_bins ig15 = binsof(PTE_rw_spage_d.lvl0_r_1);
            ignore_bins ig16 = binsof(PTE_rw_spage_d.lvl0_w_1);
        }

        spage_rwx_s_i: cross PTE_spage_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_spage_i.lvl3_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_spage_i.lvl2_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_spage_i.lvl1_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig4 = binsof(PTE_spage_i.lvl0_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }
        spage_rwx_s_d: cross PTE_spage_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_spage_d.lvl3_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_spage_d.lvl2_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_spage_d.lvl1_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig4 = binsof(PTE_spage_d.lvl0_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }

        upage_rwx_u_i: cross PTE_upage_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_upage_i.lvl3_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_upage_i.lvl2_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_upage_i.lvl1_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig4 = binsof(PTE_upage_i.lvl0_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }
        upage_rwx_u_d: cross PTE_upage_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_upage_d.lvl3_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_upage_d.lvl2_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_upage_d.lvl1_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig4 = binsof(PTE_upage_d.lvl0_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }

        upage_exec_u_i: cross PTE_x_upage_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_x_upage_i.lvl3_x_0);
            ignore_bins ig2 = binsof(PTE_x_upage_i.lvl3_x_1) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_x_upage_i.lvl2_x_0);
            ignore_bins ig4 = binsof(PTE_x_upage_i.lvl2_x_1) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_x_upage_i.lvl1_x_0);
            ignore_bins ig6 = binsof(PTE_x_upage_i.lvl1_x_1) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_x_upage_i.lvl0_x_0);
            ignore_bins ig8 = binsof(PTE_x_upage_i.lvl0_x_1) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }
        upage_noexec_u_i: cross PTE_x_upage_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_x_upage_i.lvl3_x_1);
            ignore_bins ig2 = binsof(PTE_x_upage_i.lvl3_x_0) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_x_upage_i.lvl2_x_1);
            ignore_bins ig4 = binsof(PTE_x_upage_i.lvl2_x_0) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_x_upage_i.lvl1_x_1);
            ignore_bins ig6 = binsof(PTE_x_upage_i.lvl1_x_0) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_x_upage_i.lvl0_x_1);
            ignore_bins ig8 = binsof(PTE_x_upage_i.lvl0_x_0) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }

        upage_read_u_d: cross PTE_rw_upage_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_rw_upage_d.lvl3_r_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_rw_upage_d.lvl3_r_0);
            ignore_bins ig3 = binsof(PTE_rw_upage_d.lvl3_w_0);
            ignore_bins ig4 = binsof(PTE_rw_upage_d.lvl3_w_1);

            ignore_bins ig5 = binsof(PTE_rw_upage_d.lvl2_r_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig6 = binsof(PTE_rw_upage_d.lvl2_r_0);
            ignore_bins ig7 = binsof(PTE_rw_upage_d.lvl2_w_0);
            ignore_bins ig8 = binsof(PTE_rw_upage_d.lvl2_w_1);
        
            ignore_bins ig9 = binsof(PTE_rw_upage_d.lvl1_r_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig10 = binsof(PTE_rw_upage_d.lvl1_r_0);
            ignore_bins ig11 = binsof(PTE_rw_upage_d.lvl1_w_0);
            ignore_bins ig12 = binsof(PTE_rw_upage_d.lvl1_w_1);

            ignore_bins ig13 = binsof(PTE_rw_upage_d.lvl0_r_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig14 = binsof(PTE_rw_upage_d.lvl0_r_0);
            ignore_bins ig15 = binsof(PTE_rw_upage_d.lvl0_w_0);
            ignore_bins ig16 = binsof(PTE_rw_upage_d.lvl0_w_1);
        }
        upage_noread_u_d: cross PTE_rw_upage_d, PPN_d  {

            ignore_bins ig1 = binsof(PTE_rw_upage_d.lvl3_r_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_rw_upage_d.lvl3_r_1);
            ignore_bins ig3 = binsof(PTE_rw_upage_d.lvl3_w_0);
            ignore_bins ig4 = binsof(PTE_rw_upage_d.lvl3_w_1);

            ignore_bins ig5 = binsof(PTE_rw_upage_d.lvl2_r_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig6 = binsof(PTE_rw_upage_d.lvl2_r_1);
            ignore_bins ig7 = binsof(PTE_rw_upage_d.lvl2_w_0);
            ignore_bins ig8 = binsof(PTE_rw_upage_d.lvl2_w_1);
        
            ignore_bins ig9 = binsof(PTE_rw_upage_d.lvl1_r_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig10 = binsof(PTE_rw_upage_d.lvl1_r_1);
            ignore_bins ig11 = binsof(PTE_rw_upage_d.lvl1_w_0);
            ignore_bins ig12 = binsof(PTE_rw_upage_d.lvl1_w_1);

            ignore_bins ig13 = binsof(PTE_rw_upage_d.lvl0_r_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig14 = binsof(PTE_rw_upage_d.lvl0_r_1);
            ignore_bins ig15 = binsof(PTE_rw_upage_d.lvl0_w_0);
            ignore_bins ig16 = binsof(PTE_rw_upage_d.lvl0_w_1);
        }

        upage_write_u_d: cross PTE_rw_upage_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_rw_upage_d.lvl3_w_1) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_rw_upage_d.lvl3_r_0);
            ignore_bins ig3 = binsof(PTE_rw_upage_d.lvl3_w_0);
            ignore_bins ig4 = binsof(PTE_rw_upage_d.lvl3_r_1);

            ignore_bins ig5 = binsof(PTE_rw_upage_d.lvl2_w_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig6 = binsof(PTE_rw_upage_d.lvl2_r_0);
            ignore_bins ig7 = binsof(PTE_rw_upage_d.lvl2_w_0);
            ignore_bins ig8 = binsof(PTE_rw_upage_d.lvl2_r_1);
        
            ignore_bins ig9 = binsof(PTE_rw_upage_d.lvl1_w_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig10 = binsof(PTE_rw_upage_d.lvl1_r_0);
            ignore_bins ig11 = binsof(PTE_rw_upage_d.lvl1_w_0);
            ignore_bins ig12 = binsof(PTE_rw_upage_d.lvl1_r_1);

            ignore_bins ig13 = binsof(PTE_rw_upage_d.lvl0_w_1) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig14 = binsof(PTE_rw_upage_d.lvl0_r_0);
            ignore_bins ig15 = binsof(PTE_rw_upage_d.lvl0_w_0);
            ignore_bins ig16 = binsof(PTE_rw_upage_d.lvl0_r_1);
        }
        upage_nowrite_u_d: cross PTE_rw_upage_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_rw_upage_d.lvl3_w_0) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig2 = binsof(PTE_rw_upage_d.lvl3_r_0);
            ignore_bins ig3 = binsof(PTE_rw_upage_d.lvl3_r_1);
            ignore_bins ig4 = binsof(PTE_rw_upage_d.lvl3_w_1);

            ignore_bins ig5 = binsof(PTE_rw_upage_d.lvl2_w_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig6 = binsof(PTE_rw_upage_d.lvl2_r_0);
            ignore_bins ig7 = binsof(PTE_rw_upage_d.lvl2_r_1);
            ignore_bins ig8 = binsof(PTE_rw_upage_d.lvl2_w_1);
        
            ignore_bins ig9 = binsof(PTE_rw_upage_d.lvl1_w_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig10 = binsof(PTE_rw_upage_d.lvl1_r_0);
            ignore_bins ig11 = binsof(PTE_rw_upage_d.lvl1_r_1);
            ignore_bins ig12 = binsof(PTE_rw_upage_d.lvl1_w_1);

            ignore_bins ig13 = binsof(PTE_rw_upage_d.lvl0_w_0) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
            ignore_bins ig14 = binsof(PTE_rw_upage_d.lvl0_r_0);
            ignore_bins ig15 = binsof(PTE_rw_upage_d.lvl0_r_1);
            ignore_bins ig16 = binsof(PTE_rw_upage_d.lvl0_w_1);
        }

        xpage_s_d: cross PTE_XnoRW_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_XnoRW_d.lvl3_u);
            ignore_bins ig2 = binsof(PTE_XnoRW_d.lvl3_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_XnoRW_d.lvl2_u);
            ignore_bins ig4 = binsof(PTE_XnoRW_d.lvl2_s) && (binsof(PPN_d.tera_zero) ||  binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_XnoRW_d.lvl1_u);
            ignore_bins ig6 = binsof(PTE_XnoRW_d.lvl1_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_XnoRW_d.lvl0_u);
            ignore_bins ig8 = binsof(PTE_XnoRW_d.lvl0_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }
        xpage_u_d: cross PTE_XnoRW_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_XnoRW_d.lvl3_s);
            ignore_bins ig2 = binsof(PTE_XnoRW_d.lvl3_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_XnoRW_d.lvl2_s);
            ignore_bins ig4 = binsof(PTE_XnoRW_d.lvl2_u) && (binsof(PPN_d.tera_zero) ||  binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_XnoRW_d.lvl1_s);
            ignore_bins ig6 = binsof(PTE_XnoRW_d.lvl1_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_XnoRW_d.lvl0_s);
            ignore_bins ig8 = binsof(PTE_XnoRW_d.lvl0_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }

        Abit_unset_s_i: cross PTE_Abit_unset_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_Abit_unset_i.lvl3_u);
            ignore_bins ig2 = binsof(PTE_Abit_unset_i.lvl3_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_Abit_unset_i.lvl2_u);
            ignore_bins ig4 = binsof(PTE_Abit_unset_i.lvl2_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_Abit_unset_i.lvl1_u);
            ignore_bins ig6 = binsof(PTE_Abit_unset_i.lvl1_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_Abit_unset_i.lvl0_u);
            ignore_bins ig8 = binsof(PTE_Abit_unset_i.lvl0_s) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }
        Abit_unset_u_i: cross PTE_Abit_unset_i, PPN_i  {
            ignore_bins ig1 = binsof(PTE_Abit_unset_i.lvl3_s);
            ignore_bins ig2 = binsof(PTE_Abit_unset_i.lvl3_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_Abit_unset_i.lvl2_s);
            ignore_bins ig4 = binsof(PTE_Abit_unset_i.lvl2_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_Abit_unset_i.lvl1_s);
            ignore_bins ig6 = binsof(PTE_Abit_unset_i.lvl1_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_Abit_unset_i.lvl0_s);
            ignore_bins ig8 = binsof(PTE_Abit_unset_i.lvl0_u) && (binsof(PPN_i.tera_zero) || binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }

        Abit_unset_s_d: cross PTE_Abit_unset_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_Abit_unset_d.lvl3_u);
            ignore_bins ig2 = binsof(PTE_Abit_unset_d.lvl3_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_Abit_unset_d.lvl2_u);
            ignore_bins ig4 = binsof(PTE_Abit_unset_d.lvl2_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_Abit_unset_d.lvl1_u);
            ignore_bins ig6 = binsof(PTE_Abit_unset_d.lvl1_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_Abit_unset_d.lvl0_u);
            ignore_bins ig8 = binsof(PTE_Abit_unset_d.lvl0_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }
        Abit_unset_u_d: cross PTE_Abit_unset_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_Abit_unset_d.lvl3_s);
            ignore_bins ig2 = binsof(PTE_Abit_unset_d.lvl3_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_Abit_unset_d.lvl2_s);
            ignore_bins ig4 = binsof(PTE_Abit_unset_d.lvl2_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_Abit_unset_d.lvl1_s);
            ignore_bins ig6 = binsof(PTE_Abit_unset_d.lvl1_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_Abit_unset_d.lvl0_s);
            ignore_bins ig8 = binsof(PTE_Abit_unset_d.lvl0_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }

        Dbit_set_w_s_d: cross PTE_Dbit_set_W_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.lvl3_u);
            ignore_bins ig2 = binsof(PTE_Dbit_set_W_d.lvl3_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_Dbit_set_W_d.lvl2_u);
            ignore_bins ig4 = binsof(PTE_Dbit_set_W_d.lvl2_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_Dbit_set_W_d.lvl1_u);
            ignore_bins ig6 = binsof(PTE_Dbit_set_W_d.lvl1_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_Dbit_set_W_d.lvl0_u);
            ignore_bins ig8 = binsof(PTE_Dbit_set_W_d.lvl0_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }
        Dbit_set_w_u_d: cross PTE_Dbit_set_W_d, PPN_d  {
            ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.lvl3_s);
            ignore_bins ig2 = binsof(PTE_Dbit_set_W_d.lvl3_u) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_Dbit_set_W_d.lvl2_s);
            ignore_bins ig4 = binsof(PTE_Dbit_set_W_d.lvl2_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_Dbit_set_W_d.lvl1_s);
            ignore_bins ig6 = binsof(PTE_Dbit_set_W_d.lvl1_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig7 = binsof(PTE_Dbit_set_W_d.lvl0_s);
            ignore_bins ig8 = binsof(PTE_Dbit_set_W_d.lvl0_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }

        misaligned_RorX_s_i: cross PTE_RorX_i, misaligned_PPN_i {
            ignore_bins ig1 = binsof(PTE_RorX_i.lvl3_u);
            ignore_bins ig2 = binsof(PTE_RorX_i.lvl3_s) && (binsof(misaligned_PPN_i.giga_not_zero) || (binsof(misaligned_PPN_i.mega_not_zero)));
            ignore_bins ig3 = binsof(PTE_RorX_i.lvl2_u);
            ignore_bins ig4 = binsof(PTE_RorX_i.lvl2_s) && (binsof(misaligned_PPN_i.tera_not_zero) || (binsof(misaligned_PPN_i.mega_not_zero)));
            ignore_bins ig5 = binsof(PTE_RorX_i.lvl1_u);
            ignore_bins ig6 = binsof(PTE_RorX_i.lvl1_s) && (binsof(misaligned_PPN_i.giga_not_zero) || (binsof(misaligned_PPN_i.tera_not_zero)));
        }
        misaligned_RorX_u_i: cross PTE_RorX_i, misaligned_PPN_i {
            ignore_bins ig1 = binsof(PTE_RorX_i.lvl3_s);
            ignore_bins ig2 = binsof(PTE_RorX_i.lvl3_u) && (binsof(misaligned_PPN_i.giga_not_zero) || (binsof(misaligned_PPN_i.mega_not_zero)));
            ignore_bins ig3 = binsof(PTE_RorX_i.lvl2_s);
            ignore_bins ig4 = binsof(PTE_RorX_i.lvl2_u) && (binsof(misaligned_PPN_i.tera_not_zero) || (binsof(misaligned_PPN_i.mega_not_zero)));
            ignore_bins ig5 = binsof(PTE_RorX_i.lvl1_s);
            ignore_bins ig6 = binsof(PTE_RorX_i.lvl1_u) && (binsof(misaligned_PPN_i.giga_not_zero) || (binsof(misaligned_PPN_i.tera_not_zero)));
        }

        misaligned_RorX_s_d: cross PTE_RorX_d, misaligned_PPN_d {
            ignore_bins ig1 = binsof(PTE_RorX_d.lvl3_u);
            ignore_bins ig2 = binsof(PTE_RorX_d.lvl3_s) && (binsof(misaligned_PPN_d.giga_not_zero) || (binsof(misaligned_PPN_d.mega_not_zero)));
            ignore_bins ig3 = binsof(PTE_RorX_d.lvl2_u);
            ignore_bins ig4 = binsof(PTE_RorX_d.lvl2_s) && (binsof(misaligned_PPN_d.tera_not_zero) || (binsof(misaligned_PPN_d.mega_not_zero)));
            ignore_bins ig5 = binsof(PTE_RorX_d.lvl1_u);
            ignore_bins ig6 = binsof(PTE_RorX_d.lvl1_s) && (binsof(misaligned_PPN_d.giga_not_zero) || (binsof(misaligned_PPN_d.tera_not_zero)));
        }
        misaligned_RorX_u_d: cross PTE_RorX_d, misaligned_PPN_d {
            ignore_bins ig1 = binsof(PTE_RorX_d.lvl3_s);
            ignore_bins ig2 = binsof(PTE_RorX_d.lvl3_u) && (binsof(misaligned_PPN_d.giga_not_zero) || (binsof(misaligned_PPN_d.mega_not_zero)));
            ignore_bins ig3 = binsof(PTE_RorX_d.lvl2_s);
            ignore_bins ig4 = binsof(PTE_RorX_d.lvl2_u) && (binsof(misaligned_PPN_d.tera_not_zero) || (binsof(misaligned_PPN_d.mega_not_zero)));
            ignore_bins ig5 = binsof(PTE_RorX_d.lvl1_s);
            ignore_bins ig6 = binsof(PTE_RorX_d.lvl1_u) && (binsof(misaligned_PPN_d.giga_not_zero) || (binsof(misaligned_PPN_d.tera_not_zero)));
        }
        VA: coverpoint dut.core.ifu.immu.immu.tlb.tlb.VAdr[63:39] {
        bins not_zero = {[25'b1:25'b11111_11111_11111_11111_11110]};
        }
    
        canonical_s_i: cross PTE_canonical_i, PPN_i,VA {
            ignore_bins ig1 = binsof(PTE_i.lvl2_u);
            ignore_bins ig2 = binsof(PTE_i.lvl2_s) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_i.lvl1_u);
            ignore_bins ig4 = binsof(PTE_i.lvl1_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_i.lvl0_u);
            ignore_bins ig6 = binsof(PTE_i.lvl0_s) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }

        canonical_u_i: cross PTE_canonical_i, PPN_i, VA {
            ignore_bins ig1 = binsof(PTE_i.lvl2_s);
            ignore_bins ig2 = binsof(PTE_i.lvl2_u) && (binsof(PPN_i.mega_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_i.lvl1_s);
            ignore_bins ig4 = binsof(PTE_i.lvl1_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_i.lvl0_s);
            ignore_bins ig6 = binsof(PTE_i.lvl0_u) && (binsof(PPN_i.giga_zero) || binsof(PPN_i.mega_zero)) ;
        }

        canonical_s_d: cross PTE_canonical_d, PPN_d, VA {
            ignore_bins ig1 = binsof(PTE_d.lvl2_u);
            ignore_bins ig2 = binsof(PTE_d.lvl2_s) && (binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig3 = binsof(PTE_d.lvl1_u);
            ignore_bins ig4 = binsof(PTE_d.lvl1_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) ;
            ignore_bins ig5 = binsof(PTE_d.lvl0_u);
            ignore_bins ig6 = binsof(PTE_d.lvl0_s) && (binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;
        }

        canonical_u_d: cross PTE_canonical_d, PPN_d, VA {
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
            bins sv48   = {4'b1001};
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
        Nopagefault: coverpoint  rvvi.csr[0][0][12'h143] {
            bins no_fault = {64'd0};
        }
        priv_mode: coverpoint rvvi.mode[0][0]{
            bins S_mode = {2'b01};
            bins U_mode = {2'b00};
        }
        sum_sstatus: coverpoint rvvi.csr[0][0][12'h100][18]{
            bins notset = {0};
            bins set = {1};
        }
        mxr_sstatus: coverpoint rvvi.csr[0][0][12'h100][19]{
            bins notset = {0};
            bins set = {1};
        }
    
        invread_s: cross PTE_inv_read_s_d, mode, Scause, read_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.store_amo_fault);
        }
        invread_u: cross PTE_inv_read_u_d, mode, Mcause, read_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.store_amo_fault);
        }

        invwrite_s: cross PTE_inv_write_s_d, mode, Scause, write_acc {
            ignore_bins ig1 = binsof(Scause.load_page_fault);
            ignore_bins ig2 = binsof(Scause.ins_page_fault);
        }
        invwrite_u: cross PTE_inv_write_u_d, mode, Mcause, write_acc {
            ignore_bins ig1 = binsof(Mcause.load_page_fault);
            ignore_bins ig2 = binsof(Mcause.ins_page_fault);
        }

        invexec_s: cross PTE_inv_exec_s_i, mode, Scause, exec_acc {
            ignore_bins ig1 = binsof(Scause.store_amo_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        invexec_u: cross PTE_inv_exec_u_i, mode, Mcause, exec_acc {
            ignore_bins ig1 = binsof(Mcause.store_amo_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        read_res_rwx_s: cross PTE_res_rwx_s_d, mode, Scause, read_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.store_amo_fault);
        }
        read_res_rwx_u: cross PTE_res_rwx_u_d, mode, Mcause, read_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.store_amo_fault);
        }

        write_res_rwx_s: cross PTE_res_rwx_s_d, mode, Scause, write_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        write_res_rwx_u: cross PTE_res_rwx_u_d, mode, Mcause, write_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        exec_res_rwx_s: cross PTE_res_rwx_s_i, mode, Scause, exec_acc {
            ignore_bins ig1 = binsof(Scause.store_amo_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        exec_res_rwx_u: cross PTE_res_rwx_u_i, mode, Mcause, exec_acc {
        ignore_bins ig1 = binsof(Mcause.store_amo_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        nonleaf_lvl0_read_s: cross PTE_nonleaf_lvl0_s_d, mode, Scause, read_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.store_amo_fault);
        }
        nonleaf_lvl0_read_u: cross PTE_nonleaf_lvl0_u_d, mode, Mcause, read_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.store_amo_fault);
        }

        nonleaf_lvl0_write_s: cross PTE_nonleaf_lvl0_s_d, mode, Scause, write_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        nonleaf_lvl0_write_u: cross PTE_nonleaf_lvl0_u_d, mode, Mcause, write_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        nonleaf_lvl0_exec_s: cross PTE_nonleaf_lvl0_s_i, mode, Scause, exec_acc {
            ignore_bins ig1 = binsof(Scause.store_amo_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        nonleaf_lvl0_exec_u: cross PTE_nonleaf_lvl0_u_i, mode, Mcause, exec_acc {
        ignore_bins ig1 = binsof(Mcause.store_amo_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        spage_smode_read_s: cross spage_read_s_d, mode,  Nopagefault, read_acc, priv_mode {
            ignore_bins ig1 =  binsof(priv_mode.U_mode);
        }
        spage_smode_noread_s: cross spage_noread_s_d, mode,  Scause, read_acc, priv_mode {
            ignore_bins ig1 =  binsof(Scause.ins_page_fault);
            ignore_bins ig2 =  binsof(Scause.store_amo_fault);
            ignore_bins ig3 =  binsof(priv_mode.U_mode);
        }

        spage_smode_write_s: cross spage_write_s_d, mode,  Nopagefault, write_acc, priv_mode {
            ignore_bins ig1 =  binsof(priv_mode.U_mode);
        }
        spage_smode_nowrite_s: cross spage_nowrite_s_d, mode,  Scause, write_acc, priv_mode {
            ignore_bins ig1 =  binsof(Scause.ins_page_fault);
            ignore_bins ig2 =  binsof(Scause.load_page_fault);
            ignore_bins ig3 =  binsof(priv_mode.U_mode);
        }

        spage_smode_exec_s: cross spage_exec_s_i, mode,  Nopagefault, exec_acc, priv_mode {
            ignore_bins ig1 =  binsof(priv_mode.U_mode);
        }
        spage_smode_noexec_s: cross spage_noexec_s_i, mode,  Scause, exec_acc, priv_mode {
            ignore_bins ig1 =  binsof(Scause.load_page_fault);
            ignore_bins ig2 =  binsof(Scause.store_amo_fault);
            ignore_bins ig3 =  binsof(priv_mode.U_mode);
        }

        spage_umode_noread_s: cross spage_rwx_s_d, mode,  Mcause, read_acc, priv_mode {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.store_amo_fault);
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }
        spage_umode_nowrite_s: cross spage_rwx_s_d, mode,  Mcause, write_acc, priv_mode {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }
        spage_umode_noexec_s: cross spage_rwx_s_i, mode,  Mcause, exec_acc, priv_mode {
            ignore_bins ig1 = binsof(Mcause.store_amo_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }

        upage_smode_sumunset_noread_s: cross upage_rwx_u_d, mode,  Scause, read_acc, priv_mode , sum_sstatus{
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.store_amo_fault);
            ignore_bins ig3 = binsof(priv_mode.U_mode);
            ignore_bins ig4 = binsof(sum_sstatus.set);
        }
        upage_smode_sumunset_nowrite_s: cross upage_rwx_u_d, mode,  Scause, write_acc, priv_mode, sum_sstatus {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
            ignore_bins ig3 = binsof(priv_mode.U_mode);
            ignore_bins ig4 = binsof(sum_sstatus.set);
        }
        upage_smode_sumunset_noexec_s: cross upage_rwx_u_i, mode,  Scause, exec_acc, priv_mode , sum_sstatus{
            ignore_bins ig1 = binsof(Scause.store_amo_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
            ignore_bins ig3 = binsof(priv_mode.U_mode);
            ignore_bins ig4 = binsof(sum_sstatus.set);
        }

        upage_smode_sumset_noread_s: cross upage_rwx_u_d, mode,  Nopagefault, read_acc, priv_mode , sum_sstatus {
            ignore_bins ig1 = binsof(priv_mode.U_mode);
            ignore_bins ig2 = binsof(sum_sstatus.notset);
        }
        upage_smode_sumset_write_s: cross upage_rwx_u_d, mode,  Nopagefault, write_acc, priv_mode, sum_sstatus {
            ignore_bins ig1 = binsof(priv_mode.U_mode);
            ignore_bins ig2 = binsof(sum_sstatus.notset);
        }
        upage_smode_sumset_noexec_s: cross upage_rwx_u_i, mode,  Scause, exec_acc, priv_mode , sum_sstatus {
            ignore_bins ig1 = binsof(Scause.store_amo_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);       
        }

        upage_umode_read_u: cross upage_read_u_d, mode,  Nopagefault, read_acc, priv_mode {
            ignore_bins ig1 = binsof(priv_mode.S_mode);
        }
        upage_umode_noread_u: cross upage_noread_u_d, mode,  Mcause, read_acc, priv_mode {
            ignore_bins ig1 =  binsof(Mcause.ins_page_fault);
            ignore_bins ig2 =  binsof(Mcause.store_amo_fault);
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }

        upage_umode_write_u: cross upage_write_u_d, mode,  Nopagefault, write_acc, priv_mode {
            ignore_bins ig1 = binsof(priv_mode.S_mode);
        }
        upage_umode_nowrite_u: cross upage_nowrite_u_d, mode,  Mcause, write_acc, priv_mode {
            ignore_bins ig1 =  binsof(Mcause.ins_page_fault);
            ignore_bins ig2 =  binsof(Mcause.load_page_fault);
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }

        upage_umode_exec_u: cross upage_exec_u_i, mode,  Nopagefault, exec_acc, priv_mode {
            ignore_bins ig1 = binsof(priv_mode.S_mode);
        }
        upage_umode_noexec_u: cross upage_noexec_u_i, mode,  Mcause, exec_acc, priv_mode {
            ignore_bins ig1 =  binsof(Mcause.load_page_fault);
            ignore_bins ig2 =  binsof(Mcause.store_amo_fault);
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }

        xpage_mxrunset_read_s: cross xpage_s_d, mode, Scause, read_acc, mxr_sstatus {
            ignore_bins ig1 = binsof(mxr_sstatus.set);
            ignore_bins ig2 = binsof(Scause.ins_page_fault);
            ignore_bins ig3 = binsof(Scause.store_amo_fault);
        }
        xpage_mxrunset_read_u: cross xpage_u_d, mode, Mcause, read_acc, mxr_sstatus {
            ignore_bins ig1 = binsof(mxr_sstatus.set);
            ignore_bins ig2 = binsof(Mcause.ins_page_fault);
            ignore_bins ig3 = binsof(Mcause.store_amo_fault);
        }

        xpage_mxrset_read_s: cross xpage_s_d, mode,  Nopagefault, mxr_sstatus, read_acc {
            ignore_bins ig1 = binsof(mxr_sstatus.notset);
        }
        xpage_mxrset_read_u: cross xpage_u_d, mode,  Nopagefault, mxr_sstatus, read_acc {
            ignore_bins ig1 = binsof(mxr_sstatus.notset);
        }

        Abit_unset_read_s: cross Abit_unset_s_d, mode, Scause, read_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.store_amo_fault);
        }
        Abit_unset_read_u: cross Abit_unset_u_d, mode, Mcause, read_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.store_amo_fault);
        }

        Abit_unset_write_s: cross Abit_unset_s_d, mode, Scause, write_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        Abit_unset_write_u: cross Abit_unset_u_d, mode, Mcause, write_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        Abit_unset_exec_s: cross Abit_unset_s_i, mode, Scause, exec_acc {
            ignore_bins ig1 = binsof(Scause.store_amo_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        Abit_unset_exec_u: cross Abit_unset_u_i, mode, Mcause, exec_acc {
        ignore_bins ig1 = binsof(Mcause.store_amo_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        Dbit_set_w_write_s: cross Dbit_set_w_s_d, mode,  Scause, write_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        Dbit_set_w_write_u: cross Dbit_set_w_u_d, mode,  Mcause, write_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        misaligned_read_s: cross misaligned_RorX_s_d, mode,  Scause, read_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.store_amo_fault);
        }
        misaligned_read_u: cross misaligned_RorX_u_d, mode,  Mcause, read_acc  {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.store_amo_fault);
        }

        misaligned_write_s: cross misaligned_RorX_s_d, mode,  Scause, write_acc  {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        misaligned_write_u: cross misaligned_RorX_u_d, mode,  Mcause, write_acc  {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        misaligned_exec_s: cross misaligned_RorX_s_i, mode,  Scause, exec_acc  {
            ignore_bins ig1 = binsof(Scause.store_amo_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        misaligned_exec_u: cross misaligned_RorX_u_i, mode,  Mcause, exec_acc  {
            ignore_bins ig1 = binsof(Mcause.store_amo_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        read_s: cross canonical_s_d, mode, Scause, read_acc {
        ignore_bins ig1 = binsof(Scause.ins_page_fault);
        ignore_bins ig2 = binsof(Scause.store_amo_fault);
        }
        read_u: cross canonical_u_d, mode, Mcause, read_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.store_amo_fault);
        }

        write_s: cross canonical_s_d, mode, Scause, write_acc {
            ignore_bins ig1 = binsof(Scause.ins_page_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        write_u: cross canonical_u_d, mode, Mcause, write_acc {
            ignore_bins ig1 = binsof(Mcause.ins_page_fault);
            ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }

        exec_s: cross canonical_s_i, mode, Scause, exec_acc {
            ignore_bins ig1 = binsof(Scause.store_amo_fault);
            ignore_bins ig2 = binsof(Scause.load_page_fault);
        }
        exec_u: cross canonical_u_i, mode, Mcause, exec_acc {
        ignore_bins ig1 = binsof(Mcause.store_amo_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        }
    endgroup

    initial begin

        cg_satp      satpCG = new();
        cg_mstatus   mstatus_CG = new(); 
        cg_PMP       pmpCG = new(); 
        cg_sv48      sv48CG = new();

        forever begin

            @(posedge clk iff rvvi.valid[0][0]) begin
                
                satpCG.sample(); 
                mstatus_CG.sample(); 
                pmpCG.sample(); 
                sv48CG.sample();

            end
        end
    end

endmodule