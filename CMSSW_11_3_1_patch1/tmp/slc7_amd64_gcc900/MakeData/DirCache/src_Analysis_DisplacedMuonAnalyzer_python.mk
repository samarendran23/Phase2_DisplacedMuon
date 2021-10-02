ifeq ($(strip $(PyAnalysisDisplacedMuonAnalyzer)),)
PyAnalysisDisplacedMuonAnalyzer := self/src/Analysis/DisplacedMuonAnalyzer/python
src_Analysis_DisplacedMuonAnalyzer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Analysis/DisplacedMuonAnalyzer/python)
PyAnalysisDisplacedMuonAnalyzer_files := $(patsubst src/Analysis/DisplacedMuonAnalyzer/python/%,%,$(wildcard $(foreach dir,src/Analysis/DisplacedMuonAnalyzer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyAnalysisDisplacedMuonAnalyzer_LOC_USE := self cmssw 
PyAnalysisDisplacedMuonAnalyzer_PACKAGE := self/src/Analysis/DisplacedMuonAnalyzer/python
ALL_PRODS += PyAnalysisDisplacedMuonAnalyzer
PyAnalysisDisplacedMuonAnalyzer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyAnalysisDisplacedMuonAnalyzer,src/Analysis/DisplacedMuonAnalyzer/python,src_Analysis_DisplacedMuonAnalyzer_python))
else
$(eval $(call MultipleWarningMsg,PyAnalysisDisplacedMuonAnalyzer,src/Analysis/DisplacedMuonAnalyzer/python))
endif
ALL_COMMONRULES += src_Analysis_DisplacedMuonAnalyzer_python
src_Analysis_DisplacedMuonAnalyzer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Analysis_DisplacedMuonAnalyzer_python,src/Analysis/DisplacedMuonAnalyzer/python,PYTHON))
