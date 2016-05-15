
ifndef PROJECT
$(error Please select a project. (Example make PROJECT=<Projects_Name> ) )
endif

ROOT_PATH = ../..

PROJECT_MAKE_FILE = $(ROOT_PATH)/Projects/$(PROJECT)/project.mk

ifeq ($(wildcard $(PROJECT_MAKE_FILE)),)
$(error Invalid Project! Project does not exist in "Projects" folders : $(PROJECT_MAKE_FILE))
endif 

include $(PROJECT_MAKE_FILE)

ifndef PROJECT_NAME
$(error Project name 'PROJECT_NAME' is not defined. Please define it in your project.mk  )
endif


#
# Path of Selected CPU
# 
CPU_PATH = $(ROOT_PATH)/HAL/CPU/$(CPU)

#
# Path of Selected Board
#  
BOARD_PATH = $(ROOT_PATH)/HAL/Board/$(BOARD)

##
# Path of OS Files
# 
OS_PATH = $(ROOT_PATH)/OS

#
# Compiler Flags
#
CFLAGS += \
	-I$(CPU_PATH) \
	-I$(BOARD_PATH) \
	-ICommon
#$(INC_PATHS) \
	

$(PROJECT_NAME):
	@echo Compiling $(PROJECT_NAME)

#      : $(SRC_FILES)
#	@echo $(SRC_FILES)
#	$(CCD) -o $(PROJECT_NAME) $(SRC_FILES) $(CFLAGS)
#	@echo "\n--------------------------------------\n"
#	./$(PROJECT_NAME)


