
TEST_DIR = $(TEST_MODULE)/unittest

include $(TEST_DIR)/unittest.mk

#We try to detect the OS we are running on, and adjust commands as needed
ifeq ($(OSTYPE),cygwin)
	CLEANUP = rm -f
	TARGET_EXTENSION=.out
elseifeq ($(OSTYPE),msys)
    CLEANUP = rm -f
	TARGET_EXTENSION=.exe
elseifeq ($(OS),Windows_NT)
	CLEANUP = del /F /Q
	TARGET_EXTENSION=.exe
else
	CLEANUP = rm -f
	TARGET_EXTENSION=.out
endif

CFLAGS=-std=c99 -Wall -Wextra -Werror  -Wpointer-arith -Wcast-align -Wwrite-strings \
            -Wswitch-default -Wunreachable-code -Winit-self -Wmissing-field-initializers \
            -Wno-unknown-pragmas -Wstrict-prototypes -Wundef -Wold-style-definition

ROOT_PATH=.

UNITY_ROOT=$(ROOT_PATH)/Utilities/Unity
UNITY_OUT=$(ROOT_PATH)/out/UnitTest/$(TEST_TARGET_NAME)

TEST_FILE_NAME = unittest_$(TEST_TARGET_NAME)
TEST_FILE = $(TEST_FILE_NAME).c
TEST_RUNNER_FILE = $(UNITY_OUT)/$(TEST_FILE_NAME)_runner.c

TARGET = $(UNITY_OUT)/$(TEST_TARGET_NAME)$(TARGET_EXTENSION)
ALL_SRC_FILES= \
	$(UNITY_ROOT)/unity.c \
	$(TEST_DIR)/$(TEST_FILE) \
	$(TEST_RUNNER_FILE)

INC_DIRS=-I../include -I$(UNITY_ROOT) -I$(ROOT_PATH)/Common
SYMBOLS=-DTEST

#all: clean default

default:
	cp $(UNITY_ROOT)/unity.h $(TEST_DIR)
	mkdir -p $(UNITY_OUT)
	ruby $(UNITY_ROOT)/scripts/generate_test_runner.rb $(TEST_DIR)/$(TEST_FILE) $(TEST_RUNNER_FILE)
	$(CC) $(CFLAGS) $(INC_DIRS) $(SYMBOLS) $(ALL_SRC_FILES) -o $(TARGET)
	rm $(TEST_DIR)/unity.h
	./$(TARGET)
	
#clean:
#	$(CLEANUP)
