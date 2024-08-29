#!/usr/bin/env python3
##################################
# covergroupegen.py
#
# David_Harris@hmc.edu 15 August 2025
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
                    instr = row["Instruction"]
                    cps = []
                    del row["Instruction"]
                    for key, value in row.items():
                        if (value != ''):
                            cps.append(key)
                    tp[instr] = cps
            testplans[arch] = tp
#    print(testplans)
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
    # Select customaizied template for RV32/RV64 if necessary, else use the generic one
    #print("Calling customizeTemplate with name = " + name + " arch = " + arch + " instr = " + instr)
    prefixName = re.search("(RV..)", arch).group(1) + "_" + name
    if (name in covergroupTemplates):
        template = covergroupTemplates[name]
    elif (prefixName in covergroupTemplates):
        template = covergroupTemplates[prefixName]
    else:
        if (not (name in missingTemplates)):
            print("No template found for " + name + " or " + prefixName)
            missingTemplates.append(name)
        return ""
    template = template.replace("INSTR", instr)
    template = template.replace("ARCH", arch)
    return template
     
# writeCovergroups iterates over the testplans and covergroup templates to generate the covergroups for
# all instructions in each testplan

def writeCovergroups(testPlans, covergroupTemplates):
    covergroupDir = WALLY+'/addins/cvw-arch-verif/fcov'
    for arch, tp in testPlans.items():
        subdir = re.search("(RV..)", arch).group(1)
        os.system("mkdir -p " + os.path.join(covergroupDir, subdir))
        file = subdir + "/" + arch + "_coverage.svh"
        print("***** Writing " + file)
        with open(os.path.join(covergroupDir,file), "w") as f:
            #print(covergroupTemplates)
            f.write(customizeTemplate(covergroupTemplates,"header", arch, ""))
            k = list(tp.keys())
            k.sort()
            for instr in k:
                cps = tp[instr]
                f.write(customizeTemplate(covergroupTemplates, "instruction", arch, instr))
                for cp in cps:
                    f.write(customizeTemplate(covergroupTemplates, cp, arch, instr))
                f.write(customizeTemplate(covergroupTemplates, "endgroup", arch, instr))

##################################
# Main Python Script
##################################

WALLY = os.environ.get('WALLY')
missingTemplates = list() # keep list of missing templates to only print once
testPlans = readTestplans()
covergroupTemplates = readCovergroupTemplates()
writeCovergroups(testPlans, covergroupTemplates)

# TODO:
#Complete missing templates
#Review .csv testplans



