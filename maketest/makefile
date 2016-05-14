################################################################################
#
# @makefile .c
#
# @author Murat Cakmak
#
# @brief Main makefile of build system
#
# @see http://https://github.com/ir-os/IROS
#
#*****************************************************************************
#
#  Copyright (2016), P-OS
#
#   This software may be modified and distributed under the terms of the
#   'MIT License'.
#
#   See the LICENSE file for details.
#
################################################################################

################################################################################
#                    		  DEFINITIONS                                      #
################################################################################

ENV ?= x86

#
# Root Path 
#
ROOT_PATH = .

MAKE_FILES_PATH = Utilities/Makefiles

ifndef V
SILENCE = -s
else
SILENCE =
endif

################################################################################
#                    		     RULES                                   	   #
################################################################################


default:
	make $(SILENCE) -f $(MAKE_FILES_PATH)/build_project.mk PROJECT=$(PROJECT)

unittest:
	make $(SILENCE) -f $(MAKE_FILES_PATH)/unittest.mk TEST_MODULE=$(TEST_MODULE) ENV=$(ENV)

check_all:
	make $(SILENCE) -f $(MAKE_FILES_PATH)/system_stability_check.mk

clean:
	@echo "Cleaning..."
	rm -rf out
	