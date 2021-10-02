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
