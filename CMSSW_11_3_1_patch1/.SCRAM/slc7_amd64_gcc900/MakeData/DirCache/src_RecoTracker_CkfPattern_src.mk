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
