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
