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
CC=gcc

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
CFLAGS += -I$(CPU_PATH) -I$(BOARD_PATH)

################################################################################
#                    		    INCLUDES                                   #
################################################################################

include $(CPU_PATH)/cpu.mk
include $(BOARD_PATH)/board.mk
include $(OS_PATH)/os.mk

################################################################################
#                    		     SCRIPTS                                   #
################################################################################

$(PROJECT_NAME): $(SRC_FILES)
	@echo $(SRC_FILES)
	$(CC) -o $(PROJECT_NAME) $(SRC_FILES) $(CFLAGS)

.PHONY: clean
clean:
	rm -f $(PROJECT_NAME)
