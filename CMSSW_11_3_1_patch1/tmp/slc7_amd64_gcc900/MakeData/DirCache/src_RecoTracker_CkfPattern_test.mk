ALL_COMMONRULES += src_RecoTracker_CkfPattern_test
src_RecoTracker_CkfPattern_test_parent := RecoTracker/CkfPattern
src_RecoTracker_CkfPattern_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTracker_CkfPattern_test,src/RecoTracker/CkfPattern/test,TEST))
