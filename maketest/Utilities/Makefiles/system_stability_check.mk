
MAKE_FILES_PATH = Utilities/Makefiles

# TODO fix it 
UNIT_TEST_FILES := $(shell find HAL/CPU -mindepth 1 -maxdepth 6 -name "unittest.mk")

default:
	$(foreach tst_module, $(UNIT_TEST_FILES), \
		$(MAKE) -f $(MAKE_FILES_PATH)/unittest.mk TEST_MODULE=$(subst /unittest/unittest.mk,,$(tst_module)) \
	)

	
#make -f unittest.mk TEST_MODULE=$(subst /unittest/unittest.mk,,$(tst_module)) \