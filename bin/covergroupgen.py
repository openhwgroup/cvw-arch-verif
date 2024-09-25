#!/usr/bin/env python3
##################################
# covergroupegen.py
#
# David_Harris@hmc.edu 15 August 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate functional covergroups for RISC-V instructions
##################################

import os
import csv
import re

##################################
# Functions
##################################

# readTestplans iterates over all of the CSV testplan files in the testplans directory
# It poupulates a dictionary of dictionaries with 
# the top level key being the architecture (e.g. RV64I)
# the second level key being the instruction mnemonic (e.g. add)
# the value being a list of covergroups for that instruction

def readTestplans():
    coverplanDir = WALLY+'/addins/cvw-arch-verif/testplans'
    testplans = dict()
    for file in os.listdir(coverplanDir):
        if file.endswith(".csv"):
            arch = re.search("(.*).csv", file).group(1)
            print(os.path.join(coverplanDir, file)+ " " + arch)
            with open(os.path.join(coverplanDir, file)) as csvfile:
                reader = csv.DictReader(csvfile)
                tp = dict()
                for row in reader:
                    #print(f"row = {row}")
                    if ("Instruction" not in row):
                        print("Error reading testplan "+ file+".  Did you remember to shrink the .csv files after expanding?")
                        exit(1)
                    instr = row["Instruction"]
                    cps = []
                    del row["Instruction"]
                    for key, value in row.items():
#                        print(f"Instr = {instr} key = {key}, value = {value} file = {file}")
                        if (type(value) == str and value != ''):
                            if(key == "Type"):
                                cps.append("sample_" + value)
                            else: cps.append(key)
                    tp[instr] = cps
            testplans[arch] = tp
    #print(testplans["RV32I"])
    return testplans

# readCovergroupTemplates reads the covergroup templates from the templates directory

def readCovergroupTemplates():
    templateDir = WALLY+'/addins/cvw-arch-verif/templates'
    covergroupTemplates = dict()
    for file in os.listdir(templateDir):
        if file.endswith(".txt"):
            cg = re.search("(.*).txt", file).group(1)
            with open(os.path.join(templateDir, file)) as f:
                covergroupTemplates[cg] = f.read()
    return covergroupTemplates

# customizeTemplate replaces the placeholders in the covergroup template with the actual values
# and picks from RV32/RV64 as necessary

def customizeTemplate(covergroupTemplates, name, arch, instr):
    # Select customized template for RV32/RV64 if necessary, else use the generic one
    #print("Calling customizeTemplate with name = " + name + " arch = " + arch + " instr = " + instr)
    prefixName = re.search("(RV..)", arch).group(1) + "_" + name
    if (prefixName in covergroupTemplates):
        template = covergroupTemplates[prefixName]
    elif (name in covergroupTemplates):
        template = covergroupTemplates[name]
    else:
        if (not (name in missingTemplates)):
            print("No template found for " + name + " or " + prefixName)
            missingTemplates.append(name)
        return ""
    instr_nodot = instr.replace(".", "_")
    template = template.replace("INSTRNODOT", instr_nodot)
    template = template.replace("INSTR", instr)
    template = template.replace("ARCHUPPER", arch.upper())
    template = template.replace("ARCHCASE", arch)
    template = template.replace("ARCH", arch.lower())
    # When 'addi' has imm=0, the assembler optimizes it to 'mv', causing the covergroup to miss it.
    # To ensure full coverage, we add 'mv' along with 'addi' in the covergroup.
    if name.startswith('sample_') and instr == 'addi': 
        template += template.replace(instr, 'mv', 1)    
    if name.startswith('sample_') and instr == 'beq': 
        template += template.replace(instr, 'beqz', 1).replace("add_rs2", "add_rs2_0", 1)  
    if name.startswith('sample_') and instr == 'jal': 
        template += template.replace(instr, 'j', 1).replace("add_rd", "add_rd_0", 1) 
    return template

     
# writeCovergroups iterates over the testplans and covergroup templates to generate the covergroups for
# all instructions in each testplan

def writeCovergroups(testPlans, covergroupTemplates):
    covergroupDir = WALLY+'/addins/cvw-arch-verif/fcov'
    for arch, tp in testPlans.items():
        subdir = re.search("(RV..)", arch).group(1).lower()
        #subdir = os.path.join(subdir, "coverage")
        os.system("mkdir -p " + os.path.join(covergroupDir, subdir))
        file = subdir + "/" + arch + "_coverage.svh"
        initfile = subdir + "/" + arch + "_coverage_init.svh"
        print("***** Writing " + file)
        with open(os.path.join(covergroupDir,file), "w") as f:
            finit = open(os.path.join(covergroupDir,initfile), "w")
            #print(covergroupTemplates)
            f.write(customizeTemplate(covergroupTemplates,"header", arch, ""))
            finit.write(customizeTemplate(covergroupTemplates,"initheader", arch, ""))
            k = list(tp.keys())
            k.sort()
            for instr in k:
                cps = tp[instr]
                f.write(customizeTemplate(covergroupTemplates, "instruction", arch, instr))
                finit.write(customizeTemplate(covergroupTemplates, "init", arch, instr))
                for cp in cps:
                    if(not cp.startswith("sample_")):
                        f.write(customizeTemplate(covergroupTemplates, cp, arch, instr))
                f.write(customizeTemplate(covergroupTemplates, "endgroup", arch, instr))
            # Sample functions
            # Use a custom template if it exists (particularly for Zc*).  Autogenerate others
            customTemplate = "sample_"+arch
            #print("Searching for custom template " + customTemplate)
            if (customTemplate in covergroupTemplates):
                f.write(customizeTemplate(covergroupTemplates, customTemplate, arch, "NotApplicable"))
            else:
                f.write(customizeTemplate(covergroupTemplates, "sample_header", arch, instr))
                for instr in k:
                    cps = tp[instr]
                    for cp in cps:
                        if(cp.startswith("sample_")):
                            f.write(customizeTemplate(covergroupTemplates, cp, arch, instr))
                f.write(customizeTemplate(covergroupTemplates, "sample_end", arch, instr))
    # Create include files listing all the coverage groups to use in RISCV_coverage_base
    keys = list(testPlans.keys())
    keys.sort()
    file = "coverage/RISCV_coverage_base_init.svh"
    with open(os.path.join(covergroupDir,file), "w") as f:
        for arch in keys:
            f.write(customizeTemplate(covergroupTemplates, "coverageinit", arch, ""))
    file = "coverage/RISCV_coverage_base_sample.svh"
    with open(os.path.join(covergroupDir,file), "w") as f:
        for arch in keys:
            f.write(customizeTemplate(covergroupTemplates, "coveragesample", arch, ""))


    

##################################
# Main Python Script
##################################

if __name__ == '__main__':
    WALLY = os.environ.get('WALLY')
    missingTemplates = list() # keep li st of missing templates to only print once
    testPlans = readTestplans()
    covergroupTemplates = readCovergroupTemplates()
    writeCovergroups(testPlans, covergroupTemplates)

    # TODO:
    #Complete missing templates
    #Review .csv testplans
