ALL_SUBSYSTEMS+=Analysis
subdirs_src_Analysis = src_Analysis_DisplacedMuonAnalyzer
ALL_PACKAGES += Analysis/DisplacedMuonAnalyzer
subdirs_src_Analysis_DisplacedMuonAnalyzer := src_Analysis_DisplacedMuonAnalyzer_python src_Analysis_DisplacedMuonAnalyzer_plugins
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
ALL_SUBSYSTEMS+=Configuration
subdirs_src_Configuration = src_Configuration_StandardSequences src_Configuration_GenProduction
ALL_PACKAGES += Configuration/GenProduction
subdirs_src_Configuration_GenProduction := src_Configuration_GenProduction_python
ifeq ($(strip $(PyConfigurationGenProduction)),)
PyConfigurationGenProduction := self/src/Configuration/GenProduction/python
src_Configuration_GenProduction_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/GenProduction/python)
PyConfigurationGenProduction_files := $(patsubst src/Configuration/GenProduction/python/%,%,$(wildcard $(foreach dir,src/Configuration/GenProduction/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationGenProduction_LOC_USE := self cmssw 
PyConfigurationGenProduction_PACKAGE := self/src/Configuration/GenProduction/python
ALL_PRODS += PyConfigurationGenProduction
PyConfigurationGenProduction_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationGenProduction,src/Configuration/GenProduction/python,src_Configuration_GenProduction_python))
else
$(eval $(call MultipleWarningMsg,PyConfigurationGenProduction,src/Configuration/GenProduction/python))
endif
ALL_COMMONRULES += src_Configuration_GenProduction_python
src_Configuration_GenProduction_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_GenProduction_python,src/Configuration/GenProduction/python,PYTHON))
ALL_PACKAGES += Configuration/StandardSequences
subdirs_src_Configuration_StandardSequences := src_Configuration_StandardSequences_python
ifeq ($(strip $(PyConfigurationStandardSequences)),)
PyConfigurationStandardSequences := self/src/Configuration/StandardSequences/python
src_Configuration_StandardSequences_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/StandardSequences/python)
PyConfigurationStandardSequences_files := $(patsubst src/Configuration/StandardSequences/python/%,%,$(wildcard $(foreach dir,src/Configuration/StandardSequences/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationStandardSequences_LOC_USE := self cmssw 
PyConfigurationStandardSequences_PACKAGE := self/src/Configuration/StandardSequences/python
ALL_PRODS += PyConfigurationStandardSequences
PyConfigurationStandardSequences_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationStandardSequences,src/Configuration/StandardSequences/python,src_Configuration_StandardSequences_python))
else
$(eval $(call MultipleWarningMsg,PyConfigurationStandardSequences,src/Configuration/StandardSequences/python))
endif
ALL_COMMONRULES += src_Configuration_StandardSequences_python
src_Configuration_StandardSequences_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_StandardSequences_python,src/Configuration/StandardSequences/python,PYTHON))
ALL_SUBSYSTEMS+=RecoMuon
subdirs_src_RecoMuon = src_RecoMuon_Configuration
ALL_PACKAGES += RecoMuon/Configuration
subdirs_src_RecoMuon_Configuration := src_RecoMuon_Configuration_python src_RecoMuon_Configuration_test
ifeq ($(strip $(PyRecoMuonConfiguration)),)
PyRecoMuonConfiguration := self/src/RecoMuon/Configuration/python
src_RecoMuon_Configuration_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoMuon/Configuration/python)
PyRecoMuonConfiguration_files := $(patsubst src/RecoMuon/Configuration/python/%,%,$(wildcard $(foreach dir,src/RecoMuon/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoMuonConfiguration_LOC_USE := self cmssw 
PyRecoMuonConfiguration_PACKAGE := self/src/RecoMuon/Configuration/python
ALL_PRODS += PyRecoMuonConfiguration
PyRecoMuonConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoMuonConfiguration,src/RecoMuon/Configuration/python,src_RecoMuon_Configuration_python))
else
$(eval $(call MultipleWarningMsg,PyRecoMuonConfiguration,src/RecoMuon/Configuration/python))
endif
ALL_COMMONRULES += src_RecoMuon_Configuration_python
src_RecoMuon_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMuon_Configuration_python,src/RecoMuon/Configuration/python,PYTHON))
ALL_COMMONRULES += src_RecoMuon_Configuration_test
src_RecoMuon_Configuration_test_parent := RecoMuon/Configuration
src_RecoMuon_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMuon_Configuration_test,src/RecoMuon/Configuration/test,TEST))
ALL_SUBSYSTEMS+=RecoTracker
subdirs_src_RecoTracker = src_RecoTracker_SpecialSeedGenerators src_RecoTracker_TrackProducer src_RecoTracker_CkfPattern
ALL_PACKAGES += RecoTracker/CkfPattern
subdirs_src_RecoTracker_CkfPattern := src_RecoTracker_CkfPattern_interface src_RecoTracker_CkfPattern_plugins src_RecoTracker_CkfPattern_python src_RecoTracker_CkfPattern_src src_RecoTracker_CkfPattern_test
ifeq ($(strip $(PyRecoTrackerCkfPattern)),)
PyRecoTrackerCkfPattern := self/src/RecoTracker/CkfPattern/python
src_RecoTracker_CkfPattern_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTracker/CkfPattern/python)
PyRecoTrackerCkfPattern_files := $(patsubst src/RecoTracker/CkfPattern/python/%,%,$(wildcard $(foreach dir,src/RecoTracker/CkfPattern/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoTrackerCkfPattern_LOC_USE := self cmssw 
PyRecoTrackerCkfPattern_PACKAGE := self/src/RecoTracker/CkfPattern/python
ALL_PRODS += PyRecoTrackerCkfPattern
PyRecoTrackerCkfPattern_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTrackerCkfPattern,src/RecoTracker/CkfPattern/python,src_RecoTracker_CkfPattern_python))
else
$(eval $(call MultipleWarningMsg,PyRecoTrackerCkfPattern,src/RecoTracker/CkfPattern/python))
endif
ALL_COMMONRULES += src_RecoTracker_CkfPattern_python
src_RecoTracker_CkfPattern_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTracker_CkfPattern_python,src/RecoTracker/CkfPattern/python,PYTHON))
ALL_COMMONRULES += src_RecoTracker_CkfPattern_test
src_RecoTracker_CkfPattern_test_parent := RecoTracker/CkfPattern
src_RecoTracker_CkfPattern_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTracker_CkfPattern_test,src/RecoTracker/CkfPattern/test,TEST))
ALL_PACKAGES += RecoTracker/SpecialSeedGenerators
subdirs_src_RecoTracker_SpecialSeedGenerators := src_RecoTracker_SpecialSeedGenerators_python src_RecoTracker_SpecialSeedGenerators_src
ifeq ($(strip $(PyRecoTrackerSpecialSeedGenerators)),)
PyRecoTrackerSpecialSeedGenerators := self/src/RecoTracker/SpecialSeedGenerators/python
src_RecoTracker_SpecialSeedGenerators_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTracker/SpecialSeedGenerators/python)
PyRecoTrackerSpecialSeedGenerators_files := $(patsubst src/RecoTracker/SpecialSeedGenerators/python/%,%,$(wildcard $(foreach dir,src/RecoTracker/SpecialSeedGenerators/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoTrackerSpecialSeedGenerators_LOC_USE := self cmssw 
PyRecoTrackerSpecialSeedGenerators_PACKAGE := self/src/RecoTracker/SpecialSeedGenerators/python
ALL_PRODS += PyRecoTrackerSpecialSeedGenerators
PyRecoTrackerSpecialSeedGenerators_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTrackerSpecialSeedGenerators,src/RecoTracker/SpecialSeedGenerators/python,src_RecoTracker_SpecialSeedGenerators_python))
else
$(eval $(call MultipleWarningMsg,PyRecoTrackerSpecialSeedGenerators,src/RecoTracker/SpecialSeedGenerators/python))
endif
ALL_COMMONRULES += src_RecoTracker_SpecialSeedGenerators_python
src_RecoTracker_SpecialSeedGenerators_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTracker_SpecialSeedGenerators_python,src/RecoTracker/SpecialSeedGenerators/python,PYTHON))
ALL_PACKAGES += RecoTracker/TrackProducer
subdirs_src_RecoTracker_TrackProducer := src_RecoTracker_TrackProducer_doc src_RecoTracker_TrackProducer_interface src_RecoTracker_TrackProducer_plugins src_RecoTracker_TrackProducer_python src_RecoTracker_TrackProducer_src src_RecoTracker_TrackProducer_test
ifeq ($(strip $(PyRecoTrackerTrackProducer)),)
PyRecoTrackerTrackProducer := self/src/RecoTracker/TrackProducer/python
src_RecoTracker_TrackProducer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTracker/TrackProducer/python)
PyRecoTrackerTrackProducer_files := $(patsubst src/RecoTracker/TrackProducer/python/%,%,$(wildcard $(foreach dir,src/RecoTracker/TrackProducer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoTrackerTrackProducer_LOC_USE := self cmssw 
PyRecoTrackerTrackProducer_PACKAGE := self/src/RecoTracker/TrackProducer/python
ALL_PRODS += PyRecoTrackerTrackProducer
PyRecoTrackerTrackProducer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTrackerTrackProducer,src/RecoTracker/TrackProducer/python,src_RecoTracker_TrackProducer_python))
else
$(eval $(call MultipleWarningMsg,PyRecoTrackerTrackProducer,src/RecoTracker/TrackProducer/python))
endif
ALL_COMMONRULES += src_RecoTracker_TrackProducer_python
src_RecoTracker_TrackProducer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTracker_TrackProducer_python,src/RecoTracker/TrackProducer/python,PYTHON))
ifeq ($(strip $(FakeCPEFiller)),)
FakeCPEFiller := self/src/RecoTracker/TrackProducer/test
FakeCPEFiller_files := $(patsubst src/RecoTracker/TrackProducer/test/%,%,$(foreach file,FakeCPEFiller.cc,$(eval xfile:=$(wildcard src/RecoTracker/TrackProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTracker/TrackProducer/test/$(file). Please fix src/RecoTracker/TrackProducer/test/BuildFile.))))
FakeCPEFiller_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTracker/TrackProducer/test/BuildFile
FakeCPEFiller_LOC_USE := self cmssw TrackingTools/Records FWCore/Utilities DataFormats/TrackReco clhep FWCore/Framework FWCore/ParameterSet Geometry/TrackerGeometryBuilder Geometry/Records MagneticField/Records MagneticField/Engine SimDataFormats/Vertex TrackingTools/PatternTools root SimTracker/TrackerHitAssociation RecoTracker/TransientTrackingRecHit
FakeCPEFiller_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FakeCPEFiller,FakeCPEFiller,$(SCRAMSTORENAME_LIB),src/RecoTracker/TrackProducer/test))
FakeCPEFiller_PACKAGE := self/src/RecoTracker/TrackProducer/test
ALL_PRODS += FakeCPEFiller
FakeCPEFiller_INIT_FUNC        += $$(eval $$(call Library,FakeCPEFiller,src/RecoTracker/TrackProducer/test,src_RecoTracker_TrackProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FakeCPEFiller_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,FakeCPEFiller,src/RecoTracker/TrackProducer/test))
endif
ifeq ($(strip $(TrackAnalyzer)),)
TrackAnalyzer := self/src/RecoTracker/TrackProducer/test
TrackAnalyzer_files := $(patsubst src/RecoTracker/TrackProducer/test/%,%,$(foreach file,TrackAnalyzer.cc,$(eval xfile:=$(wildcard src/RecoTracker/TrackProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTracker/TrackProducer/test/$(file). Please fix src/RecoTracker/TrackProducer/test/BuildFile.))))
TrackAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTracker/TrackProducer/test/BuildFile
TrackAnalyzer_LOC_USE := self cmssw TrackingTools/Records FWCore/Utilities DataFormats/TrackReco clhep FWCore/Framework FWCore/ParameterSet Geometry/TrackerGeometryBuilder Geometry/Records MagneticField/Records MagneticField/Engine SimDataFormats/Vertex TrackingTools/PatternTools root
TrackAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TrackAnalyzer,TrackAnalyzer,$(SCRAMSTORENAME_LIB),src/RecoTracker/TrackProducer/test))
TrackAnalyzer_PACKAGE := self/src/RecoTracker/TrackProducer/test
ALL_PRODS += TrackAnalyzer
TrackAnalyzer_INIT_FUNC        += $$(eval $$(call Library,TrackAnalyzer,src/RecoTracker/TrackProducer/test,src_RecoTracker_TrackProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
TrackAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,TrackAnalyzer,src/RecoTracker/TrackProducer/test))
endif
ifeq ($(strip $(TrackValidator)),)
TrackValidator := self/src/RecoTracker/TrackProducer/test
TrackValidator_files := $(patsubst src/RecoTracker/TrackProducer/test/%,%,$(foreach file,TrackValidator.cc,$(eval xfile:=$(wildcard src/RecoTracker/TrackProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTracker/TrackProducer/test/$(file). Please fix src/RecoTracker/TrackProducer/test/BuildFile.))))
TrackValidator_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTracker/TrackProducer/test/BuildFile
TrackValidator_LOC_USE := self cmssw TrackingTools/Records FWCore/Utilities DataFormats/TrackReco clhep FWCore/Framework FWCore/ParameterSet Geometry/TrackerGeometryBuilder Geometry/Records MagneticField/Records MagneticField/Engine SimDataFormats/Vertex TrackingTools/PatternTools root TrackingTools/TransientTrack
TrackValidator_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TrackValidator,TrackValidator,$(SCRAMSTORENAME_LIB),src/RecoTracker/TrackProducer/test))
TrackValidator_PACKAGE := self/src/RecoTracker/TrackProducer/test
ALL_PRODS += TrackValidator
TrackValidator_INIT_FUNC        += $$(eval $$(call Library,TrackValidator,src/RecoTracker/TrackProducer/test,src_RecoTracker_TrackProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
TrackValidator_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,TrackValidator,src/RecoTracker/TrackProducer/test))
endif
ifeq ($(strip $(TrajectoryAnalyzer)),)
TrajectoryAnalyzer := self/src/RecoTracker/TrackProducer/test
TrajectoryAnalyzer_files := $(patsubst src/RecoTracker/TrackProducer/test/%,%,$(foreach file,TrajectoryAnalyzer.cc,$(eval xfile:=$(wildcard src/RecoTracker/TrackProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTracker/TrackProducer/test/$(file). Please fix src/RecoTracker/TrackProducer/test/BuildFile.))))
TrajectoryAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTracker/TrackProducer/test/BuildFile
TrajectoryAnalyzer_LOC_USE := self cmssw TrackingTools/Records FWCore/Utilities DataFormats/TrackReco clhep FWCore/Framework FWCore/ParameterSet Geometry/TrackerGeometryBuilder Geometry/Records MagneticField/Records MagneticField/Engine SimDataFormats/Vertex TrackingTools/PatternTools root
TrajectoryAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TrajectoryAnalyzer,TrajectoryAnalyzer,$(SCRAMSTORENAME_LIB),src/RecoTracker/TrackProducer/test))
TrajectoryAnalyzer_PACKAGE := self/src/RecoTracker/TrackProducer/test
ALL_PRODS += TrajectoryAnalyzer
TrajectoryAnalyzer_INIT_FUNC        += $$(eval $$(call Library,TrajectoryAnalyzer,src/RecoTracker/TrackProducer/test,src_RecoTracker_TrackProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
TrajectoryAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,TrajectoryAnalyzer,src/RecoTracker/TrackProducer/test))
endif
ALL_COMMONRULES += src_RecoTracker_TrackProducer_test
src_RecoTracker_TrackProducer_test_parent := RecoTracker/TrackProducer
src_RecoTracker_TrackProducer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTracker_TrackProducer_test,src/RecoTracker/TrackProducer/test,TEST))
