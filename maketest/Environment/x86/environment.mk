
################################################################################
#							COMPILING & LINKING
################################################################################
#
# C Compiler for x86 : GCC
#
CC = gcc

################################################################################
#								TESTING
################################################################################

#
# C Compiler for x86
#
ifeq ($(OS), Windows_NT)
	UNITTEST_TARGET_EXTENSION = .exe
else
	UNITTEST_TARGET_EXTENSION = .out
endif

UNITTEST_CFLAGS = -std=c99 -Wall -Wextra -Werror  -Wpointer-arith -Wcast-align -Wwrite-strings \
            -Wswitch-default -Wunreachable-code -Winit-self -Wmissing-field-initializers \
            -Wno-unknown-pragmas -Wstrict-prototypes -Wundef -Wold-style-definition