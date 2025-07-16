##################################
# vector_testgen_common.py
#
# James Kaden Cassidy kacassidy@hmc.edu 25 Jun 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate directed tests for functional coverage
##################################

##################################
# libraries
##################################
import os
import sys
import csv
import re
import math
import filecmp
from datetime import datetime
from random import randint, seed, getrandbits

# change these to suite your tests
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

##################################
# Global Constants
##################################

# Define VLEN, ELEN and SEWMIN as extremes which these tests support
maxVLEN = 512   # TODO: change to 2048 later, save as 512 for now for smaller files
maxELEN = 64
minSEW_MIN = 8

xreg_count              = 32
freg_count              = 32
vreg_count              = 32

##################################
# Global Variables
##################################

xlen                    = 0
flen                    = 0

extension               = ""

formatstr               = "" # format as xlen-bit hexadecimal number
formatstrFP             = "" # format as flen-bit hexadecimal number

basetest_count          = 0
lengthtest_count        = 0

sigTotal                = 0 # total number of bytes in signature
sigReg                  = 3 # start with x4 for signatures ->marina changed it to x3 because that what riscv-arch-test uses TO DO

base_suite_test_count   = 0
length_suite_test_count = 0

sigupd_count            = 10 # number of entries in signature - start with a margin of 10 spaces
sigupd_countF           = 0  # initialize signature update count for F tests
mtrap_sig_count         = 64 # signature space for priviliged, default to 64

##################################
# Corners
##################################

fcorners                =            [0x00000000, # 0
                            0x80000000, # -0
                            0x3f800000, # 1.0
                            0xbf800000, # -1.0
                            0x3fc00000, # 1.5
                            0xbfc00000, # -1.5
                            0x40000000,  # 2.0
                            0xc0000000,  # -2.0
                            0x00800000,  # smallest positive normalized
                            0x80800000,  # smallest negative normalized
                            0x7f7fffff,  # most positive
                            0xff7fffff,  # most negative
                            0x007fffff,  # largest positive subnorm
                            0x807fffff,  # largest negative subnorm
                            0x00400000,  # positive subnorm with leading 1
                            0x80400000,  # negative subnorm with leading 1
                            0x00000001,  # smallest positive subnorm
                            0x80000001,  # smallest negative subnorm
                            0x7f800000,  # positive infinity
                            0xff800000,  # negative infinity
                            0x7fc00000,  # canonical quiet NaN
                            0x7fffffff,  # noncanonical quiet NaN
                            0xffffffff,  # noncanonical quiet NaN with sign bit set
                            0x7f800001,  # signaling NaN with lsb set
                            0x7fbfffff,  # signaling NaN with all mantissa bits set
                            0xffbfffff,  # signaling Nan with all mantissa bits and sign bit set
                            0x7ef8654f,  # random positive 1.65087e+38
                            0x813d9ab0]  # random negative -3.48248e-38

fcornersD               = [0x0000000000000000, # 0.0
            0x8000000000000000,  # -0.0
            0x3FF0000000000000,  # 1.0
            0xBFF0000000000000,  # -1.0
            0x3FF8000000000000,  # 1.5
            0xBFF8000000000000,  #-1.5
            0x4000000000000000,  # 2.0
            0xc000000000000000,  # -2.0
            0x0010000000000000,  # smallest positive normalized
            0x8010000000000000,  # smallest negative normalized
            0x7FEFFFFFFFFFFFFF,  # most positive normalized
            0xFFEFFFFFFFFFFFFF,  # most negative normalized
            0x000FFFFFFFFFFFFF,  # largest positive subnorm
            0x800FFFFFFFFFFFFF,  # largest negative subnorm
            0x0008000000000000,  # mid positive subnorm
            0x8008000000000000,  # mid negative subnorm
            0x0000000000000001,  # smallest positive subnorm
            0x8000000000000001,  # smallest negative subnorm
            0x7FF0000000000000,  # positive infinity
            0xFFF0000000000000,  # negative infinity
            0x7FF8000000000000,  # canonical quiet NaN
            0x7FFFFFFFFFFFFFFF,  # noncanonical quiet NaN
            0xFFF8000000000000,  # noncanonical quiet NaN with sign bit set
            0x7FF0000000000001,  # signaling NaN with lsb set
            0x7FF7FFFFFFFFFFFF,  # signaling NaN with all mantissa bits set
            0xFFF0000000000001,  # signaling NaN with lsb and sign bits set
            0x5A392534A57711AD, # 4.25535e126 random positive
            0xA6E895993737426C] # -2.97516e-121 random negative

fcornersH               = [0x0000, # 0.0
            0x8000, # -0.0
            0x3C00, # 1.0
            0xBC00, # -1.0
            0x3E00, # 1.5
            0xBE00, # -1.5
            0x4000, # 2.0
            0xC000, # -2.0
            0x0400, # smallest normalized
            0x8400, # smallest negative normalized
            0x7BFF, # most positive normalized
            0xFBFF, #  most negative normalized
            0x03FF, # largest positive subnorm
            0x83FF,  # largest negative subnorm
            0x0200,  # positive subnorm with leading 1
            0x8200,  # negative subnorm with leading 1
            0x0001, # smallest positive subnorm
            0x8001,  # smallest negative subnorm
            0x7C00,  # positive infinity
            0xFC00,  # negative infinity
            0x7E00,  # canonical quiet NaN
            0x7FFF,  # noncanonical quiet NaN
            0xFE00,  # noncanonical quiet NaN with sign bit set
            0x7C01, # signaling NaN with lsb set
            0x7DFF,  # signaling NaN with all mantissa bits set
            0xFC01,  # signaling NaN with lsb and sign bits set
            0x58B4,  # 150.5 random positive
            0xC93A]  # -10.4531 random negative

# fcornersQ = [] # TODO: Fill out quad precision F corners

vectorcorners = ["vs_corner_zero", "vs_corner_one", "vs_corner_two", "vs_corner_ones", "vs_corner_onesm1", "vs_corner_min", "vs_corner_minm1",
                  "vs_corner_max", "vs_corner_maxm1", "vs_corner_walkeven", "vs_corner_walkodd", "vs_corner_random"]
vcornersemul1  = [(vcorner + "_emul1" ) for vcorner in vectorcorners]
vcornersemul2  = [(vcorner + "_emul2" ) for vcorner in vectorcorners]
vcornersemul4  = [(vcorner + "_emul4" ) for vcorner in vectorcorners]
vcornersemul8  = [(vcorner + "_emul8" ) for vcorner in vectorcorners]
vcornersemulf2 = [(vcorner + "_emulf2") for vcorner in vectorcorners]
vcornersemulf4 = [(vcorner + "_emulf4") for vcorner in vectorcorners]
vcornersemulf8 = [(vcorner + "_emulf8") for vcorner in vectorcorners]
vcornerseew1   = [(vcorner + "_eew1"  ) for vcorner in vectorcorners]
v_corners_ls   = ["vs_corner_zero_emul8", "vs_corner_random_within_2vlmax"]

##################################
# Functions to be implemented by importer
##################################

if __name__ == "__main__":
    raise RuntimeError("This file is not meant to be run directly.")

def writeLine(argument: str, comment = ""):
    raise NotImplementedError("This function must be overridden by the importing file.")

##################################
# Setter functions
##################################

def newInstruction():
  global sigReg, lengthtest_count, basetest_count, base_suite_test_count, length_suite_test_count, sigupd_count
  sigReg                    = 3
  lengthtest_count          = 0
  basetest_count            = 0
  base_suite_test_count     = 0
  length_suite_test_count   = 0
  sigupd_count              = 0

def setXlen(new_xlen):
    global xlen, formatstr
    xlen = new_xlen

    formatstrlen = str(int(xlen/4))
    formatstr = "0x{:0" + formatstrlen + "x}" # format as xlen-bit hexadecimal number

def setFlen(new_flen):
    global flen, formatstrFP
    flen = new_flen

    formatstrlenFP = str(int(flen/4))
    formatstrFP = "0x{:0" + formatstrlenFP + "x}"

def setExtension(new_extension):
    global extension
    extension = new_extension

def incrementLengthtestCount():
    global lengthtest_count
    lengthtest_count = lengthtest_count + 1

def incrementBasetestCount():
    global basetest_count
    basetest_count += 1

##################################
# Getter functions
##################################

def getBaseSuiteTestCount():
  # print(f"base: \t{base_suite_test_count}")
  return base_suite_test_count

def getLengthSuiteTestCount():
  # print(f"length: \t{length_suite_test_count}")
  return length_suite_test_count

##################################
# Global Variables
##################################

# vxrm tests
vxrmList = {"rod": "0x6",
            "rdn": "0x4",
            "rne": "0x2",
            "rnu": "0x0"} # vcsr[2:1] -> 11 , 10, 01, 00


##################################
# Types
##################################

vvvmtype  = ["vadd.vv", "vwadd.vv", "vwaddu.vv", "vsub.vv", "vwsub.vv", "vwsubu.vv", "vwadd.wv", "vwsub.wv", "vwaddu.wv", "vwsubu.wv",
             "vand.vv", "vor.vv", "vxor.vv", "vsll.vv", "vsrl.vv", "vsra.vv", "vnsra.wv", "vnsrl.wv",
             "vmseq.vv", "vmsne.vv", "vmslt.vv", "vmsltu.vv", "vmsle.vv", "vmsleu.vv", "vmin.vv", "vminu.vv", "vmax.vv", "vmaxu.vv",
             "vmul.vv", "vmulh.vv", "vmulhu.vv", "vmulhsu.vv", "vwmul.vv", "vwmulu.vv", "vwmulsu.vv", "vdiv.vv", "vdivu.vv", "vrem.vv", "vremu.vv",
             "vsadd.vv", "vsaddu.vv", "vssub.vv", "vssubu.vv", "vaadd.vv", "vaaddu.vv", "vasub.vv", "vasubu.vv", "vsmul.vv", "vssrl.vv", "vssra.vv", "vnclip.wv", "vnclipu.wv",
             "vredsum.vs", "vwredsum.vs", "vwredsumu.vs", "vredmax.vs", "vredmaxu.vs", "vredmin.vs", "vredminu.vs", "vredand.vs", "vredor.vs", "vredxor.vs",
             "vrgather.vv", "vrgatherei16.vv"]

type_vxm = [
    # Unit-stride loads
    "vle8.v", "vle16.v", "vle32.v", "vle64.v",
    "vlseg2e8.v", "vlseg2e16.v", "vlseg2e32.v", "vlseg2e64.v",
    "vlseg3e8.v", "vlseg3e16.v", "vlseg3e32.v", "vlseg3e64.v",
    "vlseg4e8.v", "vlseg4e16.v", "vlseg4e32.v", "vlseg4e64.v",
    "vlseg5e8.v", "vlseg5e16.v", "vlseg5e32.v", "vlseg5e64.v",
    "vlseg6e8.v", "vlseg6e16.v", "vlseg6e32.v", "vlseg6e64.v",
    "vlseg7e8.v", "vlseg7e16.v", "vlseg7e32.v", "vlseg7e64.v",
    "vlseg8e8.v", "vlseg8e16.v", "vlseg8e32.v", "vlseg8e64.v",
    # Fault-only-first loads
    "vle8ff.v", "vle16ff.v", "vle32ff.v", "vle64ff.v",
    "vlseg2e8ff.v", "vlseg2e16ff.v", "vlseg2e32ff.v", "vlseg2e64ff.v",
    "vlseg3e8ff.v", "vlseg3e16ff.v", "vlseg3e32ff.v", "vlseg3e64ff.v",
    "vlseg4e8ff.v", "vlseg4e16ff.v", "vlseg4e32ff.v", "vlseg4e64ff.v",
    "vlseg5e8ff.v", "vlseg5e16ff.v", "vlseg5e32ff.v", "vlseg5e64ff.v",
    "vlseg6e8ff.v", "vlseg6e16ff.v", "vlseg6e32ff.v", "vlseg6e64ff.v",
    "vlseg7e8ff.v", "vlseg7e16ff.v", "vlseg7e32ff.v", "vlseg7e64ff.v",
    "vlseg8e8ff.v", "vlseg8e16ff.v", "vlseg8e32ff.v", "vlseg8e64ff.v"
]

type_vxxm = [
    # Strided loads
    "vlse8.v", "vlse16.v", "vlse32.v", "vlse64.v",
    "vlsseg2e8.v", "vlsseg2e16.v", "vlsseg2e32.v", "vlsseg2e64.v",
    "vlsseg3e8.v", "vlsseg3e16.v", "vlsseg3e32.v", "vlsseg3e64.v",
    "vlsseg4e8.v", "vlsseg4e16.v", "vlsseg4e32.v", "vlsseg4e64.v",
    "vlsseg5e8.v", "vlsseg5e16.v", "vlsseg5e32.v", "vlsseg5e64.v",
    "vlsseg6e8.v", "vlsseg6e16.v", "vlsseg6e32.v", "vlsseg6e64.v",
    "vlsseg7e8.v", "vlsseg7e16.v", "vlsseg7e32.v", "vlsseg7e64.v",
    "vlsseg8e8.v", "vlsseg8e16.v", "vlsseg8e32.v", "vlsseg8e64.v",
]

type_vxvm = [
    # Indexed unordered loads
    "vluxei8.v", "vluxei16.v", "vluxei32.v", "vluxei64.v",
    "vluxseg2ei8.v", "vluxseg2ei16.v", "vluxseg2ei32.v", "vluxseg2ei64.v",
    "vluxseg3ei8.v", "vluxseg3ei16.v", "vluxseg3ei32.v", "vluxseg3ei64.v",
    "vluxseg4ei8.v", "vluxseg4ei16.v", "vluxseg4ei32.v", "vluxseg4ei64.v",
    "vluxseg5ei8.v", "vluxseg5ei16.v", "vluxseg5ei32.v", "vluxseg5ei64.v",
    "vluxseg6ei8.v", "vluxseg6ei16.v", "vluxseg6ei32.v", "vluxseg6ei64.v",
    "vluxseg7ei8.v", "vluxseg7ei16.v", "vluxseg7ei32.v", "vluxseg7ei64.v",
    "vluxseg8ei8.v", "vluxseg8ei16.v", "vluxseg8ei32.v", "vluxseg8ei64.v",
    # Indexed ordered Loads
    "vloxei8.v", "vloxei16.v", "vloxei32.v", "vloxei64.v",
    "vloxseg2ei8.v", "vloxseg2ei16.v", "vloxseg2ei32.v", "vloxseg2ei64.v",
    "vloxseg3ei8.v", "vloxseg3ei16.v", "vloxseg3ei32.v", "vloxseg3ei64.v",
    "vloxseg4ei8.v", "vloxseg4ei16.v", "vloxseg4ei32.v", "vloxseg4ei64.v",
    "vloxseg5ei8.v", "vloxseg5ei16.v", "vloxseg5ei32.v", "vloxseg5ei64.v",
    "vloxseg6ei8.v", "vloxseg6ei16.v", "vloxseg6ei32.v", "vloxseg6ei64.v",
    "vloxseg7ei8.v", "vloxseg7ei16.v", "vloxseg7ei32.v", "vloxseg7ei64.v",
    "vloxseg8ei8.v", "vloxseg8ei16.v", "vloxseg8ei32.v", "vloxseg8ei64.v"
]

type_vsxm = [
    # Unit-stride Stores
    "vse8.v", "vse16.v", "vse32.v", "vse64.v",
    "vsseg2e8.v", "vsseg2e16.v", "vsseg2e32.v", "vsseg2e64.v",
    "vsseg3e8.v", "vsseg3e16.v", "vsseg3e32.v", "vsseg3e64.v",
    "vsseg4e8.v", "vsseg4e16.v", "vsseg4e32.v", "vsseg4e64.v",
    "vsseg5e8.v", "vsseg5e16.v", "vsseg5e32.v", "vsseg5e64.v",
    "vsseg6e8.v", "vsseg6e16.v", "vsseg6e32.v", "vsseg6e64.v",
    "vsseg7e8.v", "vsseg7e16.v", "vsseg7e32.v", "vsseg7e64.v",
    "vsseg8e8.v", "vsseg8e16.v", "vsseg8e32.v", "vsseg8e64.v"
]

type_vsxxm = [
    # Strided Stores
    "vsse8.v", "vsse16.v", "vsse32.v", "vsse64.v",
    "vssseg2e8.v", "vssseg2e16.v", "vssseg2e32.v", "vssseg2e64.v",
    "vssseg3e8.v", "vssseg3e16.v", "vssseg3e32.v", "vssseg3e64.v",
    "vssseg4e8.v", "vssseg4e16.v", "vssseg4e32.v", "vssseg4e64.v",
    "vssseg5e8.v", "vssseg5e16.v", "vssseg5e32.v", "vssseg5e64.v",
    "vssseg6e8.v", "vssseg6e16.v", "vssseg6e32.v", "vssseg6e64.v",
    "vssseg7e8.v", "vssseg7e16.v", "vssseg7e32.v", "vssseg7e64.v",
    "vssseg8e8.v", "vssseg8e16.v", "vssseg8e32.v", "vssseg8e64.v"
]

type_vsxvm = [
    # Indexed unordered Stores
    "vsuxei8.v", "vsuxei16.v", "vsuxei32.v", "vsuxei64.v",
    "vsuxseg2ei8.v", "vsuxseg2ei16.v", "vsuxseg2ei32.v", "vsuxseg2ei64.v",
    "vsuxseg3ei8.v", "vsuxseg3ei16.v", "vsuxseg3ei32.v", "vsuxseg3ei64.v",
    "vsuxseg4ei8.v", "vsuxseg4ei16.v", "vsuxseg4ei32.v", "vsuxseg4ei64.v",
    "vsuxseg5ei8.v", "vsuxseg5ei16.v", "vsuxseg5ei32.v", "vsuxseg5ei64.v",
    "vsuxseg6ei8.v", "vsuxseg6ei16.v", "vsuxseg6ei32.v", "vsuxseg6ei64.v",
    "vsuxseg7ei8.v", "vsuxseg7ei16.v", "vsuxseg7ei32.v", "vsuxseg7ei64.v",
    "vsuxseg8ei8.v", "vsuxseg8ei16.v", "vsuxseg8ei32.v", "vsuxseg8ei64.v",
    # Indexed ordered Stores
    "vsoxei8.v", "vsoxei16.v", "vsoxei32.v", "vsoxei64.v",
    "vsoxseg2ei8.v", "vsoxseg2ei16.v", "vsoxseg2ei32.v", "vsoxseg2ei64.v",
    "vsoxseg3ei8.v", "vsoxseg3ei16.v", "vsoxseg3ei32.v", "vsoxseg3ei64.v",
    "vsoxseg4ei8.v", "vsoxseg4ei16.v", "vsoxseg4ei32.v", "vsoxseg4ei64.v",
    "vsoxseg5ei8.v", "vsoxseg5ei16.v", "vsoxseg5ei32.v", "vsoxseg5ei64.v",
    "vsoxseg6ei8.v", "vsoxseg6ei16.v", "vsoxseg6ei32.v", "vsoxseg6ei64.v",
    "vsoxseg7ei8.v", "vsoxseg7ei16.v", "vsoxseg7ei32.v", "vsoxseg7ei64.v",
    "vsoxseg8ei8.v", "vsoxseg8ei16.v", "vsoxseg8ei32.v", "vsoxseg8ei64.v"
]

type_vx = [
    # Whole Register Loads
    "vl1re8.v", "vl2re8.v", "vl4re8.v", "vl8re8.v",
    "vl1re16.v", "vl2re16.v", "vl4re16.v", "vl8re16.v",
    "vl1re32.v", "vl2re32.v", "vl4re32.v", "vl8re32.v",
    "vl1re64.v", "vl2re64.v", "vl4re64.v", "vl8re64.v",
    # Mask Load
    "vlm.v"
]

type_vsx = [
    # Whole Register Stores
    "vs1r.v", "vs2r.v", "vs4r.v", "vs8r.v",
    # Mask Store
    "vsm.v"
]

vvxmtype  = ["vadd.vx", "vwadd.vx", "vwaddu.vx", "vsub.vx", "vwsub.vx", "vwsubu.vx", "vrsub.vx", "vwadd.wx", "vwsub.wx", "vwaddu.wx", "vwsubu.wx",
             "vmadc.vx", "vmsbc.vx", "vand.vx", "vor.vx", "vxor.vx", "vsll.vx", "vsrl.vx", "vsra.vx", "vnsra.wx", "vnsrl.wx",
             "vmseq.vx", "vmsne.vx", "vmslt.vx", "vmsltu.vx", "vmsle.vx", "vmsleu.vx", "vmsgt.vx", "vmsgtu.vx", "vmin.vx", "vminu.vx", "vmax.vx", "vmaxu.vx",
             "vmul.vx", "vmulh.vx", "vmulhu.vx", "vmulhsu.vx", "vwmul.vx", "vwmulu.vx", "vwmulsu.vx", "vdiv.vx", "vdivu.vx", "vrem.vx", "vremu.vx",
             "vsadd.vx", "vsaddu.vx", "vssub.vx", "vssubu.vx", "vaadd.vx", "vaaddu.vx", "vasub.vx", "vasubu.vx", "vsmul.vx", "vssrl.vx", "vssra.vx", "vnclip.wx", "vnclipu.wx",
             "vslideup.vx", "vslidedown.vx", "vslide1up.vx", "vslide1down.vx", "vrgather.vx"]

vvimtype  = ["vadd.vi", "vrsub.vi", "vmadc.vi",
             "vand.vi", "vor.vi", "vxor.vi", "vsll.vi", "vsrl.vi", "vsra.vi", "vnsra.wi", "vnsrl.wi",
             "vmseq.vi", "vmsne.vi", "vmsle.vi", "vmsleu.vi", "vmsgt.vi", "vmsgtu.vi",
             "vsadd.vi", "vsaddu.vi", "vssrl.vi", "vssra.vi", "vnclip.wi", "vnclipu.wi",
             "vslideup.vi", "vslidedown.vi", "vrgather.vi"]

xvmtype   = ["vcpop.m", "vfirst.m"]

vvvmrtype = ["vmacc.vv", "vnmsac.vv", "vmadd.vv", "vnmsub.vv", "vwmacc.vv", "vwmaccu.vv", "vwmaccsu.vv"]
vvmtype   = ["vmsbf.m", "viota.m", "vmsif.m", "vmsof.m", "vzext.vf2", "vzext.vf4", "vzext.vf8", "vsext.vf2", "vsext.vf4", "vsext.vf8"]
vxvmtype  = ["vmacc.vx", "vnmsac.vx", "vmadd.vx", "vnmsub.vx", "vwmacc.vx", "vwmaccu.vx", "vwmaccsu.vx", "vwmaccus.vx"]
vvrtype   = ["vmv.v.v"]
vxtype    = ["vmv.s.x", "vmv.v.x"]
vitype    = ["vmv.v.i"]
xvtype    = ["vmv.x.s"]
vvvxtype  = ["vmv1r.v", "vmv2r.v", "vmv4r.v", "vmv8r.v"]
vmtype    = ["vid.v"]
vvivtype  = ["vadc.vim", "vmerge.vim", "vmadc.vim"]
vvvvtype  = ["vadc.vvm", "vsbc.vvm", "vmerge.vvm", "vmadc.vvm", "vmsbc.vvm"]
vvxvtype  = ["vadc.vxm", "vsbc.vxm", "vmerge.vxm", "vmadc.vxm", "vmsbc.vxm"]
vvvtype   = ["vmadc.vv", "vmsbc.vv", "vmand.mm", "vmnand.mm", "vmandn.mm", "vmxor.mm", "vmor.mm", "vmnor.mm", "vmorn.mm", "vmxnor.mm", "vcompress.vm"]
imm_31 = ["vnclip.wi", "vnclipu.wi", "vnsra.wi","vnsrl.wi", "vrgather.vi", "vslidedown.vi", "vslideup.vi", "vsll.vi", "vsra.vi", "vsrl.vi","vssra.vi", "vssrl.vi"]
vectortypes = vvvtype + vmtype + xvtype + vitype + vxtype + vvrtype + vvmtype + xvmtype + vvimtype + vvxmtype + vvvmtype + vvivtype + vvvvtype + vvxvtype + vxvmtype + vvvxtype + vvvmrtype

vs1ins = vvvmtype + vvrtype + vvvvtype + vvvtype + vvvmrtype
vfloattypes = ["vfadd.vv"]

# vector instruction groups by EEW (prefix + suffix)
# normal
vvins = ["vadd.vv", "vsub.vv", "vand.vv", "vor.vv", "vxor.vv", "vsll.vv", "vsrl.vv", "vsra.vv", "vmin.vv", "vminu.vv", "vmax.vv", "vmaxu.vv", "vmul.vv", "vmulh.vv", "vmulhu.vv", "vmulhsu.vv",
         "vdiv.vv", "vdivu.vv", "vrem.vv", "vremu.vv", "vsadd.vv", "vsaddu.vv", "vssub.vv", "vssubu.vv", "vaadd.vv", "vaaddu.vv", "vasub.vv", "vasubu.vv", "vsmul.vv", "vssrl.vv", "vssra.vv"]
vxins = ["vadd.vx", "vsub.vx", "vrsub.vx", "vand.vx", "vor.vx", "vxor.vx", "vsll.vx", "vsrl.vx", "vsra.vx", "vmin.vx", "vminu.vx", "vmax.vx", "vmaxu.vx", "vmul.vx", "vmulh.vx", "vmulhu.vx", "vmulhsu.vx",
         "vdiv.vx", "vdivu.vx", "vrem.vx", "vremu.vx", "vsadd.vx", "vsaddu.vx", "vssub.vx", "vssubu.vx", "vaadd.vx", "vaaddu.vx", "vasub.vx", "vasubu.vx", "vsmul.vx", "vssrl.vx", "vssra.vx"]
viins = ["vadd.vi", "vrsub.vi", "vand.vi", "vor.vi", "vxor.vi", "vsll.vi", "vsrl.vi", "vsra.vi", "vsadd.vi", "vsaddu.vi", "vssrl.vi", "vssra.vi"]
# narrowing
wvins = ["vnsrl.wv", "vnsra.wv", "vnclip.wv", "vnclipu.wv"]
wxins = ["vnsrl.wx", "vnsra.wx", "vnclip.wx", "vnclipu.wx"]
wiins = ["vnsrl.wi", "vnsra.wi", "vnclip.wi", "vnclipu.wi"]
narrowins = wvins + wxins + wiins
# widening
wvvins = ["vwadd.vv", "vwaddu.vv", "vwsub.vv", "vwsubu.vv", "vwmul.vv", "vwmulu.vv", "vwmulsu.vv", "vwmacc.vv", "vwmaccu.vv", "vwmaccsu.vv"]
wvxins = ["vwadd.vx", "vwaddu.vx", "vwsub.vx", "vwsubu.vx", "vwmul.vx", "vwmulu.vx", "vwmulsu.vx", "vwmacc.vx", "vwmaccu.vx", "vwmaccsu.vx", "vwmaccus.vx"]
wwvins = ["vwadd.wv", "vwaddu.wv", "vwsub.wv", "vwsubu.wv"]
wwxins = ["vwadd.wx", "vwaddu.wx", "vwsub.wx", "vwsubu.wx"]
vs2_widen_ins = narrowins + wwvins + wwxins
# masking
vvmins = ["vadc.vvm", "vsbc.vvm", "vmerge.vvm"]
vxmins = ["vadc.vxm", "vsbc.vxm", "vmerge.vxm"]
vimins = ["vadc.vim", "vmerge.vim"]
vm_nomask_ins = ["vmadc.vv", "vmsbc.vv", "vmadc.vx", "vmsbc.vx", "vmadc.vi"]
mvvins = ["vmseq.vv", "vmsne.vv", "vmslt.vv", "vmsltu.vv", "vmsle.vv", "vmsleu.vv"]
mvxins = ["vmseq.vx", "vmsne.vx", "vmslt.vx", "vmsltu.vx", "vmsle.vx", "vmsleu.vx", "vmsgt.vx", "vmsgtu.vx"]
mviins = ["vmseq.vi", "vmsne.vi", "vmsle.vi", "vmsleu.vi", "vmsgt.vi", "vmsgtu.vi"]
mvvmins = ["vmadc.vvm", "vmsbc.vvm"]
mvxmins = ["vmadc.vxm", "vmsbc.vxm"]
mvimins = ["vmadc.vim"]
mmins = ["vmand.mm", "vmnand.mm", "vmandn.mm", "vmxor.mm", "vmor.mm", "vmnor.mm", "vmorn.mm", "vmxnor.mm"]
maskins = vm_nomask_ins + mvvins + mvxins + mviins + mvvmins + mvxmins + mvimins

v_mins = vvmins + vxmins + vimins
mv_ins = vm_nomask_ins + mvvins + mvxins + mviins
mv_mins = mvvmins + mvxmins + mvimins
# extending
vextins = ["vzext.vf2", "vzext.vf4", "vzext.vf8", "vsext.vf2", "vsext.vf4", "vsext.vf8"]
# widening reduction
wvsins = ["vwredsum.vs", "vwredsumu.vs"]
# slide/gather/compress
vslideupins = ["vslideup.vx", "vslideup.vi", "vslide1up.vx"]
vslidedownins = ["vslidedown.vx", "vslidedown.vi", "vslide1down.vx"]
vrgatherins = ["vrgather.vv", "vrgather.vx", "vrgather.vi", "vrgatherei16.vv"]
vcompressins = ["vcompress.vm"]
vupgatherins = vslideupins + vrgatherins
# mask logical
vmlogicalins = ["vmsbf.m", "viota.m", "vmsif.m", "vmsof.m"]
vredins = ["vredsum.vs", "vwredsumu.vs", "vwredsum.vs", "vredmaxu.vs", "vredmax.vs", "vredminu.vs", "vredmin.vs", "vredand.vs", "vredor.vs", "vredxor.vs"]

ls_not_maskable = [
  "vl1re8.v",  "vl2re8.v",  "vl4re8.v",  "vl8re8.v",
  "vl1re16.v", "vl2re16.v", "vl4re16.v", "vl8re16.v",
  "vl1re32.v", "vl2re32.v", "vl4re32.v", "vl8re32.v",
  "vl1re64.v", "vl2re64.v", "vl4re64.v", "vl8re64.v",
  "vs1r.v",    "vs2r.v",    "vs4r.v",    "vs8r.v",
  "vsm.v",     "vlm.v"
  ]

vmvins          = vvrtype + vxtype + vitype + xvtype + vvvxtype + vcompressins
vd_widen_ins    = wvvins + wvxins + wwvins + wwxins + wvsins
not_maskable    = vm_nomask_ins + mmins + vmvins + ls_not_maskable

# "vl1re8.v", "vl1re16.v", "vl1re32.v", "vl1re64.v"
# "vs1r.v",

whole_register_move = ["vmv1r.v", "vmv2r.v", "vmv4r.v", "vmv8r.v"]
whole_register_stores = ["vs1r.v", "vs2r.v", "vs4r.v", "vs8r.v"]

strided_loads= [
    "vlse8.v", "vlse16.v", "vlse32.v", "vlse64.v",
    "vlsseg2e8.v", "vlsseg2e16.v", "vlsseg2e32.v", "vlsseg2e64.v",
    "vlsseg3e8.v", "vlsseg3e16.v", "vlsseg3e32.v", "vlsseg3e64.v",
    "vlsseg4e8.v", "vlsseg4e16.v", "vlsseg4e32.v", "vlsseg4e64.v",
    "vlsseg5e8.v", "vlsseg5e16.v", "vlsseg5e32.v", "vlsseg5e64.v",
    "vlsseg6e8.v", "vlsseg6e16.v", "vlsseg6e32.v", "vlsseg6e64.v",
    "vlsseg7e8.v", "vlsseg7e16.v", "vlsseg7e32.v", "vlsseg7e64.v",
    "vlsseg8e8.v", "vlsseg8e16.v", "vlsseg8e32.v", "vlsseg8e64.v"
]

strided_stores = [
    "vsse8.v", "vsse16.v", "vsse32.v", "vsse64.v",
    "vssseg2e8.v", "vssseg2e16.v", "vssseg2e32.v", "vssseg2e64.v",
    "vssseg3e8.v", "vssseg3e16.v", "vssseg3e32.v", "vssseg3e64.v",
    "vssseg4e8.v", "vssseg4e16.v", "vssseg4e32.v", "vssseg4e64.v",
    "vssseg5e8.v", "vssseg5e16.v", "vssseg5e32.v", "vssseg5e64.v",
    "vssseg6e8.v", "vssseg6e16.v", "vssseg6e32.v", "vssseg6e64.v",
    "vssseg7e8.v", "vssseg7e16.v", "vssseg7e32.v", "vssseg7e64.v",
    "vssseg8e8.v", "vssseg8e16.v", "vssseg8e32.v", "vssseg8e64.v"
]


# ─── Segment length 2 ──────────────────────────────────────────────

seg2_loads = [
  "vloxseg2ei8.v",  "vlseg2e8.v",  "vlseg2e8ff.v",  "vlsseg2e8.v",  "vluxseg2ei8.v",
  "vloxseg2ei16.v", "vlseg2e16.v", "vlseg2e16ff.v", "vlsseg2e16.v", "vluxseg2ei16.v",
  "vloxseg2ei32.v", "vlseg2e32.v", "vlseg2e32ff.v", "vlsseg2e32.v", "vluxseg2ei32.v",
  "vloxseg2ei64.v", "vlseg2e64.v", "vlseg2e64ff.v", "vlsseg2e64.v", "vluxseg2ei64.v",
  "vl2re8.v", "vl2re16.v", "vl2re32.v", "vl2re64.v"
]

seg2_stores = [
  "vsoxseg2ei8.v",  "vsseg2e8.v",  "vssseg2e8.v",  "vsuxseg2ei8.v",
  "vsoxseg2ei16.v", "vsseg2e16.v", "vssseg2e16.v", "vsuxseg2ei16.v",
  "vsoxseg2ei32.v", "vsseg2e32.v", "vssseg2e32.v", "vsuxseg2ei32.v",
  "vsoxseg2ei64.v", "vsseg2e64.v", "vssseg2e64.v", "vsuxseg2ei64.v",
  "vs2r.v"
]

seg2 = seg2_stores + seg2_loads

# ─── Segment length 3 ──────────────────────────────────────────────

seg3_loads = [
  "vloxseg3ei8.v",  "vlseg3e8.v",  "vlseg3e8ff.v",  "vlsseg3e8.v",  "vluxseg3ei8.v",
  "vloxseg3ei16.v", "vlseg3e16.v", "vlseg3e16ff.v", "vlsseg3e16.v", "vluxseg3ei16.v",
  "vloxseg3ei32.v", "vlseg3e32.v", "vlseg3e32ff.v", "vlsseg3e32.v", "vluxseg3ei32.v",
  "vloxseg3ei64.v", "vlseg3e64.v", "vlseg3e64ff.v", "vlsseg3e64.v", "vluxseg3ei64.v",
]

seg3_stores = [
  "vsoxseg3ei8.v",  "vsseg3e8.v",  "vssseg3e8.v",  "vsuxseg3ei8.v",
  "vsoxseg3ei16.v", "vsseg3e16.v", "vssseg3e16.v", "vsuxseg3ei16.v",
  "vsoxseg3ei32.v", "vsseg3e32.v", "vssseg3e32.v", "vsuxseg3ei32.v",
  "vsoxseg3ei64.v", "vsseg3e64.v", "vssseg3e64.v", "vsuxseg3ei64.v",
]

seg3 = seg3_stores + seg3_loads

# ─── Segment length 4 ──────────────────────────────────────────────

seg4_loads = [
    "vloxseg4ei8.v", "vlseg4e8.v",  "vlseg4e8ff.v",  "vlsseg4e8.v",  "vluxseg4ei8.v",
    "vloxseg4ei16.v","vlseg4e16.v", "vlseg4e16ff.v", "vlsseg4e16.v", "vluxseg4ei16.v",
    "vloxseg4ei32.v","vlseg4e32.v", "vlseg4e32ff.v", "vlsseg4e32.v", "vluxseg4ei32.v",
    "vloxseg4ei64.v","vlseg4e64.v", "vlseg4e64ff.v", "vlsseg4e64.v", "vluxseg4ei64.v",
    "vl4re8.v", "vl4re16.v", "vl4re32.v", "vl4re64.v"
]

seg4_stores = [
    "vsoxseg4ei8.v", "vsseg4e8.v",  "vssseg4e8.v",  "vsuxseg4ei8.v",
    "vsoxseg4ei16.v","vsseg4e16.v", "vssseg4e16.v", "vsuxseg4ei16.v",
    "vsoxseg4ei32.v","vsseg4e32.v", "vssseg4e32.v", "vsuxseg4ei32.v",
    "vsoxseg4ei64.v","vsseg4e64.v", "vssseg4e64.v", "vsuxseg4ei64.v",
    "vs4r.v"
]

seg4 = seg4_stores + seg4_loads

# ─── Segment length 5 ──────────────────────────────────────────────
seg5_loads = [
    "vloxseg5ei8.v", "vlseg5e8.v",  "vlseg5e8ff.v",  "vlsseg5e8.v",  "vluxseg5ei8.v",
    "vloxseg5ei16.v","vlseg5e16.v", "vlseg5e16ff.v", "vlsseg5e16.v", "vluxseg5ei16.v",
    "vloxseg5ei32.v","vlseg5e32.v", "vlseg5e32ff.v", "vlsseg5e32.v", "vluxseg5ei32.v",
    "vloxseg5ei64.v","vlseg5e64.v", "vlseg5e64ff.v", "vlsseg5e64.v", "vluxseg5ei64.v",
]

seg5_stores = [
    "vsoxseg5ei8.v", "vsseg5e8.v",  "vssseg5e8.v",  "vsuxseg5ei8.v",
    "vsoxseg5ei16.v","vsseg5e16.v", "vssseg5e16.v", "vsuxseg5ei16.v",
    "vsoxseg5ei32.v","vsseg5e32.v", "vssseg5e32.v", "vsuxseg5ei32.v",
    "vsoxseg5ei64.v","vsseg5e64.v", "vssseg5e64.v", "vsuxseg5ei64.v",
]

seg5 = seg5_stores + seg5_loads

# ─── Segment length 6 ──────────────────────────────────────────────
seg6_loads = [
    "vloxseg6ei8.v", "vlseg6e8.v",  "vlseg6e8ff.v",  "vlsseg6e8.v",  "vluxseg6ei8.v",
    "vloxseg6ei16.v","vlseg6e16.v", "vlseg6e16ff.v", "vlsseg6e16.v", "vluxseg6ei16.v",
    "vloxseg6ei32.v","vlseg6e32.v", "vlseg6e32ff.v", "vlsseg6e32.v", "vluxseg6ei32.v",
    "vloxseg6ei64.v","vlseg6e64.v", "vlseg6e64ff.v", "vlsseg6e64.v", "vluxseg6ei64.v",
]

seg6_stores = [
    "vsoxseg6ei8.v", "vsseg6e8.v",  "vssseg6e8.v",  "vsuxseg6ei8.v",
    "vsoxseg6ei16.v","vsseg6e16.v", "vssseg6e16.v", "vsuxseg6ei16.v",
    "vsoxseg6ei32.v","vsseg6e32.v", "vssseg6e32.v", "vsuxseg6ei32.v",
    "vsoxseg6ei64.v","vsseg6e64.v", "vssseg6e64.v", "vsuxseg6ei64.v",
]

seg6 = seg6_stores + seg6_loads

# ─── Segment length 7 ──────────────────────────────────────────────
seg7_loads = [
    "vloxseg7ei8.v", "vlseg7e8.v",  "vlseg7e8ff.v",  "vlsseg7e8.v",  "vluxseg7ei8.v",
    "vloxseg7ei16.v","vlseg7e16.v", "vlseg7e16ff.v", "vlsseg7e16.v", "vluxseg7ei16.v",
    "vloxseg7ei32.v","vlseg7e32.v", "vlseg7e32ff.v", "vlsseg7e32.v", "vluxseg7ei32.v",
    "vloxseg7ei64.v","vlseg7e64.v", "vlseg7e64ff.v", "vlsseg7e64.v", "vluxseg7ei64.v",
]

seg7_stores = [
    "vsoxseg7ei8.v", "vsseg7e8.v",  "vssseg7e8.v",  "vsuxseg7ei8.v",
    "vsoxseg7ei16.v","vsseg7e16.v", "vssseg7e16.v", "vsuxseg7ei16.v",
    "vsoxseg7ei32.v","vsseg7e32.v", "vssseg7e32.v", "vsuxseg7ei32.v",
    "vsoxseg7ei64.v","vsseg7e64.v", "vssseg7e64.v", "vsuxseg7ei64.v",
]

seg7 = seg7_stores + seg7_loads

# ─── Segment length 8 ──────────────────────────────────────────────
seg8_loads = [
    "vloxseg8ei8.v", "vlseg8e8.v",  "vlseg8e8ff.v",  "vlsseg8e8.v",  "vluxseg8ei8.v",
    "vloxseg8ei16.v","vlseg8e16.v", "vlseg8e16ff.v", "vlsseg8e16.v", "vluxseg8ei16.v",
    "vloxseg8ei32.v","vlseg8e32.v", "vlseg8e32ff.v", "vlsseg8e32.v", "vluxseg8ei32.v",
    "vloxseg8ei64.v","vlseg8e64.v", "vlseg8e64ff.v", "vlsseg8e64.v", "vluxseg8ei64.v",
    "vl8re8.v", "vl8re16.v", "vl8re32.v", "vl8re64.v"
]

seg8_stores = [
    "vsoxseg8ei8.v", "vsseg8e8.v",  "vssseg8e8.v",  "vsuxseg8ei8.v",
    "vsoxseg8ei16.v","vsseg8e16.v", "vssseg8e16.v", "vsuxseg8ei16.v",
    "vsoxseg8ei32.v","vsseg8e32.v", "vssseg8e32.v", "vsuxseg8ei32.v",
    "vsoxseg8ei64.v","vsseg8e64.v", "vssseg8e64.v", "vsuxseg8ei64.v",
    "vs8r.v"
]

seg8 = seg8_stores + seg8_loads

whole_register_ls = [
  "vl1re8.v",  "vl2re8.v",  "vl4re8.v",  "vl8re8.v",
  "vl1re16.v", "vl2re16.v", "vl4re16.v", "vl8re16.v",
  "vl1re32.v", "vl2re32.v", "vl4re32.v", "vl8re32.v",
  "vl1re64.v", "vl2re64.v", "vl4re64.v", "vl8re64.v",
  "vs1r.v",    "vs2r.v",    "vs4r.v",    "vs8r.v"
]

eew8_ins = [
    "vle8.v", "vlseg2e8.v", "vlseg3e8.v", "vlseg4e8.v", "vlseg5e8.v", "vlseg6e8.v", "vlseg7e8.v", "vlseg8e8.v",
    "vle8ff.v", "vlseg2e8ff.v", "vlseg3e8ff.v", "vlseg4e8ff.v", "vlseg5e8ff.v", "vlseg6e8ff.v", "vlseg7e8ff.v", "vlseg8e8ff.v",
    "vlse8.v", "vlsseg2e8.v", "vlsseg3e8.v", "vlsseg4e8.v", "vlsseg5e8.v", "vlsseg6e8.v", "vlsseg7e8.v", "vlsseg8e8.v",
    "vluxei8.v", "vluxseg2ei8.v", "vluxseg3ei8.v", "vluxseg4ei8.v", "vluxseg5ei8.v", "vluxseg6ei8.v", "vluxseg7ei8.v", "vluxseg8ei8.v",
    "vloxei8.v", "vloxseg2ei8.v", "vloxseg3ei8.v", "vloxseg4ei8.v", "vloxseg5ei8.v", "vloxseg6ei8.v", "vloxseg7ei8.v", "vloxseg8ei8.v",
    "vse8.v", "vsseg2e8.v", "vsseg3e8.v", "vsseg4e8.v", "vsseg5e8.v", "vsseg6e8.v", "vsseg7e8.v", "vsseg8e8.v",
    "vsse8.v", "vssseg2e8.v", "vssseg3e8.v", "vssseg4e8.v", "vssseg5e8.v", "vssseg6e8.v", "vssseg7e8.v", "vssseg8e8.v",
    "vsuxei8.v", "vsuxseg2ei8.v", "vsuxseg3ei8.v", "vsuxseg4ei8.v", "vsuxseg5ei8.v", "vsuxseg6ei8.v", "vsuxseg7ei8.v", "vsuxseg8ei8.v",
    "vsoxei8.v", "vsoxseg2ei8.v", "vsoxseg3ei8.v", "vsoxseg4ei8.v", "vsoxseg5ei8.v", "vsoxseg6ei8.v", "vsoxseg7ei8.v", "vsoxseg8ei8.v",
    "vl1re8.v", "vl2re8.v", "vl4re8.v", "vl8re8.v", "vs8r.v"
]

eew16_ins = [
    "vle16.v", "vlseg2e16.v", "vlseg3e16.v", "vlseg4e16.v", "vlseg5e16.v", "vlseg6e16.v", "vlseg7e16.v", "vlseg8e16.v", "vle16ff.v", "vlseg2e16ff.v", "vlseg3e16ff.v", "vlseg4e16ff.v", "vlseg5e16ff.v", "vlseg6e16ff.v", "vlseg7e16ff.v", "vlseg8e16ff.v",
    "vlse16.v", "vlsseg2e16.v", "vlsseg3e16.v", "vlsseg4e16.v", "vlsseg5e16.v", "vlsseg6e16.v", "vlsseg7e16.v", "vlsseg8e16.v",
    "vluxei16.v", "vluxseg2ei16.v", "vluxseg3ei16.v", "vluxseg4ei16.v", "vluxseg5ei16.v", "vluxseg6ei16.v", "vluxseg7ei16.v", "vluxseg8ei16.v",
    "vloxei16.v", "vloxseg2ei16.v", "vloxseg3ei16.v", "vloxseg4ei16.v", "vloxseg5ei16.v", "vloxseg6ei16.v", "vloxseg7ei16.v", "vloxseg8ei16.v",
    "vse16.v", "vsseg2e16.v", "vsseg3e16.v", "vsseg4e16.v", "vsseg5e16.v", "vsseg6e16.v", "vsseg7e16.v", "vsseg8e16.v",
    "vsse16.v", "vssseg2e16.v", "vssseg3e16.v", "vssseg4e16.v", "vssseg5e16.v", "vssseg6e16.v", "vssseg7e16.v", "vssseg8e16.v",
    "vsuxei16.v", "vsuxseg2ei16.v", "vsuxseg3ei16.v", "vsuxseg4ei16.v", "vsuxseg5ei16.v", "vsuxseg6ei16.v", "vsuxseg7ei16.v", "vsuxseg8ei16.v",
    "vsoxei16.v", "vsoxseg2ei16.v", "vsoxseg3ei16.v", "vsoxseg4ei16.v", "vsoxseg5ei16.v", "vsoxseg6ei16.v", "vsoxseg7ei16.v", "vsoxseg8ei16.v",
    "vl1re16.v", "vl2re16.v", "vl4re16.v", "vl8re16.v"
]

eew32_ins = [
    "vle32.v", "vlseg2e32.v", "vlseg3e32.v", "vlseg4e32.v", "vlseg5e32.v", "vlseg6e32.v", "vlseg7e32.v", "vlseg8e32.v",
    "vle32ff.v", "vlseg2e32ff.v", "vlseg3e32ff.v", "vlseg4e32ff.v", "vlseg5e32ff.v", "vlseg6e32ff.v", "vlseg7e32ff.v", "vlseg8e32ff.v",
    "vlse32.v", "vlsseg2e32.v", "vlsseg3e32.v", "vlsseg4e32.v", "vlsseg5e32.v", "vlsseg6e32.v", "vlsseg7e32.v", "vlsseg8e32.v",
    "vluxei32.v", "vluxseg2ei32.v", "vluxseg3ei32.v", "vluxseg4ei32.v", "vluxseg5ei32.v", "vluxseg6ei32.v", "vluxseg7ei32.v", "vluxseg8ei32.v",
    "vloxei32.v", "vloxseg2ei32.v", "vloxseg3ei32.v", "vloxseg4ei32.v", "vloxseg5ei32.v", "vloxseg6ei32.v", "vloxseg7ei32.v", "vloxseg8ei32.v",
    "vse32.v", "vsseg2e32.v", "vsseg3e32.v", "vsseg4e32.v", "vsseg5e32.v", "vsseg6e32.v", "vsseg7e32.v", "vsseg8e32.v",
    "vsse32.v", "vssseg2e32.v", "vssseg3e32.v", "vssseg4e32.v", "vssseg5e32.v", "vssseg6e32.v", "vssseg7e32.v", "vssseg8e32.v",
    "vsuxei32.v", "vsuxseg2ei32.v", "vsuxseg3ei32.v", "vsuxseg4ei32.v", "vsuxseg5ei32.v", "vsuxseg6ei32.v", "vsuxseg7ei32.v", "vsuxseg8ei32.v",
    "vsoxei32.v", "vsoxseg2ei32.v", "vsoxseg3ei32.v", "vsoxseg4ei32.v", "vsoxseg5ei32.v", "vsoxseg6ei32.v", "vsoxseg7ei32.v", "vsoxseg8ei32.v",
    "vl1re32.v", "vl2re32.v", "vl4re32.v", "vl8re32.v"
]

eew64_ins = [
    "vle64.v", "vlseg2e64.v", "vlseg3e64.v", "vlseg4e64.v", "vlseg5e64.v", "vlseg6e64.v", "vlseg7e64.v", "vlseg8e64.v",
    "vle64ff.v", "vlseg2e64ff.v", "vlseg3e64ff.v", "vlseg4e64ff.v", "vlseg5e64ff.v", "vlseg6e64ff.v", "vlseg7e64ff.v", "vlseg8e64ff.v",
    "vlse64.v", "vlsseg2e64.v", "vlsseg3e64.v", "vlsseg4e64.v", "vlsseg5e64.v", "vlsseg6e64.v", "vlsseg7e64.v", "vlsseg8e64.v",
    "vluxei64.v", "vluxseg2ei64.v", "vluxseg3ei64.v", "vluxseg4ei64.v", "vluxseg5ei64.v", "vluxseg6ei64.v", "vluxseg7ei64.v", "vluxseg8ei64.v",
    "vloxei64.v", "vloxseg2ei64.v", "vloxseg3ei64.v", "vloxseg4ei64.v", "vloxseg5ei64.v", "vloxseg6ei64.v", "vloxseg7ei64.v", "vloxseg8ei64.v",
    "vse64.v", "vsseg2e64.v", "vsseg3e64.v", "vsseg4e64.v", "vsseg5e64.v", "vsseg6e64.v", "vsseg7e64.v", "vsseg8e64.v",
    "vsse64.v", "vssseg2e64.v", "vssseg3e64.v", "vssseg4e64.v", "vssseg5e64.v", "vssseg6e64.v", "vssseg7e64.v", "vssseg8e64.v",
    "vsuxei64.v", "vsuxseg2ei64.v", "vsuxseg3ei64.v", "vsuxseg4ei64.v", "vsuxseg5ei64.v", "vsuxseg6ei64.v", "vsuxseg7ei64.v", "vsuxseg8ei64.v",
    "vsoxei64.v", "vsoxseg2ei64.v", "vsoxseg3ei64.v", "vsoxseg4ei64.v", "vsoxseg5ei64.v", "vsoxseg6ei64.v", "vsoxseg7ei64.v", "vsoxseg8ei64.v",
    "vl1re64.v", "vl2re64.v", "vl4re64.v", "vl8re64.v"
]

ls_no_eew_ins = ["vs1r.v", "vs2r.v", "vs4r.v", "vs8r.v", "vsm.v", "vlm.v"]

segment_stores  = seg2_stores + seg3_stores + seg4_stores + seg5_stores + seg6_stores + seg7_stores + seg8_stores
segment_loads   = seg2_loads  + seg3_loads  + seg4_loads  + seg5_loads  + seg6_loads  + seg7_loads  + seg8_loads

indexed_stores = [
    # Indexed unordered Stores
    "vsuxei8.v", "vsuxei16.v", "vsuxei32.v", "vsuxei64.v",
    "vsuxseg2ei8.v", "vsuxseg2ei16.v", "vsuxseg2ei32.v", "vsuxseg2ei64.v",
    "vsuxseg3ei8.v", "vsuxseg3ei16.v", "vsuxseg3ei32.v", "vsuxseg3ei64.v",
    "vsuxseg4ei8.v", "vsuxseg4ei16.v", "vsuxseg4ei32.v", "vsuxseg4ei64.v",
    "vsuxseg5ei8.v", "vsuxseg5ei16.v", "vsuxseg5ei32.v", "vsuxseg5ei64.v",
    "vsuxseg6ei8.v", "vsuxseg6ei16.v", "vsuxseg6ei32.v", "vsuxseg6ei64.v",
    "vsuxseg7ei8.v", "vsuxseg7ei16.v", "vsuxseg7ei32.v", "vsuxseg7ei64.v",
    "vsuxseg8ei8.v", "vsuxseg8ei16.v", "vsuxseg8ei32.v", "vsuxseg8ei64.v",
    # Indexed ordered Stores
    "vsoxei8.v", "vsoxei16.v", "vsoxei32.v", "vsoxei64.v",
    "vsoxseg2ei8.v", "vsoxseg2ei16.v", "vsoxseg2ei32.v", "vsoxseg2ei64.v",
    "vsoxseg3ei8.v", "vsoxseg3ei16.v", "vsoxseg3ei32.v", "vsoxseg3ei64.v",
    "vsoxseg4ei8.v", "vsoxseg4ei16.v", "vsoxseg4ei32.v", "vsoxseg4ei64.v",
    "vsoxseg5ei8.v", "vsoxseg5ei16.v", "vsoxseg5ei32.v", "vsoxseg5ei64.v",
    "vsoxseg6ei8.v", "vsoxseg6ei16.v", "vsoxseg6ei32.v", "vsoxseg6ei64.v",
    "vsoxseg7ei8.v", "vsoxseg7ei16.v", "vsoxseg7ei32.v", "vsoxseg7ei64.v",
    "vsoxseg8ei8.v", "vsoxseg8ei16.v", "vsoxseg8ei32.v", "vsoxseg8ei64.v"
]

indexed_loads = [
    # Indexed unordered loads
    "vluxei8.v", "vluxei16.v", "vluxei32.v", "vluxei64.v",
    "vluxseg2ei8.v", "vluxseg2ei16.v", "vluxseg2ei32.v", "vluxseg2ei64.v",
    "vluxseg3ei8.v", "vluxseg3ei16.v", "vluxseg3ei32.v", "vluxseg3ei64.v",
    "vluxseg4ei8.v", "vluxseg4ei16.v", "vluxseg4ei32.v", "vluxseg4ei64.v",
    "vluxseg5ei8.v", "vluxseg5ei16.v", "vluxseg5ei32.v", "vluxseg5ei64.v",
    "vluxseg6ei8.v", "vluxseg6ei16.v", "vluxseg6ei32.v", "vluxseg6ei64.v",
    "vluxseg7ei8.v", "vluxseg7ei16.v", "vluxseg7ei32.v", "vluxseg7ei64.v",
    "vluxseg8ei8.v", "vluxseg8ei16.v", "vluxseg8ei32.v", "vluxseg8ei64.v",
    # Indexed ordered Loads
    "vloxei8.v", "vloxei16.v", "vloxei32.v", "vloxei64.v",
    "vloxseg2ei8.v", "vloxseg2ei16.v", "vloxseg2ei32.v", "vloxseg2ei64.v",
    "vloxseg3ei8.v", "vloxseg3ei16.v", "vloxseg3ei32.v", "vloxseg3ei64.v",
    "vloxseg4ei8.v", "vloxseg4ei16.v", "vloxseg4ei32.v", "vloxseg4ei64.v",
    "vloxseg5ei8.v", "vloxseg5ei16.v", "vloxseg5ei32.v", "vloxseg5ei64.v",
    "vloxseg6ei8.v", "vloxseg6ei16.v", "vloxseg6ei32.v", "vloxseg6ei64.v",
    "vloxseg7ei8.v", "vloxseg7ei16.v", "vloxseg7ei32.v", "vloxseg7ei64.v",
    "vloxseg8ei8.v", "vloxseg8ei16.v", "vloxseg8ei32.v", "vloxseg8ei64.v"
]

indexed_ls_ins = indexed_loads + indexed_stores

vector_loads  = [
    "vl1re16.v", "vl1re32.v", "vl1re64.v", "vl1re8.v", "vl2re16.v", "vl2re32.v", "vl2re64.v", "vl2re8.v",
    "vl4re16.v", "vl4re32.v", "vl4re64.v", "vl4re8.v", "vl8re16.v", "vl8re32.v", "vl8re64.v", "vl8re8.v",
    "vle16.v", "vle16ff.v", "vle32.v", "vle32ff.v", "vle64.v", "vle64ff.v", "vle8.v", "vle8ff.v",
    "vloxei16.v", "vloxei32.v", "vloxei64.v", "vloxei8.v",
    "vloxseg2ei16.v", "vloxseg2ei32.v", "vloxseg2ei64.v", "vloxseg2ei8.v",
    "vloxseg3ei16.v", "vloxseg3ei32.v", "vloxseg3ei64.v", "vloxseg3ei8.v",
    "vloxseg4ei16.v", "vloxseg4ei32.v", "vloxseg4ei64.v", "vloxseg4ei8.v",
    "vloxseg5ei16.v", "vloxseg5ei32.v", "vloxseg5ei64.v", "vloxseg5ei8.v",
    "vloxseg6ei16.v", "vloxseg6ei32.v", "vloxseg6ei64.v", "vloxseg6ei8.v",
    "vloxseg7ei16.v", "vloxseg7ei32.v", "vloxseg7ei64.v", "vloxseg7ei8.v",
    "vloxseg8ei16.v", "vloxseg8ei32.v", "vloxseg8ei64.v", "vloxseg8ei8.v",
    "vlse16.v", "vlse32.v", "vlse64.v", "vlse8.v",
    "vlseg2e16.v", "vlseg2e16ff.v", "vlseg2e32.v", "vlseg2e32ff.v", "vlseg2e64.v", "vlseg2e64ff.v", "vlseg2e8.v", "vlseg2e8ff.v",
    "vlseg3e16.v", "vlseg3e16ff.v", "vlseg3e32.v", "vlseg3e32ff.v", "vlseg3e64.v", "vlseg3e64ff.v", "vlseg3e8.v", "vlseg3e8ff.v",
    "vlseg4e16.v", "vlseg4e16ff.v", "vlseg4e32.v", "vlseg4e32ff.v", "vlseg4e64.v", "vlseg4e64ff.v", "vlseg4e8.v", "vlseg4e8ff.v",
    "vlseg5e16.v", "vlseg5e16ff.v", "vlseg5e32.v", "vlseg5e32ff.v", "vlseg5e64.v", "vlseg5e64ff.v", "vlseg5e8.v", "vlseg5e8ff.v",
    "vlseg6e16.v", "vlseg6e16ff.v", "vlseg6e32.v", "vlseg6e32ff.v", "vlseg6e64.v", "vlseg6e64ff.v", "vlseg6e8.v", "vlseg6e8ff.v",
    "vlseg7e16.v", "vlseg7e16ff.v", "vlseg7e32.v", "vlseg7e32ff.v", "vlseg7e64.v", "vlseg7e64ff.v", "vlseg7e8.v", "vlseg7e8ff.v",
    "vlseg8e16.v", "vlseg8e16ff.v", "vlseg8e32.v", "vlseg8e32ff.v", "vlseg8e64.v", "vlseg8e64ff.v", "vlseg8e8.v", "vlseg8e8ff.v",
    "vlsseg2e16.v", "vlsseg2e32.v", "vlsseg2e64.v", "vlsseg2e8.v",
    "vlsseg3e16.v", "vlsseg3e32.v", "vlsseg3e64.v", "vlsseg3e8.v",
    "vlsseg4e16.v", "vlsseg4e32.v", "vlsseg4e64.v", "vlsseg4e8.v",
    "vlsseg5e16.v", "vlsseg5e32.v", "vlsseg5e64.v", "vlsseg5e8.v",
    "vlsseg6e16.v", "vlsseg6e32.v", "vlsseg6e64.v", "vlsseg6e8.v",
    "vlsseg7e16.v", "vlsseg7e32.v", "vlsseg7e64.v", "vlsseg7e8.v",
    "vlsseg8e16.v", "vlsseg8e32.v", "vlsseg8e64.v", "vlsseg8e8.v",
    "vluxei16.v", "vluxei32.v", "vluxei64.v", "vluxei8.v",
    "vluxseg2ei16.v", "vluxseg2ei32.v", "vluxseg2ei64.v", "vluxseg2ei8.v",
    "vluxseg3ei16.v", "vluxseg3ei32.v", "vluxseg3ei64.v", "vluxseg3ei8.v",
    "vluxseg4ei16.v", "vluxseg4ei32.v", "vluxseg4ei64.v", "vluxseg4ei8.v",
    "vluxseg5ei16.v", "vluxseg5ei32.v", "vluxseg5ei64.v", "vluxseg5ei8.v",
    "vluxseg6ei16.v", "vluxseg6ei32.v", "vluxseg6ei64.v", "vluxseg6ei8.v",
    "vluxseg7ei16.v", "vluxseg7ei32.v", "vluxseg7ei64.v", "vluxseg7ei8.v",
    "vluxseg8ei16.v", "vluxseg8ei32.v", "vluxseg8ei64.v", "vluxseg8ei8.v"
] + [
   # Unit-stride loads
    "vle8.v", "vle16.v", "vle32.v", "vle64.v",
    # Fault-only-first loads
    "vle8ff.v", "vle16ff.v", "vle32ff.v", "vle64ff.v",
    # Strided loads
    "vlse8.v", "vlse16.v", "vlse32.v", "vlse64.v",
    # Indexed unordered loads
    "vluxei8.v", "vluxei16.v", "vluxei32.v", "vluxei64.v",
    # Indexed ordered Loads
    "vloxei8.v", "vloxei16.v", "vloxei32.v", "vloxei64.v",
    # Whole Register Loads
    "vl1re8.v", "vl2re8.v", "vl4re8.v", "vl8re8.v",
    "vl1re16.v", "vl2re16.v", "vl4re16.v", "vl8re16.v",
    "vl1re32.v", "vl2re32.v", "vl4re32.v", "vl8re32.v",
    "vl1re64.v", "vl2re64.v", "vl4re64.v", "vl8re64.v",
    # Mask Load
    "vlm.v"
]

vector_stores = [
    "vs1r.v", "vs2r.v", "vs4r.v", "vs8r.v", "vse16.v", "vse32.v", "vse64.v", "vse8.v",
    "vsoxei16.v", "vsoxei32.v", "vsoxei64.v", "vsoxei8.v",
    "vsoxseg2ei16.v", "vsoxseg2ei32.v", "vsoxseg2ei64.v", "vsoxseg2ei8.v",
    "vsoxseg3ei16.v", "vsoxseg3ei32.v", "vsoxseg3ei64.v", "vsoxseg3ei8.v",
    "vsoxseg4ei16.v", "vsoxseg4ei32.v", "vsoxseg4ei64.v", "vsoxseg4ei8.v",
    "vsoxseg5ei16.v", "vsoxseg5ei32.v", "vsoxseg5ei64.v", "vsoxseg5ei8.v",
    "vsoxseg6ei16.v", "vsoxseg6ei32.v", "vsoxseg6ei64.v", "vsoxseg6ei8.v",
    "vsoxseg7ei16.v", "vsoxseg7ei32.v", "vsoxseg7ei64.v", "vsoxseg7ei8.v",
    "vsoxseg8ei16.v", "vsoxseg8ei32.v", "vsoxseg8ei64.v", "vsoxseg8ei8.v",
    "vsse16.v", "vsse32.v", "vsse64.v", "vsse8.v",
    "vsseg2e16.v", "vsseg2e32.v", "vsseg2e64.v", "vsseg2e8.v",
    "vsseg3e16.v", "vsseg3e32.v", "vsseg3e64.v", "vsseg3e8.v",
    "vsseg4e16.v", "vsseg4e32.v", "vsseg4e64.v", "vsseg4e8.v",
    "vsseg5e16.v", "vsseg5e32.v", "vsseg5e64.v", "vsseg5e8.v",
    "vsseg6e16.v", "vsseg6e32.v", "vsseg6e64.v", "vsseg6e8.v",
    "vsseg7e16.v", "vsseg7e32.v", "vsseg7e64.v", "vsseg7e8.v",
    "vsseg8e16.v", "vsseg8e32.v", "vsseg8e64.v", "vsseg8e8.v",
    "vssseg2e16.v", "vssseg2e32.v", "vssseg2e64.v", "vssseg2e8.v",
    "vssseg3e16.v", "vssseg3e32.v", "vssseg3e64.v", "vssseg3e8.v",
    "vssseg4e16.v", "vssseg4e32.v", "vssseg4e64.v", "vssseg4e8.v",
    "vssseg5e16.v", "vssseg5e32.v", "vssseg5e64.v", "vssseg5e8.v",
    "vssseg6e16.v", "vssseg6e32.v", "vssseg6e64.v", "vssseg6e8.v",
    "vssseg7e16.v", "vssseg7e32.v", "vssseg7e64.v", "vssseg7e8.v",
    "vssseg8e16.v", "vssseg8e32.v", "vssseg8e64.v", "vssseg8e8.v",
    "vsuxei16.v", "vsuxei32.v", "vsuxei64.v", "vsuxei8.v",
    "vsuxseg2ei16.v", "vsuxseg2ei32.v", "vsuxseg2ei64.v", "vsuxseg2ei8.v",
    "vsuxseg3ei16.v", "vsuxseg3ei32.v", "vsuxseg3ei64.v", "vsuxseg3ei8.v",
    "vsuxseg4ei16.v", "vsuxseg4ei32.v", "vsuxseg4ei64.v", "vsuxseg4ei8.v",
    "vsuxseg5ei16.v", "vsuxseg5ei32.v", "vsuxseg5ei64.v", "vsuxseg5ei8.v",
    "vsuxseg6ei16.v", "vsuxseg6ei32.v", "vsuxseg6ei64.v", "vsuxseg6ei8.v",
    "vsuxseg7ei16.v", "vsuxseg7ei32.v", "vsuxseg7ei64.v", "vsuxseg7ei8.v",
    "vsuxseg8ei16.v", "vsuxseg8ei32.v", "vsuxseg8ei64.v", "vsuxseg8ei8.v"
] + [
   # Unit-stride Stores
    "vse8.v", "vse16.v", "vse32.v", "vse64.v",
    # Strided Stores
    "vsse8.v", "vsse16.v", "vsse32.v", "vsse64.v",
    # Indexed unordered Stores
    "vsuxei8.v", "vsuxei16.v", "vsuxei32.v", "vsuxei64.v",
    # Indexed ordered Stores
    "vsoxei8.v", "vsoxei16.v", "vsoxei32.v", "vsoxei64.v",
     # Whole Register Stores
    "vs1r.v", "vs2r.v", "vs4r.v", "vs8r.v",
    # Mask Store
    "vsm.v"
]

vector_ls_ins = vector_stores + vector_loads

seg_vv_load   = [
    # Indexed unordered loads
    "vluxseg2ei8.v", "vluxseg2ei16.v", "vluxseg2ei32.v", "vluxseg2ei64.v",
    "vluxseg3ei8.v", "vluxseg3ei16.v", "vluxseg3ei32.v", "vluxseg3ei64.v",
    "vluxseg4ei8.v", "vluxseg4ei16.v", "vluxseg4ei32.v", "vluxseg4ei64.v",
    "vluxseg5ei8.v", "vluxseg5ei16.v", "vluxseg5ei32.v", "vluxseg5ei64.v",
    "vluxseg6ei8.v", "vluxseg6ei16.v", "vluxseg6ei32.v", "vluxseg6ei64.v",
    "vluxseg7ei8.v", "vluxseg7ei16.v", "vluxseg7ei32.v", "vluxseg7ei64.v",
    "vluxseg8ei8.v", "vluxseg8ei16.v", "vluxseg8ei32.v", "vluxseg8ei64.v",
    # Indexed ordered Loads
    "vloxseg2ei8.v", "vloxseg2ei16.v", "vloxseg2ei32.v", "vloxseg2ei64.v",
    "vloxseg3ei8.v", "vloxseg3ei16.v", "vloxseg3ei32.v", "vloxseg3ei64.v",
    "vloxseg4ei8.v", "vloxseg4ei16.v", "vloxseg4ei32.v", "vloxseg4ei64.v",
    "vloxseg5ei8.v", "vloxseg5ei16.v", "vloxseg5ei32.v", "vloxseg5ei64.v",
    "vloxseg6ei8.v", "vloxseg6ei16.v", "vloxseg6ei32.v", "vloxseg6ei64.v",
    "vloxseg7ei8.v", "vloxseg7ei16.v", "vloxseg7ei32.v", "vloxseg7ei64.v",
    "vloxseg8ei8.v", "vloxseg8ei16.v", "vloxseg8ei32.v", "vloxseg8ei64.v"
]

##################################
# Data Generation
##################################

def genRandomVector(test, sew, vs="vs2", emul=1):
  writeLine("\n")
  writeLine("///////////////////////////////////////////")
  writeLine(f"// {test}_{vs}_data for {vs}")
  writeLine("///////////////////////////////////////////\n")
  writeLine(".section .data\n")
  writeLine(f"    .align 3")
  writeLine("// Corner Vectors")

  eew = sew * emul
  for suite in ["base", "length"]:
    if (suite == "base"):
      maxVtests = basetest_count
      vl = 1
      num_words = math.ceil((vl * eew) / 32)
    else:
      maxVtests = lengthtest_count
      if (test in vd_widen_ins and vs == "vd") or (test in vs2_widen_ins and vs == "vs2"):
        num_words = math.ceil(maxVLEN * 2 / 32)
      else:
        num_words = math.ceil(maxVLEN / 32)
    for t in range(maxVtests):
        load_aligned = False
        writeLine(f"{vs}_random_{suite}_{t:03d}:")
        for i in range(num_words):
            randomElem = getrandbits(32)
            writeLine(f"    .word 0x{randomElem:08x}")

  writeLine("")

def genRandomVectorLS():
  writeLine("\n")
  writeLine("///////////////////////////////////////////")
  writeLine(f"// vector_ls_random_base data")
  writeLine("///////////////////////////////////////////\n")
  writeLine(".section .data\n")
  writeLine(f"    .align 4")
  writeLine("// Corner Vectors")

  num_words_either_side = int(maxELEN / 64) * 2 * 2 * maxVLEN # 2 times max vlen elements on either side of pointer (sewMAX = 64)

  writeLine(f"vector_ls_random_base_header:")
  for i in range(num_words_either_side):
      randomElem = getrandbits(32)
      writeLine(f"    .word 0x{randomElem:08x}")
  writeLine(f"vector_ls_random_base:")
  for i in range(num_words_either_side):
      randomElem = getrandbits(32)
      writeLine(f"    .word 0x{randomElem:08x}")

  writeLine("")

def genVMaskCorners():
  num_words = math.ceil(maxVLEN / 32)

  # generating random masks for length suite
  writeLine(f"    .align 3")
  for name in range(3):
    writeLine(f"random_mask_{name}:")
    val = getrandbits(maxVLEN)
    for i in range(num_words):
      word = (val >> (32 * i)) & 0xFFFFFFFF
      writeLine(f"    .word 0x{word:08x}")

  # generating random mask for cp_masking_corners
  regenerate = True
  while regenerate: # prevent overlapping with other mask corners
    regenerate = False
    random_mask = getrandbits(maxVLEN)
    for i in range(3, int(math.log2(maxVLEN))): # getting all powers of 2: 8 through maxVLEN
      vlen = 2 ** i
      random_mask_bottom_vlen_bits = random_mask % vlen
      if (random_mask_bottom_vlen_bits == 0) or (random_mask_bottom_vlen_bits % 2 == 1): # if any of them overlap with a mask corner
        regenerate = True

  writeLine(f"cp_mask_random:")
  for i in range(num_words):
      word = (random_mask >> (32 * i)) & 0xFFFFFFFF
      writeLine(f"    .word 0x{word:08x}")

  writeLine("")

def genVsCorners(test, sew, emul):
  def convert(val, bitwidth):
    if (sew == 64) or (eew == 64):
      return [f"0x{(val >> (eew * i)) & 0xFFFFFFFFFFFFFFFF:016x}" for i
              in range((bitwidth + (eew - 1)) // eew)]
    else:
      return [f"0x{(val >> (eew * i)) & 0xFFFFFFFF:08x}" for i
              in range((bitwidth + (eew-1)) // eew)]

  if (emul[0] == "f"):
    eew = int(sew / int(emul[1]))
    ending = "emul" + emul
  elif (emul == "eew1"):
    eew = 8
    ending = "eew1"
  else:
    eew = sew * int(emul)
    ending = "emul" + emul

  v_register_corners = {
    "zero":   0,
    "one":    1,
    "two":    2,
    "ones":   -1,
    "onesm1": -2,
    "min":    2**(eew - 1),
    "minm1":  2**(eew - 1) + 1,
    "max":    2**(eew - 1) - 1,
    "maxm1":  2**(eew - 1) - 2,
    "walkeven": sum(1 << i for i in range(eew) if i % 2 == 0),
    "walkodd":  sum(1 << i for i in range(eew) if i % 2 == 1),
  }

  while (r := randint(3, 2**(eew - 1) - 3)) in set(v_register_corners.values()): pass
  v_register_corners["random_within_2vlmax"] = r
  while (r := randint(3, 2**(eew - 1) - 3)) in set(v_register_corners.values()): pass
  v_register_corners["random"] = r

  writeLine(f"    .align 3")
  for corner in v_register_corners:
      val = v_register_corners[corner]
      val &= (1 << eew) - 1
      writeLine(f"vs_corner_{corner}_{ending}:")
      for w in convert(val, eew):
        if (sew == 64) or (eew == 64):
          writeLine(f"    .dword {w}")
        else:
          writeLine(f"    .word {w}")


##################################
# Common functions
##################################

# Python randomizes hashes, while we are trying to have a repeatable hash for repeatable test cases. This function gives a simple hash as a random seed.
def myhash(s):
  h = 0
  for c in s:
    h = (h * 31 + ord(c)) & 0xFFFFFFFF
  return h

def insertTemplate(test, signatureWords, name):
    writeLine(f"\n# {name}")
    with open(f"{ARCH_VERIF}/templates/testgen/{name}") as h:
        template = h.read()

    if (test == "ExceptionsVx"):
      ISAEXT = "RV32IMV_Zicsr, RV64IMV_Zicsr"
      test_case_line = "//check ISA:=regex(.*I.*M.*V.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def rvtest_dtrap_routine=True; def TEST_CASE_1=True"
    else:
      # Split extension into components based on capital letters
      ext_parts = re.findall(r'Z[a-z]+|[A-Z]', extension)
      ext_parts_no_I = [ext for ext in ext_parts if ext != "I"]
      if 'V' in ext_parts_no_I:
        ext_parts_no_I = ['M'] + ext_parts_no_I
      ISAEXT = f"RV{xlen}I{''.join(ext_parts_no_I)}"
      # Construct the regex part
      ext_regex = ".*I.*" + "".join([f"{ext}.*" for ext in ext_parts_no_I])
      test_case_line = f"//check ISA:=regex(.*{xlen}.*);check ISA:=regex({ext_regex});def TEST_CASE_1=True;"

    # Replace placeholders
    template = template.replace("sigupd_count", str(signatureWords))
    template = template.replace("mtrap_sig_count", str(mtrap_sig_count))
    template = template.replace("ISAEXT", ISAEXT)
    template = template.replace("TestCase", test_case_line)
    template = template.replace("Instruction", test)
    writeLine(template)

def writeSIGUPD(rd):
    global sigupd_count  # Allow modification of global variable
    sigupd_count += 1    # Increment counter on each call
    l = f"RVTEST_SIGUPD(x{sigReg}, x{rd})\n"
    return l

def writeSIGUPD_F(rd):
    global sigupd_count  # Allow modification of global variable
    global sigupd_countF
    sigupd_count += 1    # Increment counter for floating point signature sicne SIGUPD_F macro stores FCSR as SREG
    sigupd_countF += 1   # Increment counter on each call since SIGUPD_F macro stores FREG
    tempReg = 4
    while tempReg == sigReg:
      tempReg = randint(1,31)
    l = f"csrr x{tempReg}, fcsr\n"                              # Get fcsr into a temp register
    l = l + f"RVTEST_SIGUPD_F(x{sigReg}, f{rd}, x{tempReg})\n"  # x{rd} as fstatus Xreg from macro definition as dummy store (might be needed in another instruction)
    return l

def writeSIGUPD_V(vd, sew, avl=1, sig_lmul = None, load_testline = None, sig_whole_register_store = False):
    global sigupd_count        # Allow modification of global variable
    if (avl == "random" or avl == "vlmax"):
      avl = maxVLEN            # set to max possible vl since SIGUPD_V needs AVL to be a compile-time constant
    if (avl == 1):
      sigupd_count += avl * 2  # Increment counter on each call
    else:
      sigupd_count += avl

    tempReg = 6
    while tempReg == sigReg:
      tempReg = randint(1,31)

    if ("SEWMIN" in str(sew)):
      if sig_whole_register_store:
        writeLine(f"vsetvli x{tempReg}, x0, SEWSIZE, m{sig_lmul}, ta, ma",       f"# change lmul to {sig_lmul} and set vl to vlmax to store register(s) (offgroup)")
      writeLine(f"RVTEST_SIGUPD_V_SEWMIN(x{sigReg}, x{tempReg}, {avl}, v{vd})",  f"# stores v{vd} (sew = SEWMIN, AVL = {avl}) in signature with base (x{sigReg}) and helper (x{tempReg}) register")
    else:
      if sig_whole_register_store:
        writeLine(f"vsetvli x{tempReg}, x0, e{sew}, m{sig_lmul}, ta, ma",        f"# change lmul to {sig_lmul} and set vl to vlmax to store register(s) (offgroup)")
      writeLine(f"RVTEST_SIGUPD_V(x{sigReg}, x{tempReg}, {avl}, {sew},  v{vd})", f"# stores v{vd} (sew = {sew}, AVL = {avl}) in signature with base (x{sigReg}) and helper (x{tempReg}) register")

def vsAddressCount(suite="base"):
    global base_suite_test_count, length_suite_test_count
    if (suite == "length"):
        length_suite_test_count = length_suite_test_count + 1
    else:
        base_suite_test_count = base_suite_test_count + 1

##################################
# Common functions
##################################

# TODO: will be used and tested for vector FP
def loadVFloatReg(reg, val, sew):
  if sew == 16:
    precision = 16
    loadop = "flh"
    storeop = "sh"
  elif sew == 32:
    precision = 32
    loadop = "flw"
    storeop = "sw"
  elif sew == 64:
    precision = 64
    loadop = "fld"
    storeop = "sd"
  writeLine("la x2, scratch")
  writeLine(f"li x3, {formatstrFP.format(val)}", f"# load x3 with value {formatstrFP.format(val)}")
  writeLine(f"{storeop} x3, 0(x2)", f"# store {formatstrFP.format(val)} in memory")
  writeLine(f"{loadop} v{reg}, 0(x2)", f"# load {formatstrFP.format(val)} from memory into v{reg}")

def loadVecReg(instruction, register_argument_name: str, vector_register_data, sew, lmul, *scalar_registers_used):
    scalar_registers_used = list(scalar_registers_used)
    register_data         = vector_register_data[register_argument_name]

    register              = register_data['reg']
    register_val_pointer  = register_data['val_pointer']
    register_value        = register_data['val']
    register_emul         = lmul * register_data['size_multiplier'] * register_data['segments']

    if register_data['reg_type'] == "mask" : register_sew = 8
    if instruction in vector_ls_ins        :
      if register_argument_name == 'vs2':
        register_sew = getInstructionEEW(instruction) # vs2 uses eew
      else:
        register_sew = sew # regsiters are read with sew and lmul in vtype csr
    else                                   : register_sew = int(register_data['size_multiplier'] * sew)

    # need to handle loading to mask and scalar registers which can be off group
    # also need to ensure that if a scalar value is widenened, that it only loads a single register
    # safely loading new vtype for fractional lmul to make sure all desired elements are loaded
    if lmul < 1:
      load_unique_vtype = True
    elif getInstructionEEW(instruction) != sew and register_argument_name == 'vs2':
      load_unique_vtype = True
    elif instruction in whole_register_move:
      load_unique_vtype = True
    else:
      if instruction in whole_register_ls:
        load_unique_vtype = lmul != getInstructionSegments(instruction)
      if register_emul <= 1 and register % lmul != 0:
        load_unique_vtype = True
      if register % lmul != 0:
        load_unique_vtype = True
      else:
        load_unique_vtype = (((register_emul > 1 and register % register_emul != 0) and (register_data['reg_type'] == "mask" or register_data['reg_type'] == "scalar"))) \
          or (register_emul > 1 and register_data['reg_type'] == "scalar")

    if load_unique_vtype:
      vtypeReg = 1
      while vtypeReg in scalar_registers_used:
        vtypeReg = randint(1,31)
      scalar_registers_used.append(vtypeReg)

      avlReg = 9
      while avlReg in scalar_registers_used:
        avlReg = randint(1,31)
      scalar_registers_used.append(avlReg)

      writeLine(f"csrr x{vtypeReg}, vtype", "# save vtype register for after load")
      writeLine(f"csrr x{avlReg}, vl",      "# save vl register for after load")
      writeLine(f"vsetvli x0, x{avlReg}, e{max(register_sew, sew)}, m1, ta, ma", "# set lmul to 1 for load") # we do a max of sew an register_sew to ensure masks load with sew and scalars load with their eew so both load exactly a whole register when desired

    load_vls_random_corner = register_val_pointer == "vs_corner_random_within_2vlmax"

    if load_vls_random_corner: register_val_pointer = "vector_ls_random_base"

    tempReg = 4
    while tempReg in scalar_registers_used:
      tempReg = randint(1,31)
    scalar_registers_used.append(tempReg)

    if register_value is not None:
      writeLine(f"li x{tempReg}, {register_value}", "# Load immediate value into integer register")
      writeLine(f"vmv.v.x v{register}, x{tempReg}",       f"# Load desired value into v{register}")
    else:
      writeLine(f"la x{tempReg}, {register_val_pointer}",  "# Load address of desired value")
      if register_val_pointer == "vs_corner_zero_emul8":
        writeLine(f"vl1re{getInstructionEEW(instruction)}.v v{register}, (x{tempReg})",               f"# zero register")
      else:
        writeLine(f"vle{register_sew}.v v{register}, (x{tempReg})", f"# Load desired value from memory into v{register}")

    if load_unique_vtype: # return vl and vtype register to what it was before
      writeLine(f"vsetvl x0, x{avlReg}, x{vtypeReg}", "# restore vl and vtype setting")

    if register_argument_name == 'vs2' and instruction in vector_ls_ins: # make sure elements in vs2 are within VLMAX and sew algined
      vtypeReg = 1
      while vtypeReg in scalar_registers_used:
        vtypeReg = randint(1,31)
      scalar_registers_used.append(vtypeReg)

      vlmaxReg = 10
      while vlmaxReg in scalar_registers_used:
        vlmaxReg = randint(1,31)
      scalar_registers_used.append(vlmaxReg)

      avlReg = 9
      while avlReg in scalar_registers_used:
        avlReg = randint(1,31)
      scalar_registers_used.append(avlReg)

      if   sew == 8  : sew_aligned = -1#"0x1F"
      elif sew == 16 : sew_aligned = -2#"0x1E"
      elif sew == 32 : sew_aligned = -4#"0x1C"
      elif sew == 64 : sew_aligned = -8#"0x18"

      eew = getInstructionEEW(instruction)
      vs2_emul = math.ceil(lmul * eew / sew)

      element_positive = 2 ** (eew-1) - 1

      writeLine(f"csrr x{vtypeReg}, vtype",                                     f"# save vtype register for after load")
      writeLine(f"csrr x{avlReg}, vl",                                          f"# save vl register for after load")
      writeLine(f"vsetvl x{vlmaxReg}, x0, x{vtypeReg}",                         f"# set vl to vlmax")
      writeLine(f"add x{vlmaxReg}, x{vlmaxReg}, x{vlmaxReg}",                   f"# save vlmax * 2")
      writeLine(f"vsetvli x0, x{avlReg}, e{eew}, m{getLmulFlag(vs2_emul)}, ta, ma", f"# setting sew to vs2 eew")
      if eew < xlen: # make sure the number is positive since it will be 0 extended to XLEN
        element_positiv_reg = 15
        while element_positiv_reg in scalar_registers_used:
          element_positiv_reg = randint(1,31)
        scalar_registers_used.append(element_positiv_reg)
        writeLine(f"li x{element_positiv_reg}, {element_positive}",             f"#  make sure the number is positive since it will be 0 extended to XLEN")
        writeLine(f"vand.vx v{register}, v{register}, x{element_positiv_reg}",  f"#  ")
      writeLine(f"vrem.vx v{register}, v{register}, x{vlmaxReg}",               f"# ensure all values are within (-2*vlmax, 2*vlmax)")
      writeLine(f"vand.vi v{register}, v{register}, {sew_aligned}",             f"# sew-aligning elements")
      writeLine(f"vsetvl x0, x{avlReg}, x{vtypeReg}",                           f"# restore vl and vtype setting")

    return scalar_registers_used

def loadScalarReg(register_argument_name: str, scalar_register_data):
  register_data     = scalar_register_data[register_argument_name]
  register          = register_data['reg']
  register_value    = register_data['val']

  writeLine(f"li x{register}, {register_value}", "# Load immediate value into integer register")

def loadScalarAddress(register_argument_name: str, scalar_register_data):
  register_data     = scalar_register_data[register_argument_name]
  register          = register_data['reg']
  register_pointer  = register_data['val_pointer']

  writeLine(f"la x{register}, {register_pointer}", "# Load address pointer integer register for loads")

# handleSignaturePointerConflict switches to a different signature pointer if the current one is needed for the test
def handleSignaturePointerConflict(*registers):
  global sigReg # this function can modify the signature register

  oldSigReg = sigReg

  while (sigReg in registers):
    sigReg = randint(1,31)

  if (sigReg != oldSigReg):
    writeLine("mv x" + str(sigReg) + ", x" + str(oldSigReg), "# switch signature pointer register to avoid conflict with test")

def getSigSpace(xlen, flen):
  #function to calculate the space needed for the signature memory. with different reg sizes to accommodate different xlen and flen only when needed to minimize space
  signatureWords = sigupd_count
  if sigupd_countF > 0:
    if flen > xlen:
      mult = flen//xlen
      signatureWords = sigupd_count + (sigupd_countF * (mult *2-1)) # multiply be reg ratio to get correct amount of Xlen/32 4byte blocks for footer and double the count for alignment (4 and 8 need 16 byts)
    else:
      signatureWords = sigupd_count + sigupd_countF # all Sigupd, no need to adjust since Xlen is equal to or larger than Flen and SIGUPD_F macro will adjust alignment up to XLEN
  return signatureWords

def writeVecTest(vd, sew, testline, test=None, rd=None, vl=1, sig_lmul = None, sig_whole_register_store = False, load_testline = None, priv = False):
    writeLine(testline)
    if (priv):
      writeLine(f"nop",                                           f"# nop after possible trap")
      writeLine(f"vsetivli x0, 1, SEWSIZE, m{sig_lmul}, tu, mu",  f"# re-initialize vl = 1, LMUL = {sig_lmul}, SEW = SEWMIN for signature")

    if load_testline is not None:
      writeLine(load_testline, "# load value stored in memory to check against signature")

    if (test in vd_widen_ins) or (test in wvsins):
      writeSIGUPD_V(vd, 2*sew, avl=vl, sig_lmul=sig_lmul, load_testline = load_testline, sig_whole_register_store = sig_whole_register_store)  # EEW of vd = 2 * SEW for widening
    elif (test in maskins):
      writeSIGUPD_V(vd, 8, avl=vl, sig_lmul=sig_lmul, load_testline = load_testline, sig_whole_register_store = sig_whole_register_store)      # EEW of vd = 1 for mask
    elif (test in xvtype):
      writeSIGUPD(rd)
    else:
      writeSIGUPD_V(vd, sew, avl=vl, sig_lmul=sig_lmul, load_testline = load_testline, sig_whole_register_store = sig_whole_register_store)

# TODO : Make this works with vector FP
def loadFloatRoundingMode(vfloattype, *scalar_registers_used):
  return

def loadVxrmRoundingMode(vxrm, *scalar_registers_used):
  scalar_registers_used = list(scalar_registers_used)

  tempReg3 = 13
  while tempReg3 in scalar_registers_used:
    tempReg3 = randint(1,31)
  scalar_registers_used.append(tempReg3)

  writeLine("", f"# set vcsr.vxrm to {vxrm}")
  writeLine(f"li x{tempReg3}, {vxrmList[vxrm]}")
  writeLine(f"csrw vcsr, x{tempReg3}\n")
  return scalar_registers_used

# TODO: doesnt work
def loadVxsatMode(*scalar_registers_used):
  # TODO dont use t0 find a register that works
  # writeLine(f"csrr t0, vcsr"
  # writeLine(f"andi t1, t0, 1"
  # writeLine(f"la t2, vxsat_address"
  # writeLine(f"sw t1, 0(t2)"
  return

def getLMULIfdef(lmul):
  ifdef = ""
  if (lmul == 0.5):
    ifdef = "#ifdef LMULf2_SUPPORTED\n"
  elif (lmul == 0.25):
    ifdef = "#ifdef LMULf4_SUPPORTED\n"
  elif (lmul == 0.125):
    ifdef = "#ifdef LMULf8_SUPPORTED\n"
  return ifdef

def getELENIfdef(instruction):
  ifdef = ""
  if   instruction in eew64_ins:
    ifdef = "#if ELEN >= 64\n"
  elif instruction in eew32_ins:
    ifdef = "#if ELEN >= 32\n"
  elif instruction in eew16_ins:
    ifdef = "#if ELEN >= 16\n"
  elif instruction in eew8_ins:
    ifdef = "#if ELEN >= 8\n"
  return ifdef

def getSEWMINIfdef(instruction):
  ifdef = ""
  if   instruction in eew64_ins:
    ifdef = "#if SEWMIN <= 64\n"
  elif instruction in eew32_ins:
    ifdef = "#if SEWMIN <= 32\n"
  elif instruction in eew16_ins:
    ifdef = "#if SEWMIN <= 16\n"
  elif instruction in eew8_ins:
    ifdef = "#if SEWMIN <= 8\n"
  return ifdef

def getMaxIndexEEWIfdef(instruction):
  ifdef = ""
  if   instruction in eew64_ins:
    ifdef = "#if MAXINDEXEEW >= 64\n"
  elif instruction in eew32_ins:
    ifdef = "#if MAXINDEXEEW >= 32\n"
  elif instruction in eew16_ins:
    ifdef = "#if MAXINDEXEEW >= 16\n"
  elif instruction in eew8_ins:
    ifdef = "#if MAXINDEXEEW >= 8\n"
  return ifdef

def getInstructionEEW(instruction):
  if   instruction in eew8_ins  : return 8
  elif instruction in eew16_ins : return 16
  elif instruction in eew32_ins : return 32
  elif instruction in eew64_ins : return 64
  else                          : return None

def prepMaskV(maskval, sew, tempReg, lmul):
  lmulflag = getLmulFlag(lmul)
  if (maskval == "zeroes"):
    writeLine(f"vmv.v.i v0, 0",                               f"# Set mask value to 0")
  elif (maskval == "ones"):
    writeLine(f"vsetvli x{tempReg}, x0, e{sew}, m{lmulflag}, ta, ma",  f"# x{tempReg} = VLMAX")
    writeLine(f"vid.v v1",                                    f"# v1 = [0,1,2,...]")
    writeLine(f"vmv.v.i v0, 0",                               f"# Reset mask value to 0")
    writeLine(f"vmslt.vx v0, v1, x{tempReg}",                 f"# v0[i] = (i < VLMAX) ? 1 : 0")
  elif (maskval == "vlmaxm1_ones"):
    writeLine(f"vsetvli x{tempReg}, x0, e{sew}, m{lmulflag}, ta, ma",  f"# x{tempReg} = VLMAX")
    writeLine(f"addi x{tempReg}, x{tempReg}, -1",             f"# x{tempReg} = VLMAX - 1")
    writeLine(f"vid.v v1",                                    f"# v1 = [0,1,2,...]")
    writeLine(f"vmv.v.i v0, 0",                               f"# Reset mask value to 0")
    writeLine(f"vmslt.vx v0, v1, x{tempReg}",                 f"# v0[i] = (i < VLMAX-1) ? 1 : 0")
  elif (maskval == "vlmaxd2p1_ones"):
    writeLine(f"vsetvli x{tempReg}, x0, e{sew}, m{lmulflag}, ta, ma",  f"# x{tempReg} = VLMAX")
    writeLine(f"srli x{tempReg}, x{tempReg}, 1",              f"# x{tempReg} = VLMAX / 2")
    writeLine(f"addi x{tempReg}, x{tempReg}, 1",              f"# x{tempReg} = VLMAX / 2 + 1")
    writeLine(f"vid.v v1",                                    f"# v1 = [0,1,2,...]")
    writeLine(f"vmv.v.i v0, 0",                               f"# Reset mask value to 0")
    writeLine(f"vmslt.vx v0, v1, x{tempReg}",                 f"# v0[i] = (i < VLMAX/2+1) ? 1 : 0")
  else: # random mask
    writeLine(f"vmv.v.i v0, 0",                               f"# Reset mask value to 0")
    writeLine(f"la x{tempReg}, {maskval}")
    writeLine(f"vlm.v v0, (x{tempReg})",                      f"# Load mask value into v0")

def prepVstart(vstartval, lmul = 1):
  if   (vstartval == "one"):
    writeLine(f"li x8, 1",                                    f"# Load x8 = 1 for vstart")
  elif (vstartval == "vlmaxm1"):
    writeLine(f"vsetvli x8, x0, SEWSIZE, m{lmul}, ta, ma",    f"# x8 = VLMAX")
    writeLine(f"addi x8, x8, -1",                             f"# x8 = VLMAX - 1")
  elif (vstartval == "vlmaxd2"):
    writeLine(f"vsetvli x8, x0, SEWSIZE, m{lmul}, ta, ma",    f"# x8 = VLMAX")
    writeLine(f"srli x8, x8, 1",                              f"# x8 = VLMAX / 2")
  else: # random vstart
    randvstart = randint(3, maxVLEN)  # TODO: check logic for this
    writeLine(f"vsetvli x8, x0, SEWSIZE, m{lmul}, ta, ma",    f"# x8 = VLMAX")
    writeLine(f"la t3, {randvstart}")
    writeLine(f"remu t3, t3, x8",                             f"# Ensure that vl < VLMAX")
  writeLine(f"csrw vstart, x8",                               f"# Write desired vstart value to the CSR")

def getInstructionArguments(instruction):
  instruction_arguments = []
  # test writing
  if   instruction in vvvmtype    : instruction_arguments = ['vd', 'vs2', 'vs1', 'vm']
  elif instruction in vvvtype     : instruction_arguments = ['vd', 'vs2', 'vs1'      ]
  elif instruction in vvvmrtype   : instruction_arguments = ['vd', 'vs1', 'vs2', 'vm']
  elif instruction in vvxmtype    : instruction_arguments = ['vd', 'vs2', 'rs1', 'vm']
  elif instruction in vxvmtype    : instruction_arguments = ['vd', 'rs1', 'vs2', 'vm']
  elif instruction in vvimtype    : instruction_arguments = ['vd', 'vs2', 'imm', 'vm']
  elif instruction in vvivtype    : instruction_arguments = ['vd', 'vs2', 'imm', 'v0']
  elif instruction in vvvvtype    : instruction_arguments = ['vd', 'vs2', 'vs1', 'v0']
  elif instruction in vvxvtype    : instruction_arguments = ['vd', 'vs2', 'rs1', 'v0']
  elif instruction in xvmtype     : instruction_arguments = ['rd', 'vs2',        'vm']
  elif instruction in xvtype      : instruction_arguments = ['rd', 'vs2',            ]
  elif instruction in vvmtype     : instruction_arguments = ['vd', 'vs2',        'vm']
  elif instruction in vmtype      : instruction_arguments = ['vd',               'vm']
  elif instruction in vxtype      : instruction_arguments = ['vd', 'rs1',            ]
  elif instruction in vvrtype     : instruction_arguments = ['vd', 'vs1',        'vm']
  elif instruction in vvvxtype    : instruction_arguments = ['vd', 'vs2',        'vm']
  elif instruction in vitype      : instruction_arguments = ['vd', 'imm',        'vm']
  elif instruction in type_vsx    : instruction_arguments = ['vs3','rs1'             ]
  elif instruction in type_vsxm   : instruction_arguments = ['vs3','rs1',        'vm']
  elif instruction in type_vsxxm  : instruction_arguments = ['vs3','rs1', 'rs2', 'vm']
  elif instruction in type_vsxvm  : instruction_arguments = ['vs3','rs1', 'vs2', 'vm']
  elif instruction in type_vx     : instruction_arguments = ['vd', 'rs1'             ]
  elif instruction in type_vxm    : instruction_arguments = ['vd', 'rs1',        'vm']
  elif instruction in type_vxvm   : instruction_arguments = ['vd' ,'rs1', 'vs2', 'vm']
  elif instruction in type_vxxm   : instruction_arguments = ['vd' ,'rs1', 'rs2', 'vm']
  else:
    print("Error: %s type not implemented yet" % instruction)

  return instruction_arguments

def writeTest(description, instruction, instruction_data,
              sew=None, lmul=1, vl=1, vstart=0, maskval=None, vxrm=None,
              vfrm=None, vfloattype=None, vxsat=None, vta=0, vma=0):

    [vector_register_data, scalar_register_data, floating_point_register_data, imm_val] = instruction_data

    vd              = vector_register_data['vd'] ['reg']

    rd              = scalar_register_data['rd'] ['reg']
    rs1             = scalar_register_data['rs1']['reg']
    rs2             = scalar_register_data['rs2']['reg']

    scalar_registers_used = [rd, rs1, rs2]

    tempReg = 6
    while tempReg in scalar_registers_used:
      tempReg = randint(1,31)
    scalar_registers_used.append(tempReg)

    handleSignaturePointerConflict(*scalar_registers_used)
    scalar_registers_used.append(sigReg)

    # deal with conflict before generating lmul ifdefs to not cause issue if the test is unused

    writeLine("\n" + getLMULIfdef(lmul))

    writeLine(getELENIfdef(instruction))

    writeLine(getMaxIndexEEWIfdef(instruction))

    writeLine(getSEWMINIfdef(instruction))

    writeLine("# Testcase " + str(description))

    # If mask value specified, load to v0
    if maskval is not None:
      prepMaskV(maskval, sew, tempReg, lmul)
    elif any(instruction in type for type in [vvivtype, vvvvtype, vvxvtype]):
      writeLine("vmv.v.i v0, 0", "# set v0 register to 0 in base suit where vm is fixed to 0")

    scalar_registers_used = prepBaseV(sew, lmul, vl, vstart, vta, vma, *scalar_registers_used)

    if vfloattype is not None:
      scalar_registers_used = loadFloatRoundingMode(vfloattype, *scalar_registers_used)
    elif vxsat is not None:
      scalar_registers_used = loadVxsatMode(*scalar_registers_used)
    elif vxrm is not None:
      scalar_registers_used = loadVxrmRoundingMode(vxrm, *scalar_registers_used)

    instruction_arguments = getInstructionArguments(instruction)

    testline = instruction + " "

    for argument in instruction_arguments:
      if   argument == 'vm':
        if maskval is not None:
          testline = testline + "v0.t"
        else:
          testline = testline[:-2] # remove the ", " since theres no argument
      elif argument == 'v0':
        testline = testline + "v0"
      elif argument == 'imm':
        testline = testline + f"{imm_val}"
      elif argument[0] == 'v':
        scalar_registers_used = loadVecReg(instruction, argument, vector_register_data, sew, lmul, *scalar_registers_used)
        testline = testline + f"v{vector_register_data[argument]['reg']}"
      elif argument[0] == 'r':
        if argument == "rs1" and instruction in vector_ls_ins:
          loadScalarAddress(argument, scalar_register_data)
          testline = testline + f"(x{scalar_register_data[argument]['reg']})"
        else:
          loadScalarReg(argument, scalar_register_data)
          testline = testline + f"x{scalar_register_data[argument]['reg']}"
      elif argument[0] == 'f':
        # TODO : implement load value for floating point
        testline = testline + f"f{floating_point_register_data[argument]['reg']}"
      else:
        raise TypeError(f"Instruction Argument type not supported: '{argument}'")

      testline = testline + ", "

    testline = testline[:-2] # remove the ", " at the end of the test

    if vector_register_data['vd']['reg_type'] == "mask" or vector_register_data['vd']['reg_type'] == "scalar" \
                                    or (instruction in whole_register_ls and (lmul != getInstructionSegments(instruction) or sew != getInstructionEEW(instruction))):
      sig_lmul = 1
      sig_whole_register_store = True
    elif instruction in whole_register_move:
      sig_lmul= getLengthLmul(instruction) # will return <nf> for whole register moves
      sig_whole_register_store = True
    else:
      sig_lmul = None
      sig_whole_register_store = False

    signature_target_vd = vd

    load_testline = None
    if instruction in vector_stores: # for stores we reload the value saved to memeory to check against signature
      load_instruction = getLoadEquivilentInstruction(instruction, sew)
      load_instruction_data = randomizeVectorInstructionData(load_instruction, sew, None, None, lmul=lmul, additional_no_overlap=[['vs3_start', 'vd_start'], ['vd', 'v0']],
                                                        vs2_reg = vector_register_data['vs2']['reg'],
                                                        vs3_reg = vector_register_data['vs3']['reg'],
                                                        rs1_reg = scalar_register_data['rs1']['reg'],
                                                        rs2_reg = scalar_register_data['rs2']['reg'])

      [load_vector_register_data, load_scalar_register_data, load_floating_point_register_data, load_imm_val] = load_instruction_data
      load_vd = load_vector_register_data['vd'] ['reg']

      load_testline = f"{load_instruction} v{load_vd}, (x{load_scalar_register_data['rs1']['reg']})"

      signature_target_vd = load_vector_register_data['vd']['reg']

      if load_instruction in indexed_loads:
        load_testline = load_testline + f", v{load_vector_register_data['vs2']['reg']}"
      if load_instruction in strided_loads:
        load_testline = load_testline + f", x{load_scalar_register_data['rs2']['reg']}"
      if maskval is not None:
        load_testline = load_testline + ", v0.t"

    if instruction in vector_ls_ins and instruction not in indexed_ls_ins and getInstructionEEW(instruction) is not None :
      signature_target_sew = getInstructionEEW(instruction)
    else :
      signature_target_sew = sew

    if (maskval is not None) or (vl is not None):
      writeVecTest(signature_target_vd, signature_target_sew, testline, test=instruction, rd=rd, vl=vl, sig_lmul=sig_lmul, load_testline = load_testline, sig_whole_register_store=sig_whole_register_store)
    else:
      writeVecTest(signature_target_vd, signature_target_sew, testline, test=instruction, rd=rd, sig_lmul=sig_lmul, load_testline = load_testline,  sig_whole_register_store=sig_whole_register_store)

    if (getLMULIfdef(lmul) != ""):
      writeLine("#endif")
    if (getELENIfdef(instruction) != ""):
      writeLine("#endif")
    if (getSEWMINIfdef(instruction) != ""):
      writeLine("#endif")
    if (getMaxIndexEEWIfdef(instruction) != ""):
      writeLine("#endif")

def getLoadEquivilentInstruction(instruction, sew):
  if instruction in whole_register_stores:
    return "vl" + instruction[2] + "re" + str(sew) + ".v"

  return "vl" + instruction[2:]

def getLmulFlag(lmul):
  lmulflag = lmul

  if (lmul == 0.5):
    lmulflag = "f2"
  elif (lmul == 0.25):
    lmulflag = "f4"
  elif (lmul == 0.125):
    lmulflag = "f8"

  return lmulflag

def prepBaseV(sew, lmul, vl=1, vstart=0, ta=0, ma=0, *scalar_registers_used):
  scalar_registers_used = list(scalar_registers_used)

  lmulflag = getLmulFlag(lmul)

  if ma is None:
    maflag = " "
  elif ma == 0:
    maflag = ", mu"
  elif ma == 1:
    maflag = ", ma"

  if ta is None:
    taflag = " "
  elif ta == 0:
    taflag = ", tu"
  elif ta == 1:
    taflag = ", ta"

  tempReg2 = 5
  while tempReg2 in scalar_registers_used:
    tempReg2 = randint(1,31)
  scalar_registers_used.append(tempReg2)

  vlmaxReg = 7
  while vlmaxReg in scalar_registers_used:
    vlmaxReg = randint(1,31)
  scalar_registers_used.append(vlmaxReg)

  if vl == "random":
    randomVl = getrandbits(32)
    writeLine(f"li x{tempReg2}, {randomVl}",                                      f"# Load value for random vl preparation")
    writeLine(f"vsetvli x{vlmaxReg}, x0, e{sew}, m{lmulflag}{taflag}{maflag}",    f"# x{vlmaxReg} = VLMAX")
    writeLine(f"remu x{tempReg2}, x{tempReg2}, x{vlmaxReg}",                      f"# ensure that vl < VLMAX")
    writeLine(f"ori x{tempReg2}, x{tempReg2}, 0x2",                               f"# set bit 1 to 1, ensuring 2 <= vl < VLMAX")
    writeLine(f"vsetvli x0, x{tempReg2}, e{sew}, m{lmulflag}{taflag}{maflag}")
  elif vl == "vlmax":
    writeLine(f"vsetvli x{tempReg2}, x0, e{sew}, m{lmulflag}{taflag}{maflag}",    f"# Set vl = VLMAX, where x{vlmaxReg} = VLMAX")
  else:
    writeLine(f"li x{tempReg2}, {vl}",                                            f"# Load desired vl value") # put desired vl into an integer register
    writeLine(f"vsetvli x0, x{tempReg2}, e{sew}, m{lmulflag}{taflag}{maflag}")

  if (vstart == True):   # if vstart specified
    writeLine(f"li x{tempReg2}, {vstart}",                                        f"# Load desired vstart value")
    writeLine(f"csrw vstart, x{tempReg2}")

  return scalar_registers_used

def randomizeRegister(instruction, eew, register_argument_name: str, reg_count: int, register_preset_data, lmul = 1) :

  register_data   = register_preset_data[register_argument_name].copy()
  register_type   = register_argument_name[0]

  register        = register_data['reg']

  if register is None: # if the register is a vector register
    if register_type == "v":
      # scalar and mask holding registers only take up 1 register no matter the lmul
      emul      = int(register_data['size_multiplier'] * lmul) # need to avoid 1.0
      segments  =     register_data['segments']
      if register_data['reg_type'] == "scalar" or register_data['reg_type'] == "mask" or emul < 1:
        emul = 1
      register = emul * randint(0, int(reg_count/emul) - (segments)) # only register numbers of multiples of LMUL(EMUL) are allowed, segments must not go past reg 31
    else: # normal instructions
      if register_type == "r":
        register = randint(1, reg_count-1) # 0 to maxreg, inclusive

  register_data['reg'] = register

  if   register_type == "r":
    if register_data['val'] is None:
      if instruction in vector_ls_ins and register_argument_name == "rs2" and instruction not in ls_no_eew_ins: # loads and stores stride
         register_data['val'] = randint(-2, 2+1) * int(eew/8)
      else:
        register_data['val'] = randint(0, (2**xlen)-1)
    if register_data['val_pointer'] is None:
      if instruction in vector_ls_ins and register_argument_name == "rs1": # needs to point to an address
          register_data['val_pointer'] = "vector_ls_random_base"

  return register_data

def getVectorEmulMultipliers(instruction):
  vector_register_data = {}

  if instruction in wvsins:
    vector_register_data['vs1_size_multiplier'] = 2
    vector_register_data[ 'vd_size_multiplier'] = 2
  if instruction in vs2_widen_ins:
    vector_register_data['vs2_size_multiplier'] = 2
  if instruction in vd_widen_ins:
    vector_register_data[ 'vd_size_multiplier'] = 2

  if instruction in mmins or instruction in vmlogicalins: # instructions opperate with EEW = 1
    vector_register_data['vs1_reg_type']        = "mask"
    vector_register_data['vs2_reg_type']        = "mask"
    if instruction != "viota.m":
      vector_register_data['vd_reg_type']       = "mask"
  if instruction in maskins: # instructions operate with vd EEW = 1
    vector_register_data[ 'vd_reg_type']        = "mask"
  if instruction in vredins:
    vector_register_data[ 'vd_reg_type']        = "scalar"
    vector_register_data['vs1_reg_type']        = "scalar"
  if instruction == "vmv.x.s":
    vector_register_data['vs2_reg_type']        = "scalar"
  if instruction == "vmv.s.x":
    vector_register_data[ 'vd_reg_type']        = "scalar"

  return vector_register_data

# return         - an array of arrays containing strings, elements will be regenerated until there are no conflicts

#                  Example: no_overlap = [['vs1', 'vs2_top'], ['v0', 'vd_bottom']]
#                  all values will be continued to be randomized until there is no overlap within lists
def getInstructionRegisterOverlapConstraints (instruction, sew, lmul):
  no_overlap = None

  if   instruction in wvvins          : no_overlap = [['vd_bottom', 'vs2'], ['vd_bottom', 'vs1']]
  elif instruction in vupgatherins    : no_overlap = [['vd',        'vs2'], ['vd',        'vs1']]
  elif instruction in vmlogicalins    : no_overlap = [['vd',        'vs2']                      ]
  elif instruction in wvxins          : no_overlap = [['vd_bottom', 'vs2']                      ]
  elif instruction in mv_ins          : no_overlap = [['vd',        'vs2'], ['vd',        'vs1']]
  elif instruction in vextins         : no_overlap = [['vd_bottom', 'vs2']                      ]
  elif instruction in narrowins       : no_overlap = [['vd',    'vs2_top'], ['vs2',       'vs1']]
  elif instruction in wvsins          : no_overlap = [['vs2',       'vs1']                      ] # no "_bottom" in vd because its a reduction instruction
  elif instruction in wwvins          : no_overlap = [['vd_bottom', 'vs1'], ['vs1',       'vs2']]
  elif instruction in v_mins          : no_overlap = [['v0', 'vs2'], ['v0', 'vs1'], ['v0', 'vd']]
  elif instruction in mv_mins         : no_overlap = [['vd','vs2'],['v0','vs2'],['vd','vs1'],['v0','vs1']]
  elif instruction in vcompressins    : no_overlap = [['vd', 'vs2', 'vs1']                      ]
  elif instruction in seg_vv_load     : no_overlap = [['vd', 'vs2']                             ]

  if instruction in vector_ls_ins   : no_overlap = addOverlap(no_overlap, [['rs1','rs2']])

  ls_indexed_vs2_eew = getInstructionEEW(instruction)

  if ls_indexed_vs2_eew is not None and not isinstance(sew, str):
    if ls_indexed_vs2_eew > sew :
      if lmul * ls_indexed_vs2_eew / sew <= 1: # if vs2 emul is <= 1 then all overlap is bottom thus we do not need the overlap constraint
        pass
      else:
        no_overlap = addOverlap(no_overlap, [['vd','vs2_top']])
    if ls_indexed_vs2_eew < sew :
      if lmul * ls_indexed_vs2_eew / sew >= 1:
        no_overlap = addOverlap(no_overlap, [['vd_bottom','vs2']])
      else:
        no_overlap = addOverlap(no_overlap, [['vd','vs2']])

  if instruction in segment_loads:
    no_overlap = addOverlap(no_overlap, [['vd','vs2']])

  return no_overlap

def addOverlap(instruction_overlap_constaints, additional_no_overlap):
  no_overlap = []
  if additional_no_overlap is not None:
    no_overlap = no_overlap + additional_no_overlap
  if instruction_overlap_constaints is not None:
    no_overlap = no_overlap + instruction_overlap_constaints

  return no_overlap

def randomizeOngroupVectorRegister(instruction, *preset_vreg, lmul=1, maskval=None):
  if (instruction in v_mins) or (instruction in mv_mins) or (maskval is not None):
    preset_vreg = preset_vreg + (0,)  # avoid v0 in the cases above
  target_reg = randint(0, math.floor((vreg_count-1)/lmul)) * lmul
  while (target_reg in preset_vreg):
    target_reg = randint(0, math.floor((vreg_count-1)/lmul)) * lmul

  return target_reg

# randomizeVectorInstructionData generates all necessary random data for an instruction following constraints

# instruction        - the instruction being processed (ex. vadd.vv)
# lmul               - the lmul set in vtype csr
# **preset_variables - any value in preset_data can be set here, for example vd = 2 will ensure vd is set to the v2 register above all else
# return             - returns an array of all randomized values following constraints
def randomizeVectorInstructionData(instruction, sew, test_count, suite="base", lmul=1, additional_no_overlap = None, **preset_variables):
  preset_variables.update(getVectorEmulMultipliers(instruction))

  instruction_overlap_constaints  = getInstructionRegisterOverlapConstraints(instruction, sew, lmul)
  no_overlap                      = addOverlap(instruction_overlap_constaints, additional_no_overlap)

  scalar_register_preset_data         = {
    'rd'  : {'reg' : None, 'val' : None, "val_pointer" : None},
    'rs1' : {'reg' : None, 'val' : None, "val_pointer" : None},
    'rs2' : {'reg' : None, 'val' : None, "val_pointer" : None}
  }

  floating_point_register_preset_data = {
    'fd'  : {'reg' : None, 'val_pointer' : None},
    'fs1' : {'reg' : None, 'val_pointer' : None}
  }

  vector_register_preset_data         = {
    'vs3' : {'reg' : None, 'val' : None, 'val_pointer' : None, 'size_multiplier' : 1, 'reg_type' : None, 'segments' : 1},
    'vd'  : {'reg' : None, 'val' : None, 'val_pointer' : None, 'size_multiplier' : 1, 'reg_type' : None, 'segments' : 1},
    'vs1' : {'reg' : None, 'val' : None, 'val_pointer' : None, 'size_multiplier' : 1, 'reg_type' : None, 'segments' : 1},
    'vs2' : {'reg' : None, 'val' : None, 'val_pointer' : None, 'size_multiplier' : 1, 'reg_type' : None, 'segments' : 1}
  }

  immediate_preset_data               = None

  vector_additional_arguments        = ['v0']

  ####################################################################################
  # set all incoming data to
  # designate reserved scalar, floating point and vector registers
  ####################################################################################

  scalar_register_data                 = scalar_register_preset_data.copy()
  floating_point_register_data         = floating_point_register_preset_data.copy()
  vector_register_data                 = vector_register_preset_data.copy()

  for variable, value in preset_variables.items():
    found = False

    # Get index of first underscore
    idx = variable.find("_")

    # Split into two parts
    if idx == -1:
      data_name = variable
      data_type     = 'reg'
    else:
      data_name = variable[:idx]
      data_type     = variable[idx + 1:]

    # load vector register data
    if data_name in vector_register_preset_data :
      vector_register_preset_data[data_name][data_type] = value
      found = True

    # load scalar register data
    if data_name in scalar_register_preset_data :
      scalar_register_data[data_name][data_type] = value
      found = True

    # load floating point register data
    if data_name in floating_point_register_preset_data:
      floating_point_register_data[data_name][data_type] = value
      found = True

    if data_name == 'imm':
      immediate_preset_data = value
      found = True
    elif data_name in vector_additional_arguments :
      found = True

    if not found :
      raise TypeError(f"Unexpected keyword argument: '{variable}'")


  if instruction in whole_register_ls:
    lmul      = max(1, getInstructionSegments(instruction)) # whole register load stores ignore lmul and instead use nfields as emul
  else:
    segments  = getInstructionSegments(instruction)
    vector_register_preset_data['vs3']['segments'] = segments
    vector_register_preset_data['vs2']['segments'] = segments
    vector_register_preset_data['vs1']['segments'] = segments
    vector_register_preset_data[ 'vd']['segments'] = segments

  eew = None
  if   instruction in eew64_ins : eew = 64
  elif instruction in eew32_ins : eew = 32
  elif instruction in eew16_ins : eew = 16
  elif instruction in eew8_ins  : eew = 8

  if eew is not None : # if emul is greater than 1 use it for the size multiplier
    if   instruction in whole_register_ls : pass
    elif instruction in indexed_loads     : vector_register_preset_data['vs2']['size_multiplier'] = eew/sew
    elif instruction in indexed_stores    : vector_register_preset_data['vs2']['size_multiplier'] = eew/sew
    elif instruction in vector_loads      : vector_register_preset_data[ 'vd']['size_multiplier'] = eew/sew
    elif instruction in vector_stores     : vector_register_preset_data['vs3']['size_multiplier'] = eew/sew

  if instruction in vextins: # swapped lmul and emul of vext instr for the convenience of register managing
    fraction_sew = 1/int(instruction[-1])
    vector_register_preset_data['vs2']['size_multiplier'] = fraction_sew

 ####################################################################################

  register_overlap = True

  if no_overlap == []:
    register_overlap = False

    vector_register_data         ['vs3'] = randomizeRegister(instruction, eew, 'vs3', vreg_count, vector_register_preset_data, lmul)
    vector_register_data         ['vd' ] = randomizeRegister(instruction, eew, 'vd',  vreg_count, vector_register_preset_data, lmul)
    vector_register_data         ['vs1'] = randomizeRegister(instruction, eew, 'vs1', vreg_count, vector_register_preset_data, lmul)
    vector_register_data         ['vs2'] = randomizeRegister(instruction, eew, 'vs2', vreg_count, vector_register_preset_data, lmul)

    scalar_register_data         ['rd' ] = randomizeRegister(instruction, eew, 'rd',  xreg_count, scalar_register_preset_data)
    scalar_register_data         ['rs1'] = randomizeRegister(instruction, eew, 'rs1', xreg_count, scalar_register_preset_data)
    scalar_register_data         ['rs2'] = randomizeRegister(instruction, eew, 'rs2', xreg_count, scalar_register_preset_data)

    floating_point_register_data ['fd' ] = randomizeRegister(instruction, eew, 'fd',  freg_count, floating_point_register_preset_data)
    floating_point_register_data ['fs1'] = randomizeRegister(instruction, eew, 'fs1', freg_count, floating_point_register_preset_data)

  ####################################################################################
  # check and resolve and register overlap
  ####################################################################################

  randomization_count = 0

  while register_overlap:

    vector_register_data         ['vs3'] = randomizeRegister(instruction, eew, 'vs3', vreg_count, vector_register_preset_data, lmul)
    vector_register_data         ['vd' ] = randomizeRegister(instruction, eew, 'vd',  vreg_count, vector_register_preset_data, lmul)
    vector_register_data         ['vs1'] = randomizeRegister(instruction, eew, 'vs1', vreg_count, vector_register_preset_data, lmul)
    vector_register_data         ['vs2'] = randomizeRegister(instruction, eew, 'vs2', vreg_count, vector_register_preset_data, lmul)

    scalar_register_data         ['rd' ] = randomizeRegister(instruction, eew, 'rd',  xreg_count, scalar_register_preset_data)
    scalar_register_data         ['rs1'] = randomizeRegister(instruction, eew, 'rs1', xreg_count, scalar_register_preset_data)
    scalar_register_data         ['rs2'] = randomizeRegister(instruction, eew, 'rs2', xreg_count, scalar_register_preset_data)

    floating_point_register_data ['fd' ] = randomizeRegister(instruction, eew, 'fd',  freg_count, floating_point_register_preset_data)
    floating_point_register_data ['fs1'] = randomizeRegister(instruction, eew, 'fs1', freg_count, floating_point_register_preset_data)
    # print(instruction, lmul, sew)
    register_overlap = False
    for no_overlap_set in no_overlap:
      register_type = no_overlap_set[0][0] # grab either "v" "r" or "f" to get the register type
      registers_occupied = []
      # print(f"\noverlap set: {no_overlap_set}")
      for register in no_overlap_set:
        if not register_type == register[0]:
          raise TypeError(f"Register type mismatch from {register_type}: '{register}'")
        elif register_type == 'r':
          registers_occupied.append(scalar_register_data[register]['reg']) # add register value to list to check for overlap
        elif register_type == 'f':
          registers_occupied.append(floating_point_register_data[register]['reg']) # add register to reserved list to prevent overlap
        elif register_type == 'v':
          if register == 'v0':
            registers_occupied.append(0)
          else:
            top_no_overlap = False
            if register[-4:] == "_top": # if specifying no overlap with the top of a register
              top_no_overlap = True     # save for reserved section below
              register = register[:-4]  # remove "_top" from register name

            bottom_no_overlap = False
            if register[-7:] == "_bottom": # if specifying no overlap with the bottom of a register
              bottom_no_overlap = True     # save for reserved section below
              register = register[:-7]     # remove "_bottom" from register name

            start_no_overlap = False
            if register[-6:] == "_start": # if specifying no overlap with the initial register of a group (single register v)
              start_no_overlap = True     # save for reserved section below
              register = register[:-6]    # remove "_start" from register name
            # print(f"\n{register}")
            # print(f"smallest elmul {lmul} size_mul {vector_register_preset_data[register]['size_multiplier']} segmenmts {vector_register_preset_data[register]['segments']}")
            smallest_emul = int(lmul * min(register['size_multiplier'] for register in vector_register_preset_data.values()))
            emul = math.ceil(vector_register_preset_data[register]['size_multiplier'] * lmul) * vector_register_preset_data[register]['segments'] # segment instructions take up consecutive registers even when lmul < 1
            # print(f"emul {emul}")
            if start_no_overlap or vector_register_preset_data[register]['reg_type'] == "scalar" or vector_register_preset_data[register]['reg_type'] == "mask" or emul < 1:
              start_no_register_overlap = 0
              end_register_no_overlap   = 1
            else:
              start_no_register_overlap = smallest_emul      if top_no_overlap    and smallest_emul >= 1 else 0
              end_register_no_overlap   = emul-smallest_emul if bottom_no_overlap and smallest_emul >= 1 else emul # need to include nfields (there is no bottom or top overlap allowed)
            for i in range(start_no_register_overlap, end_register_no_overlap):
              registers_occupied.append(vector_register_data[register]['reg'] + i) # add register to reserved list to prevent overlap
        # print(registers_occupied)
      if not len(registers_occupied) == len(set(registers_occupied)): # checks for duplicates
        register_overlap = True
    # print(vector_register_data)
    max_randomization_count = 1000
    if (randomization_count >= max_randomization_count):
      raise ValueError(f'No Overlap constraint "{no_overlap}" cannot be met for instruction "{instruction}" with sew "{sew}" and lmul "{lmul}" after {max_randomization_count} attempts')
    randomization_count = randomization_count + 1


  ####################################################################################
  if test_count is not None and suite is not None:
    if vector_register_data['vs3']['val_pointer'] is None: vector_register_data['vs3']['val_pointer'] =     f"vs3_random_{suite}_{test_count:03d}"
    if vector_register_data['vd' ]['val_pointer'] is None: vector_register_data['vd' ]['val_pointer'] =      f"vd_random_{suite}_{test_count:03d}"
    if vector_register_data['vs1']['val_pointer'] is None: vector_register_data['vs1']['val_pointer'] =     f"vs1_random_{suite}_{test_count:03d}"
    if vector_register_data['vs2']['val_pointer'] is None: vector_register_data['vs2']['val_pointer'] =     f"vs2_random_{suite}_{test_count:03d}"

    if scalar_register_data['rs1']['val_pointer'] is None: scalar_register_data['rs1']['val_pointer'] = f"vd_load_random_{suite}_{test_count:03d}"

  # TODO : implement floating point data address

  # immediate handling
  if immediate_preset_data is None:
    if (instruction in imm_31):
      immval = randint(0,31)
    else:
      immval = randint(-16,15)
  else:
    immval = immediate_preset_data

  return [vector_register_data, scalar_register_data, floating_point_register_data, immval]

def getInstructionSegments(instruction):
  if   instruction in seg2 : return 2
  elif instruction in seg3 : return 3
  elif instruction in seg4 : return 4
  elif instruction in seg5 : return 5
  elif instruction in seg6 : return 6
  elif instruction in seg7 : return 7
  elif instruction in seg8 : return 8
  else                     : return 1

def getBaseLmul(instruction, sew):
  if   instruction in eew8_ins  and 8  / sew > 1: return sew / 8
  elif instruction in eew16_ins and 16 / sew > 1: return sew / 16
  elif instruction in eew32_ins and 32 / sew > 1: return sew / 32
  elif instruction in eew64_ins and 64 / sew > 1: return sew / 64
  elif instruction in whole_register_move       : return int(instruction[3])
  else                                          : return 1

def getLengthLmul(instruction):
  if instruction in whole_register_move       : return int(instruction[3])
  else                                        : return None

##################################
# length suite
##################################

def getLegalVlmul(elen, sewmin, sew):
  lmulmin = sewmin / elen
  legalvlmuls = [0, 1, 2, 3]
  # A given supported fractional LMUL setting must support SEW settings between SEWMIN and LMUL * ELEN
  if (lmulmin <= 0.5) and (sew in [8, 16, 32]):
    legalvlmuls.append(-1)
  if (lmulmin <= 0.25) and (sew in [8, 16]):
    legalvlmuls.append(-2)
  if (lmulmin <= 0.125) and (sew == 8):
    legalvlmuls.append(-3)
  return legalvlmuls

def randomizeMask(test, always_masked = False):
  if (test in not_maskable):
    vm = 1
  else:
    if (always_masked):
      vm = 0
    else:
      vm = randint(0,1)

  if (vm == 1):
    maskval = None
  else:
    i = randint(0,2)
    maskval = f"random_mask_{i}"
  return maskval

# obtained and modified from covergroupgen.py
def readTestplans(priv=False):
    coverplanDir = f'{ARCH_VERIF}/testplans'
    if (priv):
      coverplanDir = coverplanDir + "/priv"
    testplans = dict()
    for file in os.listdir(coverplanDir):
        if file.endswith(".csv"):
            arch = re.search("(.*).csv", file).group(1)
            if (arch == "ExceptionsV" or arch.startswith("V")):
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
                            if (type(value) == str and value != ''):
                                if(key == "Type"):
                                    cps.append("sample_" + value)
                                else:
                                    if (value != "x"): # for special entries, append the entry name (e.g. cp_rd_corners becomes cp_rd_corners_lui)
                                        key = key + "_" + value
                                    cps.append(key)
                        tp[instr] = cps
                testplans[arch] = tp
                if (arch == "Vx"):
                    for effew in ["8", "16", "32", "64"]:
                        testplans["Vx" + effew] = tp
                    del testplans["Vx"]
                if (arch == "Vls"):
                    for effew in ["8", "16", "32", "64"]:
                        testplans["Vls" + effew] = tp
                    del testplans["Vls"]
                if (arch == "Vf"):
                    for effew in ["16", "32", "64"]:
                        testplans["Vf" + effew] = tp
                    del testplans["Vf"]
    return testplans
