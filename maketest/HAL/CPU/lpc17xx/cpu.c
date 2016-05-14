
#include "postypes.h"

static int cpu_module_initialized = 0;

int cpu_init(void)
{
	//printf("CPU Inited !\n");
	cpu_module_initialized = 1;
	return 0;
}
