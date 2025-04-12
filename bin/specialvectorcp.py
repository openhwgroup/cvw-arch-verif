#!/usr/bin/env python3
import os, sys
from os import environ
import math

VLEN = 256
VLMAX = 64

# makes cp_mask_corners.txt
"""    cp_mask_corners : coverpoint unsigned'(ins.prev.v_wdata[0])  iff (ins.trap == 0 & ins.current.vm == 0)  {
        // Corners values of v0 (vector mask register)
        bins zero     = {0};
        bins ones     = {(`VLEN){1'b1}};
        bins walkeodd = {(`VLEN/2){2'b10}};
        bins walkeven = {(`VLEN/2){2'b01}};
        bins vlmaxm1  = {(ins.current.vlmax-1){1'b1}, (`VLEN-ins.current.vlmax+1){1'b0}};
        bins vlmaxd2p1 = {(ins.current.vlmax/2+1){1'b1}, (`VLEN-ins.current.vlmax/2-1){1'b0}};
        wildcard bins random = {(`VLEN/8){8'b????????}};
    }"""
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
pathname = f"{ARCH_VERIF}/templates/coverage/cp_mask_corners.txt"
outfile = open(pathname, 'w')
sys.stdout = outfile
cpmaskhead = """    cp_mask_corners : coverpoint unsigned'(ins.prev.v_wdata[0])  iff (ins.trap == 0 & ins.current.vm == 0)  {
        // Corners values of v0 (vector mask register)
        bins zero     = {0};"""
print(cpmaskhead)
print("        bins ones     = {" + str(VLEN) + "'b" + int(VLEN)*"1" + "};")
print("        bins walkeodd = {" + str(VLEN) + "'b" + int(VLEN/2)*"10" + "};")
print("        bins walkeven = {" + str(VLEN) + "'b" + int(VLEN/2)*"01" + "};")
print("        bins vlmaxm1  = {" + str(VLEN) + "'b" + int(VLMAX-1)*"1" + int(VLEN-VLMAX+1)*"0" + "};")
print("        bins vlmaxd2p1 = {" + str(VLEN) + "'b" + int(VLMAX/2+1)*"1" + int(VLEN-VLMAX/2-1)*"0" + "};")
print("        wildcard bins random = {" + str(VLEN) + "'b" + int(VLEN/8)*"????????" + "};")
print("    }")
outfile.close    


# makes cp_csr_vl.txt
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
pathname = f"{ARCH_VERIF}/templates/coverage/cp_csr_vl.txt"
outfile = open(pathname, 'w')
sys.stdout = outfile
cpvlhead = """    cp_csr_vl : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vl", "vl")  iff (ins.trap == 0 )  {
        // Corners values of VL.vl (vector length)
        bins zero     = {0};"""
cpvlend = """        bins vlenm1   = {`VLEN-1};
        bins vlen     = {`VLEN};
    }"""
print(cpvlhead)
print(cpvlend)
outfile.close


# makes cp_csr_vstart.txt
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
pathname = f"{ARCH_VERIF}/templates/coverage/cp_csr_vstart.txt"
outfile = open(pathname, 'w')
sys.stdout = outfile
cpvstarttwo = """    cp_csr_vstart_two : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart")  iff (ins.trap == 0 )  {
        // Corners values of VSTART.vstart (vector start index)
        bins two     = {2};
        }"""
print(cpvstarttwo)
cpvstartmaxd2p1 = """    cp_csr_vstart_maxd2p1 : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart") == (GETVLMAX/2+1)  iff (ins.trap == 0 )  {
        // Corners values of VSTART.vstart (vector start index)
        bins true = {1};
        }"""
print(cpvstartmaxd2p1)
cpvstartmaxm1 = """    cp_csr_vstart_maxm1 : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart") == (GETVLMAX-1)  iff (ins.trap == 0 )  {
        // Corners values of VSTART.vstart (vector start index)
        bins true = {1};
        }"""
print(cpvstartmaxd2p1)
#print("        bins maxd2p1 = {" + str(int(VLMAX/2+1)) + "};")
#print("        bins maxm1 = {" + str(VLMAX-1) + "};")
#print("    }")
crvstartlmul = """    cr_lmul_vstart : cross cp_csr_vtype_vlmul,cp_csr_vstart  iff (ins.trap == 0 )  {
        //Cross coverage LMUL, vstart
    }"""
print(crvstartlmul)
outfile.close



# makes cp_vs1_vs2_corners.txt
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
pathname = f"{ARCH_VERIF}/templates/coverage/cp_vs1_vs2_corners.txt"
outfile = open(pathname, 'w')
sys.stdout = outfile
cornervals = {
    "zero"     : "{(SEW){1'b0}}",
    "one"      : "{(SEW-1){1'b0}, {1'b1}}",
    "two"      : "{(SEW-2){1'b0}, {2'b10}}",
    "min"      : "{{1'b1}, (SEW-1){1'b0}}",
    "minp1"    : "{{1'b1}, (SEW-2){1'b0}, {1'b1}}",
    "max"      : "{{1'b0}, (SEW-1){1'b1}}",
    "maxm1"    : "{{1'b0}, (SEW-2){1'b1}, {1'b0}}",
    "ones"     : "{(SEW){1'b1}}",
    "onesm1"   : "{(SEW-1){1'b1}, {1'b0}}"#,
    # "walkeodd" = "{(SEW/2){2'b10}}",
    # "walkeven" = "{(SEW/2){2'b01}}",
    # "random"   = "{(SEW/8){4'b1101}, (SEW/8){4'b0110}}"
}
for e1 in cornervals:
    for e2 in cornervals:
        cpcornerhead = "    cp_vs1_vs2_" + e1 + "_" + e2 + " : coverpoint in_vs1_vs2(" + cornervals[e1] + ", " + cornervals[e2] + ")  iff (ins.trap == 0 & ins.current.sew == SEW)  {"
        print(cpcornerhead)
        print("        bins true = {1};")
        print("    }")
        print()
outfile.close


# makes cp_vs2_corners.txt
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
pathname = f"{ARCH_VERIF}/templates/coverage/cp_vs2_corners.txt"
outfile = open(pathname, 'w')
sys.stdout = outfile
cpvs2cornerhead = """    cp_vs2_corners_normal : coverpoint signed'(ins.current.vs2_val[EFFEW-1:0]) iff (ins.trap == 0 & get_vtype_eSEW(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vsew")) == eEFFEW)  {"""
print(cpvs2cornerhead)
print("        bins zero = {0};")
print("        bins one  = {1};")
print("        bins two  = {2};")
print("        bins ones = {-1};")
print("        bins onesm1 = {-2};")
print("    }")
print()
for e1 in cornervals:
    cpvs2cornerhead = """    cp_vs2_corners : coverpoint signed'(ins.current.vs2_val[EFFEW-1:0]) iff (ins.trap == 0 & get_vtype_eSEW(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vsew")) == eEFFEW)  {"""
    print(cpvs2cornerhead)
    print("        bins zero = {0};")
    print("    }")
    print()
outfile.close


# makes cp_vxrm_vs1_vs2_corners.txt
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
pathname = f"{ARCH_VERIF}/templates/coverage/cp_vxrm_vs1_vs2_corners.txt"
outfile = open(pathname, 'w')
sys.stdout = outfile
for e1 in cornervals:
    for e2 in cornervals:
        crvxrmhead = "    cr_vxrm_vs1_vs2_corners_" + e1 + "_" + e2 + " : cross cp_vs1_vs2_" + e1 + "_" + e2 + ",cp_csr_vxrm  iff (ins.trap == 0 )  {"
        print(crvxrmhead)
        print("        bins true = {1};")
        print("    }")
        print()
outfile.close

    