#
# Main Makefile
#
#
################################################################################
#                    		CONFIGURATIONS                                 #
################################################################################

#
# Name of project. Image is also named with that name. 
#
PROJECT_NAME = MakeTest


#
# HAL Configurations. 
# 	TODO: Should be in seperated config file
#
CPU = lpc17xx
BOARD = landtiger

################################################################################
#                    		  DEFINITIONS                                  #
################################################################################
#
# Cross Compiler
#  
CCD=gcc

#
# Root Path 
#
ROOT_PATH := .

#
# Path of Selected CPU
# 
CPU_PATH = $(ROOT_PATH)/HAL/CPU/$(CPU)
#
# Path of Selected Board
#  
BOARD_PATH = $(ROOT_PATH)/HAL/Board/$(BOARD)
#
# Path of OS Files
# 
OS_PATH = $(ROOT_PATH)/OS

#
# Compiler Flags
#
CFLAGS += -I$(CPU_PATH) -I$(BOARD_PATH) $(INC_PATHS) -ICommon

################################################################################
#                    		    INCLUDES                                       #
################################################################################

#include $(CPU_PATH)/cpu.mk
#include $(BOARD_PATH)/board.mk
#include $(OS_PATH)/os.mk

################################################################################
#                    		     SCRIPTS                                   	   #
################################################################################

$(PROJECT_NAME): check_all

#      : $(SRC_FILES)
#	@echo $(SRC_FILES)
#	$(CCD) -o $(PROJECT_NAME) $(SRC_FILES) $(CFLAGS)
#	@echo "\n--------------------------------------\n"
#	./$(PROJECT_NAME)
	
.PHONY: clean
clean:
	@echo "Cleaning..."
	rm -rf out

unittest:
	make -f unittest.mk TEST_MODULE=$(TEST_MODULE)

UNIT_TEST_FILES := $(shell find HAL -mindepth 1 -maxdepth 6 -name "unittest.mk")
check_all:
	$(foreach tst_module, $(UNIT_TEST_FILES), \
		make -f unittest.mk TEST_MODULE=$(subst /unittest/unittest.mk,,$(tst_module)) \
	)
		