ALL_TOOLS      += self
self_EX_INCLUDE := /afs/cern.ch/work/s/sanayak/public/Project_muonPOG_Analyzer_fixed_by_Carlos_11_3X_SetUp/CMSSW_11_3_1_patch1/src /afs/cern.ch/work/s/sanayak/public/Project_muonPOG_Analyzer_fixed_by_Carlos_11_3X_SetUp/CMSSW_11_3_1_patch1/include/slc7_amd64_gcc900/src /afs/cern.ch/work/s/sanayak/public/Project_muonPOG_Analyzer_fixed_by_Carlos_11_3X_SetUp/CMSSW_11_3_1_patch1/include/LCG /cvmfs/cms.cern.ch/slc7_amd64_gcc900/cms/cmssw-patch/CMSSW_11_3_1_patch1/src /cvmfs/cms.cern.ch/slc7_amd64_gcc900/cms/cmssw-patch/CMSSW_11_3_1_patch1/include/slc7_amd64_gcc900/src /cvmfs/cms.cern.ch/slc7_amd64_gcc900/cms/cmssw-patch/CMSSW_11_3_1_patch1/include/LCG
self_EX_LIBDIR := /afs/cern.ch/work/s/sanayak/public/Project_muonPOG_Analyzer_fixed_by_Carlos_11_3X_SetUp/CMSSW_11_3_1_patch1/biglib/slc7_amd64_gcc900 /afs/cern.ch/work/s/sanayak/public/Project_muonPOG_Analyzer_fixed_by_Carlos_11_3X_SetUp/CMSSW_11_3_1_patch1/lib/slc7_amd64_gcc900 /afs/cern.ch/work/s/sanayak/public/Project_muonPOG_Analyzer_fixed_by_Carlos_11_3X_SetUp/CMSSW_11_3_1_patch1/external/slc7_amd64_gcc900/lib /cvmfs/cms.cern.ch/slc7_amd64_gcc900/cms/cmssw-patch/CMSSW_11_3_1_patch1/biglib/slc7_amd64_gcc900 /cvmfs/cms.cern.ch/slc7_amd64_gcc900/cms/cmssw-patch/CMSSW_11_3_1_patch1/lib/slc7_amd64_gcc900 /cvmfs/cms.cern.ch/slc7_amd64_gcc900/cms/cmssw-patch/CMSSW_11_3_1_patch1/external/slc7_amd64_gcc900/lib
self_EX_LIBDIR += $(cmssw_EX_LIBDIR)
self_EX_FLAGS_DEFAULT_COMPILER  := gcc
self_EX_FLAGS_EXTERNAL_SYMLINK  := PATH LIBDIR CMSSW_SEARCH_PATH
self_EX_FLAGS_LLVM_ANALYZER  := llvm-analyzer
self_EX_FLAGS_NO_EXTERNAL_RUNTIME  := LD_LIBRARY_PATH PATH CMSSW_SEARCH_PATH
TOOLS_OVERRIDABLE_FLAGS  +=CPPDEFINES CXXFLAGS FFLAGS CFLAGS CPPFLAGS LDFLAGS CUDA_FLAGS CUDA_LDFLAGS
self_EX_FLAGS_SCRAM_TARGETS  := haswell sandybridge nehalem
self_EX_FLAGS_SKIP_TOOLS_SYMLINK  := cxxcompiler ccompiler f77compiler gcc-cxxcompiler gcc-ccompiler gcc-f77compiler llvm-cxxcompiler llvm-ccompiler llvm-f77compiler llvm-analyzer-cxxcompiler llvm-analyzer-ccompiler icc-cxxcompiler icc-ccompiler icc-f77compiler x11 dpm
self_EX_FLAGS_SYMLINK_DEPTH_CMSSW_SEARCH_PATH  := 2
self_ORDER := 20000
IS_PATCH:=yes

