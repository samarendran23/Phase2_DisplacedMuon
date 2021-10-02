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
ifeq ($(strip $(RecoTrackerCkfPatternPlugins)),)
RecoTrackerCkfPatternPlugins := self/src/RecoTracker/CkfPattern/plugins
PLUGINS:=yes
RecoTrackerCkfPatternPlugins_files := $(patsubst src/RecoTracker/CkfPattern/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoTracker/CkfPattern/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTracker/CkfPattern/plugins/$(file). Please fix src/RecoTracker/CkfPattern/plugins/BuildFile.))))
RecoTrackerCkfPatternPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTracker/CkfPattern/plugins/BuildFile
RecoTrackerCkfPatternPlugins_LOC_USE := self cmssw RecoTracker/CkfPattern RecoTracker/MeasurementDet
RecoTrackerCkfPatternPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTrackerCkfPatternPlugins,RecoTrackerCkfPatternPlugins,$(SCRAMSTORENAME_LIB),src/RecoTracker/CkfPattern/plugins))
RecoTrackerCkfPatternPlugins_PACKAGE := self/src/RecoTracker/CkfPattern/plugins
ALL_PRODS += RecoTrackerCkfPatternPlugins
RecoTracker/CkfPattern_forbigobj+=RecoTrackerCkfPatternPlugins
RecoTrackerCkfPatternPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoTrackerCkfPatternPlugins,src/RecoTracker/CkfPattern/plugins,src_RecoTracker_CkfPattern_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoTrackerCkfPatternPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoTrackerCkfPatternPlugins,src/RecoTracker/CkfPattern/plugins))
endif
ALL_COMMONRULES += src_RecoTracker_CkfPattern_plugins
src_RecoTracker_CkfPattern_plugins_parent := RecoTracker/CkfPattern
src_RecoTracker_CkfPattern_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTracker_CkfPattern_plugins,src/RecoTracker/CkfPattern/plugins,PLUGINS))
ifeq ($(strip $(RecoTracker/CkfPattern)),)
ALL_COMMONRULES += src_RecoTracker_CkfPattern_src
src_RecoTracker_CkfPattern_src_parent := RecoTracker/CkfPattern
src_RecoTracker_CkfPattern_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoTracker_CkfPattern_src,src/RecoTracker/CkfPattern/src,LIBRARY))
RecoTrackerCkfPattern := self/RecoTracker/CkfPattern
RecoTracker/CkfPattern := RecoTrackerCkfPattern
RecoTrackerCkfPattern_files := $(patsubst src/RecoTracker/CkfPattern/src/%,%,$(wildcard $(foreach dir,src/RecoTracker/CkfPattern/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoTrackerCkfPattern_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTracker/CkfPattern/BuildFile
RecoTrackerCkfPattern_LOC_USE := self cmssw RecoTracker/TkDetLayers FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger DataFormats/Common DataFormats/TrajectorySeed Geometry/TrackerGeometryBuilder TrackingTools/KalmanUpdators MagneticField/Records MagneticField/Engine TrackingTools/MeasurementDet RecoTracker/MeasurementDet TrackingTools/PatternTools TrackingTools/MaterialEffects TrackingTools/TrajectoryCleaning TrackingTools/TrajectoryFiltering TrackingTools/TrackFitters root
RecoTrackerCkfPattern_EX_LIB   := RecoTrackerCkfPattern
RecoTrackerCkfPattern_EX_USE   := $(foreach d,$(RecoTrackerCkfPattern_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerCkfPattern_PACKAGE := self/src/RecoTracker/CkfPattern/src
ALL_PRODS += RecoTrackerCkfPattern
RecoTrackerCkfPattern_CLASS := LIBRARY
RecoTracker/CkfPattern_forbigobj+=RecoTrackerCkfPattern
RecoTrackerCkfPattern_INIT_FUNC        += $$(eval $$(call Library,RecoTrackerCkfPattern,src/RecoTracker/CkfPattern/src,src_RecoTracker_CkfPattern_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(RecoTracker/SpecialSeedGenerators)),)
ALL_COMMONRULES += src_RecoTracker_SpecialSeedGenerators_src
src_RecoTracker_SpecialSeedGenerators_src_parent := RecoTracker/SpecialSeedGenerators
src_RecoTracker_SpecialSeedGenerators_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoTracker_SpecialSeedGenerators_src,src/RecoTracker/SpecialSeedGenerators/src,LIBRARY))
RecoTrackerSpecialSeedGenerators := self/RecoTracker/SpecialSeedGenerators
RecoTracker/SpecialSeedGenerators := RecoTrackerSpecialSeedGenerators
RecoTrackerSpecialSeedGenerators_files := $(patsubst src/RecoTracker/SpecialSeedGenerators/src/%,%,$(wildcard $(foreach dir,src/RecoTracker/SpecialSeedGenerators/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoTrackerSpecialSeedGenerators_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTracker/SpecialSeedGenerators/BuildFile
RecoTrackerSpecialSeedGenerators_LOC_USE := self cmssw DataFormats/Common DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/RecoCandidate DataFormats/SiStripDetId DataFormats/TrackerCommon DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/TrajectorySeed FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder MagneticField/Engine RecoPixelVertexing/PixelTriplets RecoTracker/Record RecoTracker/TkHitPairs RecoTracker/TkSeedGenerator RecoTracker/TkSeedingLayers RecoTracker/TkTrackingRegions RecoTracker/TransientTrackingRecHit TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/KalmanUpdators TrackingTools/Records TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit TrackingTools/MaterialEffects CommonTools/Utils DataFormats/MuonReco TrackingTools/PatternTools TrackingTools/TrackRefitter
RecoTrackerSpecialSeedGenerators_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTrackerSpecialSeedGenerators,RecoTrackerSpecialSeedGenerators,$(SCRAMSTORENAME_LIB),src/RecoTracker/SpecialSeedGenerators/src))
RecoTrackerSpecialSeedGenerators_PACKAGE := self/src/RecoTracker/SpecialSeedGenerators/src
ALL_PRODS += RecoTrackerSpecialSeedGenerators
RecoTrackerSpecialSeedGenerators_CLASS := LIBRARY
RecoTracker/SpecialSeedGenerators_forbigobj+=RecoTrackerSpecialSeedGenerators
RecoTrackerSpecialSeedGenerators_INIT_FUNC        += $$(eval $$(call Library,RecoTrackerSpecialSeedGenerators,src/RecoTracker/SpecialSeedGenerators/src,src_RecoTracker_SpecialSeedGenerators_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
ifeq ($(strip $(RecoTrackerTrackProducerPlugins)),)
RecoTrackerTrackProducerPlugins := self/src/RecoTracker/TrackProducer/plugins
PLUGINS:=yes
RecoTrackerTrackProducerPlugins_files := $(patsubst src/RecoTracker/TrackProducer/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoTracker/TrackProducer/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTracker/TrackProducer/plugins/$(file). Please fix src/RecoTracker/TrackProducer/plugins/BuildFile.))))
RecoTrackerTrackProducerPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTracker/TrackProducer/plugins/BuildFile
RecoTrackerTrackProducerPlugins_LOC_USE := self cmssw RecoTracker/Record RecoTracker/SiTrackerMRHTools RecoTracker/TrackProducer TrackingTools/TransientTrack FWCore/Utilities Alignment/TwoBodyDecay Alignment/ReferenceTrajectories TrackingTools/GsfTracking
RecoTrackerTrackProducerPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTrackerTrackProducerPlugins,RecoTrackerTrackProducerPlugins,$(SCRAMSTORENAME_LIB),src/RecoTracker/TrackProducer/plugins))
RecoTrackerTrackProducerPlugins_PACKAGE := self/src/RecoTracker/TrackProducer/plugins
ALL_PRODS += RecoTrackerTrackProducerPlugins
RecoTracker/TrackProducer_forbigobj+=RecoTrackerTrackProducerPlugins
RecoTrackerTrackProducerPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoTrackerTrackProducerPlugins,src/RecoTracker/TrackProducer/plugins,src_RecoTracker_TrackProducer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoTrackerTrackProducerPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoTrackerTrackProducerPlugins,src/RecoTracker/TrackProducer/plugins))
endif
ALL_COMMONRULES += src_RecoTracker_TrackProducer_plugins
src_RecoTracker_TrackProducer_plugins_parent := RecoTracker/TrackProducer
src_RecoTracker_TrackProducer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTracker_TrackProducer_plugins,src/RecoTracker/TrackProducer/plugins,PLUGINS))
ifeq ($(strip $(RecoTracker/TrackProducer)),)
ALL_COMMONRULES += src_RecoTracker_TrackProducer_src
src_RecoTracker_TrackProducer_src_parent := RecoTracker/TrackProducer
src_RecoTracker_TrackProducer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoTracker_TrackProducer_src,src/RecoTracker/TrackProducer/src,LIBRARY))
RecoTrackerTrackProducer := self/RecoTracker/TrackProducer
RecoTracker/TrackProducer := RecoTrackerTrackProducer
RecoTrackerTrackProducer_files := $(patsubst src/RecoTracker/TrackProducer/src/%,%,$(wildcard $(foreach dir,src/RecoTracker/TrackProducer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoTrackerTrackProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTracker/TrackProducer/BuildFile
RecoTrackerTrackProducer_LOC_USE := self cmssw TrackingTools/GsfTools DataFormats/Common DataFormats/GsfTrackReco DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackingRecHit DataFormats/TrajectorySeed FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder MagneticField/Engine MagneticField/Records RecoTracker/MeasurementDet TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/Records RecoTracker/SiTrackerMRHTools RecoTracker/TransientTrackingRecHit TrackingTools/TrackFitters TrackingTools/TrajectoryState TrackingTools/KalmanUpdators
RecoTrackerTrackProducer_EX_LIB   := RecoTrackerTrackProducer
RecoTrackerTrackProducer_EX_USE   := $(foreach d,$(RecoTrackerTrackProducer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTrackerTrackProducer_PACKAGE := self/src/RecoTracker/TrackProducer/src
ALL_PRODS += RecoTrackerTrackProducer
RecoTrackerTrackProducer_CLASS := LIBRARY
RecoTracker/TrackProducer_forbigobj+=RecoTrackerTrackProducer
RecoTrackerTrackProducer_INIT_FUNC        += $$(eval $$(call Library,RecoTrackerTrackProducer,src/RecoTracker/TrackProducer/src,src_RecoTracker_TrackProducer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
