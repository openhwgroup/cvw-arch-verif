#!/usr/bin/env python3
##################################
# covergroupgen.py
#
# David_Harris@hmc.edu 15 August 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate functional covergroups for RISC-V instructions
##################################

import csv
import math
import os
import re
import sys

##################################
# Functions
##################################

# readTestplans iterates over all of the CSV testplan files in the testplans directory
# It poupulates a dictionary of dictionaries with
# the top level key being the architecture (e.g. RV64I)
# the second level key being the instruction mnemonic (e.g. add)
# the value being a list of covergroups for that instruction

def readTestplans():
    testplans = dict()
    archSources = dict()
    coverplanDirs = [(f'{ARCH_VERIF}/testplans', 'unpriv'), (f'{ARCH_VERIF}/testplans/priv', 'priv')]
    for coverplanDir, source in coverplanDirs:
        if not os.path.exists(coverplanDir):
            continue  # Skip missing directories
        for file in os.listdir(coverplanDir):
            if file.endswith(".csv"):
                arch = re.search("(.*).csv", file).group(1)
                #print(os.path.join(coverplanDir, file)+ " " + arch)
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
                            if (type(value) is str and value != ''):
                                if(key == "Type"):
                                    cps.append("sample_" + value)
                                else:
                                    if (value != "x"): # for special entries, append the entry name (e.g. cp_rd_corners becomes cp_rd_corners_lui)
                                        key = key + "_" + value
                                    cps.append(key)
                        tp[instr] = cps
                testplans[arch] = tp
                archSources[arch] = source
                if (arch =="I"): # duplicate I testplan for E
                    testplans["E"] = tp
                    archSources["E"] = source
                if (arch == "Vx"):
                    for effew in ["8", "16", "32", "64"]:
                        testplans["Vx" + effew] = tp
                        archSources["Vx" + effew] = source
                    del testplans["Vx"]
                    del archSources["Vx"]
                if (arch == "Vls"):
                    for effew in ["8", "16", "32", "64"]:
                        testplans["Vls" + effew] = tp
                        archSources["Vls" + effew] = source
                    del testplans["Vls"]
                    del archSources["Vls"]
                if (arch == "Vf"):
                    for effew in ["16", "32", "64"]: # SEW of 8 is not supported for vector floating point
                        testplans["Vf" + effew] = tp
                        archSources["Vf" + effew] = source
                    del testplans["Vf"]
                    del archSources["Vf"]
    return testplans, archSources

# readCovergroupTemplates reads the covergroup templates from the templates directory

def readCovergroupTemplates():
    templateDir = f'{ARCH_VERIF}/templates/coverage'
    covergroupTemplates = dict()
    for file in os.listdir(templateDir):
        if file.endswith(".txt"):
            cg = re.search("(.*).txt", file).group(1)
            with open(os.path.join(templateDir, file)) as f:
                covergroupTemplates[cg] = f.read()
    return covergroupTemplates

# customizeTemplate replaces the placeholders in the covergroup template with the actual values
# and picks from RV32/RV64 as necessary

def customizeTemplate(covergroupTemplates, name, arch, instr, effew=""):
    if (name in covergroupTemplates):
        template = covergroupTemplates[name]
    else:
        if (name not in missingTemplates):
            print(f"No template found for '{name}'.  Check if there are spaces before or after coverpoint name.")
            missingTemplates.append(name)
        return ""
    instr_nodot = instr.replace(".", "_")
    template = template.replace("INSTRNODOT", instr_nodot)
    template = template.replace("INSTR", instr)
    template = template.replace("ARCHUPPER", arch.upper())
    template = template.replace("ARCHCASE", arch)
    template = template.replace("ARCH", arch.lower())
    if (effew != ""):
        template = template.replace("TWOEFFEW", str(2 * int(effew)))
        template = template.replace("EFFEW", str(int(effew)))
        template = template.replace("EFFVSEW", str(int(math.log2(int(effew)))-3))
    return template

# Check if any instruction in this extension is not available in the specified RV32 or RV64
def anyExclusion(rv, instrs, tp):
    for instr in instrs:
        cps = tp[instr]
        if (rv not in cps):
            return True
    return False

def anyEFFEWExclusion(effew, instrs, tp):
    for instr in instrs:
        cps = tp[instr]
        if (effew not in cps):
            return True
    return False

sew_dependent_cps = ["cp_vs2_corners_f", "cp_vs1_corners_f", "cp_custom_shift_wv", "cp_custom_shift_wx", "cp_custom_shift_vv", "cp_custom_shift_vx", "cp_custom_shift_vi",
                     "cp_custom_vindex", "cr_vs2_vs1_corners_f", "cp_fs1_corners_v", "cr_vs2_fs1_corners", "cr_vl_lmul"]

# Write the instruction if it has an x in the listed RV32 and RV64 columns.  When hasRV32/64 is false, the column must be empty
# Thereby group instructions according to which XLEN they are in
def writeInstrs(f, finit, k, covergroupTemplates, tp, arch, hasRV32, hasRV64):
    for instr in k:
        cps = tp[instr]
        match32 = ("RV32" in cps) ^ (not hasRV32)
        match64 = ("RV64" in cps) ^ (not hasRV64)
        vectorwiden = (arch.startswith("Vx") or arch.startswith("Vls") or arch.startswith("Vf")) and (instr.startswith("vw") or instr.startswith("vfw") or (".w" in instr))
        if (match32 and match64):
            if (vectorwiden):
                effew = getEffew(arch)
                f.write(customizeTemplate(covergroupTemplates, "instruction_vector_widen", arch, instr, effew=effew))
                finit.write(customizeTemplate(covergroupTemplates, "init_vector_widen", arch, instr, effew=effew))
            else:
                f.write(customizeTemplate(covergroupTemplates, "instruction", arch, instr))
                finit.write(customizeTemplate(covergroupTemplates, "init", arch, instr))
            for cp in cps:
                if(not (cp.startswith("sample_") or cp == "RV32" or cp == "RV64" or cp.startswith("EFFEW"))): # skip these initial columns
                    if any(substring in cp for substring in sew_dependent_cps):
                        effew = getEffew(arch)
                        cp = cp + "_sew" + effew

                    if "sew_lte" in cp:
                        effew = getEffew(arch)
                        match = re.search(r"(\d+)$", cp)
                        if match:
                            num = int(match.group(1))
                            if (int(effew) <= num): # only_sew8 should only be included if sew = 8
                                cp = re.sub(r"_sew_lte_\d+", "", cp)
                                f.write(customizeTemplate(covergroupTemplates, cp, arch, instr))
                    else:
                        f.write(customizeTemplate(covergroupTemplates, cp, arch, instr))
            if (vectorwiden):
                f.write(customizeTemplate(covergroupTemplates, "endgroup_vector_widen", arch, instr))
            else:
                f.write(customizeTemplate(covergroupTemplates, "endgroup", arch, instr))

def writeCovergroupSampleFunctions(f, k, covergroupTemplates, tp, arch, hasRV32, hasRV64):
    for instr in k:
        cps = tp[instr]
        match32 = ("RV32" in cps) ^ (not hasRV32)
        match64 = ("RV64" in cps) ^ (not hasRV64)
        if (match32 and match64):
            if arch.startswith("Vx") or arch.startswith("Vls") or arch.startswith("Vf"):
                if instr.startswith("vw") or instr.startswith("vfw") or (".w" in instr):
                    effew = getEffew(arch)
                    f.write(customizeTemplate(covergroupTemplates, "covergroup_sample_vector_widen", arch, instr, effew=effew))
                else:
                    f.write(customizeTemplate(covergroupTemplates, "covergroup_sample_vector", arch, instr))
            elif arch != "E": # E currently breaks coverage
                f.write(customizeTemplate(covergroupTemplates, "covergroup_sample", arch, instr))

def writeInstructionSampleFunction(f, k, covergroupTemplates, tp, arch, hasRV32, hasRV64):
    for instr in k:
        cps = tp[instr]
        match32 = ("RV32" in cps) ^ (not hasRV32)
        match64 = ("RV64" in cps) ^ (not hasRV64)
        if (match32 and match64):
            for cp in cps:
                if (cp in cps and cp.startswith("sample_")):
                    f.write(customizeTemplate(covergroupTemplates, cp, arch, instr))

def getEffew(arch):
    match = re.search(r'(\d+)$', arch)
    if match:
        effew = match.group(1)
    else:
        raise ValueError(f"Arch does not contain an expected integer: '{arch}'")

    return effew

# writeCovergroups iterates over the testplans and covergroup templates to generate the covergroups for
# all instructions in each testplan

def writeCovergroups(testPlans, covergroupTemplates, archSources):
    covergroupDir = ARCH_VERIF+'/fcov/'
    with open(os.path.join(covergroupDir,"coverage/RISCV_instruction_sample.svh"), "w") as fsample:
        fsample.write(customizeTemplate(covergroupTemplates, "instruction_sample_header", "NA", "NA"))
        for arch, tp in testPlans.items():
            covergroupSubDir = archSources.get(arch, 'unpriv')
            covergroupOutDir = os.path.join(covergroupDir, covergroupSubDir)
            os.makedirs(covergroupOutDir, exist_ok=True)

            file = arch + "_coverage.svh"
            initfile = arch + "_coverage_init.svh"
            print("***** Writing " + file)

            vector = arch.startswith("Vx") or arch.startswith("Zv") or arch.startswith("Vls") or arch.startswith("Vf")

            with open(os.path.join(covergroupOutDir,file), "w") as f:
                finit = open(os.path.join(covergroupOutDir,initfile), "w")
                #print(covergroupTemplates)
                if (vector):
                    effew = getEffew(arch)
                    f.write(customizeTemplate(covergroupTemplates,"header_vector", arch, "", effew=effew))
                else:
                    f.write(customizeTemplate(covergroupTemplates,"header", arch, ""))
                finit.write(customizeTemplate(covergroupTemplates,"initheader", arch, ""))

                k = list(tp.keys())
                k.sort()
                if (vector):
                    k = [instr for instr in k if f"EFFEW{effew}" in tp[instr]]

                writeInstrs(f, finit, k, covergroupTemplates, tp, arch, True, True)
                if (anyExclusion("RV64", k, tp)):
                    f.write(customizeTemplate(covergroupTemplates, "RV32", arch, "NA1"))
                    finit.write(customizeTemplate(covergroupTemplates, "RV32", arch, "NA1"))
                    writeInstrs(f, finit, k, covergroupTemplates, tp, arch, True, False)
                    f.write(customizeTemplate(covergroupTemplates, "end", arch, "NA1"))
                    finit.write(customizeTemplate(covergroupTemplates, "end", arch, "NA1"))
                if (anyExclusion("RV32", k, tp)):
                    f.write(customizeTemplate(covergroupTemplates, "RV64", arch, "NA2"))
                    finit.write(customizeTemplate(covergroupTemplates, "RV64", arch, "NA2"))
                    writeInstrs(f, finit, k, covergroupTemplates, tp, arch, False, True)
                    f.write(customizeTemplate(covergroupTemplates, "end", arch, "NA2"))
                    finit.write(customizeTemplate(covergroupTemplates, "end", arch, "NA2"))

                # Covergroup sample functions: also separate out generic and ones specific to RV32/RV64 with `ifdefs`
                if (vector):
                    f.write(customizeTemplate(covergroupTemplates, "covergroup_sample_header_vector", arch, "NA3", effew=effew))
                else:
                    f.write(customizeTemplate(covergroupTemplates, "covergroup_sample_header", arch, "NA3"))
                writeCovergroupSampleFunctions(f, k, covergroupTemplates, tp, arch, True, True)
                if (anyExclusion("RV64", k, tp)):
                    f.write(customizeTemplate(covergroupTemplates, "RV32", arch, "NA4"))
                    writeCovergroupSampleFunctions(f, k, covergroupTemplates, tp, arch, True, False)
                    f.write(customizeTemplate(covergroupTemplates, "end", arch, "NA4"))
                if (anyExclusion("RV32", k, tp)):
                    f.write(customizeTemplate(covergroupTemplates, "RV64", arch, "NA5"))
                    writeCovergroupSampleFunctions(f, k, covergroupTemplates, tp, arch, False, True)
                    f.write(customizeTemplate(covergroupTemplates, "end", arch, "NA5"))
                if (vector):
                    f.write(customizeTemplate(covergroupTemplates, "covergroup_sample_end_vector", arch, "NA3"))
                else:
                    f.write(customizeTemplate(covergroupTemplates, "covergroup_sample_end", arch, "NA3"))

                # Instruction sample function: also separate out generic and ones specific to RV32/RV64 with `ifdefs`
                writeInstructionSampleFunction(fsample, k, covergroupTemplates, tp, arch, True, True)
                if (anyExclusion("RV64", k, tp)):
                    fsample.write(customizeTemplate(covergroupTemplates, "RV32", arch, "NA4"))
                    writeInstructionSampleFunction(fsample, k, covergroupTemplates, tp, arch, True, False)
                    fsample.write(customizeTemplate(covergroupTemplates, "end", arch, "NA4"))
                if (anyExclusion("RV32", k, tp)):
                    fsample.write(customizeTemplate(covergroupTemplates, "RV64", arch, "NA5"))
                    writeInstructionSampleFunction(fsample, k, covergroupTemplates, tp, arch, False, True)
                    fsample.write(customizeTemplate(covergroupTemplates, "end", arch, "NA5"))

        fsample.write(customizeTemplate(covergroupTemplates, "instruction_sample_end", "NA", "NA"))

    # Create include files listing all the coverage groups to use in RISCV_coverage_base
    keys = list(testPlans.keys())
    keys.sort()
    # Add priv covergroups to list for initialization and sampling
    keys.extend(f.split("_")[0] for f in os.listdir(f"{covergroupDir}/priv") if f.endswith("_coverage.svh"))
    keys.extend(f.split("_")[0] for f in os.listdir(f"{covergroupDir}/rv32_priv") if f.endswith("_coverage.svh"))
    keys.extend(f.split("_")[0] for f in os.listdir(f"{covergroupDir}/rv64_priv") if f.endswith("_coverage.svh"))
    file = f"{covergroupDir}/coverage/RISCV_coverage_base_init.svh"
    with open(os.path.join(file), "w") as f:
        for arch in keys:
            f.write(customizeTemplate(covergroupTemplates, "coverageinit", arch, ""))
    file = f"{covergroupDir}/coverage/RISCV_coverage_base_sample.svh"
    with open(os.path.join(file), "w") as f:
        for arch in keys:
            f.write(customizeTemplate(covergroupTemplates, "coveragesample", arch, ""))



##################################
# Main Python Script
##################################

if __name__ == '__main__':
    ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
    missingTemplates = list() # keep list of missing templates to only print once
    testPlans, archSources = readTestplans()
    covergroupTemplates = readCovergroupTemplates()
    writeCovergroups(testPlans, covergroupTemplates, archSources)
