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
