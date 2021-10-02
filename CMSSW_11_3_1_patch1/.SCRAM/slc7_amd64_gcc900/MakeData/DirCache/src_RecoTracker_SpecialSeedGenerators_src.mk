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
