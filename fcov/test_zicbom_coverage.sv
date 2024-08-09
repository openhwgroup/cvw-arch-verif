module test_zicbom_coverage import cvw::*; #(parameter cvw_t P) (input clk);

    rvviTrace #(.XLEN(P.XLEN), .FLEN(P.FLEN)) rvvi();
    wallyTracer #(P) wallyTracer(rvvi);

    covergroup cg_cbo_inval @(posedge clk iff rvvi.valid[0][0]);
        priv_mode: coverpoint rvvi.mode[0][0]{
            bins not_M_mode = {!2'b11};
            bins U_mode = {2'b00};
        }
        menvcfg_cbie: coverpoint rvvi.csr[0][0][12'h30A][5:4]{
            bins insrt_exception = {2'b00};
            bins flush = {2'b01};
            bins inval = {2'b11};
        }
        senvcfg_cbie: coverpoint rvvi.csr[0][0][12'h10A][5:4]{
            bins insrt_exception = {2'b00};
            bins flush = {2'b01};
            bins inval = {2'b11};
        }
        cbo: coverpoint rvvi.insn[0][0] {
            bins inval = {32'b000000000000_?????_010_00000_0001111};
        }
        Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
            bins illegal_ins = {64'd2};
        }
        illegal_ins_exception_m: cross priv_mode, menvcfg_cbie, cbo, Mcause{
            ignore_bins ig1 = binsof(menvcfg_cbie.flush);
            ignore_bins ig2 = binsof(menvcfg_cbie.inval);
            ignore_bins ig3 = binsof(priv_mode.U_mode);
        }
        illegal_ins_exception_s: cross priv_mode, senvcfg_cbie, cbo, Mcause{
            ignore_bins ig1 = binsof(senvcfg_cbie.flush);
            ignore_bins ig2 = binsof(senvcfg_cbie.inval);
            ignore_bins ig3 = binsof(priv_mode.not_M_mode);
        }
        flush_m: cross priv_mode, cbo, menvcfg_cbie {
            ignore_bins ig1 = binsof(menvcfg_cbie.insrt_exception);
            ignore_bins ig2 = binsof(menvcfg_cbie.inval);
            ignore_bins ig3 = binsof(priv_mode.U_mode);
        }
        flush_s: cross priv_mode, cbo, senvcfg_cbie {
            ignore_bins ig1 = binsof(senvcfg_cbie.insrt_exception);
            ignore_bins ig2 = binsof(senvcfg_cbie.inval);
            ignore_bins ig3 = binsof(priv_mode.not_M_mode);
        }
        inval_m: cross priv_mode, cbo, menvcfg_cbie {
            ignore_bins ig1 = binsof(menvcfg_cbie.insrt_exception);
            ignore_bins ig2 = binsof(menvcfg_cbie.flush);
            ignore_bins ig3 = binsof(priv_mode.U_mode);
        }
        inval_s: cross priv_mode, cbo, senvcfg_cbie {
            ignore_bins ig1 = binsof(senvcfg_cbie.insrt_exception);
            ignore_bins ig2 = binsof(senvcfg_cbie.flush);
            ignore_bins ig3 = binsof(priv_mode.not_M_mode);
        }
    endgroup

    covergroup cg_cbo_clean @(posedge clk iff rvvi.valid[0][0]);
        priv_mode: coverpoint rvvi.mode[0][0]{
            bins not_M_mode = {!2'b11};
            bins U_mode = {2'b00};
        }
        menvcfg_cbcfe: coverpoint rvvi.csr[0][0][12'h30A][6]{
            bins set = {1'b1};
            bins not_set = {1'b0};
        }
        senvcfg_cbcfe: coverpoint rvvi.csr[0][0][12'h10A][6]{
            bins set = {1'b1};
            bins not_set = {1'b0};
        }
        cbo: coverpoint rvvi.insn[0][0] {
            bins clean = {32'b000000000001_?????_010_00000_0001111};
        }
        Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
            bins illegal_ins = {64'd2};
        }
        illegal_ins_exception_m: cross priv_mode, menvcfg_cbcfe, cbo, Mcause{
            ignore_bins ig1 = binsof(menvcfg_cbcfe.set);
            ignore_bins ig2 = binsof(priv_mode.U_mode);
        }
        illegal_ins_exception_s: cross priv_mode, senvcfg_cbcfe, cbo, Mcause{
            ignore_bins ig1 = binsof(senvcfg_cbcfe.set);
            ignore_bins ig2 = binsof(priv_mode.not_M_mode);
        }
        clean_m: cross priv_mode, cbo, menvcfg_cbcfe {
            ignore_bins ig1 = binsof(menvcfg_cbcfe.not_set);
            ignore_bins ig2 = binsof(priv_mode.U_mode);
        }
        clean_s: cross priv_mode, cbo, senvcfg_cbcfe {
            ignore_bins ig1 = binsof(senvcfg_cbcfe.not_set);
            ignore_bins ig2 = binsof(priv_mode.not_M_mode);
        }
    endgroup

    covergroup cg_cbo_flush @(posedge clk iff rvvi.valid[0][0]);
        priv_mode: coverpoint rvvi.mode[0][0]{
            bins not_M_mode = {!2'b11};
            bins U_mode = {2'b00};
        }
        menvcfg_cbcfe: coverpoint rvvi.csr[0][0][12'h30A][6]{
            bins set = {1'b1};
            bins not_set = {1'b0};
        }
        senvcfg_cbcfe: coverpoint rvvi.csr[0][0][12'h10A][6]{
            bins set = {1'b1};
            bins not_set = {1'b0};
        }
        cbo: coverpoint rvvi.insn[0][0] {
            bins flush = {32'b000000000010_?????_010_00000_0001111};
        }
        Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
            bins illegal_ins = {64'd2};
        }
        illegal_ins_exception_m: cross priv_mode, menvcfg_cbcfe, cbo, Mcause{
            ignore_bins ig1 = binsof(menvcfg_cbcfe.set);
            ignore_bins ig2 = binsof(priv_mode.U_mode);
        }
        illegal_ins_exception_s: cross priv_mode, senvcfg_cbcfe, cbo, Mcause{
            ignore_bins ig1 = binsof(senvcfg_cbcfe.set);
            ignore_bins ig2 = binsof(priv_mode.not_M_mode);
        }
        flush_m: cross priv_mode, cbo, menvcfg_cbcfe, Mcause {
            ignore_bins ig1 = binsof(menvcfg_cbcfe.not_set);
            ignore_bins ig2 = binsof(priv_mode.U_mode);
        }
        flush_s: cross priv_mode, cbo, senvcfg_cbcfe, Mcause {
            ignore_bins ig1 = binsof(senvcfg_cbcfe.not_set);
            ignore_bins ig2 = binsof(priv_mode.not_M_mode);
        }
    endgroup

    covergroup cg_exceptions_PMP_sv48 @(posedge clk iff rvvi.valid[0][0]);
        
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
        PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[26:0] {
            bins tera_zero = {27'd0};
            wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
            wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
            wildcard bins not_zero = {!27'd0, !27'b???_??????00_00000000_00000000, !27'b???_????????_???????0_00000000}; 
        }
    
        leaf_pte: coverpoint dut.core.lsu.hptw.hptw.LeafPTE{
            bins leaf = {1};
            bins nonleaf = {0};
        }

        PTE_perm_s_d: cross PTE_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d.lvl3_u);
            ignore_bins ig2 = binsof(PTE_d.lvl3_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d.lvl2_u);
            ignore_bins ig4 = binsof(PTE_d.lvl2_s) && ((binsof(PPN_d.tera_zero) ||binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d.lvl1_u);
            ignore_bins ig6 = binsof(PTE_d.lvl1_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig7 = binsof(PTE_d.lvl0_u);
            ignore_bins ig8 = binsof(PTE_d.lvl0_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        PTE_perm_u_d: cross PTE_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d.lvl3_s);
            ignore_bins ig2 = binsof(PTE_d.lvl3_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d.lvl2_s);
            ignore_bins ig4 = binsof(PTE_d.lvl2_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d.lvl1_s);
            ignore_bins ig6 = binsof(PTE_d.lvl1_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig7 = binsof(PTE_d.lvl0_s);
            ignore_bins ig8 = binsof(PTE_d.lvl0_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
            bins set = {1};
        }

        mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
            bins sv48   = {4'b1001};
        }
        Scause: coverpoint  rvvi.csr[0][0][12'h142] {
            bins store_amo_acc = {64'd7};
        }
        Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
            bins store_amo_acc = {64'd7};
        }

        PMP0_PTE: coverpoint  rvvi.csr[0][0][12'h3A0][7:0] {
            wildcard bins nowrite  = {8'b?????101};
        }

        cbo_ins: coverpoint rvvi.insn[0][0] {
            bins any_cbo_ins = {32'b000000000000_?????_010_00000_0001111, 32'b000000000001_?????_010_00000_0001111, 32'b000000000010_?????_010_00000_0001111};
        }

        pmp0_pte_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PTE, Scause, write_acc, cbo_ins;
        pmp0_pte_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PTE, Mcause, write_acc, cbo_ins;

        PMP0_PA: coverpoint  rvvi.csr[0][0][12'h3A0][15:8] {
            wildcard bins nowrite  = {8'b?????101};
        }

        pmp0_PA_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PA, Scause, write_acc, cbo_ins;
        pmp0_PA_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PA, Mcause, write_acc, cbo_ins;
    endgroup

    covergroup cg_exceptions_sv48 @(posedge clk iff rvvi.valid[0][0]);
        
        PTE_d_inv: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            
            wildcard bins lvl3_u_1 = {8'b???10110};
            wildcard bins lvl3_s_1 = {8'b???00110};

            wildcard bins lvl2_u_1 = (8'b???10001 => 8'b???10110);
            wildcard bins lvl2_s_1 = (8'b???00001 => 8'b???00110);

            wildcard bins lvl1_u_1 = (8'b???10001 => 8'b???10001 => 8'b???10110);
            wildcard bins lvl1_s_1 = (8'b???00001 => 8'b???00001 => 8'b???00110);

            wildcard bins lvl0_u_1 = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???10110);
            wildcard bins lvl0_s_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???00110);
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

        PTE_nonleaf_lvl0_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???00001);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???10001);
        }

        PTE_rw_spage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_w_1 = {8'b???0?111};
            wildcard bins lvl3_w_0 = {8'b???0?0?1};

            wildcard bins lvl2_w_0 = (8'b???00001 => 8'b???0?0?1);
            wildcard bins lvl2_w_1 = (8'b???00001 => 8'b???0?111);

            wildcard bins lvl1_w_0 = (8'b???00001 => 8'b???00001 => 8'b???0?0?1);
            wildcard bins lvl1_w_1 = (8'b???00001 => 8'b???00001 => 8'b???0?111);

            wildcard bins lvl0_w_0 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???0?0?1);
            wildcard bins lvl0_w_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???0?111);
        }

        PTE_spage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_s = {8'b???01111};
            wildcard bins lvl2_s = (8'b???00001 => 8'b???01111);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???01111);
        }

        PTE_upage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???11111};
            wildcard bins lvl2_u = (8'b???10001 => 8'b???11111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001 => 8'b???11111);
        }

        PTE_rw_upage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_w_1 = {8'b???1?111};
            wildcard bins lvl3_w_0 = {8'b???1?0?1};

            wildcard bins lvl2_w_0 = (8'b???00001 => 8'b???1?0?1);
            wildcard bins lvl2_w_1 = (8'b???00001 => 8'b???1?111);

            wildcard bins lvl1_w_0 = (8'b???00001 => 8'b???00001 => 8'b???1?0?1);
            wildcard bins lvl1_w_1 = (8'b???00001 => 8'b???00001 => 8'b???1?111);

            wildcard bins lvl0_w_0 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???1?0?1);
            wildcard bins lvl0_w_1 = (8'b???00001 => 8'b???00001 => 8'b???00001 => 8'b???1?111);
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

        PTE_RorX_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl3_u = {8'b???10011, 8'b???11001, 8'b???11011};
            wildcard bins lvl3_s = {8'b???00011, 8'b???01001, 8'b???01011};
            wildcard bins lvl2_u = (8'b???00001 => 8'b???10011, 8'b???11001, 8'b???11011);
            wildcard bins lvl2_s = (8'b???10001 => 8'b???00011, 8'b???01001, 8'b???01011);
            wildcard bins lvl1_u = (8'b???00001 => 8'b???00001 => 8'b???10011, 8'b???11001, 8'b???11011);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???10001 => 8'b???00011, 8'b???01001, 8'b???01011);
        }

        PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[26:0] {
            bins tera_zero = {27'd0};
            wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
            wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
            wildcard bins not_zero = {!27'd0, !27'b???_??????00_00000000_00000000, !27'b???_????????_???????0_00000000}; 
        }

        misaligned_PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[26:0] {
            bins tera_not_zero = {[27'd1:27'd134217727]};
            bins giga_not_zero = {[18'd1:18'd262143]};
            bins mega_not_zero = {[9'd1:9'd511]};
        }
    
        leaf_pte: coverpoint dut.core.lsu.hptw.hptw.LeafPTE{
            bins leaf = {1};
            bins nonleaf = {0};
        }
        non_leaf_pte: coverpoint dut.core.lsu.hptw.hptw.LeafPTE{
            bins nonleaf = {0};
        }

        PTE_inv_write_s_d: cross PTE_d_inv, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d_inv.lvl3_u_1);
            ignore_bins ig2 = binsof(PTE_d_inv.lvl3_s_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
    
            ignore_bins ig3 = binsof(PTE_d_inv.lvl2_u_1);
            ignore_bins ig4 = binsof(PTE_d_inv.lvl2_s_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));

            ignore_bins ig5 = binsof(PTE_d_inv.lvl1_u_1);
            ignore_bins ig6 = binsof(PTE_d_inv.lvl1_s_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));

            ignore_bins ig7 = binsof(PTE_d_inv.lvl0_u_1);
            ignore_bins ig8 = binsof(PTE_d_inv.lvl0_s_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }
        PTE_inv_write_u_d: cross PTE_d_inv, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d_inv.lvl3_s_1);
            ignore_bins ig2 = binsof(PTE_d_inv.lvl3_u_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
    
            ignore_bins ig3 = binsof(PTE_d_inv.lvl2_s_1);
            ignore_bins ig4 = binsof(PTE_d_inv.lvl2_u_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));

            ignore_bins ig5 = binsof(PTE_d_inv.lvl1_s_1);
            ignore_bins ig6 = binsof(PTE_d_inv.lvl1_u_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));

            ignore_bins ig7 = binsof(PTE_d_inv.lvl0_s_1);
            ignore_bins ig8 = binsof(PTE_d_inv.lvl0_u_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        PTE_res_rwx_s_d: cross PTE_d_res_rwx, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d_res_rwx.lvl3_u);
            ignore_bins ig2 = binsof(PTE_d_res_rwx.lvl3_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d_res_rwx.lvl2_u);
            ignore_bins ig4 = binsof(PTE_d_res_rwx.lvl2_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d_res_rwx.lvl1_u);
            ignore_bins ig6 = binsof(PTE_d_res_rwx.lvl1_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig7 = binsof(PTE_d_res_rwx.lvl0_u);
            ignore_bins ig8 = binsof(PTE_d_res_rwx.lvl0_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }
        PTE_res_rwx_u_d: cross PTE_d_res_rwx, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d_res_rwx.lvl3_s);
            ignore_bins ig2 = binsof(PTE_d_res_rwx.lvl3_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d_res_rwx.lvl2_s);
            ignore_bins ig4 = binsof(PTE_d_res_rwx.lvl2_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d_res_rwx.lvl1_s);
            ignore_bins ig6 = binsof(PTE_d_res_rwx.lvl1_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig7 = binsof(PTE_d_res_rwx.lvl0_s);
            ignore_bins ig8 = binsof(PTE_d_res_rwx.lvl0_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        PTE_nonleaf_lvl0_s_d: cross PTE_nonleaf_lvl0_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_u);
            ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));        
        }

        PTE_nonleaf_lvl0_u_d: cross PTE_nonleaf_lvl0_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_s);
            ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));        
        }

        spage_write_s_d: cross PTE_rw_spage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_rw_spage_d.lvl3_w_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_rw_spage_d.lvl3_w_0);
            ignore_bins ig3 = binsof(PTE_rw_spage_d.lvl2_w_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_rw_spage_d.lvl2_w_0);        
            ignore_bins ig5 = binsof(PTE_rw_spage_d.lvl1_w_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig6 = binsof(PTE_rw_spage_d.lvl1_w_0);
            ignore_bins ig7 = binsof(PTE_rw_spage_d.lvl0_w_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
            ignore_bins ig8 = binsof(PTE_rw_spage_d.lvl0_w_0);
        }
        spage_nowrite_s_d: cross PTE_rw_spage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_rw_spage_d.lvl3_w_0) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_rw_spage_d.lvl3_w_1);
            ignore_bins ig3 = binsof(PTE_rw_spage_d.lvl2_w_0) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_rw_spage_d.lvl2_w_1);
            ignore_bins ig5 = binsof(PTE_rw_spage_d.lvl1_w_0) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig6 = binsof(PTE_rw_spage_d.lvl1_w_1);
            ignore_bins ig7 = binsof(PTE_rw_spage_d.lvl0_w_0) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
            ignore_bins ig8 = binsof(PTE_rw_spage_d.lvl0_w_1);
        }

        spage_rwx_s_d: cross PTE_spage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_spage_d.lvl3_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_spage_d.lvl2_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_spage_d.lvl1_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_spage_d.lvl0_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        upage_rwx_u_d: cross PTE_upage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_upage_d.lvl3_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_upage_d.lvl2_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_upage_d.lvl1_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_upage_d.lvl0_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        upage_write_u_d: cross PTE_rw_upage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_rw_upage_d.lvl3_w_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_rw_upage_d.lvl3_w_0);
            ignore_bins ig3 = binsof(PTE_rw_upage_d.lvl2_w_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_rw_upage_d.lvl2_w_0);        
            ignore_bins ig5 = binsof(PTE_rw_upage_d.lvl1_w_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig6 = binsof(PTE_rw_upage_d.lvl1_w_0);
            ignore_bins ig7 = binsof(PTE_rw_upage_d.lvl0_w_1) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
            ignore_bins ig8 = binsof(PTE_rw_upage_d.lvl0_w_0);
        }
        upage_nowrite_u_d: cross PTE_rw_upage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_rw_upage_d.lvl3_w_0) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_rw_upage_d.lvl3_w_1);
            ignore_bins ig3 = binsof(PTE_rw_upage_d.lvl2_w_0) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_rw_upage_d.lvl2_w_1);
            ignore_bins ig5 = binsof(PTE_rw_upage_d.lvl1_w_0) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig6 = binsof(PTE_rw_upage_d.lvl1_w_1);
            ignore_bins ig7 = binsof(PTE_rw_upage_d.lvl0_w_0) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
            ignore_bins ig8 = binsof(PTE_rw_upage_d.lvl0_w_1);
        }

        Abit_unset_s_d: cross PTE_Abit_unset_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_Abit_unset_d.lvl3_u);
            ignore_bins ig2 = binsof(PTE_Abit_unset_d.lvl3_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_Abit_unset_d.lvl2_u);
            ignore_bins ig4 = binsof(PTE_Abit_unset_d.lvl2_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_Abit_unset_d.lvl1_u);
            ignore_bins ig6 = binsof(PTE_Abit_unset_d.lvl1_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig7 = binsof(PTE_Abit_unset_d.lvl0_u);
            ignore_bins ig8 = binsof(PTE_Abit_unset_d.lvl0_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }
        Abit_unset_u_d: cross PTE_Abit_unset_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_Abit_unset_d.lvl3_s);
            ignore_bins ig2 = binsof(PTE_Abit_unset_d.lvl3_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_Abit_unset_d.lvl2_s);
            ignore_bins ig4 = binsof(PTE_Abit_unset_d.lvl2_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_Abit_unset_d.lvl1_s);
            ignore_bins ig6 = binsof(PTE_Abit_unset_d.lvl1_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig7 = binsof(PTE_Abit_unset_d.lvl0_s);
            ignore_bins ig8 = binsof(PTE_Abit_unset_d.lvl0_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        Dbit_set_w_s_d: cross PTE_Dbit_set_W_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.lvl3_u);
            ignore_bins ig2 = binsof(PTE_Dbit_set_W_d.lvl3_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_Dbit_set_W_d.lvl2_u);
            ignore_bins ig4 = binsof(PTE_Dbit_set_W_d.lvl2_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_Dbit_set_W_d.lvl1_u);
            ignore_bins ig6 = binsof(PTE_Dbit_set_W_d.lvl1_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig7 = binsof(PTE_Dbit_set_W_d.lvl0_u);
            ignore_bins ig8 = binsof(PTE_Dbit_set_W_d.lvl0_s) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }
        Dbit_set_w_u_d: cross PTE_Dbit_set_W_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.lvl3_s);
            ignore_bins ig2 = binsof(PTE_Dbit_set_W_d.lvl3_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_Dbit_set_W_d.lvl2_s);
            ignore_bins ig4 = binsof(PTE_Dbit_set_W_d.lvl2_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_Dbit_set_W_d.lvl1_s);
            ignore_bins ig6 = binsof(PTE_Dbit_set_W_d.lvl1_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig7 = binsof(PTE_Dbit_set_W_d.lvl0_s);
            ignore_bins ig8 = binsof(PTE_Dbit_set_W_d.lvl0_u) && ((binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        misaligned_RorX_s_d: cross PTE_RorX_d, misaligned_PPN_d, non_leaf_pte {
            ignore_bins ig1 = binsof(PTE_RorX_d.lvl3_u);
            ignore_bins ig2 = binsof(PTE_RorX_d.lvl3_s) && (binsof(misaligned_PPN_d.giga_not_zero) || (binsof(misaligned_PPN_d.mega_not_zero)));
            ignore_bins ig3 = binsof(PTE_RorX_d.lvl2_u);
            ignore_bins ig4 = binsof(PTE_RorX_d.lvl2_s) && (binsof(misaligned_PPN_d.tera_not_zero) || (binsof(misaligned_PPN_d.mega_not_zero)));
            ignore_bins ig5 = binsof(PTE_RorX_d.lvl1_u);
            ignore_bins ig6 = binsof(PTE_RorX_d.lvl1_s) && (binsof(misaligned_PPN_d.giga_not_zero) || (binsof(misaligned_PPN_d.tera_not_zero)));
        }
        misaligned_RorX_u_d: cross PTE_RorX_d, misaligned_PPN_d, non_leaf_pte {
            ignore_bins ig1 = binsof(PTE_RorX_d.lvl3_s);
            ignore_bins ig2 = binsof(PTE_RorX_d.lvl3_u) && (binsof(misaligned_PPN_d.giga_not_zero) || (binsof(misaligned_PPN_d.mega_not_zero)));
            ignore_bins ig3 = binsof(PTE_RorX_d.lvl2_s);
            ignore_bins ig4 = binsof(PTE_RorX_d.lvl2_u) && (binsof(misaligned_PPN_d.tera_not_zero) || (binsof(misaligned_PPN_d.mega_not_zero)));
            ignore_bins ig5 = binsof(PTE_RorX_d.lvl1_s);
            ignore_bins ig6 = binsof(PTE_RorX_d.lvl1_u) && (binsof(misaligned_PPN_d.giga_not_zero) || (binsof(misaligned_PPN_d.tera_not_zero)));
        }

        write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
            bins set = {1};
        }
        mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
            bins sv48   = {4'b1001};
        }
        Scause: coverpoint  rvvi.csr[0][0][12'h142] {
            bins store_amo_fault = {64'd15};
        }
        Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
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

        cbo_ins: coverpoint rvvi.insn[0][0] {
            bins any_cbo_ins = {32'b000000000000_?????_010_00000_0001111, 32'b000000000001_?????_010_00000_0001111, 32'b000000000010_?????_010_00000_0001111};
        }

        invwrite_s: cross PTE_inv_write_s_d, mode, Scause, write_acc, cbo_ins;
        invwrite_u: cross PTE_inv_write_u_d, mode, Mcause, write_acc, cbo_ins;

        write_res_rwx_s: cross PTE_res_rwx_s_d, mode, Scause, write_acc, cbo_ins;
        write_res_rwx_u: cross PTE_res_rwx_u_d, mode, Mcause, write_acc, cbo_ins;

        nonleaf_lvl0_write_s: cross PTE_nonleaf_lvl0_s_d, mode, Scause, write_acc, cbo_ins;
        nonleaf_lvl0_write_u: cross PTE_nonleaf_lvl0_u_d, mode, Mcause, write_acc, cbo_ins;

        spage_smode_write_s: cross spage_write_s_d, mode,  Nopagefault, write_acc, cbo_ins, priv_mode {
            ignore_bins ig1 =  binsof(priv_mode.U_mode);
        }
        spage_smode_nowrite_s: cross spage_nowrite_s_d, mode,  Scause, write_acc, cbo_ins, priv_mode {
            ignore_bins ig3 =  binsof(priv_mode.U_mode);
        }

        spage_umode_nowrite_s: cross spage_rwx_s_d, mode,  Mcause, write_acc, cbo_ins, priv_mode {
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }

        upage_smode_sumunset_nowrite_s: cross upage_rwx_u_d, mode,  Scause, write_acc, cbo_ins, priv_mode, sum_sstatus {
            ignore_bins ig3 = binsof(priv_mode.U_mode);
            ignore_bins ig4 = binsof(sum_sstatus.set);
        }

        upage_smode_sumset_write_s: cross upage_rwx_u_d, mode,  Nopagefault, write_acc, cbo_ins, priv_mode, sum_sstatus {
            ignore_bins ig1 = binsof(priv_mode.U_mode);
            ignore_bins ig2 = binsof(sum_sstatus.notset);
        }

        upage_umode_write_u: cross upage_write_u_d, mode,  Nopagefault, write_acc, cbo_ins, priv_mode {
            ignore_bins ig1 = binsof(priv_mode.S_mode);
        }
        upage_umode_nowrite_u: cross upage_nowrite_u_d, mode,  Mcause, write_acc, cbo_ins, priv_mode {
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }

        Abit_unset_write_s: cross Abit_unset_s_d, mode, Scause, write_acc, cbo_ins;
        Abit_unset_write_u: cross Abit_unset_u_d, mode, Mcause, write_acc, cbo_ins;

        Dbit_set_w_write_s: cross Dbit_set_w_s_d, mode,  Scause, write_acc, cbo_ins;
        Dbit_set_w_write_u: cross Dbit_set_w_u_d, mode,  Mcause, write_acc, cbo_ins;

        misaligned_write_s: cross misaligned_RorX_s_d, mode,  Scause, write_acc, cbo_ins;
        misaligned_write_u: cross misaligned_RorX_u_d, mode,  Mcause, write_acc, cbo_ins;     
    endgroup

    covergroup cg_exceptions_PMP_sv39 @(posedge clk iff rvvi.valid[0][0]);
        
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
    
        leaf_pte: coverpoint dut.core.lsu.hptw.hptw.LeafPTE{
            bins leaf = {1};
            bins nonleaf = {0};
        }

        PTE_perm_s_d: cross PTE_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d.lvl2_u);
            ignore_bins ig2 = binsof(PTE_d.lvl2_s) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d.lvl1_u);
            ignore_bins ig4 = binsof(PTE_d.lvl1_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d.lvl0_u);
            ignore_bins ig6 = binsof(PTE_d.lvl0_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        PTE_perm_u_d: cross PTE_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d.lvl2_s);
            ignore_bins ig2 = binsof(PTE_d.lvl2_u) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d.lvl1_s);
            ignore_bins ig4 = binsof(PTE_d.lvl1_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d.lvl0_s);
            ignore_bins ig6 = binsof(PTE_d.lvl0_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
            bins set = {1};
        }

        mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
            bins sv39   = {4'b1000};
        }
        Scause: coverpoint  rvvi.csr[0][0][12'h142] {
            bins store_amo_acc = {64'd7};
        }
        Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
            bins store_amo_acc = {64'd7};
        }

        cbo_ins: coverpoint rvvi.insn[0][0] {
            bins any_cbo_ins = {32'b000000000000_?????_010_00000_0001111, 32'b000000000001_?????_010_00000_0001111, 32'b000000000010_?????_010_00000_0001111};
        }

        PMP0_PTE: coverpoint  rvvi.csr[0][0][12'h3A0][7:0] {
            wildcard bins nowrite  = {8'b?????101};
        }

        pmp0_pte_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PTE, Scause, write_acc, cbo_ins;
        pmp0_pte_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PTE, Mcause, write_acc, cbo_ins;

        PMP0_PA: coverpoint  rvvi.csr[0][0][12'h3A0][15:8] {
            wildcard bins nowrite  = {8'b?????101};
        }

        pmp0_PA_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PA, Scause, write_acc, cbo_ins;
        pmp0_PA_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PA, Mcause, write_acc, cbo_ins;
    endgroup

    covergroup cg_exceptions_sv39 @(posedge clk iff rvvi.valid[0][0]);
        
        PTE_d_inv: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {            
            wildcard bins lvl2_u_1 = {8'b???10110};
            wildcard bins lvl2_s_1 = {8'b???00110};
            wildcard bins lvl1_u_1 = (8'b???10001 => 8'b???10110);
            wildcard bins lvl1_s_1 = (8'b???00001 => 8'b???00110);
            wildcard bins lvl0_u_1 = (8'b???10001 => 8'b???10001 => 8'b???10110);
            wildcard bins lvl0_s_1 = (8'b???00001 => 8'b???00001 => 8'b???00110);
        }

        PTE_d_res_rwx: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl2_u = {8'b???1?101};
            wildcard bins lvl2_s = {8'b???0?101};
            wildcard bins lvl1_s = (8'b???00001 => 8'b???0?101);
            wildcard bins lvl1_u = (8'b???10001 => 8'b???1?101);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???0?101);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???1?101);
        }

        PTE_nonleaf_lvl0_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???00001);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???10001);
        }

        PTE_rw_spage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl2_w_1 = {8'b???0?111};
            wildcard bins lvl2_w_0 = {8'b???0?0?1};
            wildcard bins lvl1_w_0 = (8'b???00001 => 8'b???0?0?1);
            wildcard bins lvl1_w_1 = (8'b???00001 => 8'b???0?111);
            wildcard bins lvl0_w_0 = (8'b???00001 => 8'b???00001 => 8'b???0?0?1);
            wildcard bins lvl0_w_1 = (8'b???00001 => 8'b???00001 => 8'b???0?111);
        }

        PTE_spage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl2_s = {8'b???01111};
            wildcard bins lvl1_s = (8'b???00001 => 8'b???01111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b???01111);
        }

        PTE_upage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl2_u = {8'b???11111};
            wildcard bins lvl1_u = (8'b???10001 => 8'b???11111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b???11111);
        }

        PTE_rw_upage_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl2_w_1 = {8'b???1?111};
            wildcard bins lvl2_w_0 = {8'b???1?0?1};
            wildcard bins lvl1_w_0 = (8'b???00001 => 8'b???1?0?1);
            wildcard bins lvl1_w_1 = (8'b???00001 => 8'b???1?111);
            wildcard bins lvl0_w_0 = (8'b???00001 => 8'b???00001 => 8'b???1?0?1);
            wildcard bins lvl0_w_1 = (8'b???00001 => 8'b???00001 => 8'b???1?111);
        }

        PTE_Abit_unset_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl2_u = {8'b?0?11111};
            wildcard bins lvl2_s = {8'b?0?01111};
            wildcard bins lvl1_s = (8'b???00001 => 8'b?0?01111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b?0?11111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b?0?01111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b?0?11111);
        }

        PTE_Dbit_set_W_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl2_u = {8'b01?1?111};
            wildcard bins lvl2_s = {8'b01?0?111};
            wildcard bins lvl1_s = (8'b???00001 => 8'b01?0?111);
            wildcard bins lvl1_u = (8'b???10001 => 8'b01?1?111);
            wildcard bins lvl0_s = (8'b???00001 => 8'b???00001 => 8'b01?0?111);
            wildcard bins lvl0_u = (8'b???10001 => 8'b???10001 => 8'b01?1?111);
        }

        PTE_RorX_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins lvl2_u = {8'b???10011, 8'b???11001, 8'b???11011};
            wildcard bins lvl2_s = {8'b???00011, 8'b???01001, 8'b???01011};
            wildcard bins lvl1_u = (8'b???10001 => 8'b???10011, 8'b???11001, 8'b???11011);
            wildcard bins lvl1_s = (8'b???00001 => 8'b???00011, 8'b???01001, 8'b???01011);
        }

        PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
            bins giga_zero = {18'd0};
            wildcard bins mega_zero = {18'b??_???????0_00000000};
            wildcard bins not_zero = {!18'd0, !18'b??_???????0_00000000}; 
        }

        misaligned_PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[17:0] {
            bins giga_not_zero = {[18'd1:18'd262143]};
            bins mega_not_zero = {[9'd1:9'd511]};
        }
    
        leaf_pte: coverpoint dut.core.lsu.hptw.hptw.LeafPTE{
            bins leaf = {1};
            bins nonleaf = {0};
        }
        non_leaf_pte: coverpoint dut.core.lsu.hptw.hptw.LeafPTE{
            bins nonleaf = {0};
        }

        PTE_inv_write_s_d: cross PTE_d_inv, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d_inv.lvl2_u_1);
            ignore_bins ig2 = binsof(PTE_d_inv.lvl2_s_1) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d_inv.lvl1_u_1);
            ignore_bins ig4 = binsof(PTE_d_inv.lvl1_s_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d_inv.lvl0_u_1);
            ignore_bins ig6 = binsof(PTE_d_inv.lvl0_s_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }
        PTE_inv_write_u_d: cross PTE_d_inv, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d_inv.lvl2_s_1);
            ignore_bins ig2 = binsof(PTE_d_inv.lvl2_u_1) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d_inv.lvl1_s_1);
            ignore_bins ig4 = binsof(PTE_d_inv.lvl1_u_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d_inv.lvl0_s_1);
            ignore_bins ig6 = binsof(PTE_d_inv.lvl0_u_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        PTE_res_rwx_s_d: cross PTE_d_res_rwx, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d_res_rwx.lvl2_u);
            ignore_bins ig2 = binsof(PTE_d_res_rwx.lvl2_s) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d_res_rwx.lvl1_u);
            ignore_bins ig4 = binsof(PTE_d_res_rwx.lvl1_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d_res_rwx.lvl0_u);
            ignore_bins ig6 = binsof(PTE_d_res_rwx.lvl0_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }
        PTE_res_rwx_u_d: cross PTE_d_res_rwx, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_d_res_rwx.lvl2_s);
            ignore_bins ig2 = binsof(PTE_d_res_rwx.lvl2_u) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_d_res_rwx.lvl1_s);
            ignore_bins ig4 = binsof(PTE_d_res_rwx.lvl1_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_d_res_rwx.lvl0_s);
            ignore_bins ig6 = binsof(PTE_d_res_rwx.lvl0_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        PTE_nonleaf_lvl0_s_d: cross PTE_nonleaf_lvl0_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_u);
            ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));        
        }
        PTE_nonleaf_lvl0_u_d: cross PTE_nonleaf_lvl0_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_s);
            ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));        
        }

        spage_write_s_d: cross PTE_rw_spage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_rw_spage_d.lvl2_w_1) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_rw_spage_d.lvl2_w_0);        
            ignore_bins ig3 = binsof(PTE_rw_spage_d.lvl1_w_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_rw_spage_d.lvl1_w_0);
            ignore_bins ig5 = binsof(PTE_rw_spage_d.lvl0_w_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
            ignore_bins ig6 = binsof(PTE_rw_spage_d.lvl0_w_0);
        }
        spage_nowrite_s_d: cross PTE_rw_spage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_rw_spage_d.lvl2_w_0) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_rw_spage_d.lvl2_w_1);
            ignore_bins ig3 = binsof(PTE_rw_spage_d.lvl1_w_0) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_rw_spage_d.lvl1_w_1);
            ignore_bins ig5 = binsof(PTE_rw_spage_d.lvl0_w_0) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
            ignore_bins ig6 = binsof(PTE_rw_spage_d.lvl0_w_1);
        }

        spage_rwx_s_d: cross PTE_spage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_spage_d.lvl2_s) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_spage_d.lvl1_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_spage_d.lvl0_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        upage_rwx_u_d: cross PTE_upage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_upage_d.lvl2_u) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_upage_d.lvl1_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_upage_d.lvl0_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        upage_write_u_d: cross PTE_rw_upage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_rw_upage_d.lvl2_w_1) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_rw_upage_d.lvl2_w_0);        
            ignore_bins ig3 = binsof(PTE_rw_upage_d.lvl1_w_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_rw_upage_d.lvl1_w_0);
            ignore_bins ig5 = binsof(PTE_rw_upage_d.lvl0_w_1) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
            ignore_bins ig6 = binsof(PTE_rw_upage_d.lvl0_w_0);
        }
        upage_nowrite_u_d: cross PTE_rw_upage_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_rw_upage_d.lvl2_w_0) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig2 = binsof(PTE_rw_upage_d.lvl2_w_1);
            ignore_bins ig3 = binsof(PTE_rw_upage_d.lvl1_w_0) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig4 = binsof(PTE_rw_upage_d.lvl1_w_1);
            ignore_bins ig5 = binsof(PTE_rw_upage_d.lvl0_w_0) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
            ignore_bins ig6 = binsof(PTE_rw_upage_d.lvl0_w_1);
        }

        Abit_unset_s_d: cross PTE_Abit_unset_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_Abit_unset_d.lvl2_u);
            ignore_bins ig2 = binsof(PTE_Abit_unset_d.lvl2_s) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_Abit_unset_d.lvl1_u);
            ignore_bins ig4 = binsof(PTE_Abit_unset_d.lvl1_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_Abit_unset_d.lvl0_u);
            ignore_bins ig6 = binsof(PTE_Abit_unset_d.lvl0_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }
        Abit_unset_u_d: cross PTE_Abit_unset_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_Abit_unset_d.lvl2_s);
            ignore_bins ig2 = binsof(PTE_Abit_unset_d.lvl2_u) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_Abit_unset_d.lvl1_s);
            ignore_bins ig4 = binsof(PTE_Abit_unset_d.lvl1_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_Abit_unset_d.lvl0_s);
            ignore_bins ig6 = binsof(PTE_Abit_unset_d.lvl0_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        Dbit_set_w_s_d: cross PTE_Dbit_set_W_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.lvl2_u);
            ignore_bins ig2 = binsof(PTE_Dbit_set_W_d.lvl2_s) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_Dbit_set_W_d.lvl1_u);
            ignore_bins ig4 = binsof(PTE_Dbit_set_W_d.lvl1_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_Dbit_set_W_d.lvl0_u);
            ignore_bins ig6 = binsof(PTE_Dbit_set_W_d.lvl0_s) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }
        Dbit_set_w_u_d: cross PTE_Dbit_set_W_d, PPN_d, leaf_pte {
            ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.lvl2_s);
            ignore_bins ig2 = binsof(PTE_Dbit_set_W_d.lvl2_u) && ((binsof(PPN_d.mega_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig3 = binsof(PTE_Dbit_set_W_d.lvl1_s);
            ignore_bins ig4 = binsof(PTE_Dbit_set_W_d.lvl1_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.not_zero)) || binsof(leaf_pte.leaf));
            ignore_bins ig5 = binsof(PTE_Dbit_set_W_d.lvl0_s);
            ignore_bins ig6 = binsof(PTE_Dbit_set_W_d.lvl0_u) && ((binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) || binsof(leaf_pte.nonleaf));
        }

        misaligned_RorX_s_d: cross PTE_RorX_d, misaligned_PPN_d, non_leaf_pte {
            ignore_bins ig1 = binsof(PTE_RorX_d.lvl2_u);
            ignore_bins ig2 = binsof(PTE_RorX_d.lvl2_s) && (binsof(misaligned_PPN_d.mega_not_zero));
            ignore_bins ig3 = binsof(PTE_RorX_d.lvl1_u);
            ignore_bins ig4 = binsof(PTE_RorX_d.lvl1_s) && (binsof(misaligned_PPN_d.giga_not_zero));
        }
        misaligned_RorX_u_d: cross PTE_RorX_d, misaligned_PPN_d, non_leaf_pte {
            ignore_bins ig1 = binsof(PTE_RorX_d.lvl2_s);
            ignore_bins ig2 = binsof(PTE_RorX_d.lvl2_u) && (binsof(misaligned_PPN_d.mega_not_zero));
            ignore_bins ig3 = binsof(PTE_RorX_d.lvl1_s);
            ignore_bins ig4 = binsof(PTE_RorX_d.lvl1_u) && (binsof(misaligned_PPN_d.giga_not_zero));
        }

        write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
            bins set = {1};
        }
        mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
            bins sv39   = {4'b1000};
        }
        Scause: coverpoint  rvvi.csr[0][0][12'h142] {
            bins store_amo_fault = {64'd15};
        }
        Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
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

        cbo_ins: coverpoint rvvi.insn[0][0] {
            bins any_cbo_ins = {32'b000000000000_?????_010_00000_0001111, 32'b000000000001_?????_010_00000_0001111, 32'b000000000010_?????_010_00000_0001111};
        }

        invwrite_s: cross PTE_inv_write_s_d, mode, Scause, write_acc, cbo_ins;
        invwrite_u: cross PTE_inv_write_u_d, mode, Mcause, write_acc, cbo_ins;

        write_res_rwx_s: cross PTE_res_rwx_s_d, mode, Scause, write_acc, cbo_ins;
        write_res_rwx_u: cross PTE_res_rwx_u_d, mode, Mcause, write_acc, cbo_ins;

        nonleaf_lvl0_write_s: cross PTE_nonleaf_lvl0_s_d, mode, Scause, write_acc, cbo_ins;
        nonleaf_lvl0_write_u: cross PTE_nonleaf_lvl0_u_d, mode, Mcause, write_acc, cbo_ins;

        spage_smode_write_s: cross spage_write_s_d, mode,  Nopagefault, write_acc, cbo_ins, priv_mode {
            ignore_bins ig1 =  binsof(priv_mode.U_mode);
        }
        spage_smode_nowrite_s: cross spage_nowrite_s_d, mode,  Scause, write_acc, cbo_ins, priv_mode {
            ignore_bins ig3 =  binsof(priv_mode.U_mode);
        }

        spage_umode_nowrite_s: cross spage_rwx_s_d, mode,  Mcause, write_acc, cbo_ins, priv_mode {
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }

        upage_smode_sumunset_nowrite_s: cross upage_rwx_u_d, mode,  Scause, write_acc, cbo_ins, priv_mode, sum_sstatus {
            ignore_bins ig3 = binsof(priv_mode.U_mode);
            ignore_bins ig4 = binsof(sum_sstatus.set);
        }

        upage_smode_sumset_write_s: cross upage_rwx_u_d, mode,  Nopagefault, write_acc, cbo_ins, priv_mode, sum_sstatus {
            ignore_bins ig1 = binsof(priv_mode.U_mode);
            ignore_bins ig2 = binsof(sum_sstatus.notset);
        }

        upage_umode_write_u: cross upage_write_u_d, mode,  Nopagefault, write_acc, cbo_ins, priv_mode {
            ignore_bins ig1 = binsof(priv_mode.S_mode);
        }
        upage_umode_nowrite_u: cross upage_nowrite_u_d, mode,  Mcause, write_acc, cbo_ins, priv_mode {
            ignore_bins ig3 = binsof(priv_mode.S_mode);
        }

        Abit_unset_write_s: cross Abit_unset_s_d, mode, Scause, write_acc, cbo_ins;
        Abit_unset_write_u: cross Abit_unset_u_d, mode, Mcause, write_acc, cbo_ins;

        Dbit_set_w_write_s: cross Dbit_set_w_s_d, mode,  Scause, write_acc, cbo_ins;
        Dbit_set_w_write_u: cross Dbit_set_w_u_d, mode,  Mcause, write_acc, cbo_ins;

        misaligned_write_s: cross misaligned_RorX_s_d, mode,  Scause, write_acc, cbo_ins;
        misaligned_write_u: cross misaligned_RorX_u_d, mode,  Mcause, write_acc, cbo_ins;     
    endgroup

    initial begin

        cg_cbo_inval                cbo_invalCG = new();
        cg_cbo_clean                cbo_cleanCG = new();
        cg_cbo_flush                cbo_flushCG = new();
        cg_exceptions_PMP_sv48      exceptions_PMP_sv48CG = new();
        cg_exceptions_sv48          exceptions_sv48CG = new();
        cg_exceptions_PMP_sv39      exceptions_PMP_sv39CG = new();
        cg_exceptions_sv39          exceptions_sv39CG = new();

        forever begin

            @(posedge clk iff rvvi.valid[0][0]) begin
                
                cbo_invalCG.sample(); 
                cbo_cleanCG.sample();
                cbo_flushCG.sample();
                exceptions_PMP_sv48CG.sample();
                exceptions_sv48CG.sample();
                exceptions_PMP_sv39CG.sample();
                exceptions_sv39CG.sample();

            end
        end
    end

endmodule