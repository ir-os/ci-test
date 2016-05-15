
#include "postypes.h"

static int board_module_initialized = 0;

int board_init(void)
{
	if (board_module_initialized == 1)
	{
		return -1;
	}
	board_module_initialized = 1;
	return 0;
}
