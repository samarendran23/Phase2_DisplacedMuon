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
