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
