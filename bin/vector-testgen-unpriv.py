#!/usr/bin/env python3

##################################
# vector-testgen-unpriv.py
#
# James Kaden Cassidy jacassidy@g.hmc.edu June 26 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate directed tests for functional coverage
##################################

##################################
# libraries
##################################
import os
import sys
import re
import math
import filecmp
from datetime import datetime
from random import randint, seed, getrandbits

from vector_testgen_common import *
import vector_testgen_common as common

def writeLine(argument: str, comment = ""):
  tab_over_distance = 50

  argument = str(argument)

  if comment != "":
    padding = max(0, tab_over_distance - len(argument))
    comment = " " * padding + str(comment)

  f.write(argument + comment +"\n")

def make_custom(test, xlen):
    insertTemplate(test, f"{test}.S")

def make_vd(instruction, sew, rng):

  for v in rng:
    description = f"cp_vd (Test destination vd = v" + str(v) + ")"
    instruction_data = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vd = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()
    vsAddressCount()

def make_vs3(instruction, sew, rng):

  for v in rng:
    description = f"cp_vs2 (Test source vs3 = v" + str(v) + ")"
    instruction_data = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs3 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()
    vsAddressCount()

def make_vs2(instruction, sew, rng):

  for v in rng:
    description = f"cp_vs2 (Test source vs2 = v" + str(v) + ")"
    instruction_data = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs2 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()
    vsAddressCount()

def make_vs1(instruction, sew, rng):

  for v in rng:
    description       = f"cp_vs1 (Test source vs1 = v" + str(v) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs1 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()
    vsAddressCount()

def make_vd_vs2(instruction, sew, rng):

  for v in rng:
    description = f"cmp_vd_vs2 (Test vd = vs2 = v{v})"
    instruction_data = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vd = v, vs2 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()
    vsAddressCount()

def make_vd_vs1(instruction, sew, rng):

  for v in rng:
    description       = f"cmp_vd_vs1 (Test vd = vs1 = v" + str(v) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vd = v, vs1 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()
    vsAddressCount()

def make_vd_vs1_vs2(instruction, sew, rng):

  for v in rng:
    description       = f"cmp_vd_vs1_vs2 (Test vd = vs1 = vs2 = v" + str(v) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vd = v, vs1 = v, vs2 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()
    vsAddressCount()

def make_vs1_vs2(instruction, sew, rng):

  for v in rng:
    description       = f"cmp_vs1_vs2 (Test vs1 = vs2 = v" + str(v) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs1 = v, vs2 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()
    vsAddressCount()

def make_rs1_v(instruction, sew, rng):

  for r in rng:
    description       = f"cp_rs1 (Test rs1 = " + str(r) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), rs1 = r)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()

def make_imm_v(instruction, sew):

  if (test in imm_31):
    for uimm in range(0,32):
      description       = "cp_imm_5bit_u (Test uimm = " + str(uimm) + ")"
      instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), imm = uimm)

      writeTest(description, instruction, instruction_data, sew=sew)
      incrementBasetestCount()
  else:
    for imm in range(-16,16):
      description       = "cp_imm_5bit (Test imm = " + str(imm) + ")"
      instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), imm = imm)

      writeTest(description, instruction, instruction_data, sew=sew)
      incrementBasetestCount()

def make_rdv(instruction, sew, rng):

  for r in rng:
    description       = "cp_rd (Test rd = " + str(r) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), rd = r)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()
    vsAddressCount()

def make_vs2_corners(instruction, sew, vcorners, vl=1):

  for v in vcorners:
    description       = f"cp_vs2_corners (Test source vs2 value = " + v + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs2_val_pointer = v)

    writeTest(description, instruction, instruction_data, sew=sew, vl=vl)
    incrementBasetestCount()

def make_vs1_corners(instruction, sew, vcorners, vl=1):

  for v in vcorners:
    description       = f"cp_vs1_corners (Test source vs1 value = " + v + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs1_val_pointer = v)

    writeTest(description, instruction, instruction_data, sew=sew, vl=vl)
    incrementBasetestCount()

def make_rs1_corners_v(instruction, sew, rng):

  for rcorner in rcornersv:
    description       = f"cp_rs1_corners (Test source rs1 value = " + hex(rcorner) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), rs1_val = rcorner)

    writeTest(description, instruction, instruction_data, sew=sew)
    incrementBasetestCount()

def make_vs2_vs1_corners(instruction, sew, vs2corners, vs1corners, vl=1):
  for v1 in vs1corners:
    for v2 in vs2corners:
      description = "cr_vs2_vs1_corners"
      instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs1_val_pointer = v1, vs2_val_pointer = v2, additional_no_overlap=[['vs1', 'vs2']])

      writeTest(description, instruction, instruction_data, sew=sew, vl=vl)

def make_vs2_rs1_corners(instruction, sew, vs2corners):
  for r1 in rcornersv:
    for v2 in vs2corners:
      description = "cr_vs2_rs1_corners"
      instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs2_val_pointer = v2, rs1_val = r1)

      writeTest(description, instruction, instruction_data, sew=sew)

def make_vs2_imm_corners(instruction, sew, vs2corners):
  for imm in immcornersv:
    for v2 in vs2corners:
      description = "cr_vs2_imm_corners"
      instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs2_val_pointer = v2, imm = imm)

      writeTest(description, instruction, instruction_data, sew=sew)

def make_vxrm_vs2_vs1_corners(instruction, sew, vs2corners, vs1corners):
  for vxrm in vxrmList:
    for v1 in vs1corners:
      for v2 in vs2corners:
        description = "cr_vxrm_vs2_vs1_corners (Test vxrm = " + vxrm + ")"
        instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs2_val_pointer = v2, vs1_val_pointer = v1, additional_no_overlap=[['vs1','vs2']])

        writeTest(description, instruction, instruction_data, sew=sew, vxrm=vxrm)

def make_vxrm_vs2_rs1_corners(instruction, sew, vs2corners):
  for vxrm in vxrmList:
    for r1 in rcornersv:
      for v2 in vs2corners:
        description = "cr_vxrm_vs2_rs1_corners (Test vxrm = " + vxrm + ")"
        instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs2_val_pointer = v2, rs1_val = r1)

        writeTest(description, instruction, instruction_data, sew=sew, vxrm=vxrm)

def make_vxrm_vs2_imm_corners(instruction, sew, vs2corners):
  for vxrm in vxrmList:
    for imm in immcornersv:
      for v2 in vs2corners:
        description = "cr_vxrm_vs2_imm_corners (Test vxrm = " + vxrm + ")" + str(imm)
        instruction_data  = randomizeVectorInstructionData(instruction, sew, getBaseSuiteTestCount(), vs2_val_pointer = v2, imm = imm)

        writeTest(description, instruction, instruction_data, sew=sew, vxrm=vxrm)

##################################### length suite (vl!=1) test generation #####################################

def make_vl_lmul(instruction, sew, maxlmul=8):
  global legalvlmuls

  numlmul = int(math.log2(maxlmul))
  minlmul = min(legalvlmuls)
  for l in range(minlmul, numlmul+1):
    for k in range(3):
      lmul = 2 ** l # creating lmul first

      vlval = ["vlmax", 1, "random"]
      vl = vlval[k]
      vta = randint(0,1)

      maskval = randomizeMask(test)
      no_overlap = [['vs1', 'v0'], ['vs2', 'v0'], ['vd', 'v0']] if maskval is not None else None

      description = f"cr_vl_lmul (Test lmul = {lmul}, vl = {vl})"
      instruction_data  = randomizeVectorInstructionData(instruction, sew, getLengthSuiteTestCount(), suite="length", lmul = lmul, additional_no_overlap=no_overlap)

      writeTest(description, instruction, instruction_data, sew=sew, lmul=lmul, vl=vl, maskval=maskval, vta=vta)
      incrememntLengthtestCount()
      vsAddressCount("length")

def make_mask_corners(instruction, sew):
  vma = randint(0,1)
  cp_masking_corners_data = ["ones", "zeroes", "vlmaxm1_ones", "vlmaxd2p1_ones", "cp_mask_random"]

  for m in cp_masking_corners_data:
    vma = randint(0,1)

    description = f"cp_masking_corners (Test v0 = {m})"
    instruction_data  = randomizeVectorInstructionData(instruction, sew, getLengthSuiteTestCount(), suite="length", additional_no_overlap=[['vs1', 'v0'], ['vs2', 'v0'], ['vd', 'v0']])

    writeTest(description, instruction, instruction_data, sew=sew, vl="vlmax", maskval=m, vma=vma)
    incrememntLengthtestCount()
    vsAddressCount("length")

def make_vtype_agnostic(instruction, sew, maxlmul=8):
  global legalvlmuls
  for t in [0,1]:
    for m in [0,1]:
      lmul = 2 ** randint(0, int(math.log2(maxlmul))) # pick random integer LMUL to ensure that coverpoints are hit

      maskval = randomizeMask(instruction)
      no_overlap = [['vs1', 'v0'], ['vs2', 'v0'], ['vd', 'v0']] if maskval is not None else None
      vta = t
      vma = m

      description = f"cr_vtype_agnostic (Test vta = {vta}, vma = {vma})"
      instruction_data  = randomizeVectorInstructionData(instruction, sew, getLengthSuiteTestCount(), suite="length", lmul = lmul, additional_no_overlap=no_overlap)

      writeTest(description, instruction, instruction_data, sew=sew, lmul=lmul, vl="random", maskval=maskval, vta=vta, vma=vma)
      incrememntLengthtestCount()
      vsAddressCount("length")

#####################################           test generation           #####################################

def makeTest(coverpoints, test, sew=None):
  global NaNBox_tests
  # default vl and lmul settings for base suite
  for coverpoint in coverpoints:
    # produce a deterministic seed for repeatable random numbers distinct for each instruction and coverpoint
    testname = test + coverpoint
    hashval = myhash(testname)
    # hashval = hash(testname) # doesn't work because of Python hash randomization
    seed(hashval)
    #seed(hash(test + coverpoint))
    ############################# base suite #############################
    if   coverpoint == "cp_asm_count"                 : pass
    elif coverpoint == "cp_rd"                        : make_rdv(test, sew, range(xreg_count))
    elif coverpoint == "cp_rs1"                       : make_rs1_v(test, sew, range(xreg_count))
    elif coverpoint == "cp_rs1_nx0"                   : make_rs1_v(test, sew, range(1, xreg_count))
    elif coverpoint == "cp_imm_5bit"                  : make_imm_v(test, sew)
    elif coverpoint == "cp_imm_5bit_u"                : make_imm_v(test, sew)
    elif coverpoint == "cp_vd"                        : make_vd(test, sew, range(vreg_count))
    elif coverpoint == "cp_vd_lte30"                  : make_vd(test, sew, range(vreg_count-1))
    elif coverpoint == "cp_vd_lte29"                  : make_vd(test, sew, range(vreg_count-2))
    elif coverpoint == "cp_vd_lte28"                  : make_vd(test, sew, range(vreg_count-3))
    elif coverpoint == "cp_vd_lte27"                  : make_vd(test, sew, range(vreg_count-4))
    elif coverpoint == "cp_vd_lte26"                  : make_vd(test, sew, range(vreg_count-5))
    elif coverpoint == "cp_vd_lte25"                  : make_vd(test, sew, range(vreg_count-6))
    elif coverpoint == "cp_vd_lte24"                  : make_vd(test, sew, range(vreg_count-7))
    elif coverpoint == "cp_vd_nv0"                    : make_vd(test, sew, range(1,vreg_count))
    elif coverpoint == "cp_vd_emul2"                  : make_vd(test, sew, range(0,vreg_count,2))
    elif coverpoint == "cp_vd_emul4"                  : make_vd(test, sew, range(0,vreg_count,4))
    elif coverpoint == "cp_vd_emul8"                  : make_vd(test, sew, range(0,vreg_count,8))
    elif coverpoint == "cp_vs3"                       : make_vs3(test, sew, range(vreg_count))
    elif coverpoint == "cp_vs3_emul2"                 : make_vs3(test, sew, range(0,vreg_count,2))
    elif coverpoint == "cp_vs3_emul4"                 : make_vs3(test, sew, range(0,vreg_count,4))
    elif coverpoint == "cp_vs3_emul8"                 : make_vs3(test, sew, range(0,vreg_count,8))
    elif coverpoint == "cp_vs2"                       : make_vs2(test, sew, range(vreg_count))
    elif coverpoint == "cp_vs2_nv0"                   : make_vs2(test, sew, range(1,vreg_count))
    elif coverpoint == "cp_vs2_emul2"                 : make_vs2(test, sew, range(0,vreg_count,2))
    elif coverpoint == "cp_vs2_emul4"                 : make_vs2(test, sew, range(0,vreg_count,4))
    elif coverpoint == "cp_vs2_emul8"                 : make_vs2(test, sew, range(0,vreg_count,8))
    elif coverpoint == "cp_vs1"                       : make_vs1(test, sew, range(vreg_count))
    elif coverpoint == "cp_vs1_nv0"                   : make_vs1(test, sew, range(1,vreg_count))
    elif coverpoint == "cp_vs1_emul2"                 : make_vs1(test, sew, range(0,vreg_count,2))
    elif coverpoint == "cmp_vd_vs2"                   : make_vd_vs2(test, sew, range(vreg_count))
    elif coverpoint == "cmp_vd_vs2_nv0"               : make_vd_vs2(test, sew, range(1,vreg_count))
    elif coverpoint == "cmp_vd_vs2_emul2"             : make_vd_vs2(test, sew, range(0,vreg_count,2))
    elif coverpoint == "cmp_vd_vs2_emul4"             : make_vd_vs2(test, sew, range(0,vreg_count,4))
    elif coverpoint == "cmp_vd_vs2_emul8"             : make_vd_vs2(test, sew, range(0,vreg_count,8))
    elif coverpoint == "cmp_vd_vs1"                   : make_vd_vs1(test, sew, range(vreg_count))
    elif coverpoint == "cmp_vd_vs1_nv0"               : make_vd_vs1(test, sew, range(1,vreg_count))
    elif coverpoint == "cmp_vd_vs1_emul2"             : make_vd_vs1(test, sew, range(0,vreg_count,2))
    elif coverpoint == "cmp_vs1_vs2"                  : make_vs1_vs2(test, sew, range(vreg_count))
    elif coverpoint == "cmp_vs1_vs2_nv0"              : make_vs1_vs2(test, sew, range(1,vreg_count))
    elif coverpoint == "cmp_vd_vs1_vs2"               : make_vd_vs1_vs2(test, sew, range(vreg_count))
    elif coverpoint == "cmp_vd_vs1_vs2_nv0"           : make_vd_vs1_vs2(test, sew, range(1,vreg_count))
    elif coverpoint == "cp_vs2_corners"               : make_vs2_corners(test, sew, vcornersemul1)
    elif coverpoint == "cp_vs2_corners_emul2"         : make_vs2_corners(test, sew, vcornersemul2)
    elif coverpoint == "cp_vs2_corners_emul4"         : make_vs2_corners(test, sew, vcornersemul4)
    elif coverpoint == "cp_vs2_corners_emul8"         : make_vs2_corners(test, sew, vcornersemul8)
    elif coverpoint == "cp_vs2_corners_emulf2"        : make_vs2_corners(test, sew, vcornersemulf2)
    elif coverpoint == "cp_vs2_corners_emulf4"        : make_vs2_corners(test, sew, vcornersemulf4)
    elif coverpoint == "cp_vs2_corners_emulf8"        : make_vs2_corners(test, sew, vcornersemulf8)
    elif coverpoint == "cp_vs2_corners_eew1"          : make_vs2_corners(test, sew, vcornerseew1, vl=8)  # assume vl = 8 for mask logical instr
    elif coverpoint == "cp_vs2_corners_ls"            : make_vs2_corners(test, sew, v_corners_ls)
    elif coverpoint == "cp_vs1_corners"               : make_vs1_corners(test, sew, vcornersemul1)
    elif coverpoint == "cp_vs1_corners_emul2"         : make_vs1_corners(test, sew, vcornersemul2)
    elif coverpoint == "cp_vs1_corners_eew1"          : make_vs1_corners(test, sew, vcornerseew1, vl=8)  # assume vl = 8 for mask logical instr
    elif coverpoint == "cp_rs1_corners"               : make_rs1_corners_v(test, sew, range(xreg_count))
    elif coverpoint == "cr_vs2_vs1_corners"           : make_vs2_vs1_corners(test, sew, vcornersemul1, vcornersemul1)
    elif coverpoint == "cr_vs2_vs1_corners_wv"        : make_vs2_vs1_corners(test, sew, vcornersemul2, vcornersemul1)
    elif coverpoint == "cr_vs2_vs1_corners_wred"      : make_vs2_vs1_corners(test, sew, vcornersemul1, vcornersemul2)
    elif coverpoint == "cr_vs2_vs1_corners_mm"        : make_vs2_vs1_corners(test, sew, vcornerseew1, vcornerseew1, vl=8)
    elif coverpoint == "cr_vs2_rs1_corners"           : make_vs2_rs1_corners(test, sew, vcornersemul1)
    elif coverpoint == "cr_vs2_rs1_corners_wx"        : make_vs2_rs1_corners(test, sew, vcornersemul2)
    elif coverpoint == "cr_vs2_imm_corners"           : make_vs2_imm_corners(test, sew, vcornersemul1)
    elif coverpoint == "cr_vs2_imm_corners_u"         : make_vs2_imm_corners(test, sew, vcornersemul1)
    elif coverpoint == "cr_vs2_imm_corners_wi"        : make_vs2_imm_corners(test, sew, vcornersemul2)
    elif coverpoint == "cr_vs2_imm_corners_wiu"       : make_vs2_imm_corners(test, sew, vcornersemul2)
    elif coverpoint == "cr_vxrm_vs2_vs1_corners"      : make_vxrm_vs2_vs1_corners(test, sew, vcornersemul1, vcornersemul1)
    elif coverpoint == "cr_vxrm_vs2_vs1_corners_wv"   : make_vxrm_vs2_vs1_corners(test, sew, vcornersemul2, vcornersemul1)
    elif coverpoint == "cr_vxrm_vs2_rs1_corners"      : make_vxrm_vs2_rs1_corners(test, sew, vcornersemul1)
    elif coverpoint == "cr_vxrm_vs2_rs1_corners_wx"   : make_vxrm_vs2_rs1_corners(test, sew, vcornersemul2)
    elif coverpoint == "cr_vxrm_vs2_imm_corners"      : make_vxrm_vs2_imm_corners(test, sew, vcornersemul1)
    elif coverpoint == "cr_vxrm_vs2_imm_corners_wi"   : make_vxrm_vs2_imm_corners(test, sew, vcornersemul2)
    elif coverpoint == "cp_imm_corners_5bit"          : pass # already tested in cp_imm_5bit but needed for cr_vs2_imm_corners
    elif coverpoint == "cp_imm_corners_5bit_u"        : pass # already tested in cp_imm_5bit but needed for cr_vs2_imm_corners
    elif coverpoint == "cp_csr_vxrm"                  : pass # already tested in cross coverpoints with vs2 and vs1/rs1/imm
    ############################ length suite ############################
    elif coverpoint == "cp_masking_corners"           : make_mask_corners(test, sew)
    elif coverpoint == "cr_vl_lmul"                   : make_vl_lmul(test, sew) # includes tests for legal LMUL up to 8
    elif coverpoint in "cr_vl_lmul_lmul4max"          : make_vl_lmul(test, sew, maxlmul=4) # includes tests for legal LMUL up to 4
    elif coverpoint in "cr_vl_lmul_lmul2max"          : make_vl_lmul(test, sew, maxlmul=2) # includes tests for legal LMUL up to 4
    elif coverpoint in "cr_vl_lmul_lmul1max"          : make_vl_lmul(test, sew, maxlmul=1) # includes tests for legal LMUL up to 4
    elif coverpoint == "cr_vtype_agnostic"            : make_vtype_agnostic(test, sew, maxlmul=8)
    elif coverpoint == "cr_vtype_agnostic_lmul4max"   : make_vtype_agnostic(test, sew, maxlmul=4)
    elif coverpoint == "cr_vtype_agnostic_lmul2max"   : make_vtype_agnostic(test, sew, maxlmul=2)
    elif coverpoint == "cr_vtype_agnostic_lmul1max"   : make_vtype_agnostic(test, sew, maxlmul=1)
    elif (coverpoint in ["cp_csr_vtype_vta", "cp_csr_vtype_vma"]):
      pass # helper coverpoints, crossed in cr_vtype_agnostic
    elif (coverpoint in ["cp_csr_vtype_lmul_all_sew8", "cp_csr_vtype_lmul_all_sew16", "cp_csr_vtype_lmul_all_sew32", "cp_csr_vtype_lmul_all_sew64", "cp_csr_vl_corners",
                         "cp_csr_vtype_lmul_all_lmul4max_sew8", "cp_csr_vtype_lmul_all_lmul4max_sew16", "cp_csr_vtype_lmul_all_lmul4max_sew32", "cp_csr_vtype_lmul_all_lmul4max_sew64",
                         "cp_csr_vtype_lmul_all_sew8_lmul_le_8", "cp_vtype_lmul_ge_1", "cp_csr_vtype_lmul_all_lmul4max_sew8_lmul_le_4", "cp_csr_vtype_lmul_all_sew32_lmul_le_8",
                         "cp_csr_vtype_lmul_all_lmul4max_sew32_lmul_le_4", "cp_csr_vtype_lmul_all_sew64_lmul_le_8", "cp_csr_vtype_lmul_all_sew16_lmul_le_8",
                         "cp_csr_vtype_lmul_all_lmul4max_sew16_lmul_le_4", "cp_csr_vtype_lmul_all_lmul4max_sew16_lmul_le_4", "cp_csr_vtype_lmul_all_sew8_eew8",
                         "cp_csr_vtype_lmul_all_sew16_eew8", "cp_csr_vtype_lmul_all_sew32_eew8", "cp_csr_vtype_lmul_all_sew64_eew8", "cp_csr_vtype_lmul_all_sew8_lmul1max",
                         "cp_csr_vtype_lmul_all_sew16_lmul1max", "cp_csr_vtype_lmul_all_sew32_lmul1max", "cp_csr_vtype_lmul_all_sew64_lmul1max", "cp_csr_vtype_lmul_all_sew8_lmul2max",
                         "cp_csr_vtype_lmul_all_sew8_lmul_le_1", "cp_vtype_lmul_1", "cp_vtype_lmul_ge_1_le_4", "cp_vtype_lmul_ge_1_le_2", "cp_csr_vtype_lmul_all_sew8_lmul_le_2",
                         "cp_csr_vtype_lmul_all_sew32_lmul_le_1", "cp_csr_vtype_lmul_all_sew64_lmul_le_2", "cp_csr_vtype_lmul_all_lmul4max_sew64_lmul_le_4", "cp_csr_vtype_lmul_all_sew16_lmul_le_2",
                         "cp_csr_vtype_lmul_all_sew16_lmul_le_1", "cp_csr_vtype_lmul_all_sew32_lmul_le_2", "cp_csr_vtype_lmul_all_sew64_lmul_le_1", ]):
      pass # helper coverpoints, crossed in cr_vl_lmul
    else:
      print("Warning: " + coverpoint + " not implemented yet for " + test)


#####################################               rewrite               #####################################


# TODO replace with better common functions
def getcovergroups(coverdefdir, coverfiles, xlen):
  coverpoints = {}
  curinstr = ""
  mode = "both"
  ingroup = False
  for coverfile in coverfiles:
    coverfile = coverdefdir + "/" + coverfile + "_coverage.svh"
    f = open(coverfile, "r")
    for line in f:
      if (re.search("covergroup .* with", line)):
        ingroup = True
      if (re.search("endgroup", line)):
        ingroup = False
      if ((not ingroup) and re.search('`ifdef XLEN32', line)):
        mode = 32
      if ((not ingroup) and re.search('`ifdef XLEN64', line)):
        mode = 64
      # only look for coverpoints if we are of the proper xlen
      #print("mode: " + str(mode) + " xlen: " + str(xlen) + " " + line)
      if (mode == "both" or mode == xlen):
        m = re.search(r'covergroup.*?_(.*?)_cg', line)
        if (m):
          curinstr = m.group(1).replace("_", ".")
          # print(f'instr is: {curinstr}')
          coverpoints[curinstr] = []
        m = re.search(r"\s*(\S+) :", line)
        if (m):
          # print(f'coverpoint: {m.group(1)}')
          coverpoints[curinstr].append(m.group(1))
    f.close()
    return coverpoints

def getExtensions():
  extensions = []
  path = ARCH_VERIF+"/fcov/unpriv"
  for (dirpath, dirnames, filenames) in os.walk(path):
    for filename in filenames:
      m = re.search("(.*)_coverage.svh", filename)
      if (m != None):
        ext = m.group(1)
        if 'V' in ext or 'v' in ext:
          extensions.append(ext)
  return extensions

if __name__ == '__main__':
  common.writeLine        = writeLine

  # TODO: auipc missing, check whatelse is missing in ^these^ types

  author = "kacassidy@g.hmc.edu"
  xlens = [32, 64]
  numrand = 3
  corners = []
  fcorners = []

  # setup
  seed(0) # make tests reproducible

  # generate files for each test
  for xlen in xlens:
    extensions = getExtensions() # find all extensions in
    maxreg = 31 # I uses registers x0-x31

    for extension in extensions:
      setExtension(extension)
      setXlen(xlen)

      coverdefdir = f"{ARCH_VERIF}/fcov/unpriv"
      coverfiles = [extension]
      coverpoints = getcovergroups(coverdefdir, coverfiles, xlen)
      pathname = f"{ARCH_VERIF}/tests/rv{xlen}/{extension}"

      print("Generating tests for " + pathname)

      if (xlen == 32):
        storecmd = "sw"
        wordsize = 4
      else:
        storecmd = "sd"
        wordsize = 8

      setFlen(32)

      rcornersv = [0, 1, 2, 2**xlen-1, 2**xlen-2, 2**(xlen-1), 2**(xlen-1)+1, 2**(xlen-1)-1, 2**(xlen-1)-2]
      if (xlen == 32):
        rcornersv = rcornersv + [0b01011011101111001000100001110010, 0b10101010101010101010101010101010, 0b01010101010101010101010101010101]
      else:
        rcornersv = rcornersv + [0b0101101110111100100010000111011101100011101011101000011011110010, # random
                            0b1010101010101010101010101010101010101010101010101010101010101010, # walking odd
                            0b0101010101010101010101010101010101010101010101010101010101010101, # walking even
                            0b0000000000000000000000000000000011111111111111111111111111111111, # Wmax
                            0b0000000000000000000000000000000011111111111111111111111111111110, # Wmaxm1
                            0b0000000000000000000000000000000100000000000000000000000000000000, # Wmaxp1
                            0b0000000000000000000000000000000100000000000000000000000000000001] # Wmaxp2

      # global NaNBox_tests
      NaNBox_tests = False

      # cmd = "mkdir -p " + pathname + " ; rm -f " + pathname + "/*" # make directory and remove old tests in dir
      cmd = "mkdir -p " + pathname # make directory
      os.system(cmd)
      basepathname = pathname
      includeVData = " "
      for test in coverpoints.keys():
      # print("Generating test for ", test, " with entries: ", coverpoints[test])

        newInstruction()

        if (test in imm_31):
          immcornersv = [0, 1, 2, 15, 16, 30, 31]
        else:
          immcornersv = [0, 1, 2, 14, 15, -1, -2, -15, -16]

        basename = "WALLY-COV-" + extension + "-" + test
        fname = pathname + "/" + basename + ".S"
        tempfname = pathname + "/" + basename + "_temp.S"

        # print custom header part
        f = open(tempfname, "w")
        line = "///////////////////////////////////////////\n"
        f.write(line)
        line="// "+fname+ "\n// " + author + "\n"
        f.write(line)
        # Don't print creation date because this forces rebuild of files that are otherwise identical
        #line ="// Created " + str(datetime.now()) + "\n"
        #f.write(line)

        # insert generic header
        insertTemplate(test, "testgen_header_vector.S")

        # add assembly lines to enable fp where needed
        if test in vfloattypes:
          float_en = "\n# set mstatus.FS to 01 to enable fp\nli t0,0x4000\ncsrs mstatus, t0\n\n"
          f.write(float_en)

        sew_match = re.search(r"/Vx(\d+)", pathname)
        if sew_match is None:
          sew = 8
        else:
          sew = int(sew_match.group(1))

        legalvlmuls = getLegalVlmul(maxELEN, minSEW_MIN, sew)

        # Set up vl = 1 for base suite
        f.write(f"\n")
        f.write(f"// Initial set vl = 1\n")
        f.write(f"li x2, 1\n")
        f.write(f"vsetvli x0, x2, e{sew}, m1, tu, mu\n")

        # include ifdefs for widening/narrowing instr, which doesn't exist in the ELEN suite
        if (test in vd_widen_ins) or (test in vs2_widen_ins):
          if (sew == 8):
            f.write("#if ELEN > 8\n")
          elif (sew == 16):
            f.write("#if ELEN > 16\n")
          elif (sew == 32):
            f.write("#if ELEN > 32\n")
          elif (sew == 64):
            f.write("#if ELEN > 64\n")

        makeTest(coverpoints[test], test, sew=sew)

        if (test in vd_widen_ins) or (test in vs2_widen_ins):
          f.write("#endif\n")
        insertTemplate(test, "testgen_footer_vector1.S")

        # generate vector data (random and corners)
        if test in vd_widen_ins:
          genRandomVector(test, sew, vs="vd", emul = 2)
        elif (test not in xvtype and test not in xvmtype) :
          genRandomVector(test, sew, vs="vd")

        if test in vector_loads:
          genRandomVector(test, sew, vs="vd_load")

        if (test in wvsins): # needs to be first since in vd_widen_ins
          genRandomVector(test, sew, vs="vs2")
          genRandomVector(test, sew, vs="vs1", emul=2)
          genVsCorners(test, sew, "2")
          genVsCorners(test, sew, "1")
        elif (test in narrowins) or (test in vd_widen_ins):
          genRandomVector(test, sew, vs="vs2", emul=2)
          if (test in vs1ins):
            genRandomVector(test, sew, vs="vs1")
          genVsCorners(test, sew, "1")
          genVsCorners(test, sew, "2")
        else:
          genRandomVector(test, sew, vs="vs2")
          if (test in vs1ins):
            genRandomVector(test, sew, vs="vs1")
          if (test in vextins):
            genVsCorners(test, sew, test[-2:])
          elif (test in mmins) or (test in xvmtype) or (test in vmlogicalins):
            genVsCorners(test, sew, "eew1")
          else:
            genVsCorners(test, sew, "1")
        genVMaskCorners()

        # print footer
        signatureWords = getSigSpace(xlen, flen, sigupd_count, sigupd_countF) #figure out how many words are needed for signature
        insertTemplate(test, "testgen_footer_vector2.S")

        # Finish
        f.close()
        # if new file is different from old file, replace old file with new file
        if os.path.exists(fname):
          if filecmp.cmp(fname, tempfname): # files are the same
            os.system(f"rm {tempfname}") # remove temp file
          else:
            os.system(f"mv {tempfname} {fname}")
            print("Updated " + fname)
        else:
          os.system(f"mv {tempfname} {fname}")
