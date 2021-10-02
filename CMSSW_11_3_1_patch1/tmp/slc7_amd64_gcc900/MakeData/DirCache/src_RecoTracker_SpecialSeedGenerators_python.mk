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
