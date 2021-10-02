ifeq ($(strip $(AnalysisDisplacedMuonAnalyzerAuto)),)
AnalysisDisplacedMuonAnalyzerAuto := self/src/Analysis/DisplacedMuonAnalyzer/plugins
PLUGINS:=yes
AnalysisDisplacedMuonAnalyzerAuto_files := $(patsubst src/Analysis/DisplacedMuonAnalyzer/plugins/%,%,$(wildcard $(foreach dir,src/Analysis/DisplacedMuonAnalyzer/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalysisDisplacedMuonAnalyzerAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/Analysis/DisplacedMuonAnalyzer/plugins/BuildFile
AnalysisDisplacedMuonAnalyzerAuto_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/TrackReco CommonTools/UtilAlgos PhysicsTools/UtilAlgos
AnalysisDisplacedMuonAnalyzerAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalysisDisplacedMuonAnalyzerAuto,AnalysisDisplacedMuonAnalyzerAuto,$(SCRAMSTORENAME_LIB),src/Analysis/DisplacedMuonAnalyzer/plugins))
AnalysisDisplacedMuonAnalyzerAuto_PACKAGE := self/src/Analysis/DisplacedMuonAnalyzer/plugins
ALL_PRODS += AnalysisDisplacedMuonAnalyzerAuto
Analysis/DisplacedMuonAnalyzer_forbigobj+=AnalysisDisplacedMuonAnalyzerAuto
AnalysisDisplacedMuonAnalyzerAuto_INIT_FUNC        += $$(eval $$(call Library,AnalysisDisplacedMuonAnalyzerAuto,src/Analysis/DisplacedMuonAnalyzer/plugins,src_Analysis_DisplacedMuonAnalyzer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
AnalysisDisplacedMuonAnalyzerAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,AnalysisDisplacedMuonAnalyzerAuto,src/Analysis/DisplacedMuonAnalyzer/plugins))
endif
ALL_COMMONRULES += src_Analysis_DisplacedMuonAnalyzer_plugins
src_Analysis_DisplacedMuonAnalyzer_plugins_parent := Analysis/DisplacedMuonAnalyzer
src_Analysis_DisplacedMuonAnalyzer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Analysis_DisplacedMuonAnalyzer_plugins,src/Analysis/DisplacedMuonAnalyzer/plugins,PLUGINS))
