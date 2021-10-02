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
