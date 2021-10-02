ifeq ($(strip $(PyConfigurationStandardSequences)),)
PyConfigurationStandardSequences := self/src/Configuration/StandardSequences/python
src_Configuration_StandardSequences_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/StandardSequences/python)
PyConfigurationStandardSequences_files := $(patsubst src/Configuration/StandardSequences/python/%,%,$(wildcard $(foreach dir,src/Configuration/StandardSequences/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationStandardSequences_LOC_USE := self cmssw 
PyConfigurationStandardSequences_PACKAGE := self/src/Configuration/StandardSequences/python
ALL_PRODS += PyConfigurationStandardSequences
PyConfigurationStandardSequences_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationStandardSequences,src/Configuration/StandardSequences/python,src_Configuration_StandardSequences_python))
else
$(eval $(call MultipleWarningMsg,PyConfigurationStandardSequences,src/Configuration/StandardSequences/python))
endif
ALL_COMMONRULES += src_Configuration_StandardSequences_python
src_Configuration_StandardSequences_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_StandardSequences_python,src/Configuration/StandardSequences/python,PYTHON))
